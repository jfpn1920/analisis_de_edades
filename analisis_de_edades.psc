Algoritmo analisis_de_edades
	Definir opcion, totalPersonas Como Entero
	Definir i Como Entero
	Definir idBuscar Como Entero
	Definir siguienteID Como Entero
	Definir encontrado Como Logico
	Definir id Como Entero
	Definir nombre Como Caracter
	Definir edad Como Entero
	Definir sexo Como Caracter
	Definir ciudad Como Caracter
	Definir estado Como Caracter
	Definir edadMinima, edadMaxima Como Entero
	Definir sumaEdades, menoresEdad, mayoresEdad Como Entero
	Definir adultosMayores Como Entero
	Definir hombres, mujeres Como Entero
	Definir activos, inactivos Como Entero
	Definir promedioEdad Como Real
	Dimension id[100]
	Dimension nombre[100]
	Dimension edad[100]
	Dimension sexo[100]
	Dimension ciudad[100]
	Dimension estado[100]
	totalPersonas <- 0
	siguienteID <- 1
	//---------------------------------------//
	//--|menu_principal_analisis_de_edades|--//
	//---------------------------------------//
	Repetir
		Escribir "menu principal analisis de edades"
		Escribir "1) registrar persona"
		Escribir "2) editar persona"
		Escribir "3) eliminar persona"
		Escribir "4) buscar persona"
		Escribir "5) listar personas"
		Escribir "6) ver detalles de la persona"
		Escribir "7) mostrar analisis de edades"
		Escribir "8) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//-----------------------//
			//--|registrar_persona|--//
			//-----------------------//
			1:
				Escribir "registrar persona"
				id[totalPersonas+1] <- siguienteID
				siguienteID <- siguienteID + 1
				Escribir "id asignado: ", id[totalPersonas+1]
				Escribir "ingrese el nombre:"
				Leer nombre[totalPersonas+1]
				Escribir "ingrese la edad:"
				Leer edad[totalPersonas+1]
				Escribir "ingrese el sexo:"
				Leer sexo[totalPersonas+1]
				Escribir "ingrese la ciudad:"
				Leer ciudad[totalPersonas+1]
				Escribir "ingrese el estado:"
				Leer estado[totalPersonas+1]
				totalPersonas <- totalPersonas + 1
				Escribir "persona registrada correctamente."
			//-----------------//
			//--|editar_edad|--//
			//-----------------//
			2:
				Escribir "editar persona"
				Si totalPersonas = 0 Entonces
					Escribir "no hay personas registradas."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalPersonas Hacer
						Escribir id[i], " | ", nombre[i], " | ", edad[i], " | ", sexo[i], " | ", ciudad[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la persona:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalPersonas Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese el nuevo nombre:"
							Leer nombre[i]
							Escribir "ingrese la nueva edad:"
							Leer edad[i]
							Escribir "ingrese el nuevo sexo:"
							Leer sexo[i]
							Escribir "ingrese la nueva ciudad:"
							Leer ciudad[i]
							Si edad[i] >= 18 Entonces
								estado[i] <- "mayor de edad"
							SiNo
								estado[i] <- "menor de edad"
							FinSi
							Escribir "persona editada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una persona con ese id."
					FinSi
				FinSi
			//-------------------//
			//--|eliminar_edad|--//
			//-------------------//
			3:
				Escribir "eliminar persona"
				Si totalPersonas = 0 Entonces
					Escribir "no hay personas registradas."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalPersonas Hacer
						Escribir id[i], " | ", nombre[i], " | ", edad[i], " | ", sexo[i], " | ", ciudad[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la persona:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalPersonas Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalPersonas Entonces
								Para j <- i Hasta totalPersonas - 1 Hacer
									id[j] <- id[j+1]
									nombre[j] <- nombre[j+1]
									edad[j] <- edad[j+1]
									sexo[j] <- sexo[j+1]
									ciudad[j] <- ciudad[j+1]
									estado[j] <- estado[j+1]
								FinPara
							FinSi
							totalPersonas <- totalPersonas - 1
							Escribir "persona eliminada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una persona con ese id."
					FinSi
				FinSi
			//-----------------//
			//--|buscar_edad|--//
			//-----------------//
			4:
				Escribir "buscar persona"
				Si totalPersonas = 0 Entonces
					Escribir "no hay personas registradas."
				SiNo
					Escribir "ingrese el id de la persona:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalPersonas Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir id[i], " | ", nombre[i], " | ", edad[i], " | ", sexo[i], " | ", ciudad[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una persona con ese id."
					FinSi
				FinSi
			//-----------------//
			//--|listar_edad|--//
			//-----------------//
			5:
				Escribir "listar personas"
				Si totalPersonas = 0 Entonces
					Escribir "no hay personas registradas."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalPersonas Hacer
						Escribir id[i], " | ", nombre[i], " | ", edad[i], " | ", sexo[i], " | ", ciudad[i], " | ", estado[i]
					FinPara
					
				FinSi
			//--------------------------------//
			//--|ver_detalles_de_la_persona|--//
			//--------------------------------//
			6:
				Escribir "ver detalles de la persona"
				Si totalPersonas = 0 Entonces
					Escribir "no hay personas registradas."
				SiNo
					Escribir "ingrese el id de la persona:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalPersonas Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles de la persona"
							Escribir "id: ", id[i]
							Escribir "nombre: ", nombre[i]
							Escribir "edad: ", edad[i]
							Escribir "sexo: ", sexo[i]
							Escribir "ciudad: ", ciudad[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró una persona con ese id."
					FinSi					
				FinSi
			//--------------------------//
			//--|mostrar_estadisticas|--//
			//--------------------------//
			7:
				Escribir "mostrar estadisticas"
				Si totalPersonas = 0 Entonces
					Escribir "no hay personas registradas."
				SiNo
					suma <- 0
					mayores <- 0
					menores <- 0
					mayorEdad <- edad[1]
					menorEdad <- edad[1]
					Para i <- 1 Hasta totalPersonas Hacer
						suma <- suma + edad[i]
						Si edad[i] > mayorEdad Entonces
							mayorEdad <- edad[i]
						FinSi
						Si edad[i] < menorEdad Entonces
							menorEdad <- edad[i]
						FinSi
						Si edad[i] >= 18 Entonces
							mayores <- mayores + 1
						SiNo
							menores <- menores + 1
						FinSi
					FinPara
					promedio <- suma / totalPersonas
					Escribir "estadistica general"
					Escribir "total de personas: ", totalPersonas
					Escribir "promedio de edades: ", promedio
					Escribir "mayor edad: ", mayorEdad
					Escribir "menor edad: ", menorEdad
					Escribir "mayores de edad: ", mayores
					Escribir "menores de edad: ", menores
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			8:
				Escribir "gracias por utilizar analisis de edades."
			De Otro Modo:
				Escribir "opción no válida."
		FinSegun
	Hasta Que opcion = 8
FinAlgoritmo