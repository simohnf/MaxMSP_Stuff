var PI = Math.PI; 
var E = Math.E;

function freq2lin(f){
//	outlet(0, "linear", Math.pow(E, -2*PI*f ) );
//	outlet(0, "linear", f  );
outlet(0, 1 - Math.pow(E, -2*PI*(1-f)));
//	outlet(0, -2*PI*f);
	}
	
	
function bang(){
	outlet(0,"myvalue","is",myval);
}



