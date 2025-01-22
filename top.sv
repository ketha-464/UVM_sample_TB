13/02/2023

// UVM_TOP
`include "uvm_macros.svh"
import uvm_pkg::*;
module top();

   //interface instantiation
   our_interface inf();
   //DUT instantiantion
   our_design uut();
   
   initial begin 
    uvm_config_db #(virtual our_interface)::set(null,"*","inf",inf);
   end 
   
   initial begin
   run_test("out_test");
   end 
endmodule
