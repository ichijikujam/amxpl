
function dial_vertical_speed_callback(direction)
  if direction == 1 then
    xpl_command("sim/autopilot/vertical_speed_up")
  elseif direction == -1 then
    xpl_command("sim/autopilot/vertical_speed_down")
  end
end

-- Create a rotary encoder for the altimeter press
hw_dial_add("ARDUINO_MEGA2560_A_D5", "ARDUINO_MEGA2560_A_D6", dial_vertical_speed_callback)

