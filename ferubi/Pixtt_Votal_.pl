sub EVENT_DEATH_COMPLETE_COMPLETE {
  if($entity_list->GetMobByNpcTypeID(284080)) {
    quest::spawn2(284103,0,0,$x,$y,$z,$h);
  }  
}