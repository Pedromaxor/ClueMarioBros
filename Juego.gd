extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var objetos = ["Soga","Esposas","Liana","Planta Carnivora"]
var personajes = ["Mario","Luigi","Peach","Toad","Wario","Yoshi","Waluigi"]
var lugar = ["Sea Side","Peach Castle", "Ghost House", "Toad House","Desert Hill","Yoshi Island", "Bowser Castle","Star Road","Ice Land"]
var Historia = -1
var rng = RandomNumberGenerator.new()
var intento = 0
var conversacion1OBJ = ["no se reporto sogas perdidas en el castillo de peach ni en el camino de la estrella", "el inventario de los castillos no se encontró nada de esposas faltantes", "hubo un robo masivo de lianas en la isla de Yoshi", "hubo un nacimiento esporádico de plantas carnívoras en todo el mapa"]
var conversacion1PER = ["se encontraba con Luigi y Toad en su casa", "se encontraba con Mario y Toad en su casa", "nadie la vio en el dia", "estuve en mi casa con Mario y Luigi", "estuve con Valuigi toda la semana", "lo vieron por la mañana yendo con una bolsa pesada por el mapa", "estuve en la mañana con wario y vi a Peach ayer algo sospechosa" ]
var conversacion1LUG = ["se encontró todo normal aquí no se vio pasar ninguna arma", "se encontró todo normal aquí no se vio pasar ninguna arma", "se encontró todo normal aquí no se vio pasar ninguna arma", "estuvo Warrio aquí", "esta muy preocupante la situación por los robos aquí", "se encontró todo normal aquí no se vio pasar ninguna arma", "estuvo toad en su casa", "peach estuvo aquí todo el dia", "se encontró todo normal aquí no se vio pasar ninguna arma"]
var correcta1 = [2,2,7]
var conversacion2OBJ = ["no se reportó sogas perdidas en el castillo de peach ni en el camino de la estrella", "el inventario de los castillos no se encontró nada de esposas faltantes","la isla produce sus lianas si ningún problema","hay escases de plantas carnívoras se presume que alguien las robo"]
var conversacion2PER = ["se encontraba con Luigi en su casa", "se encontraba con Mario en su casa", "estuvo en su castillo comiendo con toad", "estuvo con Peach comiendo en el castillo de la princesa", "lo vio Yoshi por la mañana sospechoso", "iba rumbo a la casa de la princesa Peach y lo vio Mario pasar muy feliz", "Se desconoce si esta en castillo de Bowser o en ghost House"]
var conversacion2LUG = ["se encontró todo normal aquí no se vio pasar ninguna arma", "se encontró todo normal aquí no se vio pasar ninguna arma","se encontró todo normal aquí no se vio pasar ninguna arma","se encontraron restos de plantas carnívoras","faltan plantas carnívoras","se encontró todo normal aquí no se vio pasar ninguna arma", "le robaron la planta carnívora de la entrada de su casa ","se identifica que movieron plantas carnívoras de aquí a algún otro lado","faltan plantas carnívoras"]
var correcta2 = [3,4,3]
var conversacion3OBJ = ["se reportó sogas perdidas en el castillo de peach y en el camino de la estrella","el inventario de los castillos no se encontró nada de esposas faltantes","el inventario de los castillos no se encontró nada de lianas faltantes ","las plantas carnívoras tenían sogas colgadas"]
var conversacion3PER = ["se encontraba con Luigi y Toad en su casa","se encontraba con Mario y Toad en su casa","estuvo en su castillo afirma Mario y Luigi","se le vio corriendo en desert hill","estuve con Valuigi toda la semana","lo vieron por la tarde yendo con una bolsa arriba de su carro pesada","estuve en la mañana con wario y saludo a la princesa Peach"]
var conversacion3LUG = ["se encontró todo normal aquí no se vio pasar ninguna arma","se encontró todo normal aquí no se vio pasar ninguna arma","se encontró todo normal aquí no se vio pasar ninguna arma","estuvo Warrio aquí","esta muy preocupante la situación por los robos aquí","se encontró todo normal aquí no se vio pasar ninguna arma","se encontró todo normal aquí no se vio pasar ninguna arma ","se encontró todo normal aquí no se vio pasar ninguna arma","se encontró todo normal aquí no se vio pasar ninguna arma"]
var correcta3 = [0,5,6]
var conversacion4OBJ = ["no se reporto sogas perdidas en el castillo de peach ni en el camino de la estrella","el inventario de los castillos no se encontró nada de esposas faltantes","las lianas se encuentran normal","faltan plantas por el mapa"]
var conversacion4PER = ["se le vio peleando con una planta carnivora","se encontraba con Toad en el paseo de la estrella","estuvo viendo la situación de las plantas en la isla de yoshi","jugo carreras con Luigi y fue al desierto a saludar a alguien","jugo carreras en el ghost house con Yoshi y Valuigi","jugo carreras con Wario y vio a Mario con plantas en su carro","estuvo recorriendo el mapa completo en su carro"]
var conversacion4LUG = ["se encontró todo normal aquí no se vio pasar ninguna arma","se encontró todo normal aquí no se vio pasar ninguna arma","se vio a Mario por ultima vez","todo normal","tiene plantas faltantes","se encontró todo normal aquí no se vio pasar ninguna arma","se encontró todo normal aquí no se vio pasar ninguna arma","se encontró todo normal aquí no se vio pasar ninguna arma","se encontró todo normal aquí no se vio pasar ninguna arma"]
var correcta4 = [3,0,2]
var conversacion5OBJ = ["no se reporto sogas perdidas en el castillo de peach ni en el camino de la estrella","el inventario de los castillos se encontró esposas faltantes","normal","no hay plantas carnivoras por sequia"]
var conversacion5PER = ["despertó en el castillo de Bowser con la princesa Peach","estuvo con Yoshi","nadie la vio en el dia","estuve en mi casa confirma luigi","desconocio a su amigo Valuigi","estuvo con Luigi en Ice Land","estuvo muy raro la última semana"]
var conversacion5LUG = ["se encontró todo normal aquí no se vio pasar ninguna arma","se encontró todo normal aquí no se vio pasar ninguna arma","se encontró todo normal aquí no se vio pasar ninguna arma","apareció Peach y Mario aqui","esta muy preocupante la situación por los robos aquí","se encontraba cerrado el acceso","se encontró todo normal aquí no se vio pasar ninguna arma","se encontró todo normal aquí no se vio pasar ninguna arma","se encontró todo normal aquí no se vio pasar ninguna arma"]
var correcta5 = [1,6,5]

