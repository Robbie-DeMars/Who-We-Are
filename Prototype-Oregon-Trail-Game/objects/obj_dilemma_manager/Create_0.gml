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
		spr_bison
	),
	
	scr_create_dilemma
	(
		"Traders have cornered the market for food gained from hunting most of the " + animal_name.text + "! Now they are seeking to sell the hunt from our own sacred " + animal_name.text + " back to us. This has devastated the animal population close to extinction. Do we accept their deal?",
		["Yes, there's nothing else we can do to get the food our people need.",
		"No, we will break into their settlements and take back what was ours.",
		"No, the " + animal_name.text + " is not yet gone, we must hunt what is left of it before they can."],
		[
		scr_market_cornered_option_1,
		scr_market_cornered_option_2,
		scr_market_cornered_option_3
		],
		true,
		"At the start of the 19th century, Bison populations in North America were so abundant that it was said that some herds “covered the plains like a shadow” as far as the eye could see. An estimated 60 million Bison roamed the Plains. But by 1880, there were only an estimated 500 Bison left in existence. Beginning in the 1860’s, the U.S. Army attempted to subdue the Plains Indians in order to make way for settlements and railroad lines. It was well recognized at the time the important role Bison played for the Indigenous people. So, the United States began purposely over hunting Bison to benefit themselves and hinder Native Americans. Oftentimes though, Bison would be killed without being harvested, being left to decay.",
		"https://www.nps.gov/articles/000/what-happened-to-the-bison.htm",
		spr_bison
	),
	
	scr_create_dilemma
	(
		"Colonists want to sign a treaty with your people. In this treaty, the government will recognize a small portion of land as your exclusive territory. However, nobody will be allowed to leave without permission. Will you sign this treaty?",
		["Yes, we will have a space to live our ancestral way and prevent further tension between our people.",
		"No, we have lived on this land for thousands of years."],
		[
		scr_land_treaty_option_1,
		scr_land_treaty_option_2
		],
		true,
		"April 29, 1868 \nThe United States Government and the Sioux Nation sign the Treaty of Fort Laramie. In this treaty, the U.S. dedicates land in the Black Hills of Dakota as the Sioux Reservation. Soon after this, gold is discovered in the area and masses of miners and settlers move onto the land. As a result of the violation of the Treaty of Fort Laramie, the Native Americans there begin to resist and the Battle of Little Bighorn ensues on June 25, 1876. Led by Crazy Horse and Sitting Bull, the Lakota Sioux and Cheyenne battled Lieutenant Colonel George Custer and his troops along the Little Bighorn River. Known famously as Custer’s Last Stand, this battle resulted in the defeat and killing of Custer and his troops, further increasing the tension between Native Americans and White Americans.",
		"https://www.history.com/topics/native-american-history/native-american-timeline",
		spr_custer
	),
	
	scr_create_dilemma
	(
		"The colonists are forcing your people from your land.",
		["Well then..."],
		[
		scr_trail_o_tears
		],
		true,
		"In the winter of 1831, soon after President Andrew Jackson signed the Indian Removal Act of 1830, the Choctaw people became the first group of Native Americans to be expelled from their land altogether. Making this journey to their reserved territory on foot and often “bound in chains” and without food and supplies, thousands of Choctaw lost their lives. In 1836, 3,500 of the 15,000 Creeks driven from their land by the federal government did not survive the journey to Oklahoma. In 1838, more than 5,000 Cherokee died as a result of their forced journey.",
		"https://www.britannica.com/event/Trail-of-Tears",
		spr_refugees
	),
	
	scr_create_dilemma
	(
		"Your people believe that if you allow them to perform a Ghost Dance the gods may favor you and create the world anew by destroying all non-believers. However, rumor has it the government is worried about the increasing influence the Ghost Dance spiritual movement has. Will you allow your people to boost their morale by performing this dance?",
		["Yes, this is what we need right now.",
		"No, we can not afford to anger the government."],
		[
		scr_trail_o_tears
		],
		true,
		"Throughout 1890, the U.S. Government was growing increasingly worried about the Ghost Dance spiritual movement at Pine Ridge Indian Reservation. Many Sioux there believed that if they performed the Ghost Dance, the gods would “create the world anew” and destroy non-believers. Reservation police tried to arrest Sitting Bull, famous chief of the Sioux people on December 15, 1890. Under the assumption that he himself was a Ghost Dancer, reservation police killed Sitting Bull in the process of arresting him.",
		"https://www.britannica.com/event/Trail-of-Tears",
		spr_ghost
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
),

scr_create_dilemma(
	"An explorer and a map-maker are passing through your tribe's lands. A member of your tribe has met with them and agreed to be their translator on their journey. Will you let them pass through safely and continue their voyage?", 
	[
	"Yes, we must help them now in hopes that they will continue to look at us favorably.", 
	"No, we must not aid in their pursuits. We can not let them learn our land, lest they take it from us one day." 
	],
	[
	scr_vermin_option_1,
	scr_vermin_option_2,
	],
	true,
	"Nov 2, 1804 \nExplorers Meriwether Lewis and William Clark meet six months pregnant Sacagawea while exploring the territory of the Louisiana Purchase. The explorers see her value as a translator and ask her to accompany them on their journey. On Apr 7, 1805, Sacagawea joins them on their exploration as a guide and translator. She is accompanied by her husband, Toussaint Charbonneau.",
	"https://jacksonholehistory.org/learn/archives-research/the-imagery-of-sacagawea-by-brian-w-dippie/",
	spr_explorer
),

scr_create_dilemma(
	"The colonial force wants some of your people to help them. They think that you can turn the tide of their war in their favor. Will you help them?", 
	[
	"Yes, we must help them now in hopes that they will continue to look at us favorably.", 
	"No, we must not aid them where they would not aid us.", 
	],
	[
	scr_war_aid_option_1,
	scr_war_aid_option_2
	],
	true,
	"In September of 1918, Choctaw used their native language to transmit secret messages for U.S. troops during the Argonne Offensive against Germany. In May of 1942, Members of the Navajo Nation developed a code to send secret messages for the U.S. armed forces during WWII. Considered to have created an “unbreakable code” due to the complex nature of the Navajo language, they played a major role in many major battles of WWII.",
	"https://americanindian.si.edu/static/why-we-serve/topics/code-talkers/#:~:text=Dispersed%20across%20six%20marine%20divisions,%2C%20Iwo%20Jima%2C%20and%20Okinawa",
	spr_code_talker
)

];

