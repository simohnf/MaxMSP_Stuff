# py/pyext - python script objects for PD and MaxMSP
# This is a test
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
import gc
import sys

######################################################
# def indis
# this function is a modification of Barlows indispensability
# rather than use prime factors of the number of beats it 
# splits the beats into groups of 2 and/or 3 and then determines
# the indisipensibility according to this grouping
#
# Inputs: integer number of beats (eg 8)
#           or
#         list of integers relating to grouping of beats (eg (5, 3) or (3, 3, 2) etc )
#
# Outputs: list of indispensibilities for each beat
#          list of grouping
def indis( *G ):
		if len( G ) < 1: return 0
		rules = [] # initialise list of basic indispensability rules upon
		rules.append( [0] )
		rules.append( [ 1 ] ) # indisipensibility for group of 1
		rules.append( [ 1, 0. ] ) # indisipensibility for group of 2
		rules.append( [ 1, 0., 0.5 ] ) # indisipensibility for group of 3
		G = list( G ) # convert tuple inputs to list
		while min( G ) <= 0: # only allow positive groupings
				del G[ G.index(min(G)) ]
				if len( G ) < 1: return 0
		if len( G ) < 1: return 0
		# initialise indispensability values and beat indices
		indices = range( sum ( G ) ) #beat indices
		V = [0] * (sum( G )) #indispensability values()
		# generate groupings of 1/2/3 from G
		P = []
		for g in G:
				P += genGrouping( g ) 
		while len( P ) > 1:
				i = 0
				newIndices = []
				for p in P:
					newIndices.append( indices[i] )
					for v in rules[p]:
							V[indices[i]] = V[indices[i]] + v
							i += 1
				P = genGrouping( len(P) )
				indices = newIndices
		# final iteration to ensure V[0] is most indispensable
		i = 0
		for p in P:
				for v in rules[p]:
						V[indices[i]] = V[indices[i]] + v
						i += 1
		# normalise output
		V = [ ( v/max(V) ) for v in V]
		return V      

# def genGrouping
# generates sequence of 2's and 3's 
#
#   Inputs: integer number of beats
#
#   Outputs: sequence of 2's and 3's sum of which equals input
def genGrouping( G ):
		if type(G) == int:
			G = [G]
		else:
			G = list( G )
		while min( G ) < 1:
				del G[ G.index(min(G)) ]
		if len( G ) == 0: 
				return 0
		groups = []
		for g in G:
			while g > 0:
				if 1 <= g <= 3:
					groups.append( g )
					g = 0
				elif g == 4:
					groups.append( 2 )
					groups.append( 2 )
					g = 0
				else:
					n = random.randrange(2, 4)
					groups.append( n )
					g = g - n
		return groups
######################################################

intPitEquiv = {
				1:[0, 0], 2:[1, 2], 3:[3, 4], 4:[5,6],
				5:[6,7], 6:[8,9], 7:[10,11]
				}

def melodyGrouping( S , rhythm, nBeats ):
				grp = []
				steps = []
				for s in range(len(S)):
					if rhythm[s] != 0:
						steps.append(S[s])
				stps = [0] * nBeats
				stps[0] = 1
				for s in steps:
					stps[s] += 1
				for s in range(len(steps)):
					if s == 0:
						if steps[0] != 0:
							grp.append(steps[0])
					else:
						grp.append(steps[s] - steps[s-1])
				grp.append(nBeats - steps[-1])
				if grp[-1] < 1: del grp[-1]
				grp2 = [grp[0]]
				for g in range(1, len(grp)):
					if (grp[g] + grp2[-1]) < 4:
						grp2[-1] += grp[g]
					else: grp2.append(grp[g])

				return stps, grp2

def polygon(nSides):
	nSides = float(nSides)
	if nSides < 3:
		return
	pi = math.pi
	points = []
	offset = (nSides / 2.0) % 1.0
	for i in range(1 ,int(nSides) + 1):
		a = (pi/float(nSides/2)) * (i + offset)
		px = (0.5 * math.sin(a)) + 0.5
		py = (0.5 * math.cos(a)) + 0.5
		points.append(px)
		points.append(py)
	return points

