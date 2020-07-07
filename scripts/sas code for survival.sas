

proc power;
   twosamplesurvival test=logrank
      curve("Control")   = (1):(0.35)
      refsurvival = "Control"
      hazardratio = 0.41
      accrualtime = 1
      followuptime = 3
      groupweights = (1 1)
      eventstotal = .
      power = 0.8;
run;

proc power;
   twosamplesurvival test=logrank
      curve("Control")   = (1):(0.35)
      refsurvival = "Control"
      hazardratio = 0.41
      accrualtime = 1
      followuptime = 3
      groupweights = (1 1)
      ntotal = .
      power = 0.8;
run;

