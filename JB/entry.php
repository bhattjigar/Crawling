<!DOCTYPE html>
<html ng-app ="app1">
<head>
	<title>Pattern Identifier </title>
	<link href='http://fonts.googleapis.com/icon?family=Material+Icons' rel='stylesheet' type='text/css'/>
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/css/materialize.min.css" />

  	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.0/angular.min.js"></script>
  	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.1/jquery.js"></script>
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/js/materialize.min.js"></script>
        

	  <script type="text/javascript">
	  	$(document).ready(function () {
	  		$("select").material_select();
	  	});

	  </script>
 		<script type="text/javascript">
        	// angular
        	var materialColorRoundRound = ' <div class="progress"><div class="indeterminate"></div></div>';
        	app = angular.module("app1",[]);

        	app.controller("appCtr",['$scope','$http',function($scope,$http){

        		$scope.dis = "none";
        		$scope.patternList = [];

        		$scope.options = ["1","2","3","4","5"];
        		$scope.depthValue = "depth"; 
						$scope.txt = [];

	        		$scope.newAr = function(i){
	        			return new Array(parseInt(i));
	        		}
	        		
	        		
	        		$scope.getW = function(i){
	        			return parseInt( 10 / parseInt(i) );
	        		};
	        	
	        		$scope.appendNewPattern = function(){

	        			$scope.txt = $scope.txt.slice(0,$scope.depthValue);
	        			$scope.patternList.push(
	     							
	     						$scope.txt.join (" ~> ").toString()
	        			);

	        			console.dir($scope.patternList);
	        		};

	        		$scope.updateDb = function(){
	        			$scope.dis = "block";
	        			$("#htmLoaderDiv").html(materialColorRoundRound);
	        			$http.post("./TESTBOT.php",$scope.patternList).success(function(d){
	        				// console.log(d);
	        				
	        				$("#htmLoaderDiv").html(d);
	        				
	        				// console.log(dx);
	        			});
	        		};

	        		$scope.removeMe = function(id){
	        			console.log(id);
	        			$scope.patternList.splice(id, 1 );

	        		};

        	}]);	

        </script>  


	<style type="text/css">

	body {
	    text-align: justify;
	    text-justify: inter-word;
	}
	.pad-left-50{
		padding-left: 50px!important;
	}
	img{
		width: 100%;
		height: 200px;
		overflow: hidden;
	}
	h1{
		  text-align: left;
	    text-justify: inter-word;
	}
	.progress > .indeterminate{
		background: #64b5f6;
	}
	.progress > .indeterminate::before {
		background: #1565c0;
	}
	.progress > .indeterminate::after {
		background: #1565c0;
	}
	.collection-item > a {
		line-height : 26px !important;
	}


		</style>
</head>
<body ng-controller="appCtr">
<nav class="blue lighten-3 pad-left-50">
	<a href="#" class="brand-logo ">Ti Pattern</a>
</nav>
<br	/>
	<div class="container" >
		
			
			<div class="row">
				<div class="input-field col s4 m4 l2">
					
						<select id="depth_select" class="browser-default"  ng-model="depthValue">
							<option value="depth" disabled selected>Depth</option>
								<option ng-repeat="i in options" value="{{i}}"> {{ i }} </option>
						</select>
				</div>

					
					<div class="col s12 m8 l10	">
			  		
			  		<ul id="depth_type" class="collection with-header" ng-if="depthValue != 'depth'">
        				<li class="collection-header"><h5>Type</h5> </li>
        			
        				<li class="collection-item" ng-if="depthValue == '1' ">
        					Depth 1 : elm[ id/class ]
						</li>
						<li class="collection-item"  ng-if="depthValue == '2' ">
							Depth 2 : elm[ id/class ] ~>   elm[ id/class ]
						</li>
						<li class="collection-item"  ng-if="depthValue == '3' ">
							Depth 3 : elm[ id/class ] ~>  elm[ id/class ] ~>   elm[ id/class ]
						</li>
						<li class="collection-item"  ng-if="depthValue == '4' ">
							Depth 4 : elm[ id/class ] ~> elm[ id/class ] ~>  elm[ id/class ] ~>   elm[ id/class ]
						</li>
						<li class="collection-item" ng-if="depthValue == '5' " >
							Depth 5 : elm[ id/class ] ~> elm[ id/class ] ~>elm[ id/class ] ~>  elm[ id/class ] ~>   elm[ id/class ]
						</li>
						
					</ul>
					</div>

				</div>

				<div class="row">
					
					<div class="col s12 m12 l12 depth-2" ng-if="depthValue != 'depth'">
						
						<form ng-submit="appendNewPattern()">	
							<div class="input-field col s12 m{{ getW( depthValue ) }} " ng-repeat="ti in newAr(depthValue) track by $index">
					          <input id="txt{{$index+1}}" ng-model="txt[$index]" type="text" class="validate" />
					          <label for="txt{{$index+1}}" class="active">element {{$index+1}}</label>
					        </div>

							<div class="col s12 m1 l1">
							<br/>
								<button class="btn-floating" ><i class="material-icons">add</i></button>
							</div>
						</form>


					</div>
				</div>
				<div class="row"  ng-if="depthValue != 'depth' && patternList.length>0 ">
						<form ng-submit="updateDb()">
							<ul class="collection with-header">
	        				
	        				<li class="collection-header"><h5>Ways to crawl { {{ patternList.length }} } <button class="btn right blue" ng-if="patternList.length>0"><i class="material-icons">file_download</i></button></h5>

	        				</li>
	      						<li class="collection-item" ng-repeat="i in patternList track by $index">
									*&nbsp;&nbsp;&nbsp;{{ i }}<a href="" class="right" ng-click="removeMe($index)"><i class="material-icons">close</i></a>
								</li>				
							</ul>
        				</form>
				</div>

			<div class="col s12" style="display: {{dis}}" >
				

				  <div class="card" >
					   <div class="card-content" id="htmLoaderDiv">
			            </div>
			           
				  </div>



			</div> 

		
	</div>

</body>
</html>