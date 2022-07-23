# LiveSplit files for the Magic 8-Ball Championship

LiveSplit files and AutoSplitters for the Magic 8-Ball Championship organized by the Buckyball Racing Club: https://forums.frontier.co.uk/threads/the-buckyball-racing-club-presents-the-magic-8-ball-championship.596981/

Don’t know what [“LiveSplit”](https://livesplit.org) is? It allows you to time speedruns of your favourite games!

You are organizing one of the Magic 8-Ball races and want yours to be added to the collection? Just ask.

[![GitHub Sponsors](https://img.shields.io/github/sponsors/alterNERDtive?style=for-the-badge)](https://github.com/sponsors/alterNERDtive)
[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/S6S1DLYBS)

## Setup

1. Download LiveSplit from https://livesplit.org/downloads/ and unzip it to a directory of your choosing.
2. Download this repository (green button in the top right of the repostory view → “Download ZIP”) and extract it to a directory of your choosing. Alternatively, clone the git repository.
3. Launch LiveSplit and do the following:
   - Right click, Open Splits, select `[name of the race].lss`.
   - Right click, Open Layout, select `[name of the race].lsl`.
   - Right click, Edit Layout, Layout Settings, then in “Scriptable Auto Splitter”, set `[name of the race].asl` as the script path.
4. Right click, Save Layout As…, save to wherever. This means your changes in the layout (e.g. changing colours) and associating the auto splitter will not be lost on updates.
5. Right click, Save Splits As…, save to wherever. This ensures that your personal times will not be lost on updates.

## Races

### Race 6 – Chicken Run: Crash Harder

https://forums.frontier.co.uk/threads/the-buckyball-racing-club-presents-chicken-run-crash-harder-magic-8-ball-championship-race-6.605441/

The AutSplitter will start the timer once you undock from Noriega Station. it will **not** account for ending the race prematurely and returning to LTT 2151 before visiting _all_ other stops.

There are no settings.

### Race 4 – On the Rocks

https://forums.frontier.co.uk/threads/the-buckyball-racing-club-presents-on-the-rocks-7th-15th-may-3307-magic-8-ball-championship-race-4.602955/

The AutoSplitter will start the timer once you undock from Rebuy Prospect. It will **not** enforce selling 1t of beer mats (split will trigger at selling _anything_), and **not** check if you’re buying water at Jack’s Town.

Since the order in which you visit the race’s stops is up to you, the splits do not have a specific order and instead just list the `n`th stop.

There are no settings.

### Race 3 – Wiccan BeWare

https://forums.frontier.co.uk/threads/the-buckyball-racing-club-presents-the-wiccan-beware-race-magic-8-ball-championship-race-3.602128/

The AutoSplitter will start the timer once you undock from Dublin Citadel. It will **not** enforce buying the correct cargo, and **not** check the system you buy it in. It can also not detect if/when you fly through the tunnel at Gateway Interchange Hub, nor enforce the speed requirement.

There is one settings:

* `Automatically reset when refuelling or repairing`: Automatically reset when you Refuel or repair, since that is against the rules. Disabled by default.

### Race 2 – The Aquarian Job

https://forums.frontier.co.uk/threads/the-buckyball-racing-club-presents-the-aquarian-job-magic-8-ball-championship-race-2.599829/

The AutoSplitter will start the timer once you undock from London Relay. It will enforce doing all steps in the corret order. There is no sane way to check for the distance requirements around Cooper Arena; as long as you land/take off within ~50 km of the settlement, you will get a split.

There is one settings:

* `Automatically reset when refuelling or repairing`: Automatically reset when you Refuel or repair, since that is against the rules. Disabled by default.

### Race 1 – Back to Pareco

https://forums.frontier.co.uk/threads/the-buckyball-racing-club-presents-back-to-pareco-magic-8-ball-championship-race-1.598760/

The AutoSplitter will start the timer once you undock from Garden Ring. It will enforce docking at the race’s stations in the correct order. After 20 minutes you get one last stop, then the timer will pause and reset once you dock back at Garden Ring.

There are three settings:

* `Write the number of stops to a file, e.g. for a stream overlay`: Does exactly that. You can find the file in `My Documents`, the full path will be in the tooltip. Disabled by default.
* `Automatically reset when docking back at Garden Ring`: Automatically reset when you have finished a run and dock back at Garden Ring. Enabled by default.
* `Automatically stop the timer after death`: Automatically stop the timer should you meet an untimely demise. Disabled by default.

**Note**: If your _next stop is Garden Ring_ when the time limit is reached, you will either have to reset LiveSplit manually after docking there or re-dock to have the AutoSplitter reset it for you.
