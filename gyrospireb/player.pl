#
# quests/gyrospireb/player.pl
#
# Script for opening all parts of the four part doors when a player clicks on any part.
#
sub EVENT_CLICKDOOR {
  @multipartdoors = ([58, 59, 60, 61], [62, 63, 64, 65], [66, 67, 68, 69], [70, 71, 72, 73], [78, 79, 80, 81],
                     [82, 83, 84, 85], [86, 87, 88, 89], [90, 91, 92, 93], [94, 95, 96, 97], [98, 99, 100, 101],
                     [102, 103, 104, 105], [106, 107, 108, 109], [110, 111, 112, 113], [120, 121, 122, 123],
                     [125, 126, 127, 128], [129, 130, 131, 132], [133, 134, 135, 136], [137, 138, 139, 140],
                     [141, 142, 143, 144]);

  for $row (@multipartdoors) {
    if(($doorid >= @$row[0]) && ($doorid <= @$row[3])) {
      for $d ( @$row) {
        if($d != $doorid) {
          quest::forcedooropen($d);
        }
      }
      return;
    }
  }
}

sub EVENT_LEVEL_UP
{
	quest::scribespells($ulevel);
	quest::traindiscs($ulevel); 
	$myclass=$class;
	if($myclass eq "Shadowknight")
	{
		if($ulevel==6){quest::setskill("10",($ulevel));}
		if($ulevel==10){quest::setskill("19",($ulevel));}
		if($ulevel==17){quest::setskill("34",($ulevel));}
		if($ulevel==20){quest::setskill("20",($ulevel));}
		if($ulevel==30){quest::setskill("37",($ulevel));}
		if($ulevel==40){quest::setskill("16",($ulevel));}
	}
	
	if($myclass eq "Warrior")
	{
		if($ulevel==6)
		{
			quest::setskill("10",($ulevel));
			quest::setskill("19",($ulevel));
		}
		if($ulevel==10){quest::setskill("34",($ulevel));}
		if($ulevel==13){quest::setskill("22",($ulevel));}
		if($ulevel==15){quest::setskill("20",($ulevel));}
		if($ulevel==25){quest::setskill("37",($ulevel));}
		if($ulevel==35){quest::setskill("16",($ulevel));}
	}
	if($myclass eq "Necro"||$myclass eq "Enchanter"||
		$myclass eq "Magician"||$myclass eq "Wizard")
	{
		if($ulevel==16)
		{
			quest::setskill("58",($ulevel));
		}
		if($ulevel==20){quest::setskill("43",($ulevel));}
		if($ulevel==20){quest::setskill("44",($ulevel));}
		if($ulevel==20){quest::setskill("45",($ulevel));}
		if($ulevel==20){quest::setskill("46",($ulevel));}
		if($ulevel==20){quest::setskill("47",($ulevel));}
		if($ulevel==20){$client->Message(5,"Remember you can only get 1 specializtion
		over 50, the first one over 50 becomes your specialization");}

		if($ulevel==22){quest::setskill("19",($ulevel));}
	}
	if($myclass eq "Cleric"){if($ulevel==25){quest::setskill("10",($ulevel));}}
	if($myclass eq "Shaman"){if($ulevel==25){quest::setskill("59",($ulevel));}}
	if($myclass eq "Druid")
	{
		if($ulevel==5){quest::setskill("27",($ulevel));}
		if($ulevel==20){quest::setskill("53",($ulevel));}
	}
	if($myclass eq "Druid"||$myclass eq "Shaman"||$myclass eq "Cleric")
	{
		if($ulevel==15){quest::setskill("19",($ulevel));}
		if($ulevel==30){quest::setskill("43",($ulevel));}
		if($ulevel==30){quest::setskill("44",($ulevel));}
		if($ulevel==30){quest::setskill("45",($ulevel));}
		if($ulevel==30){quest::setskill("46",($ulevel));}
		if($ulevel==30){quest::setskill("47",($ulevel));}
		if($ulevel==30){$client->Message(5,"Remember you can only get 1 specialization
		over 50, the first one over 50 becomes your specialization");}
	}
	if($myclass eq "Rogue")
	{
		if($ulevel==4){quest::setskill("19",($ulevel));}
		if($ulevel==5){quest::setskill("35",($ulevel));}
		if($ulevel==7){quest::setskill("48",($ulevel));}
		if($ulevel==10){quest::setskill("62",($ulevel));}
		if($ulevel==10){quest::setskill("8",($ulevel));}
		if($ulevel==12){quest::setskill("34",($ulevel));}
		if($ulevel==12){quest::setskill("39",($ulevel));}
		if($ulevel==13){quest::setskill("22",($ulevel));}
		if($ulevel==15){quest::setskill("17",($ulevel));}
		if($ulevel==16){quest::setskill("20",($ulevel));}
		if($ulevel==18){quest::setskill("6",($ulevel));}
		if($ulevel==20){quest::setskill("56",($ulevel));}
		if($ulevel==22){quest::setskill("71",($ulevel));}
		if($ulevel==27){quest::setskill("16",($ulevel));}
	}
	if($myclass eq "Ranger")
	{
		if($ulevel==5){quest::setskill("30",($ulevel));}
		if($ulevel==8){quest::setskill("19",($ulevel));}
		if($ulevel==10){quest::setskill("42",($ulevel));}
		if($ulevel==17){quest::setskill("22",($ulevel));}
		if($ulevel==18){quest::setskill("34",($ulevel));}
		if($ulevel==20){quest::setskill("20",($ulevel));}
		if($ulevel==35){quest::setskill("17",($ulevel));}
		if($ulevel==35){quest::setskill("37",($ulevel));}
	}
	if($myclass eq "Monk")
	{
		if($ulevel==3){quest::setskill("39",($ulevel));}
		if($ulevel==5){quest::setskill("38",($ulevel));}
		if($ulevel==8){quest::setskill("42",($ulevel));}
		if($ulevel==10){quest::setskill("52",($ulevel));}
		if($ulevel==12){quest::setskill("11",($ulevel));}
		if($ulevel==15){quest::setskill("20",($ulevel));}
		if($ulevel==17){quest::setskill("28",($ulevel));}
		if($ulevel==18){quest::setskill("71",($ulevel));}
		if($ulevel==20){quest::setskill("23",($ulevel));}
		if($ulevel==25){quest::setskill("21",($ulevel));}
		if($ulevel==27){quest::setskill("17",($ulevel));}
		if($ulevel==30){quest::setskill("26",($ulevel));}
		if($ulevel==35){quest::setskill("37",($ulevel));}
	}
	if($myclass eq "Bard")
	{
		if($ulevel==5){quest::setskill("70",($ulevel));}
		if($ulevel==8){quest::setskill("49",($ulevel));}
		if($ulevel==10){quest::setskill("31",($ulevel));}
		if($ulevel==10){quest::setskill("35",($ulevel));}
		if($ulevel==11){quest::setskill("12",($ulevel));}
		if($ulevel==12){quest::setskill("27",($ulevel));}
		if($ulevel==14){quest::setskill("54",($ulevel));}
		if($ulevel==15){quest::setskill("62",($ulevel));}
		if($ulevel==17){quest::setskill("22",($ulevel));}
		if($ulevel==17){quest::setskill("42",($ulevel));}
		if($ulevel==20){quest::setskill("17",($ulevel));}
		if($ulevel==24){quest::setskill("39",($ulevel));}
		if($ulevel==25){quest::setskill("29",($ulevel));}
		if($ulevel==26){quest::setskill("71",($ulevel));}
		if($ulevel==35){quest::setskill("53",($ulevel));}
		if($ulevel==53){quest::setskill("34",($ulevel));}
		if($ulevel==58){quest::setskill("37",($ulevel));}
	}
	if($myclass eq "Paladin")
	{
		if($ulevel==6){quest::setskill("10",($ulevel));}
		if($ulevel==10){quest::setskill("19",($ulevel));}
		if($ulevel==17){quest::setskill("34",($ulevel));}
		if($ulevel==20){quest::setskill("20",($ulevel));}
		if($ulevel==30){quest::setskill("37",($ulevel));}
		if($ulevel==40){quest::setskill("16",($ulevel));}
	}
	if($myclass eq "Beastlord")
	{
		if($ulevel==5){quest::setskill("30",($ulevel));}
		if($ulevel==10){quest::setskill("19",($ulevel));}
		if($ulevel==17){quest::setskill("22",($ulevel));}
		if($ulevel==25){quest::setskill("11",($ulevel));}
		if($ulevel==40){quest::setskill("37",($ulevel));}
	}
	if($myclass eq "Berserker")
	{
		if($ulevel==6){quest::setskill("74",($ulevel));}
		if($ulevel==10){quest::setskill("19",($ulevel));}
		if($ulevel==12){quest::setskill("34",($ulevel));}
		if($ulevel==15){quest::setskill("20",($ulevel));}
		if($ulevel==30){quest::setskill("37",($ulevel));}
		if($ulevel==35){quest::setskill("16",($ulevel));}
	}


}
