
function dial_vertical_speed_callback(direction)
  if direction == 1 then
    xpl_command("sim/autopilot/vertical_speed_up")
  elseif direction == -1 then
    xpl_command("sim/autopilot/vertical_speed_down")
  end
end

hw_dial_add("ARDUINO_MEGA2560_A_D5", "ARDUINO_MEGA2560_A_D6", "TYPE_1_DETENT_PER_PULSE", 10.0, 10, dial_vertical_speed_callback)

