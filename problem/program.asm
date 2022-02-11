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
(pintar) //Pintamos la pantalla en negro//
	@llenado
	D=M
	@espacio_de_memoria
	A=M
	M=D
	@espacio_de_memoria
	D=M
	@16384
	D=D-A
	@Indentificar_las_teclas_oprimidas
	D;JLE
	@espacio_de_memoria
	M=M-1
	@pintar
	0;JMP
(Indentificar_las_teclas_oprimidas) 
	@llenado
    D=M
    @Pantalla_pintada
    D;JNE
	@24575
	D=A
	@espacio_de_memoria
	M=D
	@tecla
	A=M
	D=M
	@llenado
	M=-1
	@codeF
	D=D-M
	@pintar
	D;JEQ
    @Pantalla_pintada
	0;JMP

