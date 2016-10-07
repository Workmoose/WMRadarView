# WMRadarView
A simple customizable radarView written in Swift 3

## Properties
* `numberOfWaves` the max number of waves visible at one time.
* `radarColor` color of the radarwaves
* `maxWaveAlpha` alpha level at which waves start
* `animationDuration` duration of the animationDuration
* `animationOptions` allows for animation options such as
  - `.autoreverse`
  - `.curveEaseIn`
  - `.curveEaseOut`
  - `.curveEaseInOut`
  - `.curveLinear`

## Dependencies
You will need [EasyAnimation](https://github.com/icanzilb/EasyAnimation) v1.1 in order for this to work

## Usage

make sure to call `startAnimation()` in order to start the animation.

## Install

Either install using Cocoapods

`pod install 'WMRadarView'`

Or by just copying the source swift file.

## License
"THE BEERWARE LICENSE" (Revision 42):
Jaap Wijnen wrote this code. As long as you retain this
notice, you can do whatever you want with this stuff. If we
meet someday, and you think this stuff is worth it, you can
buy me a beer in return.

*Written for [Workmoose](https://github.com/Workmoose) by Jaap Wijnen*