def distance(ox, oy, px, py):
	rise = float(abs(py - oy))
	run = float(abs(px - ox))
	hyp = math.pow( math.pow(run, 2) + math.pow(rise, 2), 0.5 )
	return hyp
		
def countIntervals( M ):
		ints = []
		mx = 0
		mn = abs(M[0] - M[-1])
		for i in range(len(M)):
			# remove repeated notes
			if M[i] != M[i-1]:
				ints.append(M[i] - M[i-1])
				if abs(ints[-1]) > mx:
					mx = abs(ints[-1])
				if abs(ints[-1]) < mn:
					mn = abs(ints[-1])
		intNames = []
		for i in intPitEquiv:
			intNames += [intPitEquiv[i]]
		x = 0
		while mx > intNames[-1][-1]:
			x += 1
			for i in intPitEquiv:
				intNames.append([intPitEquiv[i][0] + (12*x), intPitEquiv[i][1] + (12*x)])
		intNameCount = []
		for i in ints:
			for j in range(len(intNames)):
				if abs(i) in intNames[j]:
					if i >= 0:
						intNameCount.append((j + 1)) # add 1 just because that's common naming practice
					else:
						intNameCount.append((j + 1) * -1)
		intNameCount = sorted( intNameCount )
		return  mn, mx, intNameCount
		
def pitchModulus( p, modMin, modRange ):
	if modRange * 12 < 12:
		modRange = 1
	while p > modMin + (modRange * 12):
		p = p - (modRange * 12)
	return p
	
def noteChooser( intNames, actualInts, pitches, lNote ):
		if len(intNames) == 0:
			nNote = pitches[random.randrange( len( pitches ) )]
			for p in pitches:
				if abs(lNote - p) < abs(lNote - nNote) and p != lNote:
					nNote = p
			print "no pitch available, had to select note: ", nNote, " an interval of ", abs(lNote - nNote), "semitones"
			return (nNote)
		interval = intNames[ random.randrange( len( intNames ) ) ]
		intNames = [i for i in intNames if i != interval]
		if interval < 0:
			d = -1
		else:
			d = 1
		interval = abs( interval )			
		octave = int( ( interval ) / 7 )
		inter = ((interval -1) % 7) + 1
		posInts = intPitEquiv[inter]
		posNotes = []
		for i in posInts:
			if (lNote + (d * i)) in pitches:
				posNotes.append( lNote + (d * i) )
		for i in actualInts:
			if i in posInts and ( lNote + (d * i) ) in pitches:
				posNotes.append( lNote + (d * i) )
		if len(posNotes) > 0:
			return posNotes[ random.randrange(len(posNotes)) ]
		else:
			return noteChooser( intNames[:], actualInts[:], pitches[:], lNote )

def deltaChooser( beat, ioi, rhythm, grouping ):
# 	if ioi != 1.0:
# 		return ioi
	g = 0
	for i in range( len(grouping) ):
		if sum(grouping[i:]) >= sum(grouping) - beat:
			g = i
	G = grouping[g:]
	G[0] = G[0] - ( beat - sum(grouping[:g]) )
	rhythm = [ r for r in rhythm if r <= sum(G)  and r != 0 ]
	if len(rhythm) < 1:
		return 1
	for i in range( len(rhythm) ):
		if rhythm[i] != 1 and rhythm[i] != 0:
			for j in range( len(G) ):
				if rhythm[i] == sum(G[:j]):
					rhythm.append(rhythm[i])
					rhythm.append(rhythm[i])
					rhythm.append(rhythm[i])
					break
				elif rhythm[i] < sum(G[:j]):
					rhythm.append(rhythm[i])
					break
	return rhythm[random.randrange(len(rhythm))]

def retro( steps, rhythm, melody, nBeats ):
	print [steps, rhythm, melody]
	rhythm = rhythm[::-1]
	melody = melody[::-1]
	stps = []
	stp = 0
	for r in rhythm:
		stps.append( (steps[0] + stp) % nBeats )
		if r == 0:
			stp += 1
		else:
			stp += r
	print [stps, rhythm, melody]
	return [stps, rhythm, melody]
	
