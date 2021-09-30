function dial_g1000n3_fms_outer_callback(direction)
  if direction == 1 then
    xpl_command("sim/GPS/g1000n3_fms_outer_up")
  elseif direction == -1 then
    xpl_command("sim/GPS/g1000n3_fms_outer_down")
  end
end

function dial_g1000n3_fms_inner_callback(direction)
  if direction == 1 then
    xpl_command("sim/GPS/g1000n3_fms_inner_up")
  elseif direction == -1 then
    xpl_command("sim/GPS/g1000n3_fms_inner_down")
  end
end

function dial_g1000n3_cursor_callback(direction)
  xpl_command("sim/GPS/g1000n3_cursor")
end

function button_pressed()
  xpl_command("sim/GPS/g1000n3_cursor")
end

-- Create a rotary encoder for the altimeter press
hw_dial_add("ARDUINO_MEGA2560_A_D5", "ARDUINO_MEGA2560_A_D6", dial_g1000n3_fms_outer_callback)
hw_dial_add("ARDUINO_MEGA2560_A_D2", "ARDUINO_MEGA2560_A_D3", dial_g1000n3_fms_inner_callback)
hw_button_add("ARDUINO_MEGA2560_A_D8", button_pressed)