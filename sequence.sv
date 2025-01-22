//sequence
class our_sequence extends uvm_sequence #(our_packet);
 `uvm_onject_utils(our_squence)
  our_packet pkt;
  
  //constructor;
  function new(string name = "our_sequence");
   super.new(name);
  endfunction
  
  task body();
    pkt = our_packet::type_id::create("our_packet");
	repeat(10) begin
	// generate stimulus 
	start_item(pkt);
	    pkt.randomize();
	finish_item(pkt);
	end 
  endtask
 endclass