def chromaticMedian( melody, nAllow ):
	notes = sorted( list( set( [ n  for n in melody ] ) ) )
	scale = sorted( list( set( [ n  for n in nAllow ] ) ) )
	sprd = notes[-1] - notes[0]
	med = int(notes[0] + sprd/2)
	print med
	if med in scale:
		return med
	else:
		for i in range(1, 12):
			if (med +i) in scale:
				med = med + i
				break
			elif (med -i) in scale:
				med = med - i
				break
	return med

def countChromaticIntervals( melody ):
	ints = []
	for i in range( len(melody) ):
		ints.append( melody[(i+1) % len(melody)] - melody[i] )
	return ints

def convert2Indices( melody, nAllow ):
	indcs = []
	for n in melody:
		indcs.append( nAllow.index( n ) )
	return indcs
		
def tonalInversion( melody, nAllow ):
	for m in melody:
		if (m%12) not in nAllow:
			nAllow.append(m%12)
	nAllow = sorted(list(set(nAllow)))
	median = chromaticMedian(melody, nAllow)
	print median
	median = nAllow.index( median )
	indcs = convert2Indices(melody, nAllow)
	invrtd = []
	for n in indcs:
		invrtd.append( nAllow[median + ( median - n )] )
	return invrtd
	

# def simpleInversion( melody ):
	scl = sorted(list(set(melody)))
	indcs = convert2Indices(melody, scl)
	stps = [0]
	for i in range(len(indcs) - 1):
		stps.append(indcs[i+1] - indcs[i])
	stps = [(s*-1) for s in stps]
	newIndcs = [indcs[0]]
	for s in stps[1:]:
		newIndcs.append(newIndcs[-1] + s)
	cnt = 1
	while max(newIndcs) > len(scl):
		scl += [n+(12*cnt) for n in scl]
		scl = sorted(list(set(scl)))
		cnt += 1
	cnt = 1
	while min(newIndcs) < 0:
		scl += [n-(12*cnt) for n in scl]
		scl = sorted(list(set(scl)))
		indcs = convert2Indices(melody, scl)
		newIndcs = [indcs[0]]
		for s in stps[1:]:
			newIndcs.append(newIndcs[-1] + s)
		cnt += 1
# 	newIndcs = [(len(scl) - i - 1) for i in indcs]# 
	newMel = [scl[i] for i in newIndcs]
	return newMel
	
# def tonalExpansion( melody, nAllow, exp ):
	for n in melody:
		if (n%12) not in nAllow:
			nAllow.append(n%12)
	nAllow = sorted(list(set(nAllow)))
	mn = 0
	if min(melody) < 0 or min(melody) > 0:
		mn = int(min(melody) / 12) * 12
		melody = [n - mn for n in melody]
	posN = []
	for n in nAllow:
		if n < min(melody):
			posN.append(n+12)
		else:
			posN.append(n)
	posN = sorted(posN)
	x = 0
	while max(melody) > max(posN):
		x += 1
		posN += [(s +  (12*x) ) for s in nAllow]
	posN = sorted(list(set(posN)))
	indcs = convert2Indices(melody, posN)
	indcs = [ (i * exp) for i in indcs ]
	while max(indcs) > len(posN) - 1:
		x += 1
		posN += [(s +  (12*x) ) for s in nAllow]	
	nMel = [ posN[n] + mn for n in indcs ]
	return nMel

