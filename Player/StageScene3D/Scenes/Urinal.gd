extends BaseStageScene3D

onready var animationTree = $AnimationTree
onready var doll = $Doll3D

func _init():
	id = StageScene.Urinal

func _ready():
	animationTree.active = true
	
#func updateSubAnims():
#	if(doll.getArmsCuffed()):
#		animationTree["parameters/CuffsBlend/blend_amount"] = 1.0
#	else:
#		animationTree["parameters/CuffsBlend/blend_amount"] = 0.0
	
func playAnimation(animID, _args = {}):
	print("Playing sybian: "+str(animID))
	
	if(_args.has("pc")):
		doll.prepareCharacter(_args["pc"])
	else:
		doll.prepareCharacter("pc")
	
	if(_args.has("exposedBodyparts")):
		doll.setExposedBodyparts(_args["exposedBodyparts"])
	else:
		doll.setExposedBodyparts([])
	
	if(_args.has("hard") && _args["hard"]):
		doll.setCockTemporaryHard()
	
	#updateSubAnims()
	
	var state_machine = animationTree["parameters/AnimationNodeStateMachine/playback"]
	if(animID == "idle"):
		state_machine.travel("UrinalIdle-loop")
	elif(animID == "idle2"):
		state_machine.travel("UrinalIdle2-loop")
	else:
		Log.printerr("Action "+str(animID)+" is not found for stage "+str(id))