module signExtenderR (inputA, extenderOutputA);
  input [15:0] inputA;  //Extensão de entradas de 16 bits.
  output reg [31:0] extenderOutputA;

  always @ ( * ) begin //Multiplexador usado para avaliar que tipo de extensão o "signExtender" deve fazer.
  //Caso a seleção seja "00" ele completa uma entrada de 16 bits. Instrucao r.
        extenderOutputA = inputA;
        if(inputA[15]) begin
          extenderOutputA = {{16{1'b1}}, inputA};
          end
        else begin
          extenderOutputA = {{16{1'b0}}, inputA};
		  end
  end

endmodule // Extensor de bits.
