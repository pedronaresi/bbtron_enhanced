module signExtenderJ (inputB, extenderOutputB);
    input [25:0] inputB;  //Extensão de entradas de 21 bits.
    output reg [31:0] extenderOutputB;

    always @ ( * ) begin //Multiplexador usado para avaliar que tipo de extensão o "signExtender" deve fazer.
    //Caso a seleção seja "01" ele completa uma entrada de 25 bits. Instrucao j.
      extenderOutputB = inputB;
      if(inputB[25]) begin
        extenderOutputB = {{6{1'b1}}, inputB};
        end
      else begin
        extenderOutputB = {{6{1'b0}}, inputB};
		  end
	 end	  
endmodule // signExtenderJ
