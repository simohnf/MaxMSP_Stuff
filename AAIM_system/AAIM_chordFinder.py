# py/pyext - python script objects for PD and MaxMSP
#
# Copyright (c) 2002-2007 Thomas Grill (gr@grrrr.org)
# For information on usage and redistribution, and for a DISCLAIMER OF ALL
# WARRANTIES, see the file, "license.txt," in this distribution.  
#

"""This is an example script for the py/pyext object's basic functionality.

pyext Usage:
- Import pyext

- Inherit your class from pyext._class

- Specfiy the number of inlets and outlets:
        Use the class members (variables) _inlets and _outlets
        If not given they default to 1
        You can also use class methods with the same names to return the respective number

- Constructors/Destructors
        You can specify an __init__ constructor and/or an __del__ destructor.
        The constructor will be called with the object's arguments

        e.g. if your PD or MaxMSP object looks like
        [pyext script class arg1 arg2 arg3]

        then the __init__(self,*args) function will be called with a tuple argument
        args = (arg1,arg2,arg3)
        With this syntax, you will have to give at least one argument.
        By defining the constructor as __init__(self,*args) you can also initialize
        the class without arguments.

- Methods called by pyext
        The general format is 'tag_inlet(self,arg)' resp. 'tag_inlet(self,*args)':
                tag is the PD or MaxMSP message header.. either bang, float, list etc.
                inlet is the inlet (starting from 1) from which messages are received.
                args is a tuple which corresponds to the content of the message. args can be omitted.

        The inlet index can be omitted. The method name then has the format 'tag_(self,inlet,args)'.
        Here, the inlet index is a additional parameter to the method

        You can also set up methods which react on any message. These have the special forms
                _anything_inlet(self,*args)
        or
                _anything_(self,inlet,*args)

        Please see below for examples.

        Any return values are ignored - use _outlet (see below).

        Generally, you should avoid method_, method_xx forms for your non-pyext class methods.
        Identifiers (variables and functions) with leading underscores are reserved for pyext.

- Send messages to outlets:
        Use the inherited _outlet method.
        You can either use the form
                self._outlet(outlet,arg1,arg2,arg3,arg4) ... where all args are atoms (no sequence types!)
        or
                self._outlet(outlet,arg) ... where arg is a sequence containing only atoms
               
    Do not use _outlet inside __init__, since the outlets have not been created at that time.

- Use pyext functions and methods:
        See the __doc__ strings of the pyext module and the pyext._class base class.

"""
from __future__ import division

try:
        import pyext
except:
        print "ERROR: This script must be loaded by the PD/Max pyext external"

global _actualPitchClasses 
_actualPitchClasses = ()
# import fournotechords
# import threenotechords
# import twonotechords
# import chordExtensions
# import chordExceptions
import chordLibraries
import math
import numpy
import random

#################################################################
##### this determines the intervals in the chord 
##### it takes one argument:
#####				the list of chord members
##### and returns:
#####				the intervals of the chord as related to 
#####					the lowest pitch class in the format:
#####							"0407011" for a maj7 root position
def determineIntervalString(inputtedChord):

		intervals = []
		x = 0
		for x in range(1, len(inputtedChord)):
				intervals.append(inputtedChord[x] - inputtedChord[0])
				intervalString = ""
		x = 0
		for x in range(0, len(intervals)):
				if intervals[x] < 10:
						intervalString = intervalString + '0' + str(intervals[x])
				else:
						intervalString = intervalString + str(intervals[x])
		return intervalString
		
		
		
###### this kicks out the most dissonant members of an overloaded chord
###### it takes one argument:
######			the list of chord members in the chord to be thinned out
###### it returns:
######			the list of members of the new(thinner) chord
######			& the list of the notes which were removed	
def kickOutMembers(inputtedChord):
# 		print "more than 4 notes", inputtedChord
		# kick out most dissonant members
		minDistance = 100000 # start off with ridiculously hi value
		mostDissonantMember = -1
		newChord = inputtedChord[:] 
		kickedOut = []
		while len(newChord) > 4:
				x = 0
				minDistance = 100000
				for x in range(0, len(newChord)):
						y = 0
						thisDistance = 0
						for y in range (0, len(newChord)):
								if x != y:
										thisInterval = math.fabs(newChord[x] - newChord[y])
										if thisInterval > 6:
												thisInterval = 12 - thisInterval
										thisDistance =  thisDistance+thisInterval
						if thisDistance < minDistance:
								minDistance = thisDistance
								mostDissonantMember = x
				mostDissonantPC = inputtedChord.index(newChord[mostDissonantMember])
				mostDissonantPC = inputtedChord[mostDissonantPC]
				kickedOut.append(mostDissonantPC)
				newChord.pop(mostDissonantMember)
