# LiveSplit files for the Magic 8-Ball Championship

LiveSplit files and AutoSplitters for the Magic 8-Ball Championship organized by
the Buckyball Racing Club:
https://forums.frontier.co.uk/threads/the-buckyball-racing-club-presents-the-magic-8-ball-championship.596981/

Don’t know what [“LiveSplit”](https://livesplit.org) is? It allows you to time
speedruns of your favourite games!

You are organizing one of the Magic 8-Ball races and want yours to be added to
the collection? Just ask.

## Setup

1. Download LiveSplit from https://livesplit.org/downloads/ and unzip it to a
   directory of your choosing.
2. Download this repository (green button in the top right of the repostory
   view → “Download ZIP”) and extract it to a directory of your choosing.
3. Launch LiveSplit and do the following:
   - Right click, Open Splits, select `[name of the race].lss`.
   - Right click, Open Layout, select `[name of the race].lsl`.
   - Right click, Edit Layout, Layout Settings, then in “Scriptable Auto
     Splitter”, set `[name of the race].asl` as the script path.

## Races

### Race 1 – Back to Pareco

https://forums.frontier.co.uk/threads/the-buckyball-racing-club-presents-back-to-pareco-magic-8-ball-championship-race-1.598760/

The AutoSplitter will start the timer once you undock from Garden Ring. It will
enforce docking at the race’s stations in the correct order. After 20 minutes
you get one last stop, then the timer will pause and reset once you dock back at
Garden Ring.

There are two settings:

* `Write the number of stops to a file, e.g. for a stream overlay`: Does exactly
  that. You can find the file in `My Documents`, the full path will be in the
  tooltip. Disabled by default.
* `Automatically reset when docking back at Garden Ring`: Automatically reset
  when you have finished a run and dock back at Garden Ring. Enabled by default.
* `Automatically stop the timer after death`: Automatically stop the timer
  should you meet an untimely demise. Disabled by default.

**Note**: If your _next stop is Garden Ring_ when the time limit is reached,
you will either have to reset LiveSplit manually after docking there or re-dock
to have the AutoSplitter reset it for you.

### Race 2 – The Aquarian Job

https://forums.frontier.co.uk/threads/the-buckyball-racing-club-presents-the-aquarian-job-magic-8-ball-championship-race-2.599829/

The AutoSplitter will start the timer once you undock from London Relay. It will
enforce doing all steps in the corret order. There is no sane way to check for
the distance requirements around Cooper Arena; as long as you land/take off
within ~50 km of the settlement, you will get a split.

There is one settings:

* `Automatically reset when refuelling or repairing`: Automatically reset when
  you Refuel or repair, since that is against the rules. Disabled by default.