#la seleccion
var conversacionSOBJ = []
var conversacionSPER = []
var conversacionSLUG = []

var button = Button.new()
var opc1=-1
var opc2=-1
var opc3=-1

func validar():
	var text = ""
	if(Historia==1):
		if(opc1==correcta1[0]):
			text = "Arma Correcta"
		else:
			text = "Arma Incorrecta"
		if(opc2==correcta1[1]):
			text = text +"-"+ "Personaje Correcto"
		else:
			text = text +"-"+"Personaje Incorrecto"
		if(opc3==correcta1[2]):
			text = text +"-"+"Lugar Correcto"
		else:
			text = text +"-"+"Lugar Incorrecto"
	if(Historia==2):
		if(opc1==correcta2[0]):
			text = "Arma Correcta"
		else:
			text = "Arma Incorrecta"
		if(opc2==correcta2[1]):
			text = text +"-"+"Personaje Correcto"
		else:
			text = text +"-"+"Personaje Incorrecto"
		if(opc3==correcta2[2]):
			text = text +"-"+"Lugar Correcto"
		else:
			text = text +"-"+"Lugar Incorrecto"
	if(Historia==3):
		if(opc1==correcta3[0]):
			text = "Arma Correcta"
		else:
			text = "Arma Incorrecta"
		if(opc2==correcta3[1]):
			text = text +"-"+"Personaje Correcto"
		else:
			text = text +"-"+"Personaje Incorrecto"
		if(opc3==correcta3[2]):
			text = text +"-"+"Lugar Correcto"
		else:
			text = text +"-"+"Lugar Incorrecto"
	if(Historia==4):
		if(opc1==correcta4[0]):
			text = "Arma Correcta"
		else:
			text = "Arma Incorrecta"
		if(opc2==correcta4[1]):
			text = text +"-"+"Personaje Correcto"
		else:
			text = text +"-"+"Personaje Incorrecto"
		if(opc3==correcta4[2]):
			text = text +"-"+"Lugar Correcto"
		else:
			text = text +"-"+"Lugar Incorrecto"
	if(Historia==5):
		if(opc1==correcta5[0]):
			text = "Arma Correcta"
		else:
			text = "Arma Incorrecta"
		if(opc2==correcta5[1]):
			text = text +"-"+"Personaje Correcto"
		else:
			text = text +"-"+"Personaje Incorrecto"
		if(opc3==correcta5[2]):
			text = text +"-"+"Lugar Correcto"
		else:
			text = text +"-"+"Lugar Incorrecto"
		$CuadroAceptacion.set_title("Resultados")
		$CuadroAceptacion.set_text(text)
		$CuadroAceptacion.show()
		