def expansion( mel, pcs, exp ):
	# ensure all notes of melody are in pitch
	# class collection
	posN = [p-12 for p in pcs] + pcs[:]
	for p in mel:
		if (p%12) not in posN:
			posN.append(int(p%12))
	posN = sorted(list(set(posN)))
	count = 1
	# prepend lower octaves of pcs to list of
	# possible notes
	while min(mel) < min(posN):	
		posN += [ (n - (12*count)) for n in pcs ]
		count += 1
		posN = sorted(list(set(posN)))
	count = 1
	while max(mel) > max(posN):	
		posN += [ (n + (12*count)) for n in pcs ]
		count += 1
	posN = sorted(list(set(posN)))
	indcs = convert2Indices( mel, posN )
	indcsOut = [indcs[0]]+[ ((i - indcs[0]) * exp) + indcs[0] for i in indcs[1:] ]
	while max(indcsOut) >= len(posN):
		posN += [ (n + (12*count)) for n in pcs ]
		count += 1
		posN = sorted(list(set(posN)))
		
	for i in range(len(indcsOut)):
		while abs(indcsOut[i]) >= len(posN):
			indcsOut[i] += len(posN)
	expOut = [posN[i] for i in indcsOut]
	return expOut

def createSequence( cell, traj, pcs, nBeats ):
			posN = pcs[:]
			for p in cell:
				if p%12 not in pcs:
					posN.append(p%12)
			for p in traj:
				if p%12 not in pcs:
					posN.append(p%12)
			posN = sorted(list(set(posN)))
			count = 1
			while min(cell) <= min(posN) or min(traj) <= min(posN):
				posN += [ i - (12*count) for i in pcs ]
				posN = sorted(list(set(posN)))
				count += 1
			count = 1
			while max(cell) >= max(posN) or max(traj) >= max(posN):
				posN += [ i + (12*count) for i in pcs ]
				posN = sorted(list(set(posN)))		
				count += 1	
			indcs = convert2Indices( cell, posN )
			indcs = [ i - indcs[0] for i in indcs ]
			trajIndcs = convert2Indices( traj, posN )
			trajIndcs = [ i - indcs[0] for i in trajIndcs ]
			indcs2 = []
			cnt = 0
			while len(indcs2) < nBeats:
				I = []
				for i in indcs:
					I.append(i + trajIndcs[cnt])
				while min(I) < 0:
					I = [ i + len(pcs) for i in I ]
				indcs2 += I
				cnt = ( cnt + 1 ) % len(traj)
			while max(indcs2) >= len(posN):
				posN += [ i + (12*count) for i in pcs ]
				posN = sorted(list(set(posN)))		
				count += 1	
			outSeq = [ posN[i] for i in indcs2 ]	
			outSeq = outSeq[ 0 : nBeats ]
			return outSeq

def convertMel( rhythm, mel ):
		if len(rhythm) > len(mel):
			R = rhythm[0:len(mel)]
		elif len(rhythm) < len(mel):
			R = rhythm + [0] * ( len(mel) - len(rhythm) )
		else:
			R = rhythm[:]
		if max(R) == 1:
			for r in range(len(R)):
				if R[r] == 1:
					R[r] = 2
					break
		offset = 0
		for r in range(len(R)):
			 if R[r] > 1:
			 	offset = r
			 	break
		pat = []
		mel = mel[offset:] + mel[0:offset]
		R = R[offset:] + R[0:offset]
		for i in range(len(mel)):
			if R[i] == 2:
				pat.append([1, mel[i]])
			elif R[i] == 1:
				if mel[i] != pat[-1][1] or pat[-1][0] == 0:
					pat.append([1, mel[i]])	
				else:
					pat[-1][0] += 1
			elif R[i] == 0:
					pat.append([0, pat[-1][1]])
		P = zip(*pat)
		P = zip(*convertMelOut(P[0], P[1], offset, len(R) ))
		return P

def convertMelOut( rhythm, mel, offset, nBeats ):
		beat = offset
		stepSeq = []
		for i in range(len(mel)):
			stepSeq.append([beat % nBeats, rhythm[i], mel[i]])
			if rhythm[i] == 0:
				beat += 1
			else:
				beat += rhythm[i]
		stepSeq = sorted(stepSeq)
		return stepSeq
		
