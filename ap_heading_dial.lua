function dial_heading_callback(direction)
  if direction == 1 then
    xpl_command("laminar/B738/autopilot/heading_up")
  elseif direction == -1 then
    xpl_command("laminar/B738/autopilot/heading_dn")
  end
end

hw_dial_add("ARDUINO_MEGA2560_A_D5", "ARDUINO_MEGA2560_A_D6", "TYPE_1_DETENT_PER_PULSE", 10.0, 10, dial_heading_callback)

