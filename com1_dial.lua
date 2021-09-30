
function dial_com1_fine_callback(direction)
  if direction == 1 then
    xpl_command("sim/radios/stby_com1_fine_up")
  elseif direction == -1 then
    xpl_command("sim/radios/stby_com1_fine_down")
  end
end

function dial_com1_course_callback(direction)
  if direction == 1 then
    xpl_command("sim/radios/stby_com1_coarse_up")
  elseif direction == -1 then
    xpl_command("sim/radios/stby_com1_coarse_down")
  end
end

-- Create a rotary encoder for the altimeter press
hw_dial_add("ARDUINO_MEGA2560_A_D5", "ARDUINO_MEGA2560_A_D6", dial_com1_fine_callback)
hw_dial_add("ARDUINO_MEGA2560_A_D2", "ARDUINO_MEGA2560_A_D3", dial_com1_course_callback)
