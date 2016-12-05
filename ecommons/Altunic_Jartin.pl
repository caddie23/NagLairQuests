sub EVENT_SAY
{
	if($text=~/Hail/i)
	{
		plugin::Whisper("Greetings, traveler! Have you need of provisions or perhaps other wares? I sell what I find upon the battlegrounds of the Commonlands.");
	}

	if($text=~/Where is your house/i)
	{
		plugin::Whisper("Follow me.");
		quest::moveto(4791.06,-83.55,-51.47);
		quest::spawn(22196, 0, 0, 4707.63, -105.49, -51.47);
	}
}

sub EVENT_ITEM 
{ 
	# Check for "A Note (Note To Altunic)".
	if(plugin::check_handin(\%itemcount, 18896 => 1))
	{
		plugin::Whisper("You are the one they have sent? A squire?!! I hope you can help me. I gather items strewn upon the grounds of the Commonlands. I sell them at good prices. Lately, I have been terrorized by a human rogue named Narl. He will no doubt appear at my [house] soon. Bring his head to me.");
	}

	if(plugin::check_handin(\%itemcount, 13867 => 1))
	{
		plugin::Whisper("You have performed a great service to me, but I fear others will attack me while I stroll the countryside. It would be very noble of you to fetch me a cloth shirt for protection from wicked creatures. It is not much, but it will help.");

		quest::givecash("7","0","0","0");

		# Freeport Militia Faction
		quest::faction(105, -1);
		# Steel Warriors Factions
		quest::faction(311,1);
		# Knights of Truth Faction
		quest::faction(184,1);
	}

	if(plugin::check_handin(\%itemcount, 1004 => 1))
	{
		plugin::Whisper("Thank you. You are very noble for a squire. I can see you becoming a very valuable asset to the Hall of Truth. Take this token. Tell Merko that you have [earned the Token of Generosity].");

		# Give player the "Token of Generosity".
		quest::summonitem("13865");

		# Freeport Militia Faction
		quest::faction(105, -1);
		# Steel Warriors Factions
		quest::faction(311,1);
		# Knights of Truth Faction
		quest::faction(184,1); 
	}
}

#END of FILE Zone:ecommons  ID:22058 -- Altunic_Jartin 