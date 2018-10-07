/*********************************************
 * OPL 12.8.0.0 Model
 * Author: ryanchalmers
 * Creation Date: Sep 17, 2018 at 7:00:41 PM
 *********************************************/

{string} Products = ...;
 
 tuple output {
 	float cost;
 	float value; 
 }
 
 output Product[Products] = ...;

 
 float minStaples = ...;
 float minNails = ...;
 float minScrews = ...;
 
 float maxCost = ...;
 
// float numProducts = ...;

 dvar int+ amount[Products];
 
 maximize sum(p in Products) Product[p].value * amount[p];
 	  
subject to {
	sum(p in Products) Product[p].cost * amount[p] <= maxCost;
	
	
	- amount["poorStaple"] - amount["averageStaple"] - amount["premiumStaple"] <= - minStaples;
	- amount["poorNail"] - amount["averageNail"] - amount["premiumNail"] <= - minNails;
	- amount["poorScrew"] - amount["averageScrew"] - amount["premiumScrew"] <= - minScrews;
	- 10*amount["premiumStaple"] + amount["averageStaple"] <= 0;
	- 10*amount["premiumNail"] + amount["averageNail"] <= 0;
	- 10*amount["premiumScrew"] + amount["averageScrew"] <= 0;
	
	
}