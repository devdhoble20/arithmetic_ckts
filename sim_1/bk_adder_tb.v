module bk_adder_tb();

reg [31:0] A1,B1;
reg CIN1;
wire [31:0] SUM1;
wire COUT1;

bkadder uut (.A(A1), .B(B1), .CIN(CIN1), .SUM(SUM1), .COUT(COUT1));

initial begin
	A1 = 2000;
	B1 = 1000;
	CIN1 = 0;
	#10;

	A1 = 3075;
	B1 = 4085;
	CIN1 = 0;
	#10;

	A1 = 5465;
	B1 = 6000;
	CIN1 = 0;
	#10;

	A1 = 2085;
	B1 = 1741;
	CIN1 = 1;
	#10;

	A1 = 2789;
	B1 = 1452;
	CIN1 = 1;
	#10;

	$finish;
		
end

endmodule