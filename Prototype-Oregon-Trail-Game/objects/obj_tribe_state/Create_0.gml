/// @Sets up the initial state of the tribe
// You can write your code in this editor

//Basic resources
food = 36;
pop = [
instance_create_layer(x, y, "Pop_Tokens", obj_pop),
instance_create_layer(x, y, "Pop_Tokens", obj_pop),
instance_create_layer(x, y, "Pop_Tokens", obj_pop),
instance_create_layer(x, y, "Pop_Tokens", obj_pop),
instance_create_layer(x, y, "Pop_Tokens", obj_pop),
instance_create_layer(x, y, "Pop_Tokens", obj_pop)
];
culture = 10;
autonomy = 10;
animal_pop = 3;
aggression = 5;

//Job + job modifier
jobs = ["Waiting", "Ritual", "Overhunt", "Trade", "Raid", "Nurture", "Assimilate"];
//Ritual Hunt
ritual_hunt_food_mod = 0;
ritual_hunt_culture_mod = 0;
//Overhunt
overhunt_mod = 0;
//Trade
trade_mod = 0;
//Raid
raid_food_mod = 0;
raid_casualty_avoidance_chance_mod = 0;
raid_aggression_mod = 0;
raid_autonomy_mod = 0;
//Nurture
nurture_mod = 0;
//Assimilate
assimilate_aggression_mod = 0;
assimilate_culture_mod = 0;
