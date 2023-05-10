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
import math
import numpy
import random

#################################################################


class nextNote(pyext._class):
		_inlets=1
		_outlets=1
		##### this reloads modules so they can be changed
		##### without having to turn off max
		def __init__( self, *vars ):
				self.intPitEquiv = {
				1:[0, 0], 2:[1, 2], 3:[3, 4], 4:[5,6],
				5:[6,7], 6:[8,9], 7:[10,11]
				}
				
		def lastNote_1( self, lNote ):
				self.lNote = lNote
		def pitches_1( self, *pitches ):
				self.pitches = list( pitches )
		def intervals_1( self, *intervals ):
				self.intervals = list( intervals )
				self.intervalNames = []
				for i in range( int(len( self.intervals ) * 0.5 )):
					self.intervalNames.append( i * -1 )
					self.intervalNames.append( i )
				self.convertIntNames()
		def convertIntNames( self ):
				intNames = []
				for i in range( len( self.intervals ) ):
					intNames += [self.intervalNames[i]] * self.intervals[i]
				self.intervalNames = intNames
		def chooseNote_1( self ):
				self.noteChooser()
		def noteChooser(self):
				interval = self.intervalNames[ random.randrange( len( self.intervalNames ) ) ]
				if interval < 0:
					m = -1
				else:
					m = 1
				octave = int( ( interval * m ) / 7 )
				inter = (abs(interval) % 7) + 1
				pInts = [ ( (x + (12 * octave)) * m ) for x in self.intPitEquiv[inter]]
				posNotes = [ ( (x + (12 * octave)) * m )+self.lNote for x in self.intPitEquiv[inter]]
				i = random.randrange( 0, 2 )
				if posNotes[ 1 -i ] in self.pitches:
					self._outlet( 1, posNotes[1 - i] )
				elif posNotes[ i ] in self.pitches:
					self._outlet( 1, posNotes[ i ] )
				else:
					self.noteChooser()




