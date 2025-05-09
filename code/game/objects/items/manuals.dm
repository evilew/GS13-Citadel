/*********************MANUALS (BOOKS)***********************/

//Oh god what the fuck I am not good at computer
/obj/item/book/manual
	icon = 'icons/obj/library.dmi'
	due_date = 0 // Game time in 1/10th seconds
	unique = TRUE   // FALSE - Normal book, TRUE - Should not be treated as normal book, unable to be copied, unable to be modified

/obj/item/book/manual/hydroponics_pod_people
	name = "The Human Harvest - From seed to market"
	icon_state ="bookHydroponicsPodPeople"
	author = "Farmer John" // Whoever wrote the paper or book, can be changed by pen or PC. It is not automatically assigned.
	title = "The Human Harvest - From seed to market"
	//book contents below
	dat = {"<html>
				<head>
				<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
				<style>
				h1 {font-size: 18px; margin: 15px 0px 5px;}
				h2 {font-size: 15px; margin: 15px 0px 5px;}
				li {margin: 2px 0px 2px 15px;}
				ul {list-style: none; margin: 5px; padding: 0px;}
				ol {margin: 5px; padding: 0px 15px;}
				</style>
				</head>
				<body>
				<h3>Growing Humans</h3>

				Why would you want to grow humans? Well I'm expecting most readers to be in the slave trade, but a few might actually
				want to revive fallen comrades. Growing pod people is easy, but prone to disaster.
				<p>
				<ol>
				<li>Find a dead person who is in need of cloning. </li>
				<li>Take a blood sample with a syringe. </li>
				<li>Inject a seed pack with the blood sample. </li>
				<li>Plant the seeds. </li>
				<li>Tend to the plants water and nutrition levels until it is time to harvest the cloned human.</li>
				</ol>
				<p>
				It really is that easy! Good luck!

				</body>
				</html>
				"}

/obj/item/book/manual/ripley_build_and_repair //GS13 - Nanotrasen to GATO
	name = "APLU \"Ripley\" Construction and Operation Manual"
	icon_state ="book"
	author = "Weyland-Yutani Corp"
	title = "APLU \"Ripley\" Construction and Operation Manual"
	dat = {"<html>
				<head>
				<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
				<style>
				h1 {font-size: 18px; margin: 15px 0px 5px;}
				h2 {font-size: 15px; margin: 15px 0px 5px;}
				li {margin: 2px 0px 2px 15px;}
				ul {list-style: none; margin: 5px; padding: 0px;}
				ol {margin: 5px; padding: 0px 15px;}
				</style>
				</head>
				<body>
				<center>
				<b style='font-size: 12px;'>Weyland-Yutani - Building Better Worlds</b>
				<h1>Autonomous Power Loader Unit \"Ripley\"</h1>
				</center>
				<h2>Specifications:</h2>
				<ul>
				<li><b>Class:</b> Autonomous Power Loader</li>
				<li><b>Scope:</b> Logistics and Construction</li>
				<li><b>Weight:</b> 820kg (without operator and with empty cargo compartment)</li>
				<li><b>Height:</b> 2.5m</li>
				<li><b>Width:</b> 1.8m</li>
				<li><b>Top speed:</b> 5km/hour</li>
				<li><b>Operation in vacuum/hostile environment:</b> Possible</b>
				<li><b>Airtank Volume:</b> 500liters</li>
				<li><b>Devices:</b>
					<ul>
					<li>Hydraulic Clamp</li>
					<li>High-speed Drill</li>
					</ul>
				</li>
				<li><b>Propulsion Device:</b> Powercell-powered electro-hydraulic system.</li>
				<li><b>Powercell capacity:</b> Varies.</li>
				</ul>

				<h2>Construction:</h2>
				<ol>
				<li>Connect all exosuit parts to the chassis frame</li>
				<li>Connect all hydraulic fittings and tighten them up with a wrench</li>
				<li>Adjust the servohydraulics with a screwdriver</li>
				<li>Wire the chassis. (Cable is not included.)</li>
				<li>Use the wirecutters to remove the excess cable if needed.</li>
				<li>Install the central control module (Not included. Use supplied datadisk to create one).</li>
				<li>Secure the mainboard with a screwdriver.</li>
				<li>Install the peripherals control module (Not included. Use supplied datadisk to create one).</li>
				<li>Secure the peripherals control module with a screwdriver</li>
				<li>Install the internal armor plating (Not included due to GATO regulations. Can be made using 5 metal sheets.)</li>
				<li>Secure the internal armor plating with a wrench</li>
				<li>Weld the internal armor plating to the chassis</li>
				<li>Install the external reinforced armor plating (Not included due to GATO regulations. Can be made using 5 reinforced metal sheets.)</li>
				<li>Secure the external reinforced armor plating with a wrench</li>
				<li>Weld the external reinforced armor plating to the chassis</li>
				<li></li>
				<li>Additional Information:</li>
				<li>The firefighting variation is made in a similar fashion.</li>
				<li>A firesuit must be connected to the Firefighter chassis for heat shielding.</li>
				<li>Internal armor is plasteel for additional strength.</li>
				<li>External armor must be installed in 2 parts, totaling 10 sheets.</li>
				<li>Completed mech is more resiliant against fire, and is a bit more durable overall</li>
				<li>GATO is determined to the safety of its <s>investments</s> employees.</li>
				</ol>
				</body>
				</html>

				<h2>Operation</h2>
				Please consult the GATO compendium "Robotics for Dummies".
			"}

/obj/item/book/manual/chef_recipes
	name = "Chef Recipes"
	icon_state = "cooked_book"
	author = "Lord Frenrir Cageth"
	title = "Chef Recipes"
	dat = {"<html>
				<head>
				<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
				<style>
				h1 {font-size: 18px; margin: 15px 0px 5px;}
				h2 {font-size: 15px; margin: 15px 0px 5px;}
				li {margin: 2px 0px 2px 15px;}
				ul {list-style: none; margin: 5px; padding: 0px;}
				ol {margin: 5px; padding: 0px 15px;}
				</style>
				</head>
				<body>

				<h1>Food for Dummies</h1>
				Here is a guide on basic food recipes and also how to not poison your customers accidentally.


				<h2>Basic ingredients preparation:</h2>

				<b>Dough:</b> 10u water + 15u flour for simple dough.<br>
				15u egg yolk + 15u flour + 5u sugar for cake batter.<br>
				Doughs can be transformed by using a knife and rolling pin.<br>
				All doughs can be microwaved.<br>
				<b>Bowl:</b> Add water to it for soup preparation.<br>
				<b>Meat:</b> Microwave it, process it, slice it into microwavable cutlets with your knife, or use it raw.<br>
				<b>Cheese:</b> Add 5u universal enzyme (catalyst) to milk and soy milk to prepare cheese (sliceable) and tofu.<br>
				<b>Rice:</b> Mix 10u rice with 10u water in a bowl then microwave it.

				<h2>Custom food:</h2>
				Add ingredients to a base item to prepare a custom meal.<br>
				The bases are:<br>
				- bun (burger)<br>
				- breadslices(sandwich)<br>
				- plain bread<br>
				- plain pie<br>
				- vanilla cake<br>
				- empty bowl (salad)<br>
				- bowl with 10u water (soup)<br>
				- boiled spaghetti<br>
				- pizza bread<br>
				- metal rod (kebab)

				<h2>Table Craft:</h2>
				Put ingredients on table, then click and drag the table onto yourself to see what recipes you can prepare.

				<h2>Microwave:</h2>
				Use it to cook or boil food ingredients (meats, doughs, egg, spaghetti, donkpocket, etc...).
				It can cook multiple items at once.

				<h2>Processor:</h2>
				Use it to process certain ingredients (meat into meatball, doughslice into spaghetti, potato into fries,etc...)

				<h2>Gibber:</h2>
				Stuff an animal in it to grind it into meat.

				<h2>Meat spike:</h2>
				Stick an animal on it then begin collecting its meat.


				<h2>Example recipes:</h2>
				<b>Vanilla Cake</b>: Microwave cake batter.<br>
				<b>Burger:</b> 1 bun + 1 meat steak<br>
				<b>Bread:</b> Microwave dough.<br>
				<b>Waffles:</b> 2 pastry base<br>
				<b>Popcorn:</b> Microwave corn.<br>
				<b>Meat Steak:</b> Microwave meat.<br>
				<b>Meat Pie:</b> 1 plain pie + 1u black pepper + 1u salt + 2 meat cutlets<br>
				<b>Boiled Spagetti:</b> Microwave spaghetti.<br>
				<b>Donuts:</b> 1u sugar + 1 pastry base<br>
				<b>Fries:</b> Process potato.

				<h2>Sharing your food:</h2>
				You can put your meals on your kitchen counter or load them in the snack vending machines.
				</body>
				</html>
			"}

/obj/item/book/manual/nuclear //GS13 - Nanotrasen to GATO
	name = "Fission Mailed: Nuclear Sabotage 101"
	icon_state ="bookNuclear"
	author = "Syndicate"
	title = "Fission Mailed: Nuclear Sabotage 101"
	dat = {"<html>
			<head>
			<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
			</head>
			<body>
			Nuclear Explosives 101:<br>
			Hello and thank you for choosing the Syndicate for your nuclear information needs.<br>
			Today's crash course will deal with the operation of a Fusion Class GATO made Nuclear Device.<br>
			First and foremost, DO NOT TOUCH ANYTHING UNTIL THE BOMB IS IN PLACE.<br>
			Pressing any button on the compacted bomb will cause it to extend and bolt itself into place.<br>
			If this is done to unbolt it one must completely log in which at this time may not be possible.<br>
			To make the nuclear device functional:<br>
			<li>Place the nuclear device in the designated detonation zone.</li>
			<li>Extend and anchor the nuclear device from its interface.</li>
			<li>Insert the nuclear authorisation disk into slot.</li>
			<li>Type numeric authorisation code into the keypad. This should have been provided. Note: If you make a mistake press R to reset the device.
			<li>Press the E button to log onto the device.</li>
			You now have activated the device. To deactivate the buttons at anytime for example when you've already prepped the bomb for detonation	remove the auth disk OR press the R on the keypad.<br>
			Now the bomb CAN ONLY be detonated using the timer. Manual detonation is not an option.<br>
			Note: GATO is a pain in the neck.<br>
			Toggle off the SAFETY.<br>
			Note: You wouldn't believe how many Syndicate Operatives with doctorates have forgotten this step.<br>
			So use the - - and + + to set a det time between 5 seconds and 10 minutes.<br>
			Then press the timer toggle button to start the countdown.<br>
			Now remove the auth. disk so that the buttons deactivate.<br>
			Note: THE BOMB IS STILL SET AND WILL DETONATE<br>
			Now before you remove the disk if you need to move the bomb you can:<br>
			Toggle off the anchor, move it, and re-anchor.<br><br>
			Good luck. Remember the order:<br>
			<b>Disk, Code, Safety, Timer, Disk, RUN!</b><br>
			Intelligence Analysts believe that normal GATO procedure is for the Captain to secure the nuclear authorisation disk.<br>
			Good luck!
			</body>
			</html>"}

	//GS13 SOP Manuals Begin
/obj/item/book/manual/science_SOP
	name = "GATO Research and Development Standard Operating Procedure"
	icon_state = "bookSOPsci"
	author = "John GATO, PhD"
	title = "GATO Research and Development Standard Operating Procedure"
	dat={"<html>
		<body style= "background-color: mediumpurple">
		<h1 style= "text-align:center; color: indigo; font-family:courier"><b>Science SOP</b></h1>
		<p style= "text-align:center;font-family:Lucida Console;font-size: 90%">
		Science, otherwise known as R&D, or simply Sci, is home to the greatest minds of GATO and some of the most skilled button pushers known to man. The science department ensures the station stays up to date on the most bleeding edge technology, providing the crew with advanced robotics and equipment, all while conducting research and experiments for the glory of GATO!</p>
		<hr style= "color: black">
		<p style= "text-align:left; color: indigo;font-family:courier"><b>Scientist</b><p>
		<p style= "text-align:left;font-family:Lucida Console;font-size: 90%">
		1. You are responsible for researching new technologies for the station.<p>
		<p style= "text-align:left;font-family:Lucida Console;font-size: 90%">2. You are responsible for the distribution of upgraded parts to various departments.<p>
		<p style= "text-align:left;font-family:Lucida Console;font-size: 90%">3. You are responsible for the containment and security of any and all dangerous or hazardous devices and explosives, and ensuring they are not misused.<p>
		<p style= "text-align:left;font-family:Lucida Console;font-size: 90%">4. Ensure all slimes remain in Xenobiology. If slimes are not being actively worked with, they must be placed under the effects of BZ gas or euthanized.<p>
		<p style= "text-align:left;font-family:Lucida Console;font-size: 90%">5. You are responsible for any and all products of Xenoarchaeology. <p>
		<p style= "text-align:left;font-family:Lucida Console;font-size: 90%">6. Exercise caution when constructing potentially hazardous or dangerous devices. When in doubt, refer to your Research Director.<p>
		<p style ="text-align:left;font-family:Lucida Console;font-size: 90%">7. Do not abuse the printing capabilities of Science to do things like create your own chemistry lab, medbay, kitchen, etc. Many of your printable boards are there to support other departments.<p>
		<p style= "text-align:left;font-family:Lucida Console;font-size: 90%">8. Be prepared to take on the SOP for a roboticist if a roboticist is not present.<p>
		<hr style= "color: black">
		<p style= "text-align:left;color: darkred;font-family:courier"><b>Roboticist</b><p>
		<p style= "text-align:left;font-family:Lucida Console;font-size: 90%">1. You are responsible for the construction and maintenance of mechs and shells for cyborgs and AI.<p>
		<p style= "text-align:left;font-family:Lucida Console;font-size: 90%">2. You are responsible for the maintenance of all non-biological crew members such as IPCs and Synthlizards.<p>
		<p style= "text-align:left;font-family:Lucida Console;font-size: 90%">3. You are responsible for ensuring cyborgs and AIs laws are correctly set and maintained, and that cyborgs are slaved to the stations AI.<p>
		<p style= "text-align:left;font-family:Lucida Console;font-size: 90%">4. You are responsible for keeping track of all constructed mechs, as well as ensuring they are properly secured.<p>
		<p style= "text-align:left;font-family:Lucida Console;font-size: 90%">5. Refrain from constructing combat mechs unless directed to by the Head of Security or Captain.<p>
		<p style= "text-align:left;font-family:Lucida Console;font-size: 90%">6. You are responsible for the construction and distribution of MODsuits to crew who have a valid reason to request one.<p>
		<p style= "text-align:left;font-family:Lucida Console;font-size: 90%">7. You are responsible for ensuring that MODsuits and Mechs created by you are not misused, even after they have changed hands to other departments or crew. <p>
		<p style= "text-align:left;font-family:Lucida Console; font-size: 90%">8. Be prepared to take on the SOP for a scientist if a scientist is not present.<p>
		<hr style= "color: black">
		<p style= "text-align:left;color:navy;font-family:courier"><b>Research Director</b><p>
		<p style= "text-align:left;font-family:Lucida Console;font-size: 90%">1. You are responsible for managing all aspects of the science department, including all of the roles listed above.<p>
		<p style= "text-align:left;font-family:Lucida Console;font-size: 90%">2. You are expected to have broad knowledge of every role listed above and to be able to fulfill SOP for each one as needed.<p>
		<p style= "text-align:left;font-family:Lucida Console;font-size: 90%">3. You are expected to teach new and existing science personnel as needed and requested.<p>
		<p style= "text-align:left;font-family:Lucida Console;font-size: 90%">4. Refer to Command SOP for a broader list of duties as a member of command.<p>
		</body>
		</html>"}

/obj/item/book/manual/service_SOP
	name = "GATO Luxury Services Standard Operating Procedure"
	icon_state = "bookSOPservice"
	author = "John GATO"
	title = "GATO Luxury Services Standard Operating Procedure"
	dat={"<html>
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cinzel|Fauna+One">
		<body style= "background-color: darkolivegreen">
		<h1 style= "text-align:center; color: goldenrod; font-family:cinzel">Service SOP</h1>
		<p style= "text-align:center;font-family:Fauna One;font-size: 100%">
		The service department is largely an ancillary department which provides entertainment, special services, and support to other departments. Service members are among the lowest ranked members of the crew, and are largely non-essential to the goals of the station and her crew. These positions are fantastic for those new to station life to get their space legs, as mismanagement rarely results in any catastrophic issues!</p><hr style="color: goldenrod">
		<p style= "text-align:left;color:burlywood;font-family:cinzel;font-size: 110%"><b>Janitor</b><p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">1. You are responsible for cleaning public areas of the station and disposing of trash.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">2. You are responsible for cleaning departments upon request or permission.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">3. Avoid cleaning active crime scenes before security has had a chance to secure sensitive equipment and conduct an investigation.<p><hr style="color: goldenrod">
		<p style= "text-align:left;color:brown;font-family:cinzel;font-size: 110%"><b>Curator</b><p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">1. You are responsible for maintaining the library. This includes the curation of art and items to be placed on display, as well as the curation of books for the enjoyment of the crew.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">2. You reserve the right to refuse service to anyone, for any reason, and to remove them from the library quietly and politely. Nerd.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">3. You are encouraged to write and publish works to continue to fill out GATOs archive and provide a broader variety of books for the crew to enjoy.<p><hr style="color: goldenrod">
		<p style= "text-align:left;color:darkred;font-family:cinzel;font-size: 110%"><b>Bartender</b><p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">1. You are responsible for serving drinks at the bar.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">2. You reserve the right to refuse service to anyone, for any reason, and to remove them from the bar area by force.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">3. You may use any means at your disposal, as a bartender, to remove unauthorized crew from the bar area, provided they have been ordered to leave.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">4. You are responsible for your shotgun.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">5. In the absence of a chef, you are permitted the usage of their facilities to produce meals should you wish, with respect to the <b>cook SOP, as well as ensuring the tidiness of their workspace.</b><p><hr style="color: goldenrod">
		<p style= "text-align:left;color:Ivory;font-family:cinzel;font-size: 110%"><b>Cook</b><p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">1. You are responsible for supplying the crew with meals. Lots and lots of meals.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">2. You reserve the right to refuse service to anyone, for any reason, and to remove them from the dining area by force.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">3. You may use any means at your disposal, as a chef, to remove unauthorized crew from your kitchen, provided they have been ordered to leave and that they are not rendered severely injured.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">4. In the absence of a botanist, you are permitted the usage of their facilities to acquire additional ingredients, with respect to the botanist SOP, as well as ensuring the tidiness and availability of seeds within their workspace.<p><hr style="color: goldenrod">
		<p style= "text-align:left;color:Lightgreen;font-family:cinzel;font-size: 110%"><b>Botanist</b><p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">1. You are responsible for providing produce and special materials such as cloth, wood, and leather, to other departments and individual crew members upon reasonable request.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%;margin:0px 50px">a.Chiefly this responsibility involves stocking the kitchen food storage with whatever they need or request, or whatever you may think they will want.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">2. You are responsible for whatever mutations you produce, and ensuring that all items produced for consumption are free of potentially harmful contents.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%;margin:0px 50px">a. While food with chemicals, toxins, or even medicine may be produced, it is encouraged to denote what is contained within, e.g.; “Cyanide Soybeans” or “Bic Bananas” by using a pen on the seed packets.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%;margin:0px 50px">b.You are responsible for any injury resulting from abuse, misuse, or overdose of your products.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">3. In the absence of a chef, you are permitted the usage of their facilities to produce meals with your ingredients should you wish, with respect to the <b>cook SOP, as well as ensuring the tidiness of their workspace.</b><p><hr style="color: goldenrod">
		<p style= "text-align:left;color:Maroon;font-family:cinzel;font-size: 110%"><b>Lawyer</b><p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">I. You are responsible for providing legal aid and counsel to prisoners and crew.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">II. You are required to represent convicted criminals in court, at their request.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%;margin:0px 50px">i. Regardless of perceived or obvious guilt or innocence, you are required to argue in favor of their innocence and present arguments for it.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%;margin:0px 50px">ii. You are not to represent GATO in court cases. This should instead be done by the Warden, a head of staff involved in the arrest, or the arresting officer.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%;margin:0px 100px">a. The HOP acts as magistrate in court cases and is therefore an impartial party and unable to represent GATO regardless of involvement.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">III. You are encouraged, but not required, to know the intricate details of Space Law. You can also just talk out of your ass, but god help your clients.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">IV. You may act as a mediator in civil disputes and draft legally binding contracts to aid in settling said disputes.<p><hr style="color: goldenrod">
		<p style= "text-align:left;color:Indigo;font-family:cinzel;font-size: 110%"><b>Chaplain</b><p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">1. You are permitted on station as a representative of your particular faith or as a broader general religious figure.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%;margin:0px 50px">a. You are not permitted to represent dangerous cults which threaten the livelihood of the crew, such as being the head of a murder cult or a priest of Nar’sie.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">2. You are required to handle funerals for station crew who are unable to be revived.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">3. You may conduct sermons and rituals within your chapel, and optionally remodel it to be more in-line with your particular flavor of faith.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%;margin:0px 50px">a. Any rituals involving crew must not result in death or permanent harm. For example, ritual combat may be permitted, but both participants must be rendered aid once the combat has ended.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">4. You may act within your authority as chaplain to aid in the expulsion and destruction of supernatural forces present on station.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">5. You may induct, recruit, or convert crew to your faith of their own free will.<p><hr style="color: goldenrod">
		<p style= "text-align:left;color:fuchsia;font-family:cinzel;font-size: 110%"><b>Clown</b><p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">1. You are responsible for entertaining the crew.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">2. You are still required, <em>but not expected</em>, to follow space law in this pursuit.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%;margin:0px 50px">a. Note that your unique position and expectation of shrugging at the suggestion of law does not mean you are enabled to pick up a security officers weapon and begin executing crew. Your antics are still expected to be <em>funny</em>, not psychotically homicidal.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">3. <b>Make the Honkmother proud!!!</b><p><hr style="color: goldenrod">
		<p style= "text-align:left;color:silver;font-family:cinzel;font-size: 110%"><b>Mime</b><p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">1. You are responsible for entertaining the crew, as the silent counterpart of the clown.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">2. You are still required, <em>but not expected</em>, to follow space law in this pursuit.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%;margin:0px 50px">a. Note that your unique position and expectation of shrugging at the suggestion of law does not mean you are enabled to pick up a security officers weapon and begin executing crew. Your antics are still expected to be <em>funny</em>, not psychotically homicidal.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">3. You are responsible for maintaining your vow of silence.<p><hr style="color: goldenrod">
		<p style= "text-align:left;color:Navy;font-family:cinzel;font-size: 110%"><b>Head of Personnel</b><p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">1. You are responsible for managing all aspects of the service department, including all of the roles listed above.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">2. You are responsible for assigning or reassigning crew to other departments.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">3. You are responsible for the abuse and misuse of expanded access authorized on your behalf.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">4. You are not required to fulfill the SOP for unfulfilled roles in your department, but you should still be familiar with them.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">5. You are required to act as an impartial judge whenever a court case arises.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">6. You are expected to teach new and existing service personnel as needed or requested.<p>
		<p style= "text-align:left;font-family:Fauna One;font-size: 90%">7. You must protect Ian from theft, injury, and defamation.<p>
    	</body></html>"}

/obj/item/book/manual/supply_SOP
	name = "GATO Delivery Service Operating Procedure"
	icon_state = "bookSOPsupply"
	author = "John GATO"
	title = "GATO Delivery Service Standard Operating Procedure"
	dat={"<html>
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Saira+Stencil+One|Dhurjati">
		<body style= "background-color: saddlebrown">
		<h1 style= "text-align:center; color: gold; font-family:Saira Stencil One">Cargo SOP</h1>
		<p style= "text-align:center;font-family:Dhurjati;font-size: 130%">
		Supply, also known as Cargo or Logistics, is responsible for ensuring the crew are provided with the material and equipment required to do their job, as well as hosting the occasional pizza party. Supply is notoriously one of the most boring, uneventful departments on station, while simultaneously being one of the most dangerous and engaging!</p><hr style="color: gold">
		<p style= "text-align:left;color:orange;font-family:Saira Stencil One;font-size: 120%"><b>Cargo Technician</b><p>
		<p style= "text-align:left;font-family:Dhurjati;font-size: 130%">1. You are responsible for ensuring the processing, fulfillment, and delivery of orders.<p>
		<p style= "text-align:left;font-family:Dhurjati;font-size: 130%; margin: 0px 50px">a. You are not required to fulfill every order, nor should you. Orders should only be fulfilled if the requests are reasonable, and funding permits it.<p>
		<p style= "text-align:left;font-family:Dhurjati;font-size: 130%">2. You are responsible for ensuring bounty notices are distributed to departments, as well as processing any turned-in bounties or bounty cubes.<p>
		<p style= "text-align:left;font-family:Dhurjati;font-size: 130%;margin: 0px 50px">a. You are not responsible for hounding other departments for bounty items, but may do so if you wish.<p>
		<p style= "text-align:left;font-family:Dhurjati;font-size: 130%">3. You are responsible for the mismanagement of funds, as well as the misuse or abuse of requisitioned supplies.<p>
		<p style= "text-align:left;font-family:Dhurjati;font-size: 130%">4. You are encouraged,<em> but not required</em>, to make the process of ordering supplies as headache-inducing as possible via lengthy requisition forms.<p><hr style="color: gold">
		<p style= "text-align:left;color:goldenrod;font-family:Saira Stencil One;font-size: 120%"><b>Shaft Miner</b><p>
		<p style= "text-align:left;font-family:Dhurjati;font-size: 130%">1. You are responsible for mining ores and depositing them into the ORM.<p>
		<p style= "text-align:left;font-family:Dhurjati;font-size: 130%">2. You are responsible for ensuring the station is provided with an adequate supply of minerals acceptable by the ORM <b>with the exception of Bluespace Crystals and Bananium</b>.<p>
		<p style= "text-align:left;font-family:Dhurjati;font-size: 130%">3. You are responsible for ensuring your own safety. Ensure your survival by bringing suitable equipment, carrying an active GPS, setting your suit sensors to <em>tracking beacon</em>, and making liberal use of mining points to acquire additional equipment to better improve your chances of survival.<p>
		<p style= "text-align:left;font-family:Dhurjati;font-size: 130%">4. You are responsible for the mishandling of lavaland loot by both yourself and other members of the crew.<p><hr style="color: gold">
		<p style= "text-align:left;color:Navy;font-family:Saira Stencil One;font-size: 120%"><b>Quartermaster</b><p>
		<p style= "text-align:left;font-family:Dhurjati;font-size: 130%">1. You are responsible for managing all aspects of the supply department, including all roles listed above.<p>
		<p style= "text-align:left;font-family:Dhurjati;font-size: 130%">2. You are expected to have broad knowledge of every role listed above and to be able to fulfill SOP for <b>ONLY CARGO TECHNICIANS</b> as needed.<p>
		<p style= "text-align:left;font-family:Dhurjati;font-size: 130%;margin: 0px 50px">a. As a member of command, you are not permitted to leave the station except for extreme circumstances, and hence you are not able to fulfill the duties of a Shaft Miner. You are, however, still expected to be familiar with Shaft Miner SOP.<p>
		<p style= "text-align:left;font-family:Dhurjati;font-size: 130%">3. In the absence of a Shaft Miner, you may request and recruit assistance from other members of the crew regardless of department.<p>
		<p style= "text-align:left;font-family:Dhurjati;font-size: 130%; margin: 0px 50px">a. Ideally, those recruited to assist in material acquisition in the absence of a shaft miner should source their ores from the Xenoarchaeology area to avoid the hazards of lavaland proper.<p>
    	</body></html>"}
/obj/item/book/manual/engi_SOP
	name = "GATO Corps of Engineers OSHA Handbook"
	icon_state = "bookSOPengi"
	author = "John GATO"
	title = "GATO Corps of Engineers OSHA Handbook"
	dat={"<html>
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Bruno+Ace+SC|Quantico">
		<body style= "background-color: rgb(230,194,14)">
		<h1 style= "text-align:center; color: orangered; font-family:Bruno Ace SC;font-size: 400%"><b>Engineering SOP</b></h1>
		<p style= "text-align:center;font-family:Quantico;font-size: 115%">
		Engineers are the backbone of every station, ensuring that the station stays powered, livable, and functional. As an engineer, you are the glue that holds the station together, <em>sometimes literally</em>. You are also the most likely of any crewmember to cause a catastrophic early death for the station and her inhabitants. </p>
		<hr style= "color: midnightblue">
		<p style= "text-align:left; color: orangered;font-family:Bruno Ace SC;font-size: 125%"><b>Station Engineer</b><p>
		<p style= "text-align:left;font-family:Quantico;">
		1. You are responsible for the structural integrity of the station.<p>
		<p style= "text-align:left;font-family:Quantico;">2. You are responsible for the activation and maintenance of the station power supply and engine.<p>
		<p style= "text-align:left;font-family:Quantico;">3. If you are unable to operate the provided engine for whatever reason, solars must be set up at the bare minimum.<p>
		<p style= "text-align:left;font-family:Quantico;">4. You are responsible for monitoring the station power and promptly responding to outages as they are discovered or reported.<p>
		<p style= "text-align:left;font-family:Quantico;">5. You are responsible for the containment and repair of hull breaches.<p>
		<p style= "text-align:left;font-family:Quantico;">6. In the case that you are unable to access areas which have sustained a breach, or otherwise require immediate attention, you are permitted to break into and enter into other departments to repair the damage.<p>
		<p style= "text-align:left;font-family:Quantico;">7. Ancillary engines, remodeling, etc, should only be done once the stations power needs and integrity have been addressed.<p>
		<p style= "text-align:left;font-family:Quantico;">8. Be prepared to take on the SOP for an atmospheric technician if an atmospheric technician is not present.<p><hr style= "color: midnightblue">
		<p style= "text-align:left; color: rgb(0,140,175);font-family:Bruno Ace SC;font-size: 125%"><b>Atmospheric Technician</b><p>
		<p style= "text-align:left;font-family:Quantico;">1. You are responsible for keeping the stations air breathable and free of deadly plasma.<p>
		<p style= "text-align:left;font-family:Quantico;">2. You are responsible for returning rooms to habitable temperatures.<p>
		<p style= "text-align:left;font-family:Quantico;">3. You are responsible for fighting fires that break out.<p>
		<p style= "text-align:left;font-family:Quantico;">4. You are responsible for restoring breached rooms air to life-supporting quality.<p>
		<p style= "text-align:left;font-family:Quantico;">5. You are responsible for fulfilling the rare request for gas canisters from outside of your department.<p>
		<p style= "text-align:left;font-family:Quantico;">6. Be prepared to take on the SOP for a station engineer if a station engineer is not present.<p><hr style= "color: midnightblue">
		<p style= "text-align:left; color: navy;font-family:Bruno Ace SC;font-size: 125%"><b>Chief Engineer</b><p>
		<p style= "text-align:left;font-family:Quantico;">1. You are responsible for managing all aspects of the engineering department, including all roles listed above.<p>
		<p style= "text-align:left;font-family:Quantico;">2. You are the engine czar, the engine will be run as you dictate it.<p>
		<p style= "text-align:left;font-family:Quantico;">3. Protect Polly from those who would do her harm.<p>
		<p style= "text-align:left;font-family:Quantico;">4. You are expected to have broad knowledge of <b>every role listed above</b> and to be able to fulfill SOP for each one as needed.<p>
		<p style= "text-align:left;font-family:Quantico;">5. You are expected to teach new and existing engineering personnel as needed and requested.<p>
		<p style= "text-align:left;font-family:Quantico;">6. Refer to <b>Command SOP</b> for a broader list of duties as a member of command.<p>
        </body>
		</html>"}

/obj/item/book/manual/med_SOP
	name = "GATO Medical Practioner's Handbook"
	icon_state = "bookSOPmed"
	author = "Dr. John GATO"
	title = "GATO Medical Practioner's Handbook"
	dat={"<html>
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto+Flex|Darker+Grotesque">
		<body style= "background-color: cadetblue">
		<h1 style= "text-align:center; color: firebrick; font-family:Darker Grotesque;font-size: 555%"><b>Medical SOP</b></h1>
		<p style= "text-align:center;font-family:Roboto Flex;font-size: 100%">
		Station Medical is fast paced, bloody, and not for the faint of heart. You will likely see the crew more up-close and personal than you ever would have liked to. Death is not unusual in station life, nor is being resurrected. Embrace the miracles of modern medicine and keep the crew in peak working condition, death be damned!</p>
		<hr style= "color: seashell">
		<p style= "text-align:left; color: firebrick;font-family:Darker Grotesque; font-size: 140%"><b>Medical Doctor</b><p>
		<p style= "text-align:left;font-family:Roboto Flex;font-size: 100%">
		1. You are directly responsible for the health and safety of the crew.<p>
		<p style= "text-align:left;font-family:Roboto Flex;font-size: 100%">2. You are responsible for monitoring the health of the crew.<p>
		<p style= "text-align:left;font-family:Roboto Flex;font-size: 100%">3. All crew are to be treated without charge. Medical expenses are covered by GATO.<p>
		<p style= "text-align:left;font-family:Roboto Flex;font-size: 100%">4. When reviving crew, be as unobtrusive as possible. Attempt to revive them with all of their original bits and pieces. Replacement organs, limbs, cybernetics and prosthetics should be treated as a last resort.<p>
		<p style= "text-align:left;font-family:Roboto Flex;font-size: 100%">5. All surgeries and implants done on crew, unless for life saving measures, must be done with the consent of the individual <b>unless dictated by both the CMO and Head of Security or Captain</b>, <em>such as for pacification of a violent criminal</em>.<p>
		<p style= "text-align:left;font-family:Roboto Flex;font-size: 100%">6. While you may encourage sensors to be maxed, crew are not required to raise their sensors unless security levels are elevated.<p><hr style= "color: seashell">
		<p style= "text-align:left; color: orange;font-family:Darker Grotesque; font-size: 140%"><b>Chemist</b><p>
		<p style= "text-align:left;font-family:Roboto Flex;font-size: 100%">1. You are responsible for ensuring the crew is provided with chemicals relevant to their jobs, namely the medical staff.<p>
		<p style= "text-align:left;font-family:Roboto Flex;font-size: 100%">2. Ensure the public facing chemfridge is stocked with basic medicines, clearly labeled, in safe dosages.<p>
		<p style= "text-align:left;font-family:Roboto Flex;font-size: 100%">3. Fulfill requests for chemicals/pills/etc from other medical staff.<p>
		<p style= "text-align:left;font-family:Roboto Flex;font-size: 100%">4. Fulfill requests for prescriptions, such as mindbreaker toxin for crew afflicted with RDS, or brute/burn patches/pills for security and engineers.<p>
		<p style= "text-align:left;font-family:Roboto Flex;font-size: 100%">5. Do not distribute chemicals to crew outside of the medical staff without a clear, valid reason, such as a botanist requesting chemicals for farming.<p>
		<p style= "text-align:left;font-family:Roboto Flex;font-size: 100%">6. Ensure the chemistry lab is secure and that dispensers are not being taken outside of your department for unrestricted use. Keep your windoors <b>CLOSED.</b><p>
		<p style= "text-align:left;font-family:Roboto Flex;font-size: 100%">7. Ensure all necessities and crew needs are fulfilled before engaging with factory chem, fermichem, etc.<p>
		<p style= "text-align:left;font-family:Roboto Flex;font-size: 100%">8. Be prepared to take on the <b>SOP for a medical doctor</b> if a medical doctor is not present.<p><hr style= "color: seashell">
		<p style= "text-align:left; color: darkgreen;font-family:Darker Grotesque; font-size: 140%"><b>Virologist</b><p>
		<p style= "text-align:left;font-family:Roboto Flex;font-size: 100%">1. You are responsible for ensuring the crew is healthy and free of plague and illness.<p>
		<p style= "text-align:left;font-family:Roboto Flex;font-size: 100%">2. Address any viral outbreaks immediately and with urgency.<p>
		<p style= "text-align:left;font-family:Roboto Flex;font-size: 100%">3. Ensure vaccines are distributed to all crew to eradicate viral outbreaks.<p>
		<p style= "text-align:left;font-family:Roboto Flex;font-size: 100%">4. Ensure any beneficial viruses are not spread through contact/air/etc. Only consenting people should be affected by them.<p>
		<p style= "text-align:left;font-family:Roboto Flex;font-size: 100%">5. Be prepared to take on the <b>SOP for a medical doctor</b> if a medical doctor is not present.<p><hr style= "color: seashell">
		<p style= "text-align:left; color: skyblue;font-family:Darker Grotesque; font-size: 140%"><b>Geneticist</b><p>
		<p style= "text-align:left;font-family:Roboto Flex;font-size: 100%">1. You are responsible for cloning crew, fixing unwanted mutations, and researching beneficial mutations for the crew.<p>
		<p style= "text-align:left;font-family:Roboto Flex;font-size: 100%">2. You are responsible for the abuse or misuse of any mutations distributed to the crew.<p>
		<p style= "text-align:left;font-family:Roboto Flex;font-size: 100%">3. Be prepared to take on the <b>SOP for a medical doctor</b> if a medical doctor is not present.<p><hr style= "color: seashell">
		<p style= "text-align:left; color: navy;font-family:Darker Grotesque; font-size: 140%"><b>Chief Medical Officer</b><p>
		<p style= "text-align:left;font-family:Roboto Flex;font-size: 100%">1. You are responsible for managing all aspects of the medical department, including all of the roles listed above.<p>
		<p style= "text-align:left;font-family:Roboto Flex;font-size: 100%">2. You are responsible for alerting an admin if Runtime begins making  dozens and dozens of kittens.<p>
		<p style= "text-align:left;font-family:Roboto Flex;font-size: 100%">3. You are expected to have broad knowledge of <b>every role listed above</b> and to be able to fulfill SOP for each one as needed.<p>
		<p style= "text-align:left;font-family:Roboto Flex;font-size: 100%">4. You are expected to teach new and existing medical personnel as needed and requested.<p>
		<p style= "text-align:left;font-family:Roboto Flex;font-size: 100%">5. Refer to <b>Command SOP</b> for a broader list of duties as a member of command.<p>
        </body></html>"}

/obj/item/book/manual/sec_SOP
	name = "GATO Security Force Code of Conduct"
	icon_state = "bookSOPsec"
	author = "Magistrate John GATO"
	title = "GATO Security Force Code of Conduct"
	dat={"<html>
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Michroma|Genos">
		<body style= "background-color: dimgray">
		<h1 style= "text-align:center; color: firebrick; font-family:Michroma;font-size: 444%"><b>Security SOP</b></h1>
		<p style= "text-align:center;font-family:Genos;font-size: 135%">
		Security are the peacekeepers and mischief managers of the station, ensuring the crew are following space law and that intruders are removed or erased from the station. Agents of the law are rarely ever looked upon favorably by the station at large, but you dont care! Youve got the big zappy-wacky stick, and they dont! </p>
		<hr style= "color: grey">
		<p style= "text-align:Center; color: firebrick;font-family:Michroma; font-size: 150%"><b>All Security Personnel</b><p>
		<p style= "text-align:center;font-family:Genos;font-size: 130%">
		1. How you carry or wear your weapons depends on the current alert level:<p>
		<p style= "text-align:center;font-family:Genos;font-size: 120%; margin: 0px 50px 0px 50px">a. Code Green: weapons are kept holstered and hidden unless an emergency or incident calls for it (like an altercation turning into resisting arrest).<p>
		<p style= "text-align:center;font-family:Genos;font-size: 120%;margin: 0px 50px 0px 50px">b. Code Blue and above: weapons may be visible.<p>
		<p style= "text-align:center;font-family:Genos;font-size: 120%;margin: 0px 50px 0px 50px">c. The contents of the armory are distributed at the Wardens discretion.<p><hr style= "color: grey">
		<p style= "text-align:left; color: firebrick;font-family:Michroma; font-size: 130%"><b> Security Officer</b><p>
		<p style= "text-align:left;font-family:Genos;font-size: 120%;">1. You are responsible for upholding <b>space law</b>, and detaining those in violation of it regardless of rank, seniority, etc.<p>
		<p style= "text-align:left;font-family:Genos;font-size: 120%;">2. Except in cases of violent offenders, you are required to at least broadly cite what space law has been violated before initiating an arrest.<p>
		<p style= "text-align:left;font-family:Genos;font-size: 120%;margin: 0px 50px">a. A more specific citation should be provided on imprisonment and logged in their security file.<p>
		<p style= "text-align:left;font-family:Genos;font-size: 120%;">3. You are responsible for protecting GATO assets and crew from harm from both inside and outside forces.<p>
		<p style= "text-align:left;font-family:Genos;font-size: 120%;">4. You are permitted to carry a disabler, flash, flashbang, stun baton, and pepper spray.<p>
		<p style= "text-align:left;font-family:Genos;font-size: 120%;">5. Weapons must remain holstered unless escalation demands they be drawn.<p>
		<p style= "text-align:left;font-family:Genos;font-size: 120%;">6. You are responsible for exercising reasonable force proportionate to the incident.<p>
		<p style= "text-align:left;font-family:Genos;font-size: 120%;margin: 0px 50px">a. If a suspect is non-violent and not fleeing, you are required to attempt to peacefully de-escalate and detain.<p>
		<p style= "text-align:left;font-family:Genos;font-size: 120%;margin: 0px 100px">i. In this instance, the suspect must be escorted to the brig without the use of handcuffs or incapacitation.<p>
		<p style= "text-align:left;font-family:Genos;font-size: 120%;margin: 0px 50px">b. If a suspect is aggressive, non-compliant, or fleeing, non-lethal force is to be deployed, and the suspect detained.<p>
		<p style= "text-align:left;font-family:Genos;font-size: 120%;margin: 0px 50px">c. If a suspect threatens lethal harm to the officer or to other crew members, or poses a threat to crew by fleeing, lethal force may be deployed to detain the suspect.<p>
		<p style= "text-align:left;font-family:Genos;font-size: 120%;margin: 0px 100px">i. Suspects must be rendered aid after the threat has been dealt with and the suspect has been restrained.<p>
		<p style= "text-align:left;font-family:Genos;font-size: 120%;margin: 0px 50px">d. Known, identified threats to the station may be dealt with as necessary regardless of escalation procedures.<p>
		<p style= "text-align:left;font-family:Genos;font-size: 120%;margin: 0px 100px">i. e.g., a known syndicate agent may be acted upon with lethal or non-lethal force regardless of their apparent threat.<p>
		<p style= "text-align:left;font-family:Genos;font-size: 120%;">7. You are responsible for the reasonable and humane treatment of detainees and prisoners.<p>
		<p style= "text-align:left;font-family:Genos;font-size: 120%;">8. You are responsible for responding to calls for assistance and maintaining an active presence to deter threats.<p>
		<hr style= "color: grey">
		<p style= "text-align:left; color: maroon;font-family:Michroma; font-size: 130%"><b> Warden</b><p>
		<p style= "text-align:left;font-family:Genos;font-size: 120%;">1. You are responsible for prisoners, both in permanent holding and within the brig, and ensuring that their sentences are carried out in full.<p>
		<p style= "text-align:left;font-family:Genos;font-size: 120%;">2. You are responsible for issuing equipment, both lethal and nonlethal, to security.<p>
		<p style= "text-align:left;font-family:Genos;font-size: 120%;margin: 0px 50px">a. In a <b>Code Green</b> only non-lethal equipment may be distributed.<p>
		<p style= "text-align:left;font-family:Genos;font-size: 120%;margin: 0px 50px">b. In a <b>Code Blue</b> or above lethal equipment may be distributed.<p>
		<p style= "text-align:left;font-family:Genos;font-size: 120%;">3. You are responsible for the abuse or misuse of the contents of the armory, and ensuring that they are secured and accounted for.<p>
		<p style= "text-align:left;font-family:Genos;font-size: 120%;">4. You are responsible for ensuring the reasonable and humane treatment of prisoners, as well as ensuring the timely release of those temporarily imprisoned.<p>
		<p style= "text-align:left;font-family:Genos;font-size: 120%;">5. You are responsible for conducting thorough searches of every prisoners belongings, including pockets, PDA slots, coat pockets, suit storage, etc.<p>
		<p style= "text-align:left;font-family:Genos;font-size: 120%;">6. Suspects of capital crimes are entitled to a trial upon request, provided a lawyer and the HOP or another head of staff are available.<p><hr style= "color: grey">
		<p style= "text-align:left; color: Burlywood;font-family:Michroma; font-size: 130%"><b> Detective</b><p>
		<p style= "text-align:left;font-family:Genos;font-size: 120%;">1. You are responsible for aiding security by examining crime scenes, collecting evidence, questioning witnesses, and identifying suspects.<p>
		<p style= "text-align:left;font-family:Genos;font-size: 120%;margin: 0px 50px">a. You are responsible for ensuring that evidence is not tampered with, disturbed, or otherwise rendered inadmissible through your own negligence.<p>
		<p style= "text-align:left;font-family:Genos;font-size: 120%;">2. You must follow the <b>security officer SOP</b> in regards to escalations, use of weapons/force, etc.<p>
		<p style= "text-align:left;font-family:Genos;font-size: 120%;">3. With permission of the HoS, you are permitted to conduct undercover investigations. You must, however, have your security ID on hand at all times.<p>
		<p style= "text-align:left;font-family:Genos;font-size: 120%;">4. You may join the security team during patrols, responses, etc, assuming there are no ongoing investigations.<p><hr style="color: seashell">
		<p style= "text-align:left; color: Navy;font-family:Michroma; font-size: 130%"><b> Head of Security</b><p>
		<p style= "text-align:left;font-family:Genos;font-size: 120%;">1. You are responsible for managing all aspects of the security department, including all of the roles listed above.<p>
		<p style= "text-align:left;font-family:Genos;font-size: 120%;">2. Be sure to exhibit a strong working knowledge of <b>Space Law.</b><p>
		<p style= "text-align:left;font-family:Genos;font-size: 120%;">3. You are responsible for knowledge of every SOP in your department, as you oversee the affairs of all security personnel.<p>
		<p style= "text-align:left;font-family:Genos;font-size: 120%;">4. Be sure security calls are answered and addressed by your officers.<p>
		<p style= "text-align:left;font-family:Genos;font-size: 120%;">5. Refer to <b>Command SOP</b> for a broader list of duties as a member of command.<p><hr style="color: gray">
		<p style= "text-align:Center; color: black;font-family:Michroma; font-size: 200%"><b> Alert Levels</b><p><p><hr style="color: gray">
		<p style= "text-align:Center; color: darkgreen;font-family:Michroma; font-size: 175%"><b>Code Green</b><p>
		<p style= "text-align:center;font-family:Genos;font-size: 120%;margin: 0px 50px">1. All Clear Standard operating levels.<p>
		<p style= "text-align:center;font-family:Genos;font-size: 120%;margin: 0px 50px">2. No immediate or clear threat to the station.<p>
		<p style= "text-align:center;font-family:Genos;font-size: 120%;margin: 0px 50px">3. All departments may carry out work as normal.<p>
		<p style= "text-align:center;font-family:Genos;font-size: 120%;margin: 0px 50px">4. Suit sensors are not required to be on.<p>
		<p style= "text-align:center;font-family:Genos;font-size: 120%;margin: 0px 50px">5. Weapons worn by security are to be hidden except when in the case of an emergency.<p>
		<p style= "text-align:center;font-family:Genos;font-size: 120%;margin: 0px 50px">6. Crew members may freely walk in the hallways.<p>
		<p style= "text-align:center;font-family:Genos;font-size: 120%;margin: 0px 50px">7. AI/Cyborgs have no need to bolt down any secure areas.<p>
		<p style= "text-align:center;font-family:Genos;font-size: 120%;margin: 0px 50px">8. Security must respect the privacy of crew members and no unauthorized searches are allowed.<p><hr style="color: gray">
		<p style= "text-align:Center; color: darkblue;font-family:Michroma; font-size: 175%"><b>Code Blue</b><p>
		<p style= "text-align:center;font-family:Genos;font-size: 120%;margin: 0px 50px">1. Confirmed Threat Elevated alert level.<p>
		<p style= "text-align:center;font-family:Genos;font-size: 120%;margin: 0px 50px">2. There are reports or other proof available to indicate that there is a threat to the station.<p>
		<p style= "text-align:center;font-family:Genos;font-size: 120%;margin: 0px 50px">3. When a Centcom threat summary is received and printed at communication consoles), the blue alert level is applied.<p>
		<p style= "text-align:center;font-family:Genos;font-size: 120%;margin: 0px 50px">4. Suit sensors are mandatory, but coordinate positions are not required.<p>
		<p style= "text-align:center;font-family:Genos;font-size: 120%;margin: 0px 50px">5. Security may have weapons visible.<p>
		<p style= "text-align:center;font-family:Genos;font-size: 120%;margin: 0px 50px">6. Crew members may be searched by security with probable cause.<p>
		<p style= "text-align:center;font-family:Genos;font-size: 120%;margin: 0px 50px">7. AI/Cyborgs may bolt down high secure areas.<p>
		<p style= "text-align:center;font-family:Genos;font-size: 120%;margin: 0px 50px">8. Energy guns, laser guns and riot gear are allowed to be given out to security personnel if the HoS or Warden agree.<p><hr style="color: gray">
		<p style= "text-align:Center; color: red;font-family:Michroma; font-size: 175%"><b>Code Red</b><p>
		<p style= "text-align:center;font-family:Genos;font-size: 120%;margin: 0px 50px">1. Immediate Threat Maximum alert level.<p>
		<p style= "text-align:center;font-family:Genos;font-size: 120%;margin: 0px 50px">2. There is an immediate threat to the station or severe damage.<p>
		<p style= "text-align:center;font-family:Genos;font-size: 120%;margin: 0px 50px">3. Martial Law is in effect.<p>
		<p style= "text-align:center;font-family:Genos;font-size: 120%;margin: 0px 50px">4. Suit sensors are to be turned fully on at all times.<p>
		<p style= "text-align:center;font-family:Genos;font-size: 120%;margin: 0px 50px">5. Security can raid departments and arrest any crew member deemed a threat to the station.<p>
		<p style= "text-align:center;font-family:Genos;font-size: 120%;margin: 0px 50px">6. All crew members must remain in their departments.<p>
		<p style= "text-align:center;font-family:Genos;font-size: 120%;margin: 0px 50px">7. AI/Cyborgs may bolt down maintenance and airlocks leading to space.<p><hr style="color: gray">
		<p style= "text-align:Center; color: darkorange;font-family:Michroma; font-size: 175%"><b>Code Gamma</b><p>
		<p style= "text-align:center;font-family:Genos;font-size: 120%;margin: 0px 50px"><em>Coming Soon</em><p><hr style="color: gray">
		<p style= "text-align:Center; color: purple;font-family:Michroma; font-size: 175%"><b>Code Delta</b><p>
		<p style= "text-align:center;font-family:Genos;font-size: 120%;margin: 0px 50px">1. Imminent Destruction<p>
		<p style= "text-align:center;font-family:Genos;font-size: 120%;margin: 0px 50px">2. The station's self destruct mechanism has been engaged due to overwhelming threat to the station.<p>
		<p style= "text-align:center;font-family:Genos;font-size: 120%;margin: 0px 50px">3. Martial Law is in effect.<p>
		<p style= "text-align:center;font-family:Genos;font-size: 120%;margin: 0px 50px">4. Suit sensors are to be turned fully on at all times.<p>
		<p style= "text-align:center;font-family:Genos;font-size: 120%;margin: 0px 50px">5. All orders from Heads of Staff and Security must be followed, any disobedience is punishable by death.<p>
		<p style= "text-align:center;font-family:Genos;font-size: 120%;margin: 0px 50px">6. All crew members are to evacuate immediately, if possible.<p><hr style="color: gray">
		<p style= "text-align:Center; color: darkslategrey;font-family:Michroma; font-size: 175%"><b>Code Epsilon</b><p>
		<p style= "text-align:center;font-family:Genos;font-size: 120%;margin: 0px 50px"><em>Coming Soon</em><p>
		<hr style="color: gray">
        </body></html>"}

/obj/item/book/manual/command_SOP
	name = "The GATO Command Officer's Handbook"
	icon_state = "bookSOPcommand"
	author = "Fleet Admiral John \"Officer\" GATO"
	title = "The GATO Command Officer's Handbook"
	dat={"<html>
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Bodoni+Moda+SC|Castoro+Titling|Nanum+Myeongjo">
		<body style= "background-color: rgb(0, 0, 51)">
		<p style= "text-align:center; color: goldenrod; font-family:Bodoni Moda SC;font-size: 600%;border-style: inset">Command SOP</p>
		<hr style= "color: darkred">
		<p style= "text-align:left; color: goldenrod;font-family:Castoro Titling; font-size: 150%">Captain<p>
		<p style= "text-align:left;color: gainsboro;font-family:Nanum Myeongjo;font-size: 125%">1. You are responsible for the station as a whole.<p>
		<p style= "text-align:left;color: gainsboro;font-family:Nanum Myeongjo;font-size: 125%">2. You are expected to remain on station, and not to leave the vicinity of the station except in an emergency situation.<p>
		<p style= "text-align:left;color: gainsboro;font-family:Nanum Myeongjo;font-size: 125%">3. You are responsible for managing heads of staff, and may promote crew (as appropriate) to the position of department head at your discretion.<p>
		<p style= "text-align:left;color: gainsboro;font-family:Nanum Myeongjo;font-size: 125%;margin: 0px 50px">a. Note that you should only do this if a head of staff for a department is not present, and a capable and willing member of that department is willing to take the promotion.<p>
		<p style= "text-align:left;color: gainsboro;font-family:Nanum Myeongjo;font-size: 125%;margin: 0px 50px">b. You are also able to demote heads of staff at your discretion.<p>
		<p style= "text-align:left;color: gainsboro;font-family:Nanum Myeongjo;font-size: 125%">4. You are responsible for securing the Nuclear Authentication Disk.<p>
		<p style= "text-align:left;color: gainsboro;font-family:Nanum Myeongjo;font-size: 125%">5. You are responsible and accountable for the actions of your heads of staff.<p>
		<p style= "text-align:left;color: gainsboro;font-family:Nanum Myeongjo;font-size: 125%">6. You are expected to adhere to the chain of command, and only exercise your authority outside of it where absolutely necessary.<p>
		<p style= "text-align:left;color: gainsboro;font-family:Nanum Myeongjo;font-size: 125%">7. You are expected to be broadly knowledgeable on all aspects of the station and its operation. As the leader of the station and its crew, you will largely be looked to for guidance and support, especially in emergency situations.<p>
		<p style= "text-align:left;color: gainsboro;font-family:Nanum Myeongjo;font-size: 125%">8. You are expected to maintain the decorum of your rank.<p><hr style= "color: darkred">
		<p style= "text-align:left; color: steelblue;font-family:Castoro Titling; font-size: 150%">Head of Staff<p>
		<p style= "text-align:left;color: gainsboro;font-family:Nanum Myeongjo;font-size: 125%">1. You are responsible and accountable for the actions of your department and those employed therein.<p>
		<p style= "text-align:left;color: gainsboro;font-family:Nanum Myeongjo;font-size: 125%">2. You are expected to remain on station, and not to leave the vicinity of the station except in an emergency situation. You are expected to remain on station, and may only leave as it is deemed absolutely necessary.<p>
		<p style= "text-align:left;color: gainsboro;font-family:Nanum Myeongjo;font-size: 125%">3. You may not give orders or <em>pull rank</em> on those employed in other departments.<p>
		<p style= "text-align:left;color: gainsboro;font-family:Nanum Myeongjo;font-size: 125%; margin: 0px 50px">a. Exceptions to this may be made in emergency situations, where other heads of staff are absent or unable to give direction to their own departments.<p>
		<p style= "text-align:left;color: gainsboro;font-family:Nanum Myeongjo;font-size: 125%">4. You are expected to be broadly knowledgeable on all aspects of your department and its operation. As the head of your department, you will largely be looked to for guidance and support by your junior and senior staff alike, and will be expected to pick up the slack in emergency situations to keep things running smoothly.<p>
		<p style= "text-align:left;color: gainsboro;font-family:Nanum Myeongjo;font-size: 125%">5. You are expected to maintain the decorum of your rank.<p><hr style= "color: darkred">
		<p style= "text-align:center; color: goldenrod;font-family:Castoro Titling; font-size: 200%">Succession<p>
		<p style= "text-align:center;color: gainsboro;font-family:Nanum Myeongjo;font-size: 125%">In the event of an emergency situation where the Captain is unavailable, rendered unable to act, or deposed, the following line of succession should be followed:<p>
		<p style= "text-align:center;color: gainsboro;font-family:Nanum Myeongjo;font-size: 125%;margin: 0px 50px">Captain > Head of Personnel > Research Director > Chief Medical Officer > Chief Engineer > Quartermaster > Head of Security<p>
        </body>
		</html>"}

/obj/item/book/manual/prisoner_SOP
	name = "Important Notice"
	icon_state = "prisonerSOPsheet"
	author = "Anonymous"
	title = "Important Notice"
	dat={"<html>
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Permanent+Marker|Lacquer">
		<body style= "background-color: ivory">
		<p style= "text-align:center; color: orangered; font-family:Lacquer;font-size: 600%;">Prisoner SOP</p>
		<p style= "text-align:center;font-family:Permanent Marker;font-size: 125%"><em>Notice: As a prisoner, escaping is obviously not <b>encouraged</b> ICly. However, you are welcome to plot and make escape attempts. Should you make an escape attempt, you are not permitted to randomly kill crew or security officers. Escaping prison simply to kill people is murderboning and will be treated as a rule violation, rather than a violation of SOP. When escaping, you will be pursued by security. Ending up in a scene with a crewmember mid-escape does not protect you from being captured and transported back to prison.</em><p>
		<p style= "text-align:left;font-family:Permanent Marker;font-size: 100%">1. You have been permanently imprisoned for crimes against GATO, the station, and/or her crew.<p>
		<p style= "text-align:center;font-family:Permanent Marker;font-size: 100%;margin: 0px 50px">a. If playing as a prisoner off the bat, it is encouraged to have a security note detailing what crime you were sentenced for.<p>
		<p style= "text-align:left;font-family:Permanent Marker;font-size: 100%">2. Your punishment for this crime will vary depending upon the severity, but can range from permanent imprisonment to exile or even death.<p>
		<p style= "text-align:left;font-family:Permanent Marker;font-size: 100%">3. You are permitted to make requests for accommodations, visitations, and even legal counsel permitting that a lawyer is available to represent you.<p>
		<p style= "text-align:center;font-family:Permanent Marker;font-size: 100%;margin 0px 50px">a. The Warden is not obligated to fulfil these requests.<p>
		<p style= "text-align:left;font-family:Permanent Marker;font-size: 100%">4. You are encouraged to maintain good behavior and earn your freedom through reform, serving your sentence, and backbreaking labor in the mines.<p>
		<p style= "text-align:left;font-family:Permanent Marker;font-size: 100%">5. Prisoners making escape attempts will be handled by officers in accordance to the threat they pose based on the severity of their initial crimes and violent actions toward officers in their escape attempt. As an example:<p>
		<p style= "text-align:center;font-family:Permanent Marker;font-size: 100%;margin: 0px  50px">a. A prisoner who escapes and slips out unnoticed without causing harm or stealing weapons will be pursued with non-lethal force.<p>
		<p style= "text-align:center;font-family:Permanent Marker;font-size: 100%;margin: 0px 50px">b. A prisoner who escapes and slips out unnoticed without causing harm, but who was imprisoned for murder, will still be pursued with lethal force.<p>
		</body></html>"}

/obj/item/book/manual/greytide_SOP
	name = "My SOP"
	icon_state = "greySOPsheet"
	author = "Mr. GreyTide"
	title = "My SOP"
	dat={"<html>
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Pangolin|Coming+Soon">
		<body style= "background-color: ivory">
		<p style= "text-align:center; color: slategrey; font-family:Coming Soon;font-size: 600%;">Assistant SOP</p>
		<p style= "text-align:center;font-family:Pangolin;font-size: 125%"><em>1. You have no special <del>repos</del> responsibilities.</em><p>
		<p style= "text-align:center;font-family:Pangolin;font-size: 125%"><em>2. You may request an <strong style="font-size: 150%">ass</strong>ignment from the HOP. Familiarize yourself with the <del>SOP of your desired position before requesting it.</del></em> all the fun items from that department.<p>
		<p style= "text-align:center;font-family:Pangolin;font-size: 125%"><em>3. You are not required to fulfill role/job requests from command.</em><p>
		<p style= "text-align:center;font-family:Pangolin;font-size: 125%"><em>4. You are still required to <del>follow orders from command to ensure the safety and security of the crew and station.</del> have loads of fun :)</em> <p>
		</body></html>"}

//GS13 SOP Manuals end

// Wiki books that are linked to the configured wiki link.

// A book that links to the wiki
/obj/item/book/manual/wiki
	var/page_link = ""
	window_size = "970x710"

/obj/item/book/manual/wiki/attack_self()
	if(!dat)
		initialize_wikibook()
	..()

/obj/item/book/manual/wiki/proc/initialize_wikibook()
	var/wikiurl = CONFIG_GET(string/wikiurltg)
	if(wikiurl)
		dat = {"

			<html><head>
			<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
			<style>
				iframe {
					display: none;
				}
			</style>
			</head>
			<body>
			<script type="text/javascript">
				function pageloaded(myframe) {
					document.getElementById("loading").style.display = "none";
					myframe.style.display = "inline";
				}
			</script>
			<p id='loading'>You start skimming through the manual...</p>
			<iframe width='100%' height='97%' onload="pageloaded(this)" src="[wikiurl]/[page_link]?printable=yes&remove_links=1" frameborder="0" id="main_frame"></iframe>
			</body>

			</html>

			"}

/obj/item/book/manual/wiki/cit
	name = "Citadel infobook"
	icon_state ="book8"
	author = "GATO" //GS13 - Nanotrasen to GATO
	title = "Citadel infobook"
	page_link = ""
	window_size = "1500x800" //Too squashed otherwise

/obj/item/book/manual/wiki/cit/initialize_wikibook()
	var/wikiurl = CONFIG_GET(string/wikiurl)
	if(wikiurl)
		dat = {"

			<html><head>
			<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
			<style>
				iframe {
					display: none;
				}
			</style>
			</head>
			<body>
			<script type="text/javascript">
				function pageloaded(myframe) {
					document.getElementById("loading").style.display = "none";
					myframe.style.display = "block";
				}
			</script>
			<p id='loading'>You start skimming through the manual...</p>
			<iframe width='100%' height='97%' onload="pageloaded(this)" src="[wikiurl]/[page_link]" frameborder="0" id="main_frame"></iframe>
			</body>

			</html>

			"}

/obj/item/book/manual/wiki/cit/chemistry
	name = "Chemistry Textbook"
	icon_state ="chemistrybook"
	author = "GATO" //GS13 - Nanotrasen to GATO
	title = "Chemistry Textbook"
	page_link = "main/guides/guide_chemistry"

/obj/item/book/manual/wiki/cit/chem_recipies
	name = "Chemistry Recipies"
	icon_state ="chemrecibook"
	author = "Chemcat"
	title = "Chemistry Recipies"
	page_link = "main/guides/chem_recipies"

/obj/item/book/manual/wiki/chemistry
	name = "Outdated Chemistry Textbook"
	icon_state ="chemistrybook_old"
	author = "GATO" //GS13 - Nanotrasen to GATO
	title = "Outdated Chemistry Textbook"
	page_link = "Guide_to_chemistry"

/obj/item/book/manual/wiki/chemistry/Initialize(mapload)
	. = ..()
	new /obj/item/book/manual/wiki/cit/chemistry(loc)
	new /obj/item/book/manual/wiki/cit/chem_recipies(loc)

/obj/item/book/manual/wiki/engineering_construction
	name = "Station Repairs and Construction"
	icon_state ="bookEngineering"
	author = "Engineering Encyclopedia"
	title = "Station Repairs and Construction"
	page_link = "Guide_to_construction"

/obj/item/book/manual/wiki/engineering_guide
	name = "Engineering Textbook"
	icon_state ="bookEngineering2"
	author = "Engineering Encyclopedia"
	title = "Engineering Textbook"
	page_link = "Guide_to_engineering"

/obj/item/book/manual/wiki/engineering_singulo_tesla
	name = "Singularity and Tesla for Dummies"
	icon_state ="bookEngineeringSingularitySafety"
	author = "Engineering Encyclopedia"
	title = "Singularity and Tesla for Dummies"
	page_link = "Singularity_and_Tesla_engines"

/obj/item/book/manual/wiki/security_space_law
	name = "Space Law"
	desc = "A set of GATO guidelines for keeping law and order on their space stations." //GS13 - Nanotrasen to GATO
	icon_state = "bookSpaceLaw"
	author = "GATO" //GS13 - Nanotrasen to GATO
	title = "Space Law"
	page_link = "Space_Law"

/obj/item/book/manual/wiki/security_space_law/suicide_act(mob/living/user)
	user.visible_message("<span class='suicide'>[user] pretends to read \the [src] intently... then promptly dies of laughter!</span>")
	return OXYLOSS

/obj/item/book/manual/wiki/infections
	name = "Infections - Making your own pandemic!"
	icon_state = "bookInfections"
	author = "Infections Encyclopedia"
	title = "Infections - Making your own pandemic!"
	page_link = "Infections"

/obj/item/book/manual/wiki/telescience
	name = "Teleportation Science - Bluespace for dummies!"
	icon_state = "book7"
	author = "University of Bluespace"
	title = "Teleportation Science - Bluespace for dummies!"
	page_link = "Guide_to_telescience"

/obj/item/book/manual/wiki/engineering_hacking
	name = "Hacking"
	icon_state ="bookHacking"
	author = "Engineering Encyclopedia"
	title = "Hacking"
	page_link = "Hacking"

/obj/item/book/manual/wiki/detective
	name = "The Film Noir: Proper Procedures for Investigations"
	icon_state ="bookDetective"
	author = "GATO" //GS13 - Nanotrasen to GATO
	title = "The Film Noir: Proper Procedures for Investigations"
	page_link = "Detective"

/obj/item/book/manual/wiki/barman_recipes
	name = "Barman Recipes: Mixing Drinks and Changing Lives"
	icon_state = "barbook"
	author = "Sir John Rose"
	title = "Barman Recipes: Mixing Drinks and Changing Lives"
	page_link = "Guide_to_food_and_drinks"

/obj/item/book/manual/wiki/robotics_cyborgs
	name = "Robotics for Dummies"
	icon_state = "borgbook"
	author = "XISC"
	title = "Robotics for Dummies"
	page_link = "Guide_to_robotics"

/obj/item/book/manual/wiki/research_and_development
	name = "Research and Development 101"
	icon_state = "rdbook"
	author = "Dr. L. Ight"
	title = "Research and Development 101"
	page_link = "Guide_to_Research_and_Development"

/obj/item/book/manual/wiki/experimentor
	name = "Mentoring your Experiments"
	icon_state = "rdbook"
	author = "Dr. H.P. Kritz"
	title = "Mentoring your Experiments"
	page_link = "Experimentor"

/obj/item/book/manual/wiki/medical_cloning
	name = "Cloning techniques of the 26th century"
	icon_state ="bookCloning"
	author = "Medical Journal, volume 3"
	title = "Cloning techniques of the 26th century"
	page_link = "Guide_to_genetics#Cloning"

/obj/item/book/manual/wiki/cooking_to_serve_man
	name = "To Serve Man"
	desc = "It's a cookbook!"
	icon_state ="cooked_book"
	author = "the Kanamitan Empire"
	title = "To Serve Man"
	page_link = "Guide_to_food_and_drinks"

/obj/item/book/manual/wiki/circuitry
	name = "Circuitry for Dummies"
	icon_state = "book1"
	author = "Dr. Hans Asperger"
	title = "Circuitry for Dummies"
	page_link = "Guide_to_circuits"

/obj/item/book/manual/wiki/tcomms
	name = "Subspace Telecommunications And You"
	icon_state = "book3"
	author = "Engineering Encyclopedia"
	title = "Subspace Telecommunications And You"
	page_link = "Guide_to_Telecommunications"

/obj/item/book/manual/wiki/atmospherics
	name = "Lexica Atmosia"
	icon_state = "book5"
	author = "the City-state of Atmosia"
	title = "Lexica Atmosia"
	page_link = "Guide_to_Atmospherics"

/obj/item/book/manual/wiki/medicine
	name = "Medical Space Compendium, Volume 638"
	icon_state = "book8"
	author = "Medical Journal"
	title = "Medical Space Compendium, Volume 638"
	page_link = "Guide_to_medicine"

/obj/item/book/manual/wiki/surgery
	name = "Brain Surgery for Dummies"
	icon_state = "book4"
	author = "Dr. F. Fran"
	title = "Brain Surgery for Dummies"
	page_link = "Surgery"

/obj/item/book/manual/wiki/grenades
	name = "DIY Chemical Grenades"
	icon_state = "book2"
	author = "W. Powell"
	title = "DIY Chemical Grenades"
	page_link = "Grenade"

/obj/item/book/manual/wiki/toxins
	name = "Toxins or: How I Learned to Stop Worrying and Love the Maxcap"
	icon_state = "book6"
	author = "Cuban Pete"
	title = "Toxins or: How I Learned to Stop Worrying and Love the Maxcap"
	page_link = "Guide_to_toxins"

/obj/item/book/manual/wiki/rbmk
	name = "\improper Haynes nuclear reactor owner's manual"
	icon_state = "bookEngineering2"
	author = "CogWerk Engineering Reactor Design Department"
	title = "Haynes nuclear reactor owner's manual"
	page_link = "Guide_to_the_Nuclear_Reactor"

/obj/item/book/manual/wiki/rbmk/initialize_wikibook()
	var/wikiurl = "https://nsv.beestation13.com/wiki"
	if(wikiurl)
		dat = {"
			<html><head>
			<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
			<style>
				iframe {
					display: none;
				}
			</style>
			</head>
			<body>
			<script type="text/javascript">
				function pageloaded(myframe) {
					document.getElementById("loading").style.display = "none";
					myframe.style.display = "inline";
				}
			</script>
			<p id='loading'>You start skimming through the manual...</p>
			<iframe width='100%' height='97%' onload="pageloaded(this)" src="[wikiurl]/[page_link]?printable=yes&remove_links=1" frameborder="0" id="main_frame"></iframe>
			</body>
			</html>
			"}

/obj/item/book/manual/wiki/toxins/suicide_act(mob/user)
	var/mob/living/carbon/human/H = user
	user.visible_message("<span class='suicide'>[user] starts dancing to the Rhumba Beat! It looks like [user.p_theyre()] trying to commit suicide!</span>")
	playsound(loc, 'sound/effects/spray.ogg', 10, 1, -3)
	if (!QDELETED(H))
		H.emote("spin")
		sleep(20)
		for(var/obj/item/W in H)
			H.dropItemToGround(W)
			if(prob(50))
				step(W, pick(GLOB.alldirs))
		ADD_TRAIT(H, TRAIT_DISFIGURED, TRAIT_GENERIC)
		for(var/i in H.bodyparts)
			var/obj/item/bodypart/BP = i
			BP.generic_bleedstacks += 5
		H.gib_animation()
		sleep(3)
		H.adjustBruteLoss(1000) //to make the body super-bloody
		H.spawn_gibs()
		H.spill_organs()
		H.spread_bodyparts()
	return (BRUTELOSS)
