module bkadder(A, B, CIN, SUM, COUT);
  	input [31:0] A, B;
  	input CIN;
  	output [31:0] SUM;
	output COUT;
		
		wire [31:0] COUT1;
		
		
		wire [31:0]  P_in,G_in;
		wire [31:0]  P_out,G_out;
		wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10;
		wire w11,w12,w13,w14,w15,w16,w17,w18,w19,w20,w21,w22;
		wire w23, w24, w25, w26, w27, w28, w29, w30, w31, w32, w33, w34, w35, w36, w37;
		wire w38, w39, w40, w41, w42, w43, w44, w45, w46, w47, w48, w49, w50, w51, w52;


	assign P_in = A ^ B;
	assign G_in = A & B;
	assign P_out[0] = P_in[0];
	assign G_out[0] = G_in[0];
	PG_chain PG1 (P_in[1],G_in[1],P_in[0],G_in[0],P_out[1],G_out[1]);

	PG_chain PG2 (P_in[2],G_in[2],P_out[1],G_out[1],P_out[2],G_out[2]);

	PG_chain PG3_1 (P_in[3],G_in[3],P_in[2],G_in[2],w1,w2);
	PG_chain PG3_2 (w1,w2,P_out[1],G_out[1],P_out[3],G_out[3]);
	
	PG_chain PG4 (P_in[4],G_in[4],P_out[3],G_out[3],P_out[4],G_out[4]);
	
	PG_chain PG5_1 (P_in[5],G_in[5],P_in[4],G_in[4],w3,w4);	
	PG_chain PG5_2 (w3,w4,P_out[3],G_out[3],P_out[5],G_out[5]);
	
	PG_chain PG6 (P_in[6],G_in[6],P_out[5],G_out[5],P_out[6],G_out[6]);
	
	PG_chain PG7_1 (P_in[7],G_in[7],P_in[6],G_in[6],w5,w6);	
	PG_chain PG7_2 (w5,w6,w3,w4,w7,w8);
	PG_chain PG7_3 (w7,w8,P_out[3],G_out[3],P_out[7],G_out[7]);
	
	PG_chain PG8 (P_in[8],G_in[8],P_out[7],G_out[7],P_out[8],G_out[8]);
	
	PG_chain PG9_1 (P_in[9],G_in[9],P_in[8],G_in[8],w9,w10);
	PG_chain PG9_2 (w9,w10,P_out[7],G_out[7],P_out[9],G_out[9]);
	
	PG_chain PG10 (P_in[10],G_in[10],P_out[9],G_out[9],P_out[10],G_out[10]);
	
	PG_chain PG11_1 (P_in[11],G_in[11],P_in[10],G_in[10],w11,w12);	
	PG_chain PG11_2 (w11,w12,w9,w10,w13,w14);
	PG_chain PG11_3 (w13,w14,P_out[7],G_out[7],P_out[11],G_out[11]);

	PG_chain PG12 (P_in[12],G_in[12],P_out[11],G_out[11],P_out[12],G_out[12]);
	PG_chain PG13_1 (P_in[13],G_in[13],P_in[12],G_in[12],w15,w16);
	PG_chain PG13_2 (w15,w16,P_out[11],G_out[11],P_out[13],G_out[13]);
	PG_chain PG14 (P_in[14],G_in[14],P_out[13],G_out[13],P_out[14],G_out[14]);
	PG_chain PG15_1 (P_in[15],G_in[15],P_in[14],G_in[14],w17,w18);	
	PG_chain PG15_2 (w17,w18,w15,w16,w19,w20);
	PG_chain PG15_3 (w19,w20,w13,w14,w21,w22);
	PG_chain PG15_4 (w21,w22,P_out[7],G_out[7],P_out[15],G_out[15]);
	PG_chain PG16 (P_in[16],G_in[16],P_out[15],G_out[15],P_out[16],G_out[16]);
	PG_chain PG17_1 (P_in[17],G_in[17],P_in[16],G_in[16],w23,w24);	
	PG_chain PG17_2 (w23,w24,P_out[15],G_out[15],P_out[17],G_out[17]);

	PG_chain PG18 (P_in[18],G_in[18],P_out[17],G_out[17],P_out[18],G_out[18]);
	PG_chain PG19_1 (P_in[19],G_in[19],P_in[18],G_in[18],w25,w26);	
	PG_chain PG19_2 (w25,w26,w23,w24,w27,w28);
	PG_chain PG19_3 (w27,w28,P_out[15],G_out[15],P_out[19],G_out[19]);
	PG_chain PG20 (P_in[20],G_in[20],P_out[19],G_out[19],P_out[20],G_out[20]);
	PG_chain PG21_1 (P_in[21],G_in[21],P_in[20],G_in[20],w29,w30);	
	PG_chain PG21_2 (w29,w30,P_out[19],G_out[19],P_out[21],G_out[21]);
	PG_chain PG22 (P_in[22],G_in[22],P_out[21],G_out[21],P_out[22],G_out[22]);
	PG_chain PG23_1 (P_in[23],G_in[23],P_in[22],G_in[22],w31,w32);	
	PG_chain PG23_2 (w31,w32,w29,w30,w33,w34);
	PG_chain PG23_3 (w33,w34,w27,w28,w35,w36);
	PG_chain PG23_4 (w35,w36,P_out[15],G_out[15],P_out[23],G_out[23]);
	PG_chain PG24 (P_in[24],G_in[24],P_out[23],G_out[23],P_out[24],G_out[24]);
	PG_chain PG25_1 (P_in[25],G_in[25],P_in[24],G_in[24],w37,w38);	
	PG_chain PG25_2 (w37,w38,P_out[23],G_out[23],P_out[25],G_out[25]);
	PG_chain PG26 (P_in[26],G_in[26],P_out[25],G_out[25],P_out[26],G_out[26]);
	PG_chain PG27_1 (P_in[27],G_in[27],P_in[26],G_in[26],w39,w40);	
	PG_chain PG27_2 (w39,w40,w37,w38,w41,w42);
	PG_chain PG27_3 (w41,w42,P_out[23],G_out[23],P_out[27],G_out[27]);
	PG_chain PG28 (P_in[28],G_in[28],P_out[27],G_out[27],P_out[28],G_out[28]);
	PG_chain PG29_1 (P_in[29],G_in[29],P_in[28],G_in[28],w43,w44);	
	PG_chain PG29_2 (w43,w44,P_out[27],G_out[27],P_out[29],G_out[29]);
	PG_chain PG30 (P_in[30],G_in[30],P_out[29],G_out[29],P_out[30],G_out[30]);
	PG_chain PG31_1 (P_in[31],G_in[31],P_in[30],G_in[30],w45,w46);	
	PG_chain PG31_2 (w45,w46,w43,w44,w47,w48);
	PG_chain PG31_3 (w47,w48,w41,w42,w49,w50);
	PG_chain PG31_4 (w49,w50,w35,w36,w51,w52);
	PG_chain PG31_5 (w51,w52,P_out[15],G_out[15],P_out[31],G_out[31]);
	assign COUT1 = (CIN == 1) ?(G_out | P_out) :G_out;
	assign SUM = P_in ^ ((COUT1<<1) | {31'd0,CIN});
	assign COUT = COUT1[31];	

	endmodule

module PG_chain(P1,G1,P2,G2,P_out_PG,G_out_PG);
	input 	wire 	P1,G1,P2,G2; 
	output 	wire 	P_out_PG,G_out_PG; 
	assign P_out_PG = P1 && P2;
	assign G_out_PG = G1 || (P1 && G2);

endmodule