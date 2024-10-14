/// @Sets up the initial state of the tribe
// You can write your code in this editor

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
jobs = ["Waiting", "Ritual", "Overhunt", "Trade", "Raid", "Nurture", "Assimilate"];