def modalMapping( pitch, pcs, pcsOut ):
	i = 1
	if (pitch % 12) not in pcs:
		pcs.append(pitch % 12)
	if len(pcs) == len(pcsOut):
		while pitch <= min(pcs):
			pcs += [p -(12*i) for p in pcs]
			pcsOut += [p -(12*i) for p in pcsOut]
			i += 1
		while pitch >= max(pcs):
			pcs += [p + (12*i) for p in pcs]
			pcsOut += [p + (12*i) for p in pcsOut]
			i += 1
		pcs = sorted(list(set(pcs)))
		pcsOut = sorted(list(set(pcsOut)))
		indx = convert2Indices([pitch], pcs)[0]
		return pcsOut[indx]
	else: 
		i = 0
		while pitch < min(pcsOut):
			pcsOut += [p - (12*i) for p in pcsOut]
			i += 1
		while pitch > max(pcsOut):
			pcsOut += [p + (12*i) for p in pcsOut]
			i += 1
		newP = pcsOut[0]
		for p in pcsOut:
			if abs(pitch - p) < abs(pitch - newP):
				newP = p
		return newP
#################################################################
class melodyVary(pyext._class):
		_inlets=1
		_outlets=1
		def __init__( self, *vars ):
			self.outPat = []
			self.steps = []
			self.rhythm = []
			self.mel = []
			self.seq = []
			self.seqState = False
			self.seqCount = 0
			self.scale = []
			self.intCount = []
			self.actualInts = []
			self.expChance = []
			self.pcs = []
			self.pcsOut = []
			self.posN = []
			self.manipChance = [1, 0, 0, 0, 0]
			self.vRange = [0, 1]
			self.nBeats = 8
			self.grouping = genGrouping(self.nBeats)
			self.lPitch = 0
			self.lNote = 0
			self.randChance = 0
			self.lDelta = 1
			self.nextBeat = 0
			self.lBeat = 0
			self.gate = 1
			self.rScale = 1
			self.basePitch = 36
			gc.set_debug(gc.DEBUG_LEAK)
# 			gc.enable()
			sys.stderr.write("AAIM.melodyVary-stderr\n")
			print "AAIM.melodyVary"
		def grouping_1( self, *grouping ):
			grouping = list( grouping )
			grouping = [ int(g)  for g in grouping if int(g) > 0]
			if len( grouping ) < 1:
				return
			self.grouping = [] 
			for i in range( len( grouping ) ):
				self.grouping += genGrouping(grouping[i])
		def manipChance_1( self, *C ):
			C = list(C)
			C[5] = math.pow(C[5], 2.5)
			if sum(C) == 0:
				self.manipChance = []
				return
			self.manipChance = [C[0]]
			for i in C[1:]:
				self.manipChance.append( self.manipChance[-1] + i  )
			self.manipChance = [ i / max(self.manipChance) for i in self.manipChance ]
		def beat_1( self, vel, ioi, beat ):
# 			print gc.get_objects()
# 			print gc.get_count()
			collected = gc.collect()
			print "number of unreachable equals", collected
