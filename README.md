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

**Note**: When the game is loaded with LiveSplit running, or when you start
LiveSplit while the game is up, LiveSplit will lock up for 15 seconds and not
respond. This is because it has to wait until it can be sure that the game has
written a journal file.

## Races

### Back to Pareco

https://forums.frontier.co.uk/threads/the-buckyball-racing-club-presents-back-to-pareco-magic-8-ball-championship-race-1.598760/

The AutoSplitter will start the timer once you undock from Garden Ring. It will
enforce docking at the race’s stations in the correct order. After 20 minutes,
the timer will stop and reset once you dock back at Garden Ring.

**Note**: If your _next stop is Garden Ring_ when the time limit is reached,
you will either have to reset LiveSplit manually after docking there or re-dock
to have the AutoSplitter reset it for you.