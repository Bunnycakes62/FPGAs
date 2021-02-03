# Clock signal
set_property PACKAGE_PIN W5 [get_ports clk_100Mhz]      
 set_property IOSTANDARD LVCMOS33 [get_ports clk_100Mhz]

## LEDs
set_property PACKAGE_PIN U16 [get_ports {LED_sec_blink}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {LED_sec_blink}]

#seven-segment LED display
set_property PACKAGE_PIN W7 [get_ports {LED_out[6]}]                    
   set_property IOSTANDARD LVCMOS33 [get_ports {LED_out[6]}]
set_property PACKAGE_PIN W6 [get_ports {LED_out[5]}]                    
   set_property IOSTANDARD LVCMOS33 [get_ports {LED_out[5]}]
set_property PACKAGE_PIN U8 [get_ports {LED_out[4]}]                    
   set_property IOSTANDARD LVCMOS33 [get_ports {LED_out[4]}]
set_property PACKAGE_PIN V8 [get_ports {LED_out[3]}]                    
   set_property IOSTANDARD LVCMOS33 [get_ports {LED_out[3]}]
set_property PACKAGE_PIN U5 [get_ports {LED_out[2]}]                    
   set_property IOSTANDARD LVCMOS33 [get_ports {LED_out[2]}]
set_property PACKAGE_PIN V5 [get_ports {LED_out[1]}]                    
   set_property IOSTANDARD LVCMOS33 [get_ports {LED_out[1]}]
set_property PACKAGE_PIN U7 [get_ports {LED_out[0]}]                    
   set_property IOSTANDARD LVCMOS33 [get_ports {LED_out[0]}]
set_property PACKAGE_PIN U2 [get_ports {Anode_Activate[0]}]                    
   set_property IOSTANDARD LVCMOS33 [get_ports {Anode_Activate[0]}]
set_property PACKAGE_PIN U4 [get_ports {Anode_Activate[1]}]                    
   set_property IOSTANDARD LVCMOS33 [get_ports {Anode_Activate[1]}]
set_property PACKAGE_PIN V4 [get_ports {Anode_Activate[2]}]              
   set_property IOSTANDARD LVCMOS33 [get_ports {Anode_Activate[2]}]
set_property PACKAGE_PIN W4 [get_ports {Anode_Activate[3]}]          
   set_property IOSTANDARD LVCMOS33 [get_ports {Anode_Activate[3]}]
   
##Buttons
set_property PACKAGE_PIN t17 [get_ports btn_min0]						
	set_property IOSTANDARD LVCMOS33 [get_ports btn_min0]
set_property PACKAGE_PIN U18 [get_ports btn_min1]						
	set_property IOSTANDARD LVCMOS33 [get_ports btn_min1]
set_property PACKAGE_PIN W19 [get_ports btn_hour]						
	set_property IOSTANDARD LVCMOS33 [get_ports btn_hour]

 
