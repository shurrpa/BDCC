extends PerkBase

func _init():
	id = Perk.CumCumOnOpponent
	skillGroup = Skill.CumLover

func getVisibleName():
	return "The Climax"

func getVisibleDescription():
	return "You gain an ability to masturbate and cum during fights"

func getMoreDescription():
	return "The ability removes 50 lust but you can only use it if your [color="+DamageType.getColorString(DamageType.Lust)+"]lust[/color] is above 90%. Enemy gets covered in your cum/girlcum and will recieve 10% more [color="+DamageType.getColorString(DamageType.Lust)+"]lust damage[/color] for a few turns"

func getCost():
	return 2
func getSkillTier():
	return 1

func getPicture():
	return "res://UI/StatusEffectsPanel/images/mess.png"

func addsAttacks():
	return ["ClimaxPerkAttack"]
