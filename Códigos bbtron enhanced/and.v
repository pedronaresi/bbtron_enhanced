module and (zero, cu_Branch, pcScr);
  input zero;
  input cu_Branch;
  output reg PCScr;

  if((zero && cu_Branch) == 1)
    pcScr = 1;
endmodule // and
