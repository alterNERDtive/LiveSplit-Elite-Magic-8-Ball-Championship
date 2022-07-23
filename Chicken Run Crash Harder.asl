// Defines the process to monitor. We are not reading anything from the game’s memory, so it’s empty.
// We still need it though, LiveSplit will only run the auto splitter if the corresponding process is present.
// See https://github.com/LiveSplit/LiveSplit.AutoSplitters/blob/master/README.md#state-descriptors
state("EliteDangerous64") {}

// Executes when LiveSplit (re-)loads the auto splitter. Does general setup tasks.
// See https://github.com/LiveSplit/LiveSplit.AutoSplitters/blob/master/README.md#script-startup
startup {
	// Relevant journal entries
	vars.journalReader = null;
	vars.journalEntries = new List<System.Text.RegularExpressions.Regex>(26);
	vars.journalEntries.Add(
		new System.Text.RegularExpressions.Regex(@"\{ ""timestamp"":""(?<timestamp>.*)"", ""event"":""Undocked"", ""StationName"":""Noriega Station"", ""StationType"":""Coriolis"", ""MarketID"":3228508416(, ""Taxi"":(true|false), ""Multicrew"":(true|false))? \}"));
	vars.journalEntries.Add(
		new System.Text.RegularExpressions.Regex(@"\{ ""timestamp"":""(?<timestamp>.*)"", ""event"":""FSDJump""(, ""Taxi"":(true|false), ""Multicrew"":(true|false))?, ""StarSystem"":""Bento"", ""SystemAddress"":633675420370, .*\}"));
	vars.journalEntries.Add(
		new System.Text.RegularExpressions.Regex(@"\{ ""timestamp"":""(?<timestamp>.*)"", ""event"":""SupercruiseExit""(, ""Taxi"":(true|false), ""Multicrew"":(true|false))?, ""StarSystem"":""Bento"", ""SystemAddress"":633675420370, ""Body"":""Snow Moon"", ""BodyID"":5, ""BodyType"":""Station"" \}"));
	vars.journalEntries.Add(
		new System.Text.RegularExpressions.Regex(@"\{ ""timestamp"":""(?<timestamp>.*)"", ""event"":""Docked"", ""StationName"":""Snow Moon"", ""StationType"":""Orbis""(, ""Taxi"":(true|false), ""Multicrew"":(true|false))?, ""StarSystem"":""Bento"", .*\}"));
	vars.journalEntries.Add(
		new System.Text.RegularExpressions.Regex(@"\{ ""timestamp"":""(?<timestamp>.*)"", ""event"":""MarketBuy"", ""MarketID"":128059402, ""Type"":""crystallinespheres""(, ""Type_Localised"":""Crystalline Spheres"")?, ""Count"":\d+, ""BuyPrice"":\d+, ""TotalCost"":\d+ \}"));
	vars.journalEntries.Add(
		new System.Text.RegularExpressions.Regex(@"\{ ""timestamp"":""(?<timestamp>.*)"", ""event"":""FSDJump""(, ""Taxi"":(true|false), ""Multicrew"":(true|false))?, ""StarSystem"":""Okinura"", ""SystemAddress"":7505556017866, .*\}"));
	vars.journalEntries.Add(
		new System.Text.RegularExpressions.Regex(@"\{ ""timestamp"":""(?<timestamp>.*)"", ""event"":""SupercruiseExit""(, ""Taxi"":(true|false), ""Multicrew"":(true|false))?, ""StarSystem"":""Okinura"", ""SystemAddress"":7505556017866, ""Body"":""Okinura 8 c"", ""BodyID"":26, ""BodyType"":""Planet"" \}"));
	vars.journalEntries.Add(
		new System.Text.RegularExpressions.Regex(@"\{ ""timestamp"":""(?<timestamp>.*)"", ""event"":""Docked"", ""StationName"":""Korniyenko Terminal"", ""StationType"":""CraterOutpost""(, ""Taxi"":(true|false), ""Multicrew"":(true|false))?, ""StarSystem"":""Okinura"", .*\}"));
	vars.journalEntries.Add(
		new System.Text.RegularExpressions.Regex(@"\{ ""timestamp"":""(?<timestamp>.*)"", ""event"":""FSDJump""(, ""Taxi"":(true|false), ""Multicrew"":(true|false))?, ""StarSystem"":""Blatrimpe"", ""SystemAddress"":7505623126738, .*\}"));
	vars.journalEntries.Add(
		new System.Text.RegularExpressions.Regex(@"\{ ""timestamp"":""(?<timestamp>.*)"", ""event"":""SupercruiseExit""(, ""Taxi"":(true|false), ""Multicrew"":(true|false))?, ""StarSystem"":""Blatrimpe"", ""SystemAddress"":7505623126738, ""Body"":""Blatrimpe 7"", ""BodyID"":13, ""BodyType"":""Planet"" \}"));
	vars.journalEntries.Add(
		new System.Text.RegularExpressions.Regex(@"\{ ""timestamp"":""(?<timestamp>.*)"", ""event"":""Docked"", ""StationName"":""Koch Beacon"", ""StationType"":""CraterPort""(, ""Taxi"":(true|false), ""Multicrew"":(true|false))?, ""StarSystem"":""Blatrimpe"", .*\}"));
	vars.journalEntries.Add(
		new System.Text.RegularExpressions.Regex(@"\{ ""timestamp"":""(?<timestamp>.*)"", ""event"":""FSDJump""(, ""Taxi"":(true|false), ""Multicrew"":(true|false))?, ""StarSystem"":""Shoujeman"", ""SystemAddress"":4820840745323, .*\}"));
	vars.journalEntries.Add(
		new System.Text.RegularExpressions.Regex(@"\{ ""timestamp"":""(?<timestamp>.*)"", ""event"":""SupercruiseExit""(, ""Taxi"":(true|false), ""Multicrew"":(true|false))?, ""StarSystem"":""Shoujeman"", ""SystemAddress"":4820840745323, ""Body"":""Shoujeman 5"", ""BodyID"":6, ""BodyType"":""Planet"" \}"));
	vars.journalEntries.Add(
		new System.Text.RegularExpressions.Regex(@"\{ ""timestamp"":""(?<timestamp>.*)"", ""event"":""Docked"", ""StationName"":""Baffin Plant"", ""StationType"":""CraterOutpost""(, ""Taxi"":(true|false), ""Multicrew"":(true|false))?, ""StarSystem"":""Shoujeman"", .*\}"));
	vars.journalEntries.Add(
		new System.Text.RegularExpressions.Regex(@"\{ ""timestamp"":""(?<timestamp>.*)"", ""event"":""FSDJump""(, ""Taxi"":(true|false), ""Multicrew"":(true|false))?, ""StarSystem"":""Wolf 562"", ""SystemAddress"":670954497457, .*\}"));
	vars.journalEntries.Add(
		new System.Text.RegularExpressions.Regex(@"\{ ""timestamp"":""(?<timestamp>.*)"", ""event"":""SupercruiseExit""(, ""Taxi"":(true|false), ""Multicrew"":(true|false))?, ""StarSystem"":""Wolf 562"", ""SystemAddress"":670954497457, ""Body"":""Laila's Memory"", ""BodyID"":3, ""BodyType"":""Planet"" \}"));
	vars.journalEntries.Add(
		new System.Text.RegularExpressions.Regex(@"\{ ""timestamp"":""(?<timestamp>.*)"", ""event"":""Docked"", ""StationName"":""King's Inheritance"", ""StationType"":""CraterPort""(, ""Taxi"":(true|false), ""Multicrew"":(true|false))?, ""StarSystem"":""Wolf 562"", .*\}"));
	vars.journalEntries.Add(
		new System.Text.RegularExpressions.Regex(@"\{ ""timestamp"":""(?<timestamp>.*)"", ""event"":""FSDJump""(, ""Taxi"":(true|false), ""Multicrew"":(true|false))?, ""StarSystem"":""5 G. Capricorni"", ""SystemAddress"":1733119972058, .*\}"));
	vars.journalEntries.Add(
		new System.Text.RegularExpressions.Regex(@"\{ ""timestamp"":""(?<timestamp>.*)"", ""event"":""SupercruiseExit""(, ""Taxi"":(true|false), ""Multicrew"":(true|false))?, ""StarSystem"":""5 G. Capricorni"", ""SystemAddress"":1733119972058, ""Body"":""5 G. Capricorni 3"", ""BodyID"":9, ""BodyType"":""Planet"" \}"));
	vars.journalEntries.Add(
		new System.Text.RegularExpressions.Regex(@"\{ ""timestamp"":""(?<timestamp>.*)"", ""event"":""Docked"", ""StationName"":""Moore Beacon"", ""StationType"":""CraterOutpost""(, ""Taxi"":(true|false), ""Multicrew"":(true|false))?, ""StarSystem"":""5 G. Capricorni"", .*\}"));
	vars.journalEntries.Add(
		new System.Text.RegularExpressions.Regex(@"\{ ""timestamp"":""(?<timestamp>.*)"", ""event"":""FSDJump""(, ""Taxi"":(true|false), ""Multicrew"":(true|false))?, ""StarSystem"":""Ross 905"", ""SystemAddress"":11666070840737, .*\}"));
	vars.journalEntries.Add(
		new System.Text.RegularExpressions.Regex(@"\{ ""timestamp"":""(?<timestamp>.*)"", ""event"":""SupercruiseExit""(, ""Taxi"":(true|false), ""Multicrew"":(true|false))?, ""StarSystem"":""Ross 905"", ""SystemAddress"":11666070840737, ""Body"":""Robert Kelley"", ""BodyID"":6, ""BodyType"":""Planet"" \}"));
	vars.journalEntries.Add(
		new System.Text.RegularExpressions.Regex(@"\{ ""timestamp"":""(?<timestamp>.*)"", ""event"":""Docked"", ""StationName"":""Weber Legacy"", ""StationType"":""CraterOutpost""(, ""Taxi"":(true|false), ""Multicrew"":(true|false))?, ""StarSystem"":""Ross 905"", .*\}"));
	vars.journalEntries.Add(
		new System.Text.RegularExpressions.Regex(@"\{ ""timestamp"":""(?<timestamp>.*)"", ""event"":""FSDJump""(, ""Taxi"":(true|false), ""Multicrew"":(true|false))?, ""StarSystem"":""LTT 2151"", ""SystemAddress"":2282942894802, .*\}"));
	vars.journalEntries.Add(
		new System.Text.RegularExpressions.Regex(@"\{ ""timestamp"":""(?<timestamp>.*)"", ""event"":""SupercruiseExit""(, ""Taxi"":(true|false), ""Multicrew"":(true|false))?, ""StarSystem"":""LTT 2151"", ""SystemAddress"":2282942894802, ""Body"":""Noriega Station"", ""BodyID"":17, ""BodyType"":""Station"" \}"));
	vars.journalEntries.Add(
		new System.Text.RegularExpressions.Regex(@"\{ ""timestamp"":""(?<timestamp>.*)"", ""event"":""Docked"", ""StationName"":""Noriega Station"", ""StationType"":""Coriolis""(, ""Taxi"":(true|false), ""Multicrew"":(true|false))?, ""StarSystem"":""LTT 2151"", .*\}"));
	
		// Journal file handling
	vars.journalPath = Path.Combine(
		Environment.GetFolderPath(Environment.SpecialFolder.UserProfile),
		"Saved Games",
		"Frontier Developments",
		"Elite Dangerous"
		);
	vars.currentJournal = "none";
	vars.updateJournalReader = (Action)delegate() {
		FileInfo journalFile = new DirectoryInfo(vars.journalPath).GetFiles("journal.*.log").OrderByDescending(file => file.LastWriteTime).First();
		print("Current journal file: " + vars.currentJournal + ", latest journal file: " + journalFile.Name);
		if (journalFile.Name != vars.currentJournal) {
			vars.journalReader = new StreamReader(new FileStream(journalFile.FullName, FileMode.Open, FileAccess.Read, FileShare.ReadWrite));
			vars.currentJournal = journalFile.Name;
		}
	};
	vars.updateJournalReader();
	vars.journalReader.ReadToEnd();

	// Watch for new files
	FileSystemWatcher journalWatcher = new FileSystemWatcher(vars.journalPath);
	journalWatcher.Created += (object sender, FileSystemEventArgs eventArgs) => {
		vars.updateJournalReader();
	};
	journalWatcher.EnableRaisingEvents = true;

	// Initialize split counter
	vars.currentSplit = 0;
}

