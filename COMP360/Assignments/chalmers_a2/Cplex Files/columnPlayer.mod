/*********************************************
 * OPL 12.8.0.0 Model
 * Author: ryanchalmers
 * Creation Date: Sep 27, 2018 at 1:14:16 PM
 *********************************************/
{string} Y = {"y1", "y2", "y3"};
 
 dvar int+ y[Y];
// dvar double z;

 float w;
 
 minimize w;
 
 subject to {
 
  
 }
 
 subject to {
 	2*y["y1"] + 6*y["y2"] - w <= 0;
 	- 5*y["y1"] + 8*y["y2"] - y["y3"] - w <= 0;
 	- 5*y["y2"] - 5*y["y3"] - w <= 0;
 	y["y1"] + y["y2"] + y["y3"] == 1;
 }
