#needs live text
sub EVENT_SPAWN {
$counter = 0;
quest::settimer(1,1800);
}

sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::Whisper("I'm starved, I require barbequed cragbeast.");
  }
}

sub EVENT_TIMER {
  quest::emote("crashes to the ground, starved.");
  $npc->Depop(1);
  }

sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 58472 =>1 )) {
    quest::faction( 363,5 );
    quest::exp(100000);
    $counter += 1;
  }
  if (plugin::check_handin(\%itemcount, 58531 =>1 )) {
    quest::faction( 363,5 );
    quest::exp(100000);
    $counter += 1;
  }
  if (plugin::check_handin(\%itemcount, 58535 =>1 )) {
    quest::faction( 363,5 );
    quest::exp(100000);
    $counter += 1;
  }
  if (plugin::check_handin(\%itemcount, 58532 =>1 )) {
      quest::faction( 363,5 );
      quest::exp(100000);
      $counter += 1;
  }
  if (plugin::check_handin(\%itemcount, 58534 =>1 )) {
    quest::faction( 363,5 );
    quest::exp(100000);
    $counter += 1;
  }
    if (plugin::check_handin(\%itemcount, 58538 =>1 )) {
    quest::faction( 363,5 );
    quest::exp(100000);
    $counter += 1;
  }
  if (plugin::check_handin(\%itemcount, 58533 =>1 )) {
    quest::faction( 363,5 );
    quest::exp(100000);
    $counter += 1;
  }
  if (plugin::check_handin(\%itemcount, 58536 =>1 )) {
    quest::faction( 363,5 );
    quest::exp(100000);
    $counter += 1;
  }
  if (plugin::check_handin(\%itemcount, 58480 =>1 )) {
    quest::faction( 363,5 );
    quest::exp(100000);
    $counter += 1;
  }
  if (plugin::check_handin(\%itemcount, 58537 =>1 )) {
    quest::faction( 363,5 );
    quest::exp(100000);
    $counter += 1;
  }
  if($counter == 11) {
    $npc->Depop(1);
     }
plugin::return_items(\%itemcount);
}
