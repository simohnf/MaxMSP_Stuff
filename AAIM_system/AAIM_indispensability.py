import math
import random

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
def genGrouping( *G ):
		print "G", G
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

