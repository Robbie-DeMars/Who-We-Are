/// @description Insert description here
// You can write your code in this editor

//CREATE DILEMMAS HERE
colonial_dilemmas = [];



common_dilemmas = [
scr_create_dilemma(
"Vermin ate our food stores! What we will do?", 
[
"There is no need to worry, we have enough food", 
"Trade with settlers for more food", 
"Steal from foreign settlers", 
],
[
scr_vermin_option_1,
scr_vermin_option_2,
scr_vermin_option_3
],
true),

scr_create_dilemma(
"A messanger from a nearby tribe has arrived. While we persist in our more nomadic lifestyle they have elected to build permanent settlements and believe our differences could yield benefits through trade",
[
"Welcome the oppoturnity to exchange knowledge with others",
"We must not let their complacency corrupt our people",
],
[
scr_settled_neighbors_option_1,
scr_settled_neighbors_option_2
],
true),

scr_create_dilemma
(
"It is time to begin preparations for the animal festival. This festival is an important celebration but it requires a great deal of resources. Perhaps it would be best to move on from the tradition.",
[
"We will fully commit to the animal dance",
"We cannot afford to hold the dance this year",
],
[
scr_dance_prep_option_1,
scr_dance_prep_opton_2
],
false
)






];

