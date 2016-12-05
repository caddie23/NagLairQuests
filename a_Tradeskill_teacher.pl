###################################
#Zone: All (Global)               #
#Short Name:                      #
#Zone ID: 55                      #
###################################
#NPC Name: Teacher_of_Norrath     #
#NPC ID: All                      #
#Quest Status: Complete           #
###################################
sub EVENT_SAY {

$myskills = $client->GetSkillPoints()-1;
$maxskills = $ulevel*10;

my $teachings = quest::saylink ("teachings",1);
my $zone = quest::saylink ("zone",1);

my $alchemy = quest::saylink ("alchemy",1);
my $baking = quest::saylink ("baking",1);
my $smithing = quest::saylink ("smithing",1);
my $brewing = quest::saylink ("brewing",1);
my $fletching = quest::saylink ("fletching",1);
my $jewelry = quest::saylink ("jewelry",1);
my $poison = quest::saylink ("poison",1);
my $pottery = quest::saylink ("pottery",1);
my $research = quest::saylink ("research",1);
my $tailoring = quest::saylink ("tailoring",1);
my $tinkering = quest::saylink ("tinkering",1);





if($text=~/hail/i){
$client->Message(315, "Greetings, $name. Have you come to me for my [$teachings]? I can only teach you more of what you started learning from your Guildmaster and only if it does not exceed your level. Make sure to [$zone] after I am done teaching you.");
}

if($text=~/zone/i){
$client->Message(315, "Yes, you must leave this zone after learning from me so you will see the results of your lessons. Even your Guildmaster will not recognize your achievements if you do not zone first.");
}

if($text=~/teachings/i){
$pcskills = $client->GetSkillPoints();
$client->Message(315, "I can teach you many things with your $pcskills skill points. I can teach you more about [$alchemy], [$baking], black[$smithing], [$brewing], [$fletching], [$jewelry] making, [$poison] making, [$pottery], [$research], [$tailoring] and [$tinkering].");
}

if($text=~/alchemy/i){
  if ($client->GetRawSkill(59)<$maxskills && $client->GetSkillPoints()>0 && $client->GetRawSkill(59)>0){
    $skill_from = $client->GetRawSkill(59);
    $client->IncreaseSkill(59);
    $client->SetSkillPoints($myskills);
    $skill_this = $client->GetRawSkill(59);
    $client->Message(315, "I have taught you a little more about alchemy from $skill_from to $skill_this.");
  }
  else {
    $client->Message(315, "You are not ready to learn more about alchemy.");
  }
}

if($text=~/smithing/i){
  if ($client->GetRawSkill(63)<$maxskills && $client->GetSkillPoints()>0 && $client->GetRawSkill(63)>0){
    $skill_from = $client->GetRawSkill(63);
    $client->IncreaseSkill(63);
    $client->SetSkillPoints($myskills);
    $skill_this = $client->GetRawSkill(63);
    $client->Message(315, "I have taught you a little more about blacksmithing from $skill_from to $skill_this.");
  }
  else {
    $client->Message(315, "You are not ready to learn more about blacksmithing.");
  }
}

if($text=~/poison/i){
  if ($client->GetRawSkill(56)<$maxskills && $client->GetSkillPoints()>0 && $client->GetRawSkill(56)>0){
    $skill_from = $client->GetRawSkill(56);
    $client->IncreaseSkill(56);
    $client->SetSkillPoints($myskills);
    $skill_this = $client->GetRawSkill(56);
    $client->Message(315, "I have taught you a little more about making poisons from $skill_from to $skill_this.");
  }
  else {
    $client->Message(315, "You are not ready to learn more about making poisons.");
  }
}

if($text=~/tinkering/i){
  if ($client->GetRawSkill(57)<$maxskills && $client->GetSkillPoints()>0 && $client->GetRawSkill(57)>0){
    $skill_from = $client->GetRawSkill(57);
    $client->IncreaseSkill(57);
    $client->SetSkillPoints($myskills);
    $skill_this = $client->GetRawSkill(57);
    $client->Message(315, "I have taught you a little more about tinkering from $skill_from to $skill_this.");
  }
  else {
    $client->Message(315, "You are not ready to learn more about tinkering.");
  }
}

if($text=~/research/i){
  if ($client->GetRawSkill(58)<$maxskills && $client->GetSkillPoints()>0 && $client->GetRawSkill(58)>0){
    $skill_from = $client->GetRawSkill(58);
    $client->IncreaseSkill(58);
    $client->SetSkillPoints($myskills);
    $skill_this = $client->GetRawSkill(58);
    $client->Message(315, "I have taught you a little more about research from $skill_from to $skill_this.");
  }
  else {
    $client->Message(315, "You are not ready to learn more about research.");
  }
}

if($text=~/baking/i){
  if ($client->GetRawSkill(60)<$maxskills && $client->GetSkillPoints()>0 && $client->GetRawSkill(60)>0){
    $skill_from = $client->GetRawSkill(60);
    $client->IncreaseSkill(60);
    $client->SetSkillPoints($myskills);
    $skill_this = $client->GetRawSkill(60);
    $client->Message(315, "I have taught you a little more about baking from $skill_from to $skill_this.");
  }
  else {
    $client->Message(315, "You are not ready to learn more about baking.");
  }
}

if($text=~/tailoring/i){
  if ($client->GetRawSkill(61)<$maxskills && $client->GetSkillPoints()>0 && $client->GetRawSkill(61)>0){
    $skill_from = $client->GetRawSkill(61);
    $client->IncreaseSkill(61);
    $client->SetSkillPoints($myskills);
    $skill_this = $client->GetRawSkill(61);
    $client->Message(315, "I have taught you a little more about tailoring from $skill_from to $skill_this.");
  }
  else {
    $client->Message(315, "You are not ready to learn more about tailoring.");
  }
}

if($text=~/fletching/i){
  if ($client->GetRawSkill(64)<$maxskills && $client->GetSkillPoints()>0 && $client->GetRawSkill(64)>0){
    $skill_from = $client->GetRawSkill(64);
    $client->IncreaseSkill(64);
    $client->SetSkillPoints($myskills);
    $skill_this = $client->GetRawSkill(64);
    $client->Message(315, "I have taught you a little more about fletching from $skill_from to $skill_this.");
  }
  else {
    $client->Message(315, "You are not ready to learn more about fletching.");
  }
}

if($text=~/brewing/i){
  if ($client->GetRawSkill(65)<$maxskills && $client->GetSkillPoints()>0 && $client->GetRawSkill(65)>0){
    $skill_from = $client->GetRawSkill(65);
    $client->IncreaseSkill(65);
    $client->SetSkillPoints($myskills);
    $skill_this = $client->GetRawSkill(65);
    $client->Message(315, "I have taught you a little more about brewing from $skill_from to $skill_this.");
  }
  else {
    $client->Message(315, "You are not ready to learn more about brewing.");
  }
}

if($text=~/jewelry/i){
  if ($client->GetRawSkill(68)<$maxskills && $client->GetSkillPoints()>0 && $client->GetRawSkill(68)>0){
    $skill_from = $client->GetRawSkill(68);
    $client->IncreaseSkill(68);
    $client->SetSkillPoints($myskills);
    $skill_this = $client->GetRawSkill(68);
    $client->Message(315, "I have taught you a little more about jewelry making from $skill_from to $skill_this.");
  }
  else {
    $client->Message(315, "You are not ready to learn more about jewelry making .");
  }
}

if($text=~/pottery/i){
  if ($client->GetRawSkill(69)<$maxskills && $client->GetSkillPoints()>0 && $client->GetRawSkill(69)>0){
    $skill_from = $client->GetRawSkill(69);
    $client->IncreaseSkill(69);
    $client->SetSkillPoints($myskills);
    $skill_this = $client->GetRawSkill(69);
    $client->Message(315, "I have taught you a little more about pottery from $skill_from to $skill_this.");
  }
  else {
    $client->Message(315, "You are not ready to learn more about pottery.");
  }
}

}