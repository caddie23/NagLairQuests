# on death of essence harvester two essence carriers spawn
#

my $x;
my $y;
my $z;
my $h;
my $entid1;
my $entid2;
my $mob1;
my $mob2;
my $mobnpc1;
my $mobnpc2;

sub EVENT_SPAWN {
  #quest::shout("I am Azzabar reborn...!");
}

sub EVENT_AGGRO {
 # quest::shout("You will be crushed!");
}

sub EVENT_DEATH_COMPLETE {
quest::shout("Time to .... split...I'm ouuta here");
  $x = $npc->GetX();
  $y = $npc->GetY();
  $z = $npc->GetZ();
  $h = $npc->GetHeading();
  $entid1 = quest::spawn2(1221,0,0,$x+10,$y,$z,$h);
 $entid2 = quest::spawn2(1221,0,0,$x-10,$y,$z,$h);
  $mob1 = $entity_list->GetMobID($entid1);
  $mob2 = $entity_list->GetMobID($entid2);
  $mobnpc1 = $mob1->CastToNPC();
  $mobnpc2 = $mob2->CastToNPC();
  $mobnpc1->AddToHateList($npc->GetHateTop());
  $mobnpc2->AddToHateList($npc->GetHateTop());
}

# EOF zone: airplane ID: 71018 NPC: an_essence_harvester

