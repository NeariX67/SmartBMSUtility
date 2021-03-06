# Changelog
## v2.0.0 (planed)
	- complete recode in SwiftUI
	- improve range calculation on GPS page

## v1.2.2
	- Fixed charging/discharging buttons sending wrong states after first launch
	- Added "pull down to refresh" on the devices tab to clear the list and search for new devices
	- Added a graph view for logging (experimental, just a interim solution)
	- fixed red texts in the logging files list
	- Auto connect to device
	- Fixed negative values on GPS page

## v1.2.1
    - Fixed some minor crashes
    - Fixed capacity settings and overvoltage protection values over 65530
    - Added logic that detects when certain features are unavailable and blocks them from beeing used

## v1.2.0
    - Added warning for LionTron users
	- Option to log BMS data
	- Reworked persistent storage backend
	- Added "Rename device" in "more" tab, also available in the welcome screen by swiping to the left on a device
	- Removed "about & credits" in settings menu
	- Fixed charging/discharging button getting stuck
	- Fixed broken bluetooth connection after slightly swiping to the right
	- Write Data button stays visible after switching tabs
	- Added option to log data in background
    - Fixed empty devicelist after disconnecting
    - improved reconnecting
    - Min/Max values are now device specific
    - Fixed rare crash on checksum validation
## v1.1.1
	- Fixed crashes when higher currents are beeing drawn
	- Exit condition for reading and writing data in the configuration page

## v1.1.0
	- Added configuration of your bms
	- Fixed charge- and runtime calculation
	- Smaller design changes
	- Inverted current reporting, charging is positive, discharging negative

## v1.0.2
	- Fixed crashing when the BMS offered more than 3 temperature sensors
	- Fixed crashing when the bluetooth connection dropped

## v1.0.1 Release
