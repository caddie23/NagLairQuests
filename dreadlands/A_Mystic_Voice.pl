sub EVENT_SPAWN {
quest::settimer("dreadlands5min",300); #Live Like Is 900
}

sub EVENT_TIMER {
if ($timer eq "dreadlands5min") {
quest::stoptimer("dreadlands5min");
plugin::Whisper("The portal to Luclin will become active in five minutes. Please begin gathering at the Spires if you wish to travel.");
quest::settimer("dreadlands3min",120);
}
if ($timer eq "dreadlands3min") {
quest::stoptimer("dreadlands3min");
plugin::Whisper("As a reminder, the portal will become active in three minutes.");
quest::settimer("dreadlands2min",60);
}
if ($timer eq "dreadlands2min") {
quest::stoptimer("dreadlands2min");
plugin::Whisper("Two minutes till teleportation. Please be prepared to step inside the circle of Spires.");
quest::settimer("dreadlands1min",60);
}
if ($timer eq "dreadlands1min") {
quest::stoptimer("dreadlands1min");
plugin::Whisper("One minute till teleportation. Please be prepared to step inside the circle of Spires.");
quest::settimer("dreadlandstimer",60);
}
if ($timer eq "dreadlandstimer") {
quest::stoptimer("dreadlandstimer");
plugin::Whisper("The portal to Luclin is about to become active. Please stand inside the circle of Spires and have a shard upon your person.");
quest::setglobal(nexus_dre,1,3,"S60"); #when the portal Is open, global Is set true for 1 min.
quest::settimer("dreadlands5min",900);
quest::signalwith(86051,101,0); #triggers the flavor
}
 }


