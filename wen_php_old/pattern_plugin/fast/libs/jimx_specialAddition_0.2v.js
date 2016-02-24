
// 	jimxHelp 			: A jimx helper proto 
// 	for				: TimeSwen Special addition
// 	version			: 0.3v
// Last modified 	: 1 feb 2016

var initAllEvent = new CustomEvent("initAll",{bubbles:true,cancelable:true});

var getNewHelper =function(){
		return new jimxHelp();
	}

//jimxHelp object 
var jimxHelp = function( s ){ 
	this.self = this;
	//space for future constructor implementations..
};

	//setting jimxHelp prototype shortcut. 
	jProto = jimxHelp.prototype;

	jProto.applyToAll = function(applyFunction){
			var ObjArr = this.elm;
			for(eli=0; eli< ObjArr.length ;eli++)
			{	
				applyFunction(ObjArr[eli],eli,this);
			}
		};	
	
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

	jProto.ElementHelper.append = function(d){
		if(typeof d == "object"){
			applyToAll(function(element,i,self){
				self.elmx.appendChild(d);
			});
		}
	}


	//returns actual created element
	jProto.ElementHelper.get = function(){
		return this.elmx;
	}


/* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

	//virtual function that makes new element and return ElementHelper for further chaining purpose
	jProto.newElem = function(d){
		this.ElementHelper.make(d);
		return this.ElementHelper;
	}

	
	jProto.html = function (html){
			if(arguments.length == 1){
				 this.applyToAll(function(element){
					element.innerHTML = html;
				});
				return this
			}
			else{	
				_HTML = Array();
				 this.applyToAll(function(element){
					_HTML.push(element.innerHTML.trim());
				})
				 if(_HTML.length == 1)_HTML = _HTML[0] ;
				return _HTML
			}
		}



	// Selector function that returns actual Dom object
	jProto.element = function( nodeName ) {	
				
			scope = this;
				
				if (typeof nodeName != "string" )
				{
					this.node = Array(nodeName);
				} 
				else{
					// #id
					nodeName = nodeName.trim();
					nodeType = (nodeName.split(""))[0];
					nodeToReturn = Array();
				 	
					try{
								if(nodeType == ".")
								{
									nodeName = nodeName.slice(1,nodeName.length);
									nodeToReturn = document.getElementsByClassName(nodeName);	
								}
								else if(nodeType == "#"){
									
									nodeName = nodeName.slice(1,nodeName.length);
									nodeToReturn.push(document.getElementById(nodeName));	

									console.log(document.getElementById("element"));	
								}
								else{
									nodeType = "";
									nodeToReturn = document.getElementsByTagName(nodeName);	
								}
							}
							catch(e){

							}finally{
								if(nodeToReturn.length == 0 || nodeToReturn[0] == null){
									throw "Element : \""+nodeType+nodeName+"\" :  not found.";
								}
								else{
	
									scope.elm = nodeToReturn;
								}

							}
				 	
					}


					return this;
				};


	// returns actual Dom elemet
	jProto.getDomElem =function(){			
		return this.elm || undefined;
	}

	//Finally Setting up window.onload function as ready of jimxHelp
	jimxHelp.ready = function(fn){
		document.addEventListener("initAll",fn);
	}
	
	//On window load complete disptach init all event that will called jimxHelp.ready function
	window.onload = function(){
		document.dispatchEvent(initAllEvent,"initAll");
	};

	