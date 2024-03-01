

proc power;
   twosamplesurvival test=logrank
      curve("Control")   = (3):(0.35)
      refsurvival = "Control"
      hazardratio = 0.41
      accrualtime = 1.5
      followuptime = 2
      groupweights = (1 1)
      eventstotal = .
	  alpha=.025
      power = 0.8;
run;

/* Power calculation for the primary outcome testing the binary predictor variable,
/* alpha diversity, at significantly stratifying overall survival across all study participants
proc power;
   twosamplesurvival test=logrank
      curve("Control")   = (3):(0.35)
      refsurvival = "Control"
      hazardratio = 0.41
      accrualtime = 1.5
      followuptime = 2
      groupweights = (1 1)
      ntotal = .
	  alpha=.025
      power = 0.8;
run;


/* Power calculation for the primary outcome testing the continuous predictor variable,
/* "6-minute walk test distance", at significantly correlating with overall survival
/* across all study participants

proc power;
   coxreg
      hazardratio = 1.4
      rsquare = 0
      stddev = 1
      power = 0.8
      eventprob = 0.65
	  alpha = 0.025
	  sides=2
      ntotal = .
   ;
run;



