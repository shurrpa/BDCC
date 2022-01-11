extends Attack

func _init():
	id = "simplelustattack"
	category = Category.Lust
	
func getVisibleName():
	return "Tease"
	
func getVisibleDesc():
	return "You tease the enemy I dunno"
	
func _doAttack(_attacker, _reciever):
	var attackerName = _attacker.getName()
	var recieverName = _reciever.getName()
	
	var text = attackerName + " teases " + recieverName
	
	var result = _reciever.reactTease()
	
	text += "\n\n"
	
	text += result[0]
	
	var _damage = doDamage(_attacker, _reciever, DamageType.Lust, result[1])
	
	text += "\n"+recieverName+" got " + str(_damage) + " lust damage"
	
	return text
	
func _canUse(_attacker, _reciever):
	return true
