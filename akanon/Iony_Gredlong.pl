###################################
#Zone: Ak`Anon                    #
#Short Name: akanon               #
#Zone ID: 55                      #
###################################
#NPC Name: Iony_Gredlong          #
#NPC ID: 55139                    #
#Quest Status: Complete           #
###################################

sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::Whisper("It is very nice to meet you $name. I am Iony Gredlong Priestess of the Underfoot. I coordinate all the training for new clerics here in the Deep Musing. If you are a [cleric] then I might just have some tests for you that will challenge your wisdom as well as your fighting abilities.");
  }
  if($text=~/cleric/i) {
    plugin::Whisper("Well you would certainly be eligible for my training then young $name. I have a number of armor recipes that I give to young clerics to make sure that when they leave the comfort of the Steamfont Mountains they are ready for whatever battles they may face. If you are [interested in creating your own armor] then all you must do is simply ask and I will give you instructions to get started.");
  }
  if($text=~/interested in creating/i) {
    plugin::Whisper("I am always happy to see an eager young one like yourself! Brell certainly takes pride in all young gnomes that draw power from him to give life so you should consider yourself very special. To create your own armor you are going to collect [various items] from Ak`Anon and Steamfont. You will then combine them in this assembly kit. Once you have made a material you will place it in a forge along with molds that I will present to you to create your armor.");
    quest::summonitem(17253);
  }
  if($text=~/various items/i) {
    plugin::Whisper("There are numerous items that you will need to collect and combine in your kit. I will present you for the recipe for Shortnoble Platemail [Helms], [Bracers], [Armguards], [Boots], [Greaves], [Gauntlets] and [Breastplates]. When you are ready to attempt a specific piece please let me know what piece you want to [craft] and I will give you the necessary mold along with the recipe.");
  }
  if($text=~/helm/i) {
    plugin::Whisper("Getting something on top of your head is a wise idea $name. To create your helm material you will need to combine 2 Bricks of Crude Bronze, 1 Rat Whisker, 1 Spiderling Silk and 1 Water Flask in your assembly kit. Once you have created the proper material take it to a forge along with this mold to fashion your very own Shortnoble Platemail Helm");
    quest::summonitem(22610);
  }
  if($text=~/bracer/i) {
    plugin::Whisper("Bracers are very important to keep your wrists safe in battle $name. To create your bracer material you will need to combine 1 Brick of Crude Bronze, 1 Size 4 Gizmo, 1 Clockwork Spider Mesh and 1 Cloth Choker in your assembly kit. Once you have created the proper material take it to a forge along with this mold to fashion your very own Shortnoble Platemail Bracer.");
    quest::summonitem(22611);
  }
  if($text=~/boots/i) {
    plugin::Whisper("Well you cant go running around the Steamfont Mountains with no shoes on now can you. To create your boot material you will need to combine 3 Bricks of Crude Bronze, 1 Kobold Tooth, 2 Spiderling Silks and 1 Mead in your assembly kit. Once you have created the proper material take it to a forge along with this mold to fashion your very own Shortnoble Platemail Boots.");
    quest::summonitem(22612);
  }
  if($text=~/armguards/i) {
    plugin::Whisper("In order to keep those big muscles that all gnomes like us are blessed with you will definitely need some Armguards! To create your armguard material you will need to combine 2 Bricks of Crude Bronze, 2 Harpy Wings and 1 Snake Fang in your assembly kit. Once you have created the proper material take it to a forge along with this mold to fashion your very own Shortnoble Platemail Armguards.");
    quest::summonitem(22613);
  }
  if($text=~/greaves/i) {
    plugin::Whisper("Pants are most definitely an essential armor piece for any young cleric in training. To create your greaves material you will need to combine 4 Bricks of Crude Bronze, 1 High Quality Cat Pelt, 1 Minotaur Scalp, 1 Bottle and the Torn Cloak of Faerron in your assembly kit. Once you have created the proper material take it to a forge along with this mold to fashion your very own Shortnoble Platemail Greaves.");
    quest::summonitem(22614);
  }
  if($text=~/gauntlets/i) {
    plugin::Whisper("Keeping your hands well protected is very important while you are in training. To create your gauntlets material you will need to combine 3 Bricks of Crude Bronze, 1 Yellow Reculse Silk, 1 Brownie Brain and 2 Mountain Lion Claws in your assembly kit. Once you have created the proper material take it to a forge along with this mold to fashion your very own Shortnoble Platemail Gauntlets.");
    quest::summonitem(22615);
  }
  if($text=~/breastplate/i) {
    plugin::Whisper("I believe you are ready to craft and gather the components for the most difficult piece of Shortnoble Platemail. To create your breastplate material you will need to combine 5 Bricks of Crude Bronze, 1 Clockwork Spider Thorax Plate, 1 Brownie Parts, 1 Aviak Talon 1 Scrap Metal and the evil Halorniop`s Insignia in your assembly kit. Once you have created the proper material take it to a forge along with this mold to fashion your very own Shortnoble Platemail Breastplate. Return to me for one [final favor] I have to ask of you after you have completed your breastplate.");
    quest::summonitem(22616);
  }
  if($text=~/final favor/i) {
    plugin::Whisper("I thank you for returning to me young Gearsword. I must say that it is now quite clear that you are very capable of completing any task I should assign you due to your eagerness to learn. I am currently in need of a few specific items to craft a weapon worthy of any servant of Brell. It is my hope that I can pass these out to our new recruits quite soon. Will you [collect the items I require]?");
  }
  if($text=~/collect the items/i) {
    plugin::Whisper("I need 3 Flawless Harpy Claws and 1 Ebon Drake Backbone still to have all the items necessary to craft this new mace. Once I have these items I can make a Shortnobles Walking Staff. For your trouble I will offer you my first staff made should I be able to create one. I hope to see you soon!");
  }
}

sub EVENT_ITEM {
  if(plugin::check_handin(\%itemcount, 9105 => 3, 9106 => 1)) {
    plugin::Whisper("Thank you! Here, take this staff and good luck on your journey."); #Text made up
    quest::summonitem(9107); #Walking Staff of the Shortnoble
  }
  else {
    plugin::Whisper("I do not need this.");
    plugin::return_items(\%itemcount);
  }
}