# 			print gc.get_count()
			if len(self.outPat) == 0:
				return
			vel = (vel * (self.vRange[1] - self.vRange[0])) + self.vRange[0]
			beat = beat % self.nBeats
			if len( self.mel ) >= 3 and len ( self.pcs ) > 3:
				if self.seqState == False and len(self.manipChance) > 5:
					sqChance = self.manipChance[5] - self.manipChance[4]
					if random.random() < sqChance:
						if len(zip(*self.outPat)[2]) < 3:
							self.seqState = False 
						else:
							self.seqState = True
							self.seqCount = 0
							M = list(zip(*self.outPat)[2])
							ln = max( 3, len( M ) )
							ln = min( ln, 7 )
							ln = random.randrange( 2, ln )
							b = int(round(beat))
							traj = M[ b : ] + M[ 0 : b ]
							cell = traj[ 0 : ln ]
							self.seq = createSequence( cell, traj, self.pcs[:], self.nBeats * 2 )
							self._outlet(1, 'manip', 5)
				# if sequence is on --> count through steps
				if self.seqState == True:
					self.noteOut( self.seq[ self.seqCount ], vel, 1 )
					self.seqCount += 1
					if self.seqCount == len(self.seq):
						self.seqCount = 0
						self.seqState = False
					return
			beat = beat % self.nBeats
			if round(beat) < round(self.lBeat) and sum(self.manipChance) > 0:
				r = random.random()
				for i in range(len(self.manipChance)):
					if r <= self.manipChance[i]:
						self.manipulations(i)
						break
			# if not base ioi always allow possibility
			# of random choice
			if ioi != 1:
				self.gate = 1
			# if gate is closed check if it's time to open
			if self.gate == 0:
				if self.nextBeat == 0:
					if self.lBeat > round(beat):
						self.gate = 1
						self.rScale = 1
				elif beat >= self.nextBeat:
					self.gate = 1
					self.rScale = 1
			# if gate is open
			self.lBeat = int(round(beat))
			if self.gate == 1 and len(self.actualInts) > 1:
				if beat % 1.0 == 0.0:
					ioiScl = 1.0
				else:
					ioiScl = math.pow(ioi % 1, ioi % 1)
					ioiScl = math.pow(ioiScl, 2)
				rChance = math.pow((self.randChance * self.rScale), ioiScl)
				if random.random() < rChance:	
						self.chooseNote( beat, ioi, vel )
						self.nextBeat = (round(beat) + self.lDelta) % self.nBeats
						if self.lDelta != 1:
							self.gate = 0
						self.rScale += 0.1
						if self.rScale > 2: self.rScale = 2
						return
				else: self.rScale = 1
			self.patternNote( round(beat), vel )
		def randChance_1( self, r ):
			if r < 0:
				self.randChance = 0
			elif r > 1:
				self.randChance = 1
			else:
				self.randChance = r
		def expansions_1( self, *probs ):
			if len(probs) < 1: return
			probs = list( probs )
			self.setExpansions( probs )
		def basePitch_1( self, p ):
			if p <= 0:
				p = 12
			if p < 12:
				p = p + 12
			self.basePitch = p
		def setExpansions( self, probs ):	
			self.expChance = [probs[0]]
			for i in range(1, len(probs)):
				self.expChance.append(probs[i] + self.expChance[i-1])
			self.expChance = [p/self.expChance[-1] for p in self.expChance]
		def pcs_1( self, *PCS ):
			if len(PCS) > 0:
				PCS = list(PCS)
				self.pcs = [ (p % 12) for p in PCS ]
				self.pcs = sorted(list(set(PCS)))
				self.pcsOut = self.pcs[:]
				self._outlet( 1, 'pcsOut', self.pcsOut )
				self.analyse()	
		def pcsOut_1 ( self, *PCS ):
			if len(PCS) > 0:
				PCS = list(PCS)
				self.pcsOut = [ (p % 12) for p in PCS ]
				self.pcsOut = sorted(list(set(PCS)))
				self.analyse()
		def rotateMode_1( self, rot ):
			if len(self.pcs) < 1:
				return
			rot = rot % len(self.pcs)
			P = self.pcs[rot:] + [p + 12 for p in self.pcs[0:rot] ]
			root = self.pcs[0]
			self.pcsOut = [ ((p + root - P[0]) % 12) for p in P]
			self._outlet( 1, 'pcsOut', self.pcsOut )
		def pattern_1( self, *P ):
			while len(P) % 2 != 0:
				del P[-1]
			if len(P) < 2: return
			M = [ P[i*2] for i in range( int(len(P) / 2) ) ]
			R = [ P[(i*2) + 1] for i in range( int(len(P) / 2) ) ]
			if sum(R) == 0:
				self.outPat = []
				return
			self.nBeats = len(M)
			pat = convertMel( R, M )
			self.steps = list(pat[0])
			self.rhythm = list(pat[1])
			self.mel = list(pat[2])
			self.pcs = sorted(list(set([(p % 12) for p in self.mel])))
			self.pcsOut = self.pcs[:]
			self._outlet(1, 'pcs', self.pcs)
			self._outlet(1, 'pcsOut', self.pcsOut)
			self.outPat = [ ]
			for i in range(len(self.steps)):
				self.outPat.append( [ self.steps[i],  self.rhythm[i], self.mel[i] ] ) 
			self.analyse()	
			self._outlet(1, 'manip', 0)
		def velocityRange_1( self, vMin, vMax ):
			self.vRange = [ min(vMin, vMax), max(vMin, vMax) ]
		def manip_1( self, manip ):
			self.manipulations( manip )
		def manipulations(self, manip ):
			if len( self.mel ) <= 1 or len ( self.pcs ) <= 1:
				return
			self._outlet(1, 'manip', manip)
			posN = self.pcs[:]
			x = 0
			while max(self.mel) + 12 > max(posN):
				x += 1
				posN += [(s +  (12*x) ) for s in self.pcs]
			x = 0
			while min(self.mel) - 12 < min(posN):
				x += 1
				posN += [(s -  (12*x) ) for s in self.pcs]
			posN = sorted(list(set(posN)))
			S = self.steps[:]
			R = self.rhythm[:]
			M = self.mel[:]
			if manip == 1: # output inversion of melody
				# if melody notes are only notes in scale output
				# direct inversion
				pcs = [ (n % 12) for n in self.mel ]
				pcs = sorted(list(set(pcs)))
				M = tonalInversion( self.mel, posN )
			elif manip == 2: # output retrograde(reverse) of melody
				pat = retro( self.steps, self.rhythm, self.mel, self.nBeats)
				pat = sorted(zip(*pat))
				pat = zip(*pat)
				S = pat[0] 
				R = pat[1]
				M = pat[2]
			elif manip == 3: # output retrograde-inversion of melody
				pcs = [ (n % 12) for n in self.mel ]
				pcs = sorted(list(set(pcs)))
				if pcs[:] == self.pcs[:]:
					m = tonalInversion(self.mel, posN)
				# otherwise invert about the median of the melody
				else:				
					m = tonalInversion( self.mel, posN )
				m = retro( self.steps, self.rhythm, m, self.nBeats )
				m = sorted(zip(*m))
				m = zip(*m)
				S = m[0] 
				R = m[1]
				M = m[2]
			elif manip == 4: # tonal expansion
				if len(self.expChance) > 0:
					mel = list(zip(*self.outPat)[2])
					r = random.random()
					ex = 2
					for i in range(len(self.expChance)):
						if r < self.expChance[i]:
							ex = i + 2
							break
					M = expansion( mel, self.pcs[:], ex )
			elif manip == 5: # create sequence
				m = list(zip(*self.outPat)[2])
				if len( set(m) ) < 3 or len ( self.pcs ) < 3:
					return
				if len(m) < 3:
					return
				else:
					self.seqState = True
					ln = max( 3, len( m ) )
					ln = min( ln, 7 )
					ln = random.randrange( 3, ln )
					traj = m[ self.lBeat: ] + m[ 0 : self.lBeat ]
					cell = traj[ 0 : ln ]
					self.seq = createSequence( cell, traj, self.pcs, self.nBeats )
					return
			elif manip == 6: # create new seq using scalar note selection
				lNote = self.lNote
				for i in range(len( M )):
					note = noteChooser( self.intCount[:], self.actualInts[:], posN[:], lNote)
					M[i] = note
					lNote = note
			self.outPat = []
			for s in range(len(S)):
				self.outPat.append( [ S[s], R[s], M[s] ] )	
			self.analyse()		
		def analyse( self ):
			if len(self.outPat) < 1:
				return
			P =  zip(*self.outPat[:])
			GRP = melodyGrouping( P[0], P[1], self.nBeats )
			self.grouping = genGrouping( GRP[1] )
			self._outlet(1, 'grouping', self.grouping)
			self._outlet(1, 'stps', GRP[0] ) 
			self.intCount = countIntervals( P[2] )[2]
			self.actualInts = countChromaticIntervals( P[2] )
			self._outlet(1, 'pcs', self.pcs)
			if (len(self.pcs) - 2) != len(self.expChance):
				if (len(self.pcs) - 2) < 1:
					ln = 1
				else:
					ln = len(self.pcs) - 2
				probs = [ (1/math.pow(3, i)) for i in range(ln) ]
				self.setExpansions( probs )
			self.posN = self.createPosPitchesList()
		def createPosPitchesList(self):
			mel = list(zip(*self.outPat)[2])
			posPitches = []
			strt = -1
			end = int( ( max(mel) + 6 )/12 ) + 1
			for i in range(strt, end):
				for pc in self.pcs: 
					if (min(mel) - 6) <= (pc + (12 * i)) <= (max(mel) + 6):
						posPitches.append(pc + (12 * i))
			print posPitches
			return posPitches
		def chooseNote( self, beat, ioi, vel ):
			if len(self.pcs) == 0:
				print "no information received yet"
				return
			else:
				self.lNote =  noteChooser( self.intCount[:], self.actualInts[:], self.posN[:], self.lNote )
				self.lDelta = deltaChooser( beat, ioi, self.rhythm[:], self.grouping[:] )
				self.noteOut( self.lNote, vel, self.lDelta)
		def patternNote( self, beat, vel ):
			beat = round(beat)
			for i in self.outPat:
				if i[0] == beat:
					self.noteOut( i[2], vel, i[1] )
					self.lNote = i[2]
					self.rScale = 0.5
		def noteOut( self, pitch, vel, ioi ):
			pitch = modalMapping( pitch, self.pcs[:], self.pcsOut[:] ) + self.basePitch
			self._outlet(1, 'note', pitch, vel, ioi )



