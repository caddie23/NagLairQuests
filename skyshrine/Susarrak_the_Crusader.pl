sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::Whisper("I am the talon that justly strikes down our enemies and shall fulfill our destiny in the trials of blood and vengeance. I sense that the loyalty you bear toward the children of scale is strong but the siren voice that has called you to us is still a whisper upon your mind, and it is a song of curiosity and greed that fuels you yet. Since the dawn of your creation, all of your kind has proven that without tangible reward to do otherwise, your blades would be aimed for our hearts. But do not think we fault you for merely this -- such shallow lusts have become a definition of your kind, and we do not bear you ill will for it. However, the [champions] are not as the others of Veeshan's brood and your past deeds shall [not bear fruitful] in your dealings with us.");
  }
  if ($text=~/champions/i) {
    plugin::Whisper("The Crusaders of Veeshan are four champions of dragon kind who will reconstruct that which has been ruined, although does not yet lay in disrepair. Fate has given room for nothing short of this declaration and the recent past has demanded our attention and duty to be thus. Your kind, the second generation, has dangerously shifted the destiny of all upon this world and it is your ignorant and lustful actions that have forced us into existence as we are now. Kerafyrm, the Sleeper, was well guarded for all these years not without dire justification -- he could not be destroyed by means conceivable by dragon or second generation alike, and now you have unleashed him and a much darker shadow lurks with venomous tendrils over all of this world's inhabitants. We are those whose existence is to combat this shadow and [keep it at bay], despite all costs and with all sacrifice.");
  }
  if ($text=~/at bay/i) {
    plugin::Whisper("When Kerafyrm was first recognized as a dire threat to this world, the four Warders were chosen -- dragons who represented each of the primal elements that would encase the prismatic dragon within an enchanted slumber indefinitely. The elders of the council knew that this would not be enough. Before the great war that would yield Kerafyrm's incarceration, the warders were instructed to mate with four dragons of elements as their own individually. The offspring of these unions would be trained for the undivided purpose of fulfilling their predecessors' duties when their fate would inevitably dawn. However, your kind have forced the apprentices into a [new role] -- one that we had not anticipated, but such was our mistake to overestimate your kind to be of sound mind and judgment.");
  }
  if ($text=~/new role/i) {
    plugin::Whisper("When Kerafyrm was awoken, the apprentices were called by the council to prepare for the hunt and his recapture. When all was said and done, the apprentices were not as agreeable to the council's plan as was expected, for obedience was a lesson thought to be instinct molded to their breeding. For months the deliberations and cordial arguments raged, but all that would eventually come would be the unspoken disapproval of the council and the apprentices' self-imposed adoption of a new and more necessary duty. The Crusaders of Veeshan were born upon the very steps of the council's sacred hall and in respectful defiance, we have come to Skyshrine to fulfill our purpose. However, those passing months ushered in an unseen darkness that the Crusaders had feared from the first movement of Kerafyrm's eye -- the [ancients] returned.");
  }
  if ($text=~/ancients/i) {
    plugin::Whisper("The Ancients are not to be trifled with, Xanadas! You ask for their [names], for their past and for their meaning to this perilous path that you have set us upon, and your actions have earned you nothing less than the obligation to know the fullest extent of what you have unleashed upon this world. But do not take these words lightly, nor think yourself a hero standing in the fading shadow of a great monster. Although those of you whom still bear allegiance to the Claws of Veeshan will be asked by the Crusaders to engage these monstrosities of Veeshan's brood, you shall gain neither repute nor true victory if you succeed in such a task -- you may gain some favor in our eyes and perhaps an eye to separate you from those of your kind that have betrayed all of this world.");
  }
  if ($text=~/names/i) {
    plugin::Whisper("When Kerafyrm had proven his mad, relentless nature that opposed all we had established since the dawn of our existence, the elder council of the Claws of Veeshan ordered Kerafyrm's destruction as an absolute necessity to escape existence as slaves to the tyranny of a mad abomination. During this time, Kerafyrm had established allies within the Velious nation -- amongst these allies were four elders upon the very council that sought to destroy him. Kildrukaun, the former Arch Priest of Veeshan and driving force behind the original decree that forbade the existence of creatures such as Kerafyrm was the first to betray the Claws of Veeshan. Do you wish to know the rest of the names?");
  }
  if ($text=~/rest of their names/i) {
    plugin::Whisper("Vyskudra, the magnificent dragon of the storms and only one of her kind to exist followed the lead of her patron and master. Third was Tjudawos, a scholar within the council and one who was swayed not without much debate from Kildrukaun, but the Arch Priest's sound argument would seduce the brilliant master of the arcane to their side. Lastly was Zeixshi-Kar, the general among the Claws of Veeshan who engaged within the fledgling war with the giants of Kael that would last for centuries beyond her departure. These four elders would become the driving force behind Kerafyrm's army and are now the [greatest danger] we face in the current era of this turmoil.");
  }
  if ($text=~/greatest danger/i) {
    plugin::Whisper("No longer are these great dragons merely elders, for they have ascended to a place within dragon hierarchy that has been done so rarely -- they have become ancients; powerful immortals whose essence lies beyond our realm and reach. In sparse records have dragons ascended to this status, and never before has one with malevolent intent gone beyond their mortal coils. These ancients, these immortal creatures of pure destruction, chaos, and envenomed hate are the key to Kerafyrm's fullest potential. This is why they must be [hindered] from manifesting the fullest of their power as they lay in wait for their master's return.");
  }
  if ($text=~/hinder/i) {
    plugin::Whisper("Do not be so quick to presume, $name. An entire army of Veeshan's most powerful brood was unable to destroy these creatures, so do not think that you of the second generation could stride beyond that which we could not. But do not be discouraged, $name, for the second generation is not so easily with excuse to turn their backs on what they have unleashed. The ancients are powerful immortals indeed, but their forms lie on the primal world and thus they are subject to its laws, however vain they ultimately prove to be. If you are able to engage the Ancients and survive, temporarily extinguishing their corporeal form, you would have completed a great feat indeed, although one that would hold no permanent impact on our [battle].");
  }
  if ($text=~/battle/i) {
    plugin::Whisper("Very well, although we shall not place dire importance upon your return. The venture will be difficult and you shall likely fail, for the Ancients will be unlike anything that you have engaged in the past. If you are successful, specific samples from their corporeal forms would be of limitless use to us in our efforts to keep Kerafyrm and his minions at bay, if not permanently extinguished. For our efforts to be of any due worth, we need one sample from each dragon, and each Crusader must be given the particular representation of their duty by one whose spirit and disciplines are paralleled. If you are a student of the arcane teachings, then I shall ask that you return your [findings]  to me. If your heart and purpose is bound solely to that of a spiritual or divine rule, the [items] that one of your skill alone can recover shall also be of use to me. Otherwise seek out another Crusader and find your calling with them.");
  }
  if ($text=~/findings/i) {
    plugin::Whisper("Only one whose spirit is saturated with the powers to invoke the mind into energy upon this realm can extract the scales of these temporary manifestations. One scale from each of the Ancients is necessary for this task to be complete. If you are so fortunate and graciously favored by the fates as to recover one of these precious items from the each of the ancients, you are to return them to me, but only when and if you acquire one scale from each of the four ancients. However, be warned that the Ancient's forms are unpredictable and we are not certain what will remain intact once their essence and consciousness have fled their forms and you may find yourself standing before the lifeless form of a monstrous behemoth, but the scales you seek may be too damaged or deteriorated from the sudden loss of its life-giving essence.");
  }
  if ($text=~/items/i) {
    plugin::Whisper("The divine essence of your faith and duties that has lightly touched your spirit will allow you the chance to extract the very core of the Ancients' manifestations -- their ethereal hearts. When the time comes that you seek to engage these forces of malignant hate and destruction, you shall be granted the chance to extract this precious, delicate item. If and when you have successfully extracted the heart of each Ancient, you shall return them to me. Mind you, this feat is not one that will be as simple as charging and defeating each of the Ancients, for their forms are unpredictable and the ways in which they are bound to this earth are those of a delicate balance between chaos, consciousness, and power. Times may come when you defeat an Ancient and the delicate matter of their ethereal core will be damaged beyond use to us. Prepare yourself for a seemingly endless battle, for as we stand now upon this path, the recognizable semblance of an end is upon an unseen horizon.");
  }
}

sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 9342 => 1, 9341 => 1, 9340 => 1, 9339 => 1)) {
  plugin::Whisper("You cannot fathom the importance of your actions, $name. What you have accomplished cannot be claimed in truth by many and know that all sacrifices that you and those who have undoubtedly aided you have made in fulfilling this awesome feat shall not go without notice. The Crusaders of Veeshan can express neither the prominent magnitude of the honor that you have upheld in maintaining your convictions to the Claws of Veeshan.");
 quest::summonitem(30390);   
  }
  if (plugin::check_handin(\%itemcount, 9331 => 1, 9333 => 1, 9332 => 1, 9334 => 1)) {
 plugin::Whisper("You cannot fathom the importance of your actions, $name. What you have accomplished cannot be claimed in truth by many and know that all sacrifices that you and those who have undoubtedly aided you have made in fulfilling this awesome feat shall not go without notice. The Crusaders of Veeshan can express neither the prominent magnitude of the honor that you have upheld in maintaining your convictions to the Claws of Veeshan.");  
 quest::summonitem(30389); 
  }
  if (plugin::check_handin(\%itemcount, 9298 => 1, 9297 => 1)) {
     plugin::Whisper("You cannot fathom the importance of your actions, $name. What you have accomplished cannot be claimed in truth by many and know that all sacrifices that you and those who have undoubtedly aided you have made in fulfilling this awesome feat shall not go without notice. The Crusaders of Veeshan can express neither the prominent magnitude of the honor that you have upheld in maintaining your convictions to the Claws of Veeshan.");
    quest::summonitem(30394);
  }
  if (plugin::check_handin(\%itemcount, 9317 => 1, 9326 => 1)) {
    plugin::Whisper("You cannot fathom the importance of your actions, $name. What you have accomplished cannot be claimed in truth by many and know that all sacrifices that you and those who have undoubtedly aided you have made in fulfilling this awesome feat shall not go without notice. The Crusaders of Veeshan can express neither the prominent magnitude of the honor that you have upheld in maintaining your convictions to the Claws of Veeshan.");
    quest::summonitem(30395);
  }
}