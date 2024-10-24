/// @description Insert description here
// You can write your code in this editor

//CREATE DILEMMAS HERE
debug_dilemmas =
[];

colonial_dilemmas = 
[
	scr_create_dilemma
	(
		"We have been raided!",
		["Oh no!"],
		[scr_raided_option_1],
		true
	)
];



common_dilemmas = 
[
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
	"Foreign government is offering us a treaty. In exchange for allowing foreigners to settle on our lands we will be allowed to hunt on what they claim to be their territory.",
	[
	"Sign the treaty",
	"Refuse to sign the treaty",
	"Refuse to sign the treaty and hunt in that land anyways"
	],
	[
	scr_hunting_treaty_option_1,
	scr_hunting_treaty_option_2,
	scr_hunting_treaty_option_3
	],
	false
),

scr_create_dilemma
(
	"An ongoing war has created refugees from other tribes looking for new homes. We could take them in but people do not let go of their traditions easily and cultural clashes may arise.",
	[
	"Yes, take them in",
	"No, we are too different",
	],
	[
	scr_refugee_option_1,
	scr_refugee_option_2
	],
	false
)

];

