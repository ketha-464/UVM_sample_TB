//how to create object classes
//sequence_item
class our_packet extends uvm_sequence_item;
 `uvm_object_utils(our_packet)
 
 //request items
  rand bit[7:0] input_1;
  rand bit[7:0] input_2;
 //response items 
  bit[15:0] output_3;
  
 //object utility and field macros 
 `uvm_object_utils_begin(our_packet)
    `uvm_field_int(input_1,UVM_ALL_ON)
    `uvm_field_int(input_2,UVM_ALL_ON)
 `uvm_object_utils_end
	 
 //constructor 
 function new(string name="our_packet");
   super.new(name);
 endfunction
 
 // constarints
 constraint input_range {input_1 >10;input_2==30;};
 
endclass

module seq_item_tb;
  
  //instance
  our_packet seq_item;
  
  initial begin
    //create method
    seq_item = our_packet::type_id::create(); 
    
    //randomizing the seq_item
    seq_item.randomize();
    
    //printing the seq_item
    seq_item.print();   
  end  
endmodule