#################################################################
class determineGrouping(pyext._class):
		_inlets=1
		_outlets=1
		def __init__( self, *vars ):
			self.steps = []
		def stps_1( self, voice, *stps ):
			stps = list( stps )
			while voice > len( self.steps ):
				self.steps.append(  [0] * len(stps)   )
			self.steps[ voice - 1 ] = stps
			self.detGrouping()
		def detGrouping(self):
			beats = list(zip(*self.steps))
			beats = [ sum(b) for b in beats ]
			beats[0] = max(beats) + 1
			GRP = []
			for i in range(len(beats)):
				if beats[i] > beats[i-1] and beats[i] > beats[(i+1) % len(beats)]:
					GRP.append(i)
			GRP.append(len(beats))
			GRP = [GRP[i+1] - GRP[i] for i in range(len(GRP) - 1) ]
			GRP = genGrouping(GRP)
			self._outlet( 1, 'grouping', GRP )


#################################################################
class polygonInterface(pyext._class):
		_inlets=1
		_outlets=1
		def __init__( self, *vars ):
			self.points = [0.5, 0.5] + polygon(6)
			self.presets = [[0]] * int(len(self.points)/2)
			self.scaler = []
			gc.set_debug(gc.DEBUG_LEAK)
			sys.stderr.write("AAIM.melodyVary-stderr")
		def nPresets_1(self, nPresets):
			if nPresets < 4:
				return
			# include centre point
			self.points = [0.5, 0.5] + polygon(nPresets - 1)
			while len(self.points)/2 > len(self.presets):
				self.presets.append(self.presets[0])
			self._outlet(1,  "points", self.points )
		def position_1(self, px, py):
			self.scaler = []
			for i in range(int(len(self.points)/2)):
				self.scaler.append(distance(self.points[i*2],self.points[(i*2)+1], px, py))
				self.scaler[-1] = 1 - self.scaler[-1] 
				self.scaler[-1] = 2 * (self.scaler[-1] - 0.5)
				if self.scaler[-1] < 0: self.scaler[-1] = 0
				elif self.scaler[-1] > 1: self.scaler[-1] = 1
			self._outlet(1, 'scaler', self.scaler)
			out = self.presets[:]
			for i in range(len(self.scaler)):
				out[i] = [ j * self.scaler[i] for j in out[i]]
			out = zip(*out)
			out = [ sum(i) for i in out ]
			self._outlet(1, 'scaledPresets', out) 
		def preset_1( self, prstN, *preset ):
			if prstN < 1 or prstN > len(self.points)/2:
				return
			preset = list(preset)
			self.presets[prstN-1] = preset
		