import Foundation

///	Linux doesn't have Foundation's DateComponentsFormatter, so this is a very hacky, poorly coded standin.  Not to be used by anyone...
class DateComponentsFormatterStandin {
	let secsPerMinute = 60.0
	let minutesPerHour = 60.0
	let hoursPerDay = 24.0

	///	Give a duration string from a TimeInterval
	func string(from duration: TimeInterval) -> String {
		///	The string that we will build-up to describe the duration in English
		var durationString = ""
		///	The duration.  We will whittle this down by smaller and smaller units of time as the string is built-up.
		var workingDuration = duration
		
		///	Checks if we have at least one unit of this type in the duration.  If so, count them and remove them from the working duration.
		func processUnits(singleName: String, unitDuration: Double) {
			let units = workingDuration / unitDuration
			let unitsAsInt = Int(floor(units))
			var unitName = singleName

			//	Multiple name
			if unitsAsInt > 1 {
				unitName = unitName + "s"
			}

			//	Add a space if we have units of this type.
			var spacer = ""
			if units >= 1 {
				if durationString.count != 0 {
					spacer = ", "
				}
				durationString = "\(durationString)\(spacer)\(unitsAsInt) \(unitName)"
				workingDuration = workingDuration - (Double(unitsAsInt) * unitDuration)
			}
			
		}
		
		//	Days
		let secsPerDay = hoursPerDay * minutesPerHour * secsPerMinute
		processUnits(singleName: "day", unitDuration: secsPerDay)
		
		//	Hours
		let secsPerHour = minutesPerHour * secsPerMinute
		processUnits(singleName: "hour", unitDuration: secsPerHour)
		
		//	Minutes
		processUnits(singleName: "minute", unitDuration: secsPerMinute)
		
		//	Seconds
		processUnits(singleName: "second", unitDuration: 1.0)
				
		return durationString
	}
	
}



/*
 
 
 
 let formatter = DateComponentsFormatter()
 formatter.allowedUnits = [.month, .day, .hour, .minute, .second]
 formatter.unitsStyle = .abbreviated
 formatter.maximumUnitCount = 3
 print(formatter.string(from: 5274554)!)
 
 
 */


/*
 
 Formatting Values
 
 func string(from: DateComponents) -> String?
 Returns a formatted string based on the specified date component information.
 
 func string(for: Any?) -> String?
 Returns a formatted string based on the date information in the specified object.
 
 func string(from: Date, to: Date) -> String?
 Returns a formatted string based on the time difference between two dates.
 
 func string(from: TimeInterval) -> String?
 Returns a formatted string based on the specified number of seconds.
 
 class func localizedString(from: DateComponents, unitsStyle: DateComponentsFormatter.UnitsStyle) -> String?
 Returns a localized string based on the specified date components and style option.
 
 
 Configuring the Formatter Options
 
 var allowedUnits: NSCalendar.Unit
 The bitmask of calendrical units such as day and month to include in the output string.
 
 var allowsFractionalUnits: Bool
 A Boolean indicating whether non-integer units may be used for values.
 
 var calendar: Calendar?
 The default calendar to use when formatting date components.
 
 var collapsesLargestUnit: Bool
 A Boolean value indicating whether to collapse the largest unit into smaller units when a certain threshold is met.
 
 var includesApproximationPhrase: Bool
 A Boolean value indicating whether the resulting phrase reflects an inexact time value.
 
 var includesTimeRemainingPhrase: Bool
 A Boolean value indicating whether output strings reflect the amount of time remaining.
 
 var maximumUnitCount: Int
 The maximum number of time units to include in the output string.
 
 var unitsStyle: DateComponentsFormatter.UnitsStyle
 The formatting style for unit names.
 
 var zeroFormattingBehavior: DateComponentsFormatter.ZeroFormattingBehavior
 The formatting style for units whose value is 0.
 
 
 Constants
 
 enum DateComponentsFormatter.UnitsStyle
 Constants for specifying how to represent quantities of time.
 
 struct DateComponentsFormatter.ZeroFormattingBehavior
 Formatting constants for when values contain zeroes.
 
 
 Instance Properties
 var formattingContext: Formatter.Context
 var referenceDate: Date?
 
 */
