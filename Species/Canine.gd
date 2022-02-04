extends Species

func _init():
	id = Species.Canine
	
func getVisibleName():
	return "Canine"

func getDefaultLegs(_gender):
	return "canineleg"

func getDefaultTail(_gender):
	return "caninetail"

func isPlayable():
	return true

func getVisibleDescription():
	return "The good boys and girls"

func getDefaultHead(_gender):
	return "caninehead"

func getDefaultArms(_gender):
	return "caninearms"

func getDefaultEars(_gender):
	return "canineears"

func getDefaultPenis(_gender):
	if(_gender in [BaseCharacter.Gender.Male, BaseCharacter.Gender.Androgynous]):
		return "caninepenis"
	else:
		return null
