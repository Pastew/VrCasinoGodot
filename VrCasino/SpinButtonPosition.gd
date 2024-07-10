extends Node

class_name SpinButtonPosition

# 0 --- Debug ---
#const url_hard_pc = "https://sklep.hard-pc.pl/"

# 1 --- Nailed it! Games --- 
#const url_piratesriptide = "https://mobile2.gameassists.co.uk/htmlgames/game/nailedItGames?languagecode=pl&lobbyname=qfdemomal2mlt&productid=33184&logintype=VanguardSessionToken&ispracticeplay=true&gameid=riptidePiratesDesktop&clientid=50300&moduleid=101211&clienttypeid=70&username=demo&password=demo&casinoid=33184&gamename=riptidePiratesDesktop&host=Desktop&playmode=demo&theme=quickfiressl&isrgi=true&siteid=MAL2&regmarket=rmmt&brand=qfdemomal2mlt&gameprovidername=nailedItGames&gamepath=%2FnailedItGames%2FriptidePirates&gameversion=riptidePirates_NailedItGames_1_0_6_13&externalgame=False&gametitle=Riptide%20Pirates%E2%84%A2&displayname=Riptide%20Pirates%E2%84%A2"
# Alternate link with my token: https://pastew.com/slot_proxy/?gameid=23126&token=fzU4LLvZSYsS1z7UrikKgsLstLUFWmaJ14cb6crtpcA6rohPKo

# 2 --- Yggdrasil Gaming ---
#const url_multifly = "https://staticdemo.yggdrasilgaming.com/init/launchClient.html?gameid=10122&lang=en&currency=EUR&org=Demo&key=&fullscreen=yes"

# 3 --- PragmaticPlay ---
#const url_sweetbonanza = "https://pastew.com/slot_proxy/?gameid=5483&token=fzU4LLvZSYsS1z7UrikKgsLstLUFWmaJ14cb6crtpcA6rohPKo"

# 4 --- Relax Gaming ---
#const url_moneytrain = "https://d2drhksbtcqozo.cloudfront.net/casino/relax/moneytrain/?moneymode=fun"

# 5 --- Red Tiger Gaming ---
#const url_gonzo = "https://pastew.com/slot_proxy/?gameid=4423&token=fzU4LLvZSYsS1z7UrikKgsLstLUFWmaJ14cb6crtpcA6rohPKo"

# 6 --- Greentube ---
#const url_bookofra = "https://pastew.com/slot_proxy/?gameid=19513&token=fzU4LLvZSYsS1z7UrikKgsLstLUFWmaJ14cb6crtpcA6rohPKo"

static func get_pos_by_url(url: String) -> Vector2:
	var positions = {
		"yggdrasilgaming": Vector2(960, 972),
		"pragmaticplay": Vector2(1400, 970),
		"relax": Vector2(960, 1033),
		#"relax": Vector2(960, 970),
		"nailedItGames": Vector2(1666, 900),
	}
	
	for key in positions.keys():
		if key in url:
			return positions[key]
	
	return Vector2.ZERO
