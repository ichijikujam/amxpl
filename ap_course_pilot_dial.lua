
function dial_coursepilot_callback(direction)
  if direction == 1 then
    xpl_command("laminar/B738/autopilot/course_pilot_up")
  elseif direction == -1 then
    xpl_command("laminar/B738/autopilot/course_pilot_dn")
  end
end

-- Create a rotary encoder for the altimeter press
hw_dial_add("ARDUINO_MEGA2560_A_D5", "ARDUINO_MEGA2560_A_D6", dial_coursepilot_callback)

