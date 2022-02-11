// Santiago Torres Saldarriaga
// 000431583
// santiago.torress@upb.edu.co
(START)
//Identificar las variables//
    @70
    D=A
    @codeF
    M=D
    @67
    D=A
    @codeC
    M=D
    @24576 //Lector al presionar una tecla//
    D=A
    @tecla
    M=D
(Pantalla_pintada) //Mantenemos la pantalla en blanco//
    @24575
	D=A
	@espacio_de_memoria //espacio de memoria vacio que almacena el total de los pixeles pintados//
	M=D
	@tecla
	A=M
	D=M
	@llenado
	M=0
	@codeC
	D=D-M
	@pintar
	D;JEQ
	@24575
	D=M
	@llenado
	M=D

