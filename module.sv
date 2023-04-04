
module hello(input clk);

initial

begin: proc_he
	$display("helllo");
end

always
begin: proc_clk
	#(20) $display("tic");
end

endmodule
