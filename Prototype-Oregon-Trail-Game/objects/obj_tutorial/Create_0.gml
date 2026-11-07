/// @description Insert description here
// You can write your code in this editor
_animal_name = instance_nearest(0, 0, obj_animal_name)
messages = 
[
"Welcome to start of the game, gameplay consists of rounds where you first assign your pops (the green tokens) to jobs. Then every round you will get a dilemma that you must resolve with one of the choices. Lets get you familiar with the resources you will need to manage",
"Your first and most important resource is food. Your people will consume food every round, if you do not have enough food to feed them they will start to starve. If you cannot feed a pop a second round, they die. If all pops die, you lose the game",
"The next resource is culture. Culture represents how in touch your people are with their original cultural identity. If culture dips too low you will lose the benefits of your cultural tenants.",
"Autonomy reflects the political autonomy of your people. Generally autonomy is only affected by dilemmas and provides no benefits. However, should autonomy fall to 0 you will lose the game",
"Next is the " + _animal_name.text + " population which ranges from low to high. Higher population levels means you get more food out of hunting. There is a small chance for this to decrease every round",
"Finally there is aggression. This indicates how aggressive foreigner colonizers are towards your people. Higher aggression will increase the chances you get bad dilemmas.",
"Now lets try assigning a pop to a job. Click and drag one of those green tokens on top of one of these boxes. Press enter to close this message"
]
popup = instance_create_layer(x, y, "Text", obj_text_box)
index = 0;
popup.text = messages[index];
active = false;
stage = 0
manager = instance_nearest(0, 0, obj_game_manager);
