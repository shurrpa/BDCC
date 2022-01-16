extends "res://Scenes/SceneBase.gd"

func _run():
	if(state == ""):
		say("Hello world!\n")
		say("nya [b]bold nya[/b], also [i]\"MEOW\"[/i]\n")
		say(GM.pc.getName() + " grabbed " + GM.pc.hisHer() + " something and headpatted "+ GM.pc.himselfHerself() + " before saying "+Util.sayPlayer("Hello world"))
		addButton("meow meow", "1", "option1")
		addButton("mew!", "2", "option2")
		addDisabledButton("bark", "no awo")
		addButton("replace scene!", "2", "startfight")
		addButton("pick gender", "2", "pickgender")
		addButton("pick pronouns", "2", "pickpronouns")
		
	if(state == "pickgender"):
		say("Pick")
		addButton("Male", "2", "setgender", [BaseCharacter.Gender.Male])
		addButton("Female", "2", "setgender", [BaseCharacter.Gender.Female])
		addButton("Androgynous", "2", "setgender", [BaseCharacter.Gender.Androgynous])
		addButton("Other", "2", "setgender", [BaseCharacter.Gender.Other])
		addButton("back", "2", "")
		
	if(state == "pickpronouns"):
		say("Pick")
		addButton("Male", "2", "setpronouns", [BaseCharacter.Gender.Male])
		addButton("Female", "2", "setpronouns", [BaseCharacter.Gender.Female])
		addButton("Androgynous", "2", "setpronouns", [BaseCharacter.Gender.Androgynous])
		addButton("Other", "2", "setpronouns", [BaseCharacter.Gender.Other])
		addButton("Same as gender", "2", "setpronouns", [null])
		addButton("back", "2", "")
		
	if(state == "option1"):
		say("You selected 1")
		setCharacter("testchar")
		addNextButton("endstuff")
		
	if(state == "option2"):
		say("You selected TWOOO")
		addNextButton("addscenetest")
		
	if(state == "endstuff"):
		say("Yes this is dog")
		setCharacter("")
		addNextButton("endthescene")
		
	if(state == "meowmeow"):
		say("WELCOME BACK, WANNA START AGAIN?")
		addNextButton("endthescene")
		addButton("sure", "you agree to everything", "_scene")


func _react(_action: String, _args):
	if(_action == "addscenetest"):
		runScene("TestScene", "meowmeow")
		return
	if(_action == "endthescene"):
		endScene("test arg")
		return
	if(_action == "startfight"):
		runScene("FightScene", ["testchar"])
		endScene("test arg")
		return
	if(_action == "setgender"):
		GM.pc.setGender(_args[0])
		setState("")
		return
	if(_action == "setpronouns"):
		GM.pc.setPronounGender(_args[0])
		setState("")
		return
	
	setState(_action)

func _react_scene_end(_result):
	print("I got result: "+str(_result))
	setState("")