# 		print "inputtedChord", inputtedChord
# 		print "kickedOut", kickedOut
# 		print "newChord", newChord
		return [newChord, kickedOut]


##### this determines any extra extensions on chords
##### it takes two arguments
#####			the root pitch class
#####			& the list of extra notes
##### it returns a list of extensions as distances
##### from the root
def determineExtensions(rootPC, extensions):
# 		print 'root', rootPC
		chordExtensions = extensions[:]
# 		print 'chordExtensions', chordExtensions
		x = 0
		for x in range(0, len(chordExtensions)):
				distanceFromRoot = (chordExtensions[x] - rootPC)%12
				chordExtensions[x] = distanceFromRoot
# 		print 'chordExtensions after ', chordExtensions
		chordExtensions.sort()
# 		print chordExtensions
		return chordExtensions
		
		




class chordFinderClass(pyext._class):
        """Example of a simple class which receives messages and prints to the console"""

        # number of inlets and outlets
        _inlets=1
        _outlets=1
        print "hello Max this is my chord finder"
		##### this reloads modules so they can be changed
		##### without having to turn off max
        def reloadModules_1(self):
# 				reload(fournotechords)
# 				reload(threenotechords)
# 				reload(twonotechords)
# 				reload(chordExtensions)
# 				reload(chordExceptions)
				reload(chordLibraries)
				print "modules reloaded"
				
        def bang_1(self):
        		print "chord finder gotta bang"
       
        def chord_1(self, *notes):
        		global _actualPitchClasses 
        		_actualPitchClasses = ("C","Db","D","Eb","E","F","F#","G","Ab","A","Bb","B")
        		
        		numNotes = len(notes)
        		if numNotes == 0:
        				## DO SOMETHING HERE
        				print "you didnt give me any notes"
        		elif numNotes == 1:
		        		#################################
        				# this should check if the note is part of the underlying
        				# harmony/scale... if so and multiple single notes in a
        				# row(or a majority of notes from a phrase) agree with the 
        				# underlying harmony it should consider this as evidence of 
        				# the harmony/scale 
        				#################################
        				theNote = _actualPitchClasses[notes[0]%12]
        				print "thats a single note ", theNote
        				self._outlet(1, theNote) 	
        		elif numNotes >= 2:		
        				# make 'array' of pitch classes
        				# enter a one for each pitch class
        				# that was played
        				pitchClasses = [] # this stores active pitch classes
        				removedNotes = [] # this stores extra notes in big chords
        				chordArray = [] #store the notes side by side
        								# to get intervals more easily        				
        				x = 0
        				for x in range(0, 12):
        						pitchClasses.append(0)
        				
        				x = 0
        				for x in range(0, numNotes):
        						thisPitchClass = notes[x]%12	
        						pitchClasses[thisPitchClass] = 1
        						
        				totalPitchClasses = 0
        				x = 0
        				for x in range(0, 12):
        						if pitchClasses[x] == 1:
        								totalPitchClasses += 1
        								chordArray.append(x)
        				# make sure there were more than 2 pitch classes
        				if totalPitchClasses < 2:
        						theNote = _actualPitchClasses[notes[0]%12]
        						################################
        						# this should check if the note is part of the underlying
        						# harmony/scale... if so and multiple single notes in a
        						# row(or a majority of notes from a phrase) agree with the 
        						# underlying harmony it should consider this as evidence of 
        						# the harmony/scale 
        						#################################
        						print "thats a single note", theNote
        						self._outlet(1, theNote) 	
        						return
        				# if so keep going to determine the chord
        				
        				intervalString = determineIntervalString(chordArray)
#         				print intervalString
        						#################################
        						# look for exceptions that are 
        						# mis-named by "kickOutMember" 
        						# or the other dictionaries   
        						#################################	