func Cuadro(var a):
	intento= intento+1
	
	#$CuadroAceptacion.add_button("intento: %s gastado: "%intento,true,a)
	$CuadroAceptacion.set_title("Conversacion")
	$CuadroAceptacion.set_text(a)
	$CuadroAceptacion.show()

# Called when the node enters the scene tree for the first time.
func _ready():

	rng.randomize()
	Historia = rng.randi_range(1,5)
	
	#Historia = 1
	print("se selecciono la historia %s" % Historia)
	if (Historia==1):
		conversacionSOBJ = conversacion1OBJ
		conversacionSPER = conversacion1PER
		conversacionSLUG = conversacion1LUG
	if (Historia==2):
		conversacionSOBJ = conversacion2OBJ
		conversacionSPER = conversacion2PER
		conversacionSLUG = conversacion2LUG
	if (Historia==3):
		conversacionSOBJ = conversacion3OBJ
		conversacionSPER = conversacion3PER
		conversacionSLUG = conversacion3LUG
	if (Historia==4):
		conversacionSOBJ = conversacion4OBJ
		conversacionSPER = conversacion4PER
		conversacionSLUG = conversacion4LUG
	if (Historia==5):
		conversacionSOBJ = conversacion5OBJ
		conversacionSPER = conversacion5PER
		conversacionSLUG = conversacion5LUG



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Arma_pressed():
	get_node("OrdBtnArma").show()
	get_node("Arma").hide()
	get_node("Personaje").hide()
	get_node("Lugar").hide()
	


func _on_btn_Ret_Arma_pressed():
	get_node("OrdBtnArma").hide()
	get_node("Arma").show()
	get_node("Personaje").show()
	get_node("Lugar").show()


func _on_btn_Ret_Per_pressed():
	get_node("OrdBtPersonaje").hide()
	get_node("Arma").show()
	get_node("Personaje").show()
	get_node("Lugar").show()


func _on_Personaje_pressed():
	get_node("OrdBtPersonaje").show()
	get_node("Arma").hide()
	get_node("Personaje").hide()
	get_node("Lugar").hide()


func _on_btn_Ret_Lugar_pressed():
	get_node("OrdBtnLugar").hide()
	get_node("Arma").show()
	get_node("Personaje").show()
	get_node("Lugar").show()


func _on_Lugar_pressed():
	get_node("OrdBtnLugar").show()
	get_node("Arma").hide()
	get_node("Personaje").hide()
	get_node("Lugar").hide()


func _on_btn_Soga_pressed():
	Cuadro(conversacionSOBJ[0])


func _on_btn_Esposa_pressed():
	Cuadro(conversacionSOBJ[1])


func _on_btn_Liana_pressed():
	Cuadro(conversacionSOBJ[2])


func _on_btn_Planta_pressed():
	Cuadro(conversacionSOBJ[3])


func _on_btn_Mario_pressed():
	Cuadro(conversacionSPER[0])


func _on_btn_Luigi_pressed():
	Cuadro(conversacionSPER[1])


func _on_btn_Peach_pressed():
	Cuadro(conversacionSPER[2])


func _on_btn_Toad_pressed():
	Cuadro(conversacionSPER[3])


func _on_btn_Wario_pressed():
	Cuadro(conversacionSPER[4])


func _on_btn_Yoshi_pressed():
	Cuadro(conversacionSPER[5])


func _on_btn_Valuigi_pressed():
	Cuadro(conversacionSPER[6])


func _on_btn_SeaSide_pressed():
	Cuadro(conversacionSLUG[0])


func _on_btn_IceLand_pressed():
	Cuadro(conversacionSLUG[1])


func _on_btn_StartRoad_pressed():
	Cuadro(conversacionSLUG[2])


func _on_btn_BowserCastle_pressed():
	Cuadro(conversacionSLUG[3])


