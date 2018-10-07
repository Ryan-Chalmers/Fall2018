/*********************************************
 * OPL 12.8.0.0 Model
 * Author: ryanchalmers
 * Creation Date: Sep 27, 2018 at 11:30:22 AM
 *********************************************/

{string} X = {"x1", "x2", "x3"};
 
 dvar int+ x[X];
// dvar double z;

 float z;
 
 maximize z;
 
 subject to {
 	z - 2*x["x1"] + 5*x["x2"] <= 0;
 	z - 6*x["x1"] - 8*x["x2"] + 5*x["x3"] <= 0;
 	z - x["x2"] + 5*x["x3"]<= 0;
 	x["x1"] + x["x2"] + x["x3"] == 1;
 	
 }
 