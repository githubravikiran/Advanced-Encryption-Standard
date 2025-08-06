module AES(data_in0,data_in1,data_in2,data_in3, encryted0,encryted1,encryted2,encryted3,);
    input [15:0] data_in0;input [15:0] data_in1;input [15:0] data_in2;
    input [15:0] data_in3;
    output [15:0]encryted0;output [15:0]encryted1;output [15:0]encryted2;
    output [15:0]encryted3;
    wire [15:0]temp0; wire[15:0] temp1; wire [15:0]temp2; wire[15:0] temp3; 
    barrel_shifter b0(data_in0[15:8],3'b000,encryted0[15:8]);
    barrel_shifter b1(data_in0[7:0],3'b000,encryted0[7:0]);
    
    barrel_shifter b30(data_in3[7:0],3'b100,encryted3[3:0]);
    barrel_shifter b3(data_in3[11:4],3'b100,encryted3[7:4]);
    barrel_shifter b31(data_in3[15:8],3'b100,encryted3[11:8]);
    assign encryted3[15:12]=data_in3[3:0]; 
     
    barrel_shifter b2(data_in2[7:0],3'b100,temp2[3:0]);
    barrel_shifter b20(data_in2[11:4],3'b100,temp2[7:4]);
    barrel_shifter b21(data_in2[15:8],3'b100,temp2[11:8]);
    assign temp2[15:12]=data_in2[3:0]; 
    barrel_shifter b22(temp2[7:0],3'b100,encryted2[3:0]);
    barrel_shifter b23(temp2[11:4],3'b100,encryted2[7:4]);
    barrel_shifter b24(temp2[15:8],3'b100,encryted2[11:8]);
    assign encryted2[15:12]=temp2[3:0]; 

    barrel_shifter b10(data_in1[7:0],3'b100,temp0[3:0]);
    barrel_shifter b11(data_in1[11:4],3'b100,temp0[7:4]);
    barrel_shifter b12(data_in1[15:8],3'b100,temp0[11:8]);
    assign temp0[15:12]=data_in1[3:0]; 
    barrel_shifter b13(temp0[7:0],3'b100,temp1[3:0]);
    barrel_shifter b14(temp0[11:4],3'b100,temp1[7:4]);
    barrel_shifter b15(temp0[15:8],3'b100,temp1[11:8]);
    assign temp1[15:12]=temp0[3:0]; 
    barrel_shifter b16(temp1[7:0],3'b100,encryted1[3:0]);
    barrel_shifter b17(temp1[11:4],3'b100,encryted1[7:4]);
    barrel_shifter b18(temp1[15:8],3'b100,encryted1[11:8]);
    assign encryted1[15:12]=temp1[3:0]; 
endmodule