func _on_btn_YoshiIsland_pressed():
	Cuadro(conversacionSLUG[4])


func _on_btn_DessertHill_pressed():
	Cuadro(conversacionSLUG[5])


func _on_btn_ToadHouse_pressed():
	Cuadro(conversacionSLUG[6])


func _on_btn_GhostHouse_pressed():
	Cuadro(conversacionSLUG[7])


func _on_btn_PeachCastle_pressed():
	Cuadro(conversacionSLUG[8])


func _on_Confirmar_pressed(): #Confirmador de acciones
	get_node("Confirmar").hide()
	get_node("TextureButton").hide()
	get_node("imagen").hide()
	get_node("Arma").hide()
	get_node("Personaje").hide()
	get_node("Lugar").hide()
	get_node("ConfirmacionFinal").show()


func _on_btnC_Soga_pressed():
	opc1 = 0
	get_node("ConfirmacionFinal/OrdArma").hide()
	get_node("ConfirmacionFinal/OrdPersonaje").show()

func _on_btnC_Esposa_pressed():
	opc1 = 1
	get_node("ConfirmacionFinal/OrdArma").hide()
	get_node("ConfirmacionFinal/OrdPersonaje").show()

func _on_btnC_Liana_pressed():
	opc1 = 2
	get_node("ConfirmacionFinal/OrdArma").hide()
	get_node("ConfirmacionFinal/OrdPersonaje").show()

func _on_btnC_Planta_pressed():
	opc1 = 3
	get_node("ConfirmacionFinal/OrdArma").hide()
	get_node("ConfirmacionFinal/OrdPersonaje").show()


func _on_btnC_Mario_pressed():
	opc2 = 0
	get_node("ConfirmacionFinal/OrdPersonaje").hide()
	get_node("ConfirmacionFinal/OrdLugar").show()


func _on_btnC_Luigi_pressed():
	opc2 = 1
	get_node("ConfirmacionFinal/OrdPersonaje").hide()
	get_node("ConfirmacionFinal/OrdLugar").show()


func _on_btnC_Peach_pressed():
	opc2 = 2
	get_node("ConfirmacionFinal/OrdPersonaje").hide()
	get_node("ConfirmacionFinal/OrdLugar").show()


func _on_btnC_Toad_pressed():
	opc2 = 3
	get_node("ConfirmacionFinal/OrdPersonaje").hide()
	get_node("ConfirmacionFinal/OrdLugar").show()


func _on_btnC_Wario_pressed():
	opc2 = 4
	get_node("ConfirmacionFinal/OrdPersonaje").hide()
	get_node("ConfirmacionFinal/OrdLugar").show()


func _on_btnC_Yoshi_pressed():
	opc2 = 5
	get_node("ConfirmacionFinal/OrdPersonaje").hide()
	get_node("ConfirmacionFinal/OrdLugar").show()


func _on_btnC_Valuigi_pressed():
	opc2 = 6
	get_node("ConfirmacionFinal/OrdPersonaje").hide()
	get_node("ConfirmacionFinal/OrdLugar").show()


func _on_btnC_SeaSide_pressed():
	opc3 = 0
	get_node("ConfirmacionFinal/OrdLugar").hide()
	validar()


func _on_btnC_IceLand_pressed():
	opc3 = 1
	get_node("ConfirmacionFinal/OrdLugar").hide()
	validar()


func _on_btnC_StartRoad_pressed():
	opc3 = 2
	get_node("ConfirmacionFinal/OrdLugar").hide()
	validar()


func _on_btnC_BowserCastle_pressed():
	opc3 = 3
	get_node("ConfirmacionFinal/OrdLugar").hide()
	validar()


func _on_btnC_YoshiIsland_pressed():
	opc3 = 4
	get_node("ConfirmacionFinal/OrdLugar").hide()
	validar()


func _on_btnC_DessertHill_pressed():
	opc3 = 5
	get_node("ConfirmacionFinal/OrdLugar").hide()
	validar()


func _on_btnC_ToadHouse_pressed():
	opc3 = 6
	get_node("ConfirmacionFinal/OrdLugar").hide()
	validar()


func _on_btnC_GhostHouse_pressed():
	opc3 = 7
	get_node("ConfirmacionFinal/OrdLugar").hide()
	validar()


func _on_btnC_PeachCastle_pressed():
	opc3 = 8
	get_node("ConfirmacionFinal/OrdLugar").hide()
	validar()
