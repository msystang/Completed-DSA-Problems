// Write a function that finds the angle of the clock hands. i.e. 12:45 -> 90 degrees, 1:18 -> 78 degrees

func findClockAngle(_ hr: Int, _ min: Int) -> Int {
  let hrAngle = (360 * hr) / 12 
  let minAngle = (360 * min) / 12
  let result = abs(minAngle - hrAngle)
  
  // Return below to return the angle starting from the hour hand clockwise to the minute hand
  // return result
  
  // Return below to return the minimum angle between the hour hand and minute hand
  return min(360 - result, result)
}

findClockAngle(12,45) //12:45 -> 90 degrees
findClockAngle(9,30) //9:30 -> 90 degrees
findClockAngle(12,30) //12:30 -> 180 degrees
findClockAngle(12,15) //12:15 -> 90 degrees
findClockAngle(1,18) //1:18 -> 78 degrees
