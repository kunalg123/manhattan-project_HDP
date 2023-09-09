module manhattan_sequencedetector(sequence_in,clock,reset,detector_out);
input clock; // clock signal
input reset; // reset input
input sequence_in; // binary input
output reg detector_out; // output of the sequence detector
parameter  Zero=3'b000, // "Zero" State
  One=3'b001, // "One" State
  OneOne=3'b010, // "OneOne" State
  OneOneZero=3'b011, // "OneOneZero" State
  OneOneZeroOne=3'b100,// "OneOneZeroOne" State
  OneOneZeroOneZero=3'b101;
reg [2:0] current_state, next_state; // current state and next state
// sequential memory of the Moore FSM
always @(posedge clock, posedge reset)
begin
 if(reset==1) 
 current_state <= Zero;// when reset=1, reset the state of the FSM to "Zero" State
 else
 current_state <= next_state; // otherwise, next state
end 
// combinational logic of the Mealy FSM
// to determine next state 
always @(current_state,sequence_in)
begin
 case(current_state) 
 Zero:begin
  if(sequence_in==1)
   next_state <= One;
  else
   next_state <= Zero;
 end
 One:begin
  if(sequence_in==1)
   next_state <= OneOne;
  else
   next_state <= One;
 end
 OneOne:begin
  if(sequence_in==0)
   next_state <= OneOneZero;
  else
   next_state <= OneOne;
 end 
 OneOneZero:begin
  if(sequence_in==1)
   next_state <= OneOneZeroOne;
  else
   next_state <= OneOneZero;
 end
 OneOneZeroOne:begin
  if(sequence_in==0)
   next_state <= OneOneZeroOneZero;
  else
   next_state <= OneOneZero;
 end
 OneOneZeroOneZero:begin
 if(sequence_in==1)
 next_state <= One;
 else
 next_state=Zero;
 end
 default:next_state <= Zero;
 endcase
end
// combinational logic to determine the output
// of the Mealy FSM, output  depends on current state and present input
always @(posedge clock)
begin 
 if (reset==1) detector_out <= 1'b0;
    else begin
      if (sequence_in & (current_state == OneOneZeroOneZero)) detector_out <= 1'b1;
      else detector_out <= 1'b0;
    end
end 
endmodule