// Executes when LiveSplit detects the game process (see “state” at the top of the file).
// In our case the journal and netlog files are unique to every execution of the game, so we need to prepare them here.
// We also need to check if file logging is enabled (the setting is not available in `startup`) and create/open our log file.
// See https://github.com/LiveSplit/LiveSplit.AutoSplitters/blob/master/README.md#script-initialization-game-start
init {
}

// Executes as long as the game process is running, by default 60 times per second.
// Unless explicitly returning `false`, `start`, `split` and `reset` are executed right after.
// See https://github.com/LiveSplit/LiveSplit.AutoSplitters/blob/master/README.md#generic-update
update {
	current.journalString = vars.journalReader.ReadToEnd();
}

// Executes every `update`. Starts the timer if the first journal event is detected.
// See https://github.com/LiveSplit/LiveSplit.AutoSplitters/blob/master/README.md#automatic-timer-start-1
start {
	bool start = false;

	if (vars.journalEntries[0].Match(current.journalString).Success) {
		start = true;
		vars.currentSplit = 1;
	}

	return start;
}

// Executes every `update`. Triggers a split if the journal event triggering the next split is detected.
// See https://github.com/LiveSplit/LiveSplit.AutoSplitters/blob/master/README.md#automatic-splits-1
split {
	bool split = false;
	
	if (!String.IsNullOrEmpty(current.journalString)) {
		if (vars.journalEntries[vars.currentSplit].Match(current.journalString).Success) {
			split = true;
			vars.currentSplit++;
		}
	}

	return split;
}

// Executes when the game process is shut down.
// In our case we’re going to close the files we opened in `init`.
// See https://github.com/LiveSplit/LiveSplit.AutoSplitters/blob/master/README.md#game-exit
exit {
	vars.journalReader.Close();
}

// Executes when LiveScript shuts the auto splitter down, e.g. on reloading it.
// When reloading the splitter with the game running, LiveSplit does **not** execute `exit`, but it does execute `shutdown`.
// see https://github.com/LiveSplit/LiveSplit.AutoSplitters/blob/master/README.md#script-shutdown
shutdown {
	if (vars.journalReader != null) {
		vars.journalReader.Close();
	}
}
