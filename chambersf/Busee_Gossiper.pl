sub EVENT_SAY {
	if ($text=~/Hail/i) {
		plugin::Whisper ("Like Oh..Mm..Gee, did you hear what Milli and Vanilli said?");
		
	}
}
my $lastId = 0;

#sub EVENT_SPAWN {
#    #Get last ID
#    $connect = plugin::LoadMysql();
#    $query = "SELECT `id` FROM qs_player_speech ORDER BY `id` DESC LIMIT 1";
#    $query_handle = $connect->prepare($query);
#    $query_handle->execute();
#    while (@row = $query_handle->fetchrow_array()){
#        $lastId = $row[0];
#    }
#      quest::settimer("discord", 1);
#}

#sub EVENT_TIMER {
#      $connect = plugin::LoadMysql();
#    $query = "SELECT `from`, `message`, `id` FROM qs_player_speech WHERE `id` > ? AND `type` = 5 AND `to` = '!discord' LIMIT 1";
#    $query_handle = $connect->prepare($query);
#    $query_handle->execute($lastId);
#    while (@row = $query_handle->fetchrow_array()){
#        quest::we(260, $row[0]." says from discord, '".$row[1]."'");
#        $lastId = $row[2];
#    }
#    return
#}