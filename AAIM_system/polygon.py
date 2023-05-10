import math
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

points = polygon(4)
points = [ [points[i*2], points[(i*2)+1]] for i in range(len(points)/2)]
for p in points:
	print p, distance(p[0], p[1], 0, 0)
print '	'
for p in points:
	print p, distance(p[0], p[1], 0.5, 0.5)
print '	'
for p in points:
	print p, distance(p[0], p[1], 1, 1)
print '	'
for p in points:
	print p, distance(p[0], p[1], 0.5, 0)
