var mel = []
var scl = []
var pcs = []
var indcs = []

inlets = 1;
outlets = 2;


function scale()
{
	scl = []
	for (var i = 0; i < arguments.length; i++){
		if (arguments[i] > 0){
			scl.push(i)
			}
		}
	if (mel.length > 0){ convert2Indices(); }
	else{ post('boob'); }
}
function melody()
{
	mel = [].slice.call(arguments);
	var tmp = [];
	pcs = [];
	for (var i = 0; i < mel.length; i++){
		tmp.push(mel[i] % 12);
		}
	tmp.sort(function(a,b){return a - b});
	pcs.push(tmp[0]);
	for (var i = 1; i < tmp.length; i++){
		if (tmp[i] != tmp[i-1]) {
			pcs.push(tmp[i]);
			}
		}
	pcs.sort(function(a,b){return a - b});
	scl = [].slice.call(pcs);
	if (scl.length > 0){ convert2Indices(); }
	outlet(0,mel);
	outlet(1,"pcs", pcs);
}
/////////////////////////////
function inversion()
{
	if (pcs.equals(scl)){
		inv = simpleInversion();
		}
	else{ inv = simpleInversion(); }
	outlet(0, inv);
}
/////////////////////////////
function retrograde(){
	retro = [].slice.call(mel);	
	outlet(0, retro.reverse());
	
}
/////////////////////////////
function retroInv(){
	inv = simpleInversion();
	inv.reverse();
	outlet(0, inv);
}
/////////////////////////////
function expansion(exp){
	if (exp < 2){ exp = 2; }
	newIndcs = [];
	for (i = 0; i < indcs.length; i++){
		newIndcs.push(indcs[i] * exp)
	}	
	posN = [].slice.call(scl);
	x = 0;
	while(newIndcs.max() > posN.length){
		x += 1;
		for (var s = 0; s < scl.length; s++){
			posN.push(scl[s] + 12 * x);
		}
	}
	post(newIndcs, "\n");
	post(posN, "\n");
	newMel = []
	for (i = 0; i < newIndcs.length; i++){
		newMel.push(posN[newIndcs[i]])
		}
	outlet(0, newMel);
}
/////////////////////////////
function bang(){
	post("scl", scl, "\n");
	post("mel", mel, "\n");
	post("pcs", pcs, "\n");
	post("indcs", indcs, "\n");
}
//////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////
function convert2Indices(){
	indcs = []
	posN = [].slice.call(scl);
	x = 0;
	while (mel.max() > scl.max()){
		x += 1;
		for (var s = 0; s < scl.length; s++){
			posN.push(scl[s] + 12 * x);
		}
	}
	
	for (n = 0; n < mel.length; n++){
		indcs.push( posN.indexOf( mel[n] ) );
	}
}

function simpleInversion(){
	invrt = [];
	for (i = 0; i < indcs.length; i++){
		invrt.push( indcs.max() - indcs[i] );
		}
	newMel = []
	posN = [].slice.call(scl);
	while (mel.max() > posN.max()){
		x += 1;
		for (var s = 0; s < scl.length; s++){
			posN.push(scl[s] + 12 * x);
			}
		}
	for (i = 0; i < invrt.length; i++){
		newMel.push(posN[invrt[i]])
		}
	return newMel;
}

// attach the .equals method to Array's prototype to call it on any array
Array.prototype.equals = function (array) {
    // if the other array is a falsy value, return
    if (!array)
        return false;

    // compare lengths - can save a lot of time 
    if (this.length != array.length)
        return false;

    for (var i = 0, l=this.length; i < l; i++) {
        // Check if we have nested arrays
        if (this[i] instanceof Array && array[i] instanceof Array) {
            // recurse into the nested arrays
            if (!this[i].equals(array[i]))
                return false;       
        }           
        else if (this[i] != array[i]) { 
            // Warning - two different object instances will never be equal: {x:20} != {x:20}
            return false;   
        }           
    }       
    return true;
}   



Array.prototype.max = function() {
  return Math.max.apply(null, this);
};

Array.prototype.min = function() {
  return Math.min.apply(null, this);
};