#         				if str(intervalString) in chordExceptions.exceptionLibrary:
        				if str(intervalString) in chordLibraries.exceptionLibrary:
#         						print "it's in here"
#         						chord = chordExceptions.exceptionLibrary[intervalString]
        						chord = chordLibraries.exceptionLibrary[intervalString]					
					# if there's only two notes call the two note library		        			
        				elif len(chordArray) == 2:
        						###########################
        						# this should check if the notes are part of the underlying
        						# harmony/scale... if so and multiple notes in a
        						# row(or a majority of notes from a phrase) agree with the 
        						# underlying harmony it should consider this as evidence of 
        						# the harmony/scale 
        						##########################
        						# call 2 note chord identifier 
# 								chord = twonotechords.chordLibrary[intervalString] 
								chord = chordLibraries._2noteChordLibrary[intervalString]
								thisInterval = chordLibraries.intervalLibrary[intervalString]
# 								thisInterval = twonotechords.intervalLibrary[intervalString]
								print "interval of a ", thisInterval

					# if there's only three notes call the three note library		        									        			
		        		elif len(chordArray) == 3:
        						# call 3 note chord identifier 
# 								chord = threenotechords.chordLibrary[intervalString] 
								chord = chordLibraries._3noteChordLibrary[intervalString]
					# if there's only four notes call the four note library		        						        			
        				elif len(chordArray) == 4:
        						# call 4 note chord identifier 
# 								chord = fournotechords.chordLibrary[intervalString] 
								chord = chordLibraries._4noteChordLibrary[intervalString]
					# if there's more than four notes kick most dissonant members out
					# and go from there
								        			
        				elif len(chordArray) > 4:
        						chordDetails = kickOutMembers(chordArray)#returns [new chord, kickedOut]
        						myNewChord = chordDetails[0]
        						chordArray = myNewChord
        						removedNotes = chordDetails[1]
#         						print "removed", removedNotes
        						removedNotes.sort()
#         						print "removed", removedNotes

        						newIntervalString = determineIntervalString(myNewChord)
#         						chord = fournotechords.chordLibrary[newIntervalString] 
        						chord = chordLibraries._4noteChordLibrary[newIntervalString]
        						
        				#### name the actual chord and root	
        				rootPC = 	chordArray[chord[1]]
        				root = _actualPitchClasses[rootPC]
        				type = chord[0]
        				extraExtensions = []
        				chordName = str(root)+' '+str(type)
        				if len(removedNotes) > 0:
        						extraExtensions = determineExtensions(rootPC, removedNotes)
#         						print "extraExtensions", extraExtensions
         				if len(extraExtensions) > 0:
        						extensionNames = ""
        						for x in range(0, len(removedNotes)):
#         								thisExtension = chordExtensions.extensionsLibrary[str(extraExtensions[x])]
        								thisExtension = chordLibraries.extensionsLibrary[str(extraExtensions[x])]
        								extensionNames+= str(thisExtension)+" "
#         						print 'extensionNames', extensionNames
        						chordName += " "+extensionNames
#        				print chordName
        				
        				
        				self._outlet(1, chordName)	










# 						# all chord types are:
#         				#		dom, maj, min, dim, aug
#         				extensionIndex = 0
#         				if len(type) == 3:
#         						print type[:]
#         				elif str.isdigit(type[3]):
#         						print type[0:3]
#         						extensionIndex = 3
#         				# or	minmaj, dimmaj,         						
#         				elif str.isdigit(type[6]):
#         						print type[0:6]
#         						extensionIndex = 6
#         				# or 	halfdim
#         				elif str.isdigit(type[7]):
#         						print type[0:7]  
#         						extensionIndex = 7      				
#         				#		followed by extension        				
#         				if extensionIndex > 0:
# 		        				thisExtension = type[extensionIndex:]
#         						x = 0
#         						if len(thisExtension) > 1:
#         								extensionParts = ""
#         								for x in range(0, len(thisExtension)):
#         										if thisExtension[x].isdigit():
#         												extensionParts += thisExtension[x]
#         										else:
#         												extensionParts+= (" "+thisExtension[x])
# # 		        						print extensionParts
# #         						print thisExtension	
# 								