void followSignalSampledOppositeWay(int ratioTimeFrame) {
    //setMeasureAndBeatPrecised();
    rotate( - PI / 2);

     if (beatTrigged==true && preStartSpeedOfRepetitionUP==true)
      {
       speedOfrepetition+=0.5;
       speedOfrepetition%=6.5;
       preStartSpeedOfRepetitionUP=false;
       }
    
     if (beatTrigged==true && preStartSpeedOfRepetitionDOWN==true)
      {   
        speedOfrepetition-=0.5;
        speedOfrepetition%=(-6.5);  
        if (speedOfrepetition==(-6.0))
      {
          speedOfrepetition=0;
      }
      preStartSpeedOfRepetitionDOWN=false;
      }
                
          
                 
    
    if(key == '*' || key == '$') {
        formerKeyMetro = key;
    }  
    if(formerKeyMetro == '*') {
        modeCircular = true;
    }
    if(formerKeyMetro == '$') {
        modeCircular = false;
    }
    text (" measureRecordStop " + measureRecordStop + " cricular in followSOWay(frameRatio) ..... ??" + modeCircular, 0, 800);
    
    //above to  avoid bug
    
    frameCount = frameCount + 1;
    float deltaFollow = TWO_PI; // not used
    //here in a previous function we could change the ball followed if the space of phase between phases[0] and phase 9 is more than 360° for example
    
  

    //**phases[networkSize-1][frameCount % nbMaxDelais] = movementInterpolated;
    //**newPosFollowed[0] = (phases[0][frameCount % nbMaxDelais]);

    //if (newPosFollowed[0]<0) newPosFollowed[0]=TWO_PI+newPosFollowed[0];
  
   //** net.phase[networkSize-1]=  movementInterpolated;

   //** phases[0][frameCount % nbMaxDelais] = net.phase[networkSize-1];

 //  text ( " delayTime " + delayTime + " " + movementInterpolated, 200, 200 );

 //  if (millis() > delayTime+935){
  // 
  //  delayTime=millis();
   
 //  text ( " delayTime " + delayTime + " " + movementInterpolated, 200, 300 );

   // movementInterpolated+=3/4*TWO_PI;
   // movementInterpolated=movementInterpolated+7/8*TWO_PI;

    phases[0][frameCount % nbMaxDelais]=  movementInterpolated;
    
    //newPosFollowed[0] = (phases[0][frameCount % nbMaxDelais]);

    newPosFollowed[0] %=  TWO_PI; // useless

    
    for (int i = 1; i < networkSize; i += 1) { // 1 follow phase 0
        //  follow( i-1, i, 20 * i, 0);  // Modifier les deux derniers paramètres : délais et phase
        followOppositeWay(i - 1, i + 0, delayTimeFollowPhase11, (phaseShiftingFollowPhase11));  // ici, le temps que les points attendent pour se suivre est de 5 frames, et il faut un espace entre eux de QUARTER_PI/6
    }
    
    samplingMovementPro();
    //formerKey= key;
    if(key != '#') {
     if(key != 'q') // q is used to preStart speed of repetio
      {

      //  if(formerKeyCode == 9 || formerKeyCode == 1)
      //   {
             if (modeStartKeyToFollow == " followSignalSampledOppositeWay(frameRatio) ")
             {
                  phasePatternBase(); //
                 //    phasePattern();
               for (int i = 0; i < networkSize; i += 1)
                {
                phasePatternFollow[i] += netPhaseBase[i]; //
               // phasePatternFollow[i] += net.phase[i];
                phasePatternFollow[i] = phasePatternFollow[i] % TWO_PI;
             }
         }

       key = '#';
       }
       if (keyCode==0){
        formerKeyCode=1;
        }
     // }
     }
    
    if(modeStartKeyToFollow == " followSignalSampledOppositeWay(frameRatio) ") { //||formerFormerKey == '#'
        for (int i = 0; i < networkSize - 0; i += 1) {
            
           if ((phases[i][frameCount % nbMaxDelais])<0)
            {
                newPosFollowed[i] = (phases[i][frameCount % nbMaxDelais]) + TWO_PI; // easier
                newPosFollowed[i] %=  TWO_PI;
           } 
           else if ((phases[i][frameCount % nbMaxDelais])>= 0) {
                newPosFollowed[i] = phases[i][frameCount % nbMaxDelais];
           }
            phaseMapped[i] = newPosFollowed[i] + phasePatternFollow[i];
            
           // phaseMapped always > 0 with below to be well use in the counter
            
           if ((phaseMapped[i])<0)
            {
                phaseMapped[i] = (phaseMapped[i]) + TWO_PI; // easier
                phaseMapped[i] %=  TWO_PI;
           } 
           else if (phaseMapped[i] >=  0) {
                phaseMapped[i] %=  TWO_PI;
            }
            net.phase[i] = phaseMapped[i]; // to be used in !modeCircular
        }
    }
    //option to add rotationSpeed
    /*
    for (int i = 0; i < networkSize-0; i+=1) {
    phaseMappedFollow[i]+=0.01;
    phaseMappedFollow[i]= phaseMappedFollow[i]%TWO_PI;
    }
    */
    if (keyCode ==  TAB)
    {
        textSize( 500);
    }
    
    if(keyCode == BACKSPACE) {
        for (int i = 0; i < networkSize - 0; i += 1) {
            println(" ALIGN MTF ");
            phaseMapped[i] = phases[i - 0][frameCountBis % nbMaxDelais] + 0; // to aligin ball with the followed one
            phasePatternFollow[i] = 0;
            newPosFollowed[i] = 0;
        }
        keyCode = TAB;
    }
    
    for (int i = 0; i < networkSize - 0; i += 1) {
        oldPhaseMapped[i] = phaseMapped[i]; // used in mapNawPosX to have CCW data
        newPosF[i] = phaseMapped[i]; // %TWO_PI      used to count revolution
        //  newPosX[i]=phaseMapped[i]; // better to count revolution
    }
    
    //if (modeCircular) {
    mapPropagationSampledBall(); // COUNT REVOLUTION
    //   }

 if (measure==measureRecordStop+8 && beatTrigged == true){
  //  keyMode = " trigEventWithAbletonLive ";
    textSize(500);
   // draw();

    }
    
    rotate(PI / 2);
}
