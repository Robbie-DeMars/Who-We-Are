/// @description Insert description here
// You can write your code in this editor

//CREATE DILEMMAS HERE
last_dilemma = 0;
debug_dilemmas =
[];

colonial_dilemmas = 
[
	scr_create_dilemma
	(
		"We have been raided!",
		["Oh no!"],
		[scr_raided_option_1],
		true,
		"Small raiding parties operated on a hit-and-run basis and were organized to avenge a death or to gain personal war honors as well as to obtain material goods. An individual organized his raiding party by sending a messenger with a pipe to nearby villages to explain the purpose of the mission. Those warriors who wished to join the raiding party would take part in smoking the offered pipe.",
		"https://theuselessweb.com/"
	)
];



common_dilemmas = 
[
scr_create_dilemma(
	"Vermin ate our food stores! What will we do?", 
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
	true,
	"",
	"https://theuselessweb.com/"
),

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
	true,
	"",
	"https://theuselessweb.com/"
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
	false,
	"In the 18th century, Iroquois living in the Great Lakes area up into modern day Canada would travel as far as the Carolinas to wage war against the Chickasaw, Chocktaw, and Cherokee. These tribes would wage war with each other to help members of their group cope with the loss of a loved one. Known as 'Mourning wars,' the aim of these raids was to capture enemies as `replacements` for deceased members of their tribe. The women of the tribe would assess if the captured males were `fit` enough to be adopted into their tribe. If they weren’t, they would be ceremonially tortured to death.",
	"https://www.oxfordreference.com/display/10.1093/acref/9780195071986.001.0001/acref-9780195071986-e-0618"
)

];

