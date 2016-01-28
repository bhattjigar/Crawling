
// 	jimxHelp 			: A jimx helper proto 
// 	for				: TimeSwen Special addition
// 	version			: 0.2v
// Last modified 	: 28 jan 2016

//jimxHelp object 
var jimxHelp = function( s ){ 

	//space for future constructor implementations..
};


	//setting jimxHelp prototype shortcut. 
	jProto = jimxHelp.prototype;


	//ElementHelper helps in functioning like creating and modifing DOM elements
	jProto.ElementHelper = function(){ };
	

	//function make creates new Dom elements
	jProto.ElementHelper.make = function(d){
		this.elmx = document.createElement(d);
		return this;
	}

	//For DOM attribute elements
	jProto.ElementHelper.attr = function(d1,d2){
		if( d2 != undefined ){
			this.elmx.setAttribute( d1.toString(), d2.toString() );
			return this;
		}
		else{
			return this.elmx.getAttribute( d1.toString() );	
		}
	}

	//setting up id for ElementHelper
	jProto.ElementHelper.id = function(d){
		this.elmx.setAttribute("id", d);
		return this;
	}
	
	//setting up class for ElementHelper
	jProto.ElementHelper.class = function(d){
		this.attr("class", d);
		return this;
	}

	//add new class for ElementHelper
	jProto.ElementHelper.addClass = function(d){
		this.attr("class", d+" "+this.attr("class"));
		return this;	
	}

	//returns actual created element
	jProto.ElementHelper.get = function(){
		return this.elmx;
	}

	//virtual function that makes new element and return ElementHelper for further chaining purpose
	jProto.newElem = function(d){
		this.ElementHelper.make(d);
		return this.ElementHelper;
	}


	// Selector function that returns actual Dom object
	jProto.element = function( s ) {	
				if( typeof s == 'string' ){
					this.elm = document.querySelectorAll( s );
				}
		return this;
	};

	// returns actual Dom elemet
	jProto.getDomElem =function(){			
		return this.elm || undefined;
	}


	//Finally Setting up window.onload function as ready of jimxHelp
	jimxHelp.ready = function(fn){
		window.onload = fn( new jimxHelp() );
	}

/* 


*/


	