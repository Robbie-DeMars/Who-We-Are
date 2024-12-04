/// @description Insert description here
// You can write your code in this editor

animal_name = instance_nearest(0, 0, obj_animal_name);

//CREATE DILEMMAS HERE
last_dilemma = 0;
debug_dilemmas =
[];

colonial_dilemmas = 
[
	scr_create_dilemma
	(
		"We have been raided by a nearby colonial force! They claim our refusal to cooperate as their reasoning...",
		["Oh no!"],
		[scr_raided_option_1],
		true,
		"In 1863, in response to acts of individual resistance such as Shoshone men raiding livestock to replenish their own dwindling resources after Mormon settlers expelled them from liveable land, Colonel Patrick Edward Connor alongide American forces slaughtered hundreds of Shoshone. 250 Shoshone people were slain, the remaining living women were raped, and their settlements raised and pillaged.",
		"https://historytogo.utah.gov/bear-river-massacre/",
		spr_raided
	),
	
	scr_create_dilemma
	(
		"An Army regiment has completely wiped out a nearby group of " + animal_name.text + " your people rely on!",
		["Oh no!"],
		[scr_buffalo_overhunt],
		true,
		"At the start of the 19th century, Bison populations in North America were so abundant that it was said that some herds “covered the plains like a shadow” as far as the eye could see. An estimated 60 million Bison roamed the Plains. But by 1880, there were only an estimated 500 Bison left in existence. Beginning in the 1860’s, the U.S. Army attempted to subdue the Plains Indians in order to make way for settlements and railroad lines. It was well recognized at the time the important role Bison played for the Indigenous people. So, the United States began purposely over hunting Bison to benefit themselves and hinder Native Americans. Oftentimes though, Bison would be killed without being harvested, being left to decay.",
		"https://www.nps.gov/articles/000/what-happened-to-the-bison.htm",
		spr_raided
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
	"https://theuselessweb.com/",
	spr_anchor
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
	"Archeological evidence shows that Native Americans tribes have been trading with each other as long as they have been inhabiting North America. Quarried stone from the obsidian cliffs near Mammoth Hot Springs, Wyo. traveled to the Ohio River Valley almost 2,000 years ago. The Hohokam tribe, in modern day Arizona, traded seashells that they acquired from the Mojave tribe for buffalo hides from multiple southern Plains tribes.",
	"https://www.wyohistory.org/encyclopedia/trade-among-tribes-commerce-plains-europeans-arrived",
	spr_messenger
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
	"In the 18th century, Iroquois living in the Great Lakes area up into modern day Canada would travel as far as the Carolinas to wage war against the Chickasaw, Chocktaw, and Cherokee. These tribes would wage war with each other to help members of their group cope with the loss of a loved one. Known as 'Mourning wars,' the aim of these raids was to capture enemies as `replacements` for deceased members of their tribe. The women of the tribe would assess if the captured males were `fit` enough to be adopted into their tribe. If they weren't, they would be ceremonially tortured to death.",
	"https://www.oxfordreference.com/display/10.1093/acref/9780195071986.001.0001/acref-9780195071986-e-0618",
	spr_refugees
),

scr_create_dilemma
(
	"A government official has visited your village. He aims to assimilate your tribe to the 'American way of life.' He wants to do this by sending your tribe's children to his boarding school. Will you send them to adopt their way of life?",
	[
	"Yes, this will bring peace to our people.",
	"No, they aim to hurt our culture.",
	],
	[
	scr_schools_option_1,
	scr_schools_option_2
	],
	false,
	"Oct 6, 1879 \nNative American students attend the United States first off-reservation boarding school, Carlisle Indian Industrial School in Pennsylvania. This school, created by Civil War veteran Richard Henry Pratt, was designed to assimilate native american students.",
	"https://www.history.com/topics/native-american-history/native-american-timeline",
	spr_school
)

];

