function foo(value)
    percent = var_round(value*100, 0)
    print("Input is at " .. percent .. "%")
    --https://www.siminnovations.com/xplane/dataref/
    xpl_dataref_write("sim/cockpit2/engine/actuators/throttle_ratio_all", "FLOAT", value)
end

--https://siminnovations.com/wiki/index.php?title=Hw_adc_input_add
hw_adc_input_id = hw_adc_input_add("ARDUINO_UNO_A_A0", 0.02 , foo)