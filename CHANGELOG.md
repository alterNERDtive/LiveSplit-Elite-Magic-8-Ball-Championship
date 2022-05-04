# devel

## Added

* Support for race 4, On the Rocks

-----

# 3.1.1 (2022-04-19)

## Fixed

* Wiccan BeWare: should now consistently detect buy/sell events.

# 3.1 (2022-04-18)

## Added

* Wiccan BeWare: automatic reset option for accidental refuels / repairs.

-----

# 3.0 (2022-04-17)

## Added

* Support for race 3, Wiccan BeWare

-----

# 2.0 (2022-03-18)

## Changed

* Splits for Race 2 (The Aquarian Job) now include the SC drop timing at all
  stops.

## Fixed

* Auto splitters can now cope with the new file name format for journal files
  introduced for Odyssey patch 11. (#6)

-----

# 1.2 (2022-03-15)

## Added

* Support for race 2, The Aquarian Job

## Fixed

* No longer freezes for 15s on `init`. Instead watches the journal folder for
  new journal files and loads the latest one automatically. Should fix some
  edge cases too. (#5)

-----

# 1.1 (2022-02-18)

Many improvements and fixes.

You’ll have to load the layout file into LiveSplit again (and add the
AutoSplitter). You can keep your personal splits.

## Added

* `Automatically stop the timer after death` option: stops the timer should you
  meet an untimely demise. Disabled by default. (#4)

## Changed

* `stops.txt` is now written to
  `My Documents\LiveSplit\Magic 8-Ball\Back to Pareco` (#3)

## Fixed

* The layout now forces timing mode to game time. On real time the hack to stop
  the timer after the first dock past the time limit does not work. (#2)
* Now works with Odyssey’s `Docked`/`Undocked` events. (#1)

-----

# 1.0 (2022-02-17)

LiveSplit files and AutoSplitter for the “Back to Pareco” race.