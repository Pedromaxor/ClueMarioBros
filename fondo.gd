extends Sprite
export (PackedScene) var scn_regla

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


var objetos = ["Soga","Esposas","Liana","Planta Carnivora"]
var personajes = ["Mario","Luigi","Peach","Toad","Wario","Yoshi","Waluigi"]
var lugar = ["Sea Side","Peach Castle", "Ghost House", "Toad House","Desert Hill","Yoshi Island", "Bowser Castle","Star Road","Ice Land"]
var nobj = -1
var nper = -1
var nmap = -1
var rng = RandomNumberGenerator.new()

	
	
# Called when the node enters the scene tree for the first time.
func _ready():
	
	 print("hola mundo","a") 
	 rng.randomize()
	 nobj = rng.randi_range(0,3)
	 nper = rng.randi_range(0,7)
	 nmap = rng.randi_range(0,9)
	#print(nobj,",",nper,",",nmap)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Boton_pressed():
	get_tree().change_scene_to(scn_regla)
