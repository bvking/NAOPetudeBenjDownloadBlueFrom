void phasePattern()
 { // need standard mode to be trigged
  textSize (100);

   // use with i, u, T
     if (key == '?' ) {
     specialPropagationKey = key ;
     } 
     if (key == ':' ) {
     specialPropagationKey = key ;
     } 
  
     if (key == '>' ) {
     specialPropagationKey = key ;
     } 
     if (key == '<' ) {
     specialPropagationKey = key ;
     } 
      

   


   if (key == 'i') {
      text ("phasePattern " ,-200+ width/2, height/2);
   }

   // text ( " net.naturalFrequency[0] " + net.naturalFrequency[0], -1100, 1000);
    //  text ( " net.naturalFrequency[1] " + net.naturalFrequency[1], -1100, 1100);
  //************************************ DONT TOUCH
    for (int i = 0; i < (networkSize); i++) { 
   if  (   key == 'J')  {
 // ActualVirtualPosition[i]=ActualVirtualPosition[i]+1600;
  }
  }

 if  (  keyMode == " phasePattern "  ) {
//  splitIncomingSignal();
//   text ( " oscillatorChangingPropagation " + oscillatorChangingPropagation, 200, 200 );
  if ( propagationLevel==1) {
 // key = 'f';
   }
   if ( propagationLevel==2) {
  //key = 'd';
     }
  }


 if  (   keyMode != " truc "  )
  {
  // if  (   keyMode == " trigEventWithAbletonSignal " || modeStartKeyToFollow == " followSignalSampledOppositeWay(frameRatio")
  // {
    //     text ( " YOU RELEASE IN PHASE PATTERN or PRESSED ", -200, -200);
    //     splitIncomingSignal();
         /*
         if (oscillatorChangingPropagation==true)  {key = 'f';}
         if (oscillatorChangingPropagation==false) {key = 'd';}
        */
    //     text ( " oscillatorChangingPropagation " + oscillatorChangingPropagation, 200, 200 );
      
     for (int i = 0; i < (networkSize); i++) { 
    {println (" metroOldPhase[i] " + metroOldPhase[i]+ " metroPhase " + metroPhase[i] );

      metroOldPhase[i]= metroPhase[i];
    //  OldFrequency[i]=  net.naturalFrequency[i];  //************************************ SET LAST FREQUENCIES as OLD FREQUENCIES
    }
   }
    //if  (   formerSartKey!= 'J')  
   if (key == 'W') { // follow mode. What is w?  (formerKey=='w')
    formerW();
    key ='#';
    //  pendular=5;
   }
                                                                                                                                                                                                                                                                                                                                                                                                                          

   //********** ********** ********** ********** ********** ********** ********** INCREASE FREQUENCIES in $ mode PENDULAR PATTERN
   //********** ********** ********** ********** ********** ********** ********** TRIG PATTERN SHIFTING IN KEYREASED

   if (keyCode == LEFT) {  
       k--;
         if (k<-8) { 
        k=8;
      } 

      oldMemoryi=memoryi;   
      memoryi--;
       if (memoryi<0) { 
        memoryi=networkSize-1;
      } 
      oscillatorBlocked--;
       if (oscillatorBlocked<0) { 
        oscillatorBlocked=networkSize-1;
      }

     // k= shiftingPhaseRatio USELESS?
      text (" k " + k + " oscBloc " + oscillatorBlocked + " oldM " + oldMemoryi + " mem " + memoryi, 500, 600);
    }
  

   if (keyCode == RIGHT) { 
       println("pendularPattern left INCREASE phase shifting"); // Incremente together without changing phases  
      k++;
      k=k%8;
    
    if (k>8) { 
      k=-8;
     }
     oldMemoryi=memoryi;
     memoryi++;
     memoryi%=networkSize; 

     oscillatorBlocked++;
     oscillatorBlocked%=networkSize; 

    text (" k " + k + " oscBloc " + oscillatorBlocked + " oldM " + oldMemoryi + " mem " + memoryi, 500, 600);
    } 


   if (key == '1') { 
    println("Set Frequencies to 1+ harmonic distance with maxim different between them "); // boost l'effet du case é 
    for (int i = 0; i < networkSize; i++) {
      net.naturalFrequency[i] =    1.2-((i+0)*(1.0*0.03));
      printSummary(i);
    }
    }
    if (key == '&') {
    println ("Opoosite of 1");
    for (int i = 0; i < networkSize; i++) {
      net.naturalFrequency[i]= ((i+1)*0.10);   // equivalent à     net.naturalFrequency[i] =1.2- (((networkSize-1)-i)*0.1 );
      printSummary(i);
      }
    } 
  
   else if (key == '2') { 
    println("2$ Set Frequencies to 2+ harmonic distance from F0 "); 
    for (int i = 0; i < networkSize-0; i++) {

      //       net.naturalFrequency[i] =    2.4-((i+0)*(1.0*0.2)); //   
      net.naturalFrequency[i]+=1.2-((i+0)*(1.0*0.1)); //F11 not affected if (i+1)
      // net.naturalFrequency[i]=(i+1)*0.24;  
      printSummary(i);
    }
  } 
  if (key == 'é') { // Move the frequencies one by one and a cross manner, mirror  //  0 to 9,  1 to 8, 2 to 7.....9 to 0 

    println (" Shift frequencies one by one 0 <-- 11. ");

    for (int i = 0; i < (networkSize+1); i++) { //networkSize
      print ("  number of shifting osc frequency " + i); 
  //    net.shiftFrequencies (4);
    }
   for (int i = 0; i < (networkSize); i++) { //networkSize
      // netPhaseBase[i]=netOldPhaseBase[(networkSize+1)-i];
    net.phase[i]=net.oldPhase[networkSize-1-i];
  //net.phase[i]=net.phase[networkSize-1-i];
     net.naturalFrequency[i]=OldFrequency[networkSize-1-i];
    }   

  } 
  
  
  else if (key == '3') {  
    println(" Set Frequencies to 3 + harmonic distance ");// boost l'effet 1  
    for (int i = 0; i < networkSize; i++) {  
      net.naturalFrequency[i]  +=  OldFrequency[i]/2;
      //    net.naturalFrequency[i]= 3.0-((i+0)*(3.0*0.1));
      // net.naturalFrequency[i]= 2.4-((i+0)*(2.4*0.1));

      printSummary(i);
    }
  } else if (key == '4') {  
    println(" Set Frequencies to 4 + harmonic distance from F0 "); 
    for (int i = 0; i < networkSize; i++) { 
      //   net.naturalFrequency[i]=(i+1)*(0.30*1); 
      //  net.naturalFrequency[i]=(i+1)*(0.24*1); 
      net.naturalFrequency[i]+=(i+1)*(0.24*1); 
      printSummary(i);
    }
  } else if (key == '5') {  
    println(" 5 : Minus frequency by F0 in CCW "); // good with 1 and 3
    for (int i = 0; i < networkSize; i++) {  
      // net.naturalFrequency[i] -=2.0-((i+0)*(2.0*0.1));
      net.naturalFrequency[i] -=1.0-((i+0)*(1.0*0.1));

      //**************** I have to try to be proportionnal with frequencies in case 1, 2, 3..

      printSummary(i);
    }
  } else if (key == '6') {  
    println(" 6 : Minus frequency by F9 in CCW"); // the bottom turns the most quickly on the CW way // good with 1 and 3
    for (int i = 0; i < networkSize; i++) { 

      //      net.naturalFrequency[i]-=(i+1)*0.20; 
      net.naturalFrequency[i]-=(i+1)*0.10; 
      printSummary(i);
    }
  } else if (key == '7') {  
    println(" 7 : Add frequency from F0(the front one) in CCW "); 
    for (int i = 0; i < networkSize; i++) { 
      //          net.naturalFrequency[i]+=2.0-((i+0)*(2.0*0.1));  
      net.naturalFrequency[i]+=1.0-((i+0)*(1.0*0.1));  
      printSummary(i);
    }
  } else if (key == '8') {  
    println(" 8:  Add frequency from F0(the front one) in CW "); 
    for (int i = 0; i < networkSize; i++) {
      //     
      net.naturalFrequency[i]+=(i+1)*0.10;  
      printSummary(i);
    }
  } else if (key == '°') {  
    println(" 8:  Add frequency from F0(the front one) in CW "); 
    for (int i = 0; i < networkSize; i++) {    
      net.naturalFrequency[i] =0;  
      printSummary(i);
    }
  }
  if (key == 'Q') { //Q$   
    println ("F1, F3, F5.. are multipied 2");
    for (int i = 0; i < (networkSize); i++) { 
      //   net.naturalFrequency[i]= net.naturalFrequency[0];
      int impair = 0;
      int impairmodulo;
      impairmodulo = (i+impair)%2;
      print ("impairmodulo "); 
      println (impairmodulo);
      if (impairmodulo==1) {
        net.naturalFrequency[i]= OldFrequency[i]*2;
        printSummary(i);
      }
    }
  } else if (key == 'q') {//q$    println ("F1, F3, F5.. are divided /2");
    for (int i = 0; i < (networkSize); i++) { 
      //   net.naturalFrequency[i]= net.naturalFrequency[0];
      int impair = 0;
      int impairmodulo;
      impairmodulo = (i+impair)%2;
      print ("impairmodulo "); 
      println (impairmodulo);
      if (impairmodulo==1) {
        net.naturalFrequency[i]= OldFrequency[i]/2;
        printSummary(i);
      }
    }
  }

  if (key == 'N') { //N$   println ("F1, F3, F5.. are divided /2");
    println ("FO, F2, F5.. are multipied 2");
    for (int i = 0; i < (networkSize); i++) { 
      //net.naturalFrequency[i]= net.naturalFrequency[0];
      int pair = 1;
      int pairmodulo;
      pairmodulo = (i+1)%2;
      print ("pairmodulo "); 
      println (pairmodulo);
      if (pairmodulo==1) {
        net.naturalFrequency[i]= OldFrequency[i]*2;
        printSummary(i); 
        key='#';
      }
    }
  }
  if (key == 'n') {//N$    println ("F1, F3, F5.. are divided /2");
    println ("FO, F2, F5.. are divided 2");
    for (int i = 0; i < (networkSize); i++) { 
      int pair = 1;
      int pairmodulo;
      pairmodulo = (i+1)%2;
      print ("pairmodulo "); 
      println (pairmodulo);
      if (pairmodulo==1) {
        net.naturalFrequency[i]= OldFrequency[i]/2;
        printSummary(i);
        key='#';
      }
    }
  }
  
   //    memoryi++;
   //   memoryi=(memoryi+1)%networkSize;

   if (key == 'T' && specialPropagationKey == ':') {  
    if ( net.naturalFrequency[memoryi]<0.25 ) 
    {
       // net.naturalFrequency[memoryi]=0.25; 
    }
     oldMemoryi=memoryi;  
     memoryi-=1;
  
    if ( memoryi<0) {
      memoryi=networkSize-1;
    } 

         if ( oldMemoryi-2<0) {
    //  oldMemoryi=networkSize-2;
      } 
   //  net.naturalFrequency[memoryi]=net.naturalFrequency[oldMemoryi];// placé avavnt les phases elles s'alignent // commenté ça les balles suivantes s'alignent à la balle 9 (la premiere qui tourne)
     net.phase[memoryi]=net.phase[oldMemoryi-0];
     net.naturalFrequency[memoryi]=net.naturalFrequency[oldMemoryi];

   }
   
  if (key == 'T' && specialPropagationKey == ':' ) {  
    if ( net.naturalFrequency[memoryi]<0.25 ) 
    {
      // net.naturalFrequency[memoryi]=0.25; 
    }
     oldMemoryi=memoryi;  
     memoryi-=1;

    if ( memoryi<0) {
      memoryi=networkSize-1;
    } 
     net.naturalFrequency[memoryi]=net.naturalFrequency[oldMemoryi-0]; // oldMemoryi
   }

   
  if (key=='t' && modeCircular)
   {  
    print (" stop previous frequency with memory t$"); // good with memory=9
      if ( net.naturalFrequency[memoryi]>0.25 ) 
    {
     net.naturalFrequency[memoryi]=0; // oldMemoryi
    }
     oldMemoryi=memoryi;   
     memoryi-=1;
    if ( memoryi<0) {
      memoryi=networkSize-1;
    }
  } 

   if (key=='t' && !modeCircular) {  
    print (" stop previous frequency with memory t$"); // good with memory=9
      if ( net.naturalFrequency[memoryi]>0.25 ) 
    {
     net.naturalFrequency[memoryi]=0; // oldMemoryi
    }

     oldMemoryi=memoryi;   
     memoryi-=1;
  
    if ( memoryi<0) {
      memoryi=networkSize-1;
    }
  } 

  if (key=='t' && !modeCircular) {  
    print (" average t$");
               
    for (int i = 0; i < (networkSize-0); i++) {          
      {
        net.phase[i]= averagePhase;  // order.heading() . from MacYntre library
        net.phase[i]= net.phase[i]%TWO_PI;
      } 
      printSummary(i);
    }
  }

  if (key == 'i') {  // memory == 0 is the ball "behind"  the screen

        oldMemoryi=memoryi;
        memoryi=(memoryi-1);
      
    if ( memoryi==-1) {
        memoryi=networkSize-1;
        oldMemoryi=0;
    }
  
     for (int i = 1; i < (networkSize-0); i++) {  

       net.phase[i-1]= net.oldPhase[i];
         //   netPhaseBase[i-1]= net.oldPhase[i];
       net.naturalFrequency[i-1]= net.naturalFrequency[i];
         //   net.phase[i]= net.phase[i+1];// net.oldPhase[i] keep phase at    
         //    netPhaseBase[i]= netPhaseBase[i+1];// net.oldPhase[i] keep phase at    
         //    net.naturalFrequency[i]= net.naturalFrequency[i+1];
     }

       net.phase[networkSize-1]=  net.oldPhase[0];
        //  netPhaseBase[networkSize-1]=  net.oldPhase[0];
        //      net.naturalFrequency[networkSize-1]= OldFrequency[0]; // it stop former ball
       net.naturalFrequency[networkSize-1]= net.naturalFrequency[0]; 
       }

  if (key == 'I') {  // memory == 0 is the ball "behind"  the screen

        oldMemoryi=memoryi;
        memoryi=(memoryi-1);

    if (memoryi==-1) {
        memoryi=networkSize-1;
        oldMemoryi=0;
     }

     
      net.phase[networkSize-1]=  net.oldPhase[0];
      net.naturalFrequency[networkSize-1]= 0; // stop frequency one by one
      
  
     for (int i = 1; i < (networkSize-0); i++) {  
       net.phase[i-1]= net.oldPhase[i];
       net.naturalFrequency[i-1]= 0;
     }

       formerFormerKey= 'I';
   }




   if (key == 'U') {  // memory == 0 is the ball "behind"  the screen

      oldMemoryi=memoryi;
      memoryi=(memoryi+1);
      memoryi%=networkSize;

  
     for (int i = 1; i < (networkSize-0); i++) {  
       net.phase[i]=net.oldPhase[i-1];       
       net.naturalFrequency[i]= 0;
     }
       net.phase[0]= net.oldPhase[networkSize-1];
       net.naturalFrequency[0]= 0;
       formerFormerKey='U';
   } 


     

 
     


  if (key == 'u'  ) { 
 text (" SHIFT PHASE  the previous oscillator", 200, 300); // && modeCircular == false
     oldMemoryi=memoryi;
      memoryi=(memoryi+1);
      memoryi%=networkSize;
    
    

    net.shiftPhases(1); 
    net.shiftFrequencies(1); 

 /*     
    oldMemoryi=memoryi;
    memoryi=(memoryi+1)%networkSize;

    if ( memoryi<=0) {
      memoryi=0;
    }

    for (int i = 1; i < (networkSize-1); i++) {
      net.phase[i+1]= net.oldPhase[i];// net.oldPhase[i] keep phase at 0
   //   netPhaseBase[i+1]= net.oldPhase[i];// net.oldPhase[i] keep phase at 0
      net.naturalFrequency[i+1]= OldFrequency[i];
   //   netPhaseBase[i]= net.oldPhase[i-1];// // useless
      net.naturalFrequency[i]= OldFrequency[i-1]; // useless

      printSummary(i);
    }
    netPhaseBase[0]=  netOldPhaseBase[networkSize-1];
     net.phase[0+1]= net.oldPhase[0];
    net.naturalFrequency[0]= OldFrequency[networkSize-1];
    netPhaseBase[networkSize-1]=  netOldPhaseBase[networkSize-1-1]; // useless
     net.phase[networkSize-1]= net.oldPhase[networkSize-1-1];
    net.naturalFrequency[networkSize-1]= OldFrequency[networkSize-1-1];// // useless
  } 
*/
 } 

   if (key == 'U' && specialPropagationKey == '?' && modeCircular) { 
      net.shiftPhases(1);
      for (int i = 0; i < (networkSize-0); i++) { 
     net.phase[i]+=PI/20*(0+1);
     net.phase[i]%=PI;
      }
    }

  
   if (key == 'U' && specialPropagationKey == '?' && !modeCircular) { // 
      text ( " key " + key + " " + specialPropagationKey,  0, 500 );
         for (int i = 1; i < (networkSize-0); i++) {  

       metroPhase[i]= metroOldPhase[i-1];
       println ( i + "sifted  metroOldPhase[i] " + metroOldPhase[i]+ " metroPhase " + metroPhase[i] );

         //   netPhaseBase[i-1]= net.oldPhase[i];
       net.naturalFrequency[i-1]= net.naturalFrequency[i];
         //   metroPhase[i]= metroPhase[i+1];// net.oldPhase[i] keep phase at    
        //    netPhaseBase[i]= netPhaseBase[i+1];// net.oldPhase[i] keep phase at    
        //    net.naturalFrequency[i]= net.naturalFrequency[i+1];
     }

       metroPhase[0]=  metroOldPhase[networkSize-1];
       //  netPhaseBase[networkSize-1]=  net.oldPhase[0];
       net.naturalFrequency[networkSize-1]= OldFrequency[0];
       //    net.naturalFrequency[networkSize-1]= net.naturalFrequency[0]; 
     
    //  net.shiftPhases(1);
      for (int i = 0; i < (networkSize-0); i++) { 
      metroPhase[i]+=PI/20*(0+1);
      }
    }
  




  if (key == 'U' && specialPropagationKey == '<') { 
          text ( " key " + key + " " + specialPropagationKey,  0, 500 );

      net.shiftPhases(1);
      for (int i = 0; i < (networkSize-0); i++) { 
     net.phase[i]+=PI/20*(0+1);

    }
  
    oldMemoryi=memoryi;
    memoryi=(memoryi+1)%networkSize;

    if ( memoryi<=0) {
      memoryi=0;
    }
    for (int i = 0; i < (networkSize-1); i++) {

       netOldPhaseBase[i+1]=netPhaseBase[i];
    //   netPhaseBase[i]= map (net.phase[i], 0, TWO_PI, 0, 6400 ); // +dataMappedForMotorisedBigMachine[i]     
     // net.naturalFrequency[i+1]= net.naturalFrequency[i];

      lastActualPosition[i]+=netOldPhaseBase[i+1];
     //lastActualPosition[i]+=netPhaseBase[i];
     
      // ActualVirtualPosition[i+1]= ActualVirtualPosition[i+1]+1600;U

      printSummary(i);
    }

    //   ActualVirtualPosition[2]= ActualVirtualPosition[networkSize-1];
    //   net.naturalFrequency[2]= net.naturalFrequency[networkSize-1];

           netOldPhaseBase[networkSize-1]=netPhaseBase[0];
       //   netPhaseBase[0]= map (net.phase[0], 0, TWO_PI, 0, 6400 ); //+ lastActualPosition[0] +dataMappedForMotorisedBigMachine[0]
         
        //   lastActualPosition[0]+=netPhaseBase[0];
         lastActualPosition[0]+=netOldPhaseBase[0];

           text ("U$<  add phase from the previous oscillator " + lastActualPosition[0] , 200, 200); // && modeCircular == false

       for (int i = 0; i < (networkSize-0); i++) { 
    // net.phase[i]+=PI/20*(i+1);
    // net.phase[i]%=TWO_PI;
      netPhaseBase[i]=net.phase[i];
    }
  }

     boolean repeatU = true;


     if (millis() > propagationTimeElapsed+200 && specialPropagationKey == '>') {
     if (formerKey == 'I' )  {  //|| repeatU
    
      // net.shiftPhases(1);
         for (int i = 0; i < (networkSize-0); i++) { 
     //  netOldPhaseBase[i]=netPhaseBase[i]-0/8;
     //  netPhaseBase[i]+=netPhaseBase[i]+PI/8;
      
     //  net.phase[i]=netPhaseBase[i];

         net.phase[i]=net.oldPhase[i];
         netPhaseBase[i]=net.oldPhase[i];
   
    }
 
           oldMemoryi=memoryi;
           memoryi=(memoryi+1)%networkSize;

    if ( memoryi<=0) {
        memoryi=0;
    }
        netOldPhaseBase[networkSize-1]=netPhaseBase[0];
     
    for (int i = 0; i < (networkSize-1); i++) {

       netOldPhaseBase[i+1]=netPhaseBase[i];
    //   netPhaseBase[i]= map (netPhaseBase[i], 0, TWO_PI, 0, 6400 ); // +dataMappedForMotorisedBigMachine[i]
      // net.phase[i]=map (netPhaseBase[i], 0, 6400, 0, TWO_PI ); // just to display
      // net.phase[i]%=TWO_PI;
     // net.naturalFrequency[i+1]= net.naturalFrequency[i];
      //**   net.naturalFrequency[2]= OldFrequency[networkSize-1];
      //  VirtualPosition[i]=VirtualPosition[i+1];
      lastActualPosition[i]+=netOldPhaseBase[i+1];
     //lastActualPosition[i]+=netPhaseBase[i];

     
      // ActualVirtualPosition[i+1]= ActualVirtualPosition[i+1]+1600;U
      //  

      printSummary(i);
    }

    //   ActualVirtualPosition[2]= ActualVirtualPosition[networkSize-1];
    //   net.naturalFrequency[2]= net.naturalFrequency[networkSize-1];

      //**     netOldPhaseBase[networkSize-1]=netPhaseBase[0];
       //   netPhaseBase[0]= map (net.phase[0], 0, TWO_PI, 0, 6400 ); //+ lastActualPosition[0] +dataMappedForMotorisedBigMachine[0]
       //   netPhaseBase[0]= map (netPhaseBase[0], 0, TWO_PI, 0, 6400 ); // +dataMappedForMotorisedBigMachine[0]
       //   net.phase[0]=map (netPhaseBase[0], 0, 6400, 0, TWO_PI ); // just to display
       //   net.phase[0]%=TWO_PI;
         
        //   lastActualPosition[0]+=netPhaseBase[0];
         lastActualPosition[0]+=netOldPhaseBase[0];

           text ("I$ >  add phase from the previous oscillator " + lastActualPosition[0] , 200, 200); // && modeCircular == false

  }
       for (int i = 0; i < (networkSize-0); i++) { 
     // netOldPhaseBase[i]=netPhaseBase[i]-0/8;
    //  netPhaseBase[i]+=netPhaseBase[i]+PI/8;
      
    //  net.phase[i]=netPhaseBase[i];
    //  net.phase[i]+=netOldPhaseBase[i];

      net.phase[i]=netOldPhaseBase[i];
   
    }
         propagationTimeElapsed= millis();
        // key = 'U'; keyReleased();

          text (propagationTimeElapsed + "U$ AGAIN " + " repeatU " + repeatU + " " + lastActualPosition[0] , 200, 400); // && modeCircular == false
    }  
  

  if (key == 'J') { 
    println ("J$  Shift frequencies -> one by one by keeping last position switched and divide /2");// based on i
    for (int i = 0; i < (networkSize-0); i++) {    

      net.phase[i]+= QUARTER_PI/(10);
      printSummary(i);
    }
  }  

  if (key == 'K') { //K$ invisible
    println ("I$ Shift frequencies -> one by one by keeping last position switched and divide /2");// based on i
    for (int i = 0; i < (networkSize-0); i++) {    

      //     net.phase[i]-= QUARTER_PI/(10);
          net.phase[i]-=QUARTER_PI/4;
       // net.phase[i]=net.phase[i]-QUARTERK_PI;
     // ActualVirtualPosition[i]+=0;  

      /*
        ActualVirtualPosition[i]=ActualVirtualPosition[i]+numberOfStep/3*i;
       ActualVirtualPosition[i]=ActualVirtualPosition[i]%numberOfStep;
       ActualVirtualPosition[i]+=ActualVirtualPosition[i];
       
       //*****
       
       ActualVirtualPosition[i]=ActualVirtualPosition[i]+numberOfStep/3*i;// less conventional than numberOfStep/6*i
       ActualVirtualPosition[i]+=ActualVirtualPosition[i]%numberOfStep;
       ActualVirtualPosition[i]=ActualVirtualPosition[i]%numberOfStep*5;
       */

    //  ActualVirtualPosition[i]=ActualVirtualPosition[i]+numberOfStep/8;

      printSummary(i);
    }
  } 


  if (key == 'L') { 
    println ("L$  Shift frequencies -> one by one by keeping last position switched and divide /2");// based on i
    for (int i = 0; i < (networkSize-0); i++) {    
      //   net.phase[i]+= PI/(20+i);
      //    net.phase[i]+= PI/(i+1)/10; // good
      //  automatiseWithNote();
      printSummary(i);
    }
  }    



  if (key == 'l') { 
    println ("l$  Shift frequencies <- one by one by keeping last position switched and multipied *2"); // based on u || key == 'L'

    // autoNote1();
    for (int i = 0; i < (networkSize-0); i++) { 
      //   net.phase[i]+= PI/(20+(networkSize-1-i));
      //   net.phase[i]+= PI/(networkSize-0-i)/10; // good
      //   automatiseWithNote();
    }
  }     

  if (key == 'c') { 
    println ("c$  Shift frequencies <- one by one by keeping last position switched and multipied *2"); // based on i$ || key == 'L'
    // net.shiftFrequencies(1);  net.shiftPhases(-1);
    formerKey = 'c';
  }
 
  if (key == 'X') { //trigx
    println (" Shift phase and frequencies  as a upstairx, based on x RECORD interphase when x Keyreleased"); // based on i$ || key == 'L'
    //   interPhase[memoryi]= metroPhase[memoryi];
    interPhase[memoryi]= net.phase[memoryi];

    interPhaseCircular[memoryi]= net.phase[memoryi];
    interFrequency[memoryi]= net.naturalFrequency[memoryi]; 
    formerKey='X'; // to trig directly, before the next frame
  } 
  if (key == 'x') { //trigx
    println (" Shift phase and frequencies  as a DOWNSTAIRx, based on w RECORD interphase when w Keyreleased"); // based on i$ || key == 'L'
    //   interPhase[memoryi]= metroPhase[memoryi];
    interPhase[memoryi]= net.phase[memoryi];

    interPhaseCircular[memoryi]= net.phase[memoryi];
    interFrequency[memoryi]= net.naturalFrequency[memoryi]; 
    formerKey='x'; // to trig directly, before the next frame
  } 
  if (key == 'W') { //trigW
    println (" Shift phase and frequencies  as a upstairW, based on x RECORD interphase when x Keyreleased"); // based on i$ || key == 'L'
    //   interPhase[memoryi]= metroPhase[memoryi];
    interPhase[memoryi]=  (net.phase[memoryi]);

    interPhaseCircular[memoryi]=  (net.phase[memoryi]);
    interFrequency[memoryi]= net.naturalFrequency[memoryi]; 
    formerKey='W'; // to trig directly, before the next frame
  } 
  if (key == 'w' ) { //trigw   || key== 'O'
    println (" Shift phase and frequencies  as a DOWNSTAIRw, based on w RECORD interphase when w Keyreleased"); // based on i$ || key == 'L'
    //   interPhase[memoryi]= metroPhase[memoryi];
    interPhase[memoryi]=  (net.phase[memoryi]);

    interPhaseCircular[memoryi]= abs (net.phase[memoryi]);
    interFrequency[memoryi]= net.naturalFrequency[memoryi]; 
    formerKey='w'; // to trig directly, before the next frame
  } 


  if (key == 'v') { //TRIGGERV
    println ("v$  Shift OSCILLATOR WHEN POSITION MATCH   "); // based on i$ || key == 'L'
    formerKey='v';
    ///    formerKeyv();
  } 

  if (key == 'V'  ) { //&& keyCode== SHIFT
    println ("V$  Shift frequencies <- Two by one by keeping last position switched and multipied *2"); // based on i$ ||
    formerKey = 'V';
    //    formerKeyv();
  } 
  /*
    if (key == 'x') { 
   println ("x$  FOLLOW OSCILLATOR 11"); // based on  ||
   //if ( formerKey == 'l') { println ("L$  Shift frequencies <- one by one by keeping last position switched and multipied *2"); // based on u || key == 'L'
   formerKey = 'x';
   //    formerKeyL();
   } 
   */

  if (key == 'i') { 
    println ("= c$+I$  Shift frequencies -> one by one by keeping last position switched");
    formerKey = 'i';
  }  

  //**************************************************PLAY WITH PHASES

  if (key == 'k') { //  Shift frequencies one by one.  //  2 to 11,  3 to 10, 4 to 9.....11 to 2 
    println (" MIROR ? k$ Shift phase one by one 9 <-- 0. ");
    for (int i = (networkSize-1); i >= 0; i--) {
      lastActualPosition[i]= lastActualPosition[i]+800;
      
     // netPhaseBase[i]=netOldPhaseBase[(networkSize+1)-i];
     // net.naturalFrequency[i]=OldFrequency[(networkSize+1)-i];
    }   
   // netPhaseBase[0]=netOldPhaseBase[(networkSize-1)];
   //  net.naturalFrequency[0]=OldFrequency[(networkSize-1)];
    
  }

  
    if (key == 'A') { //A$  Shift frequencies one by one. 
    float speeed    = map ((float (mouseY)/width*1.0), 0, 1, -4.68, 4.68); 
    for (int i = 0; i < networkSize; i++) {
    //  net.naturalFrequency[i]=OldFrequency[i]; 
      printSummary(i);
    }
    //**memoryi=0; // to start well with 'T'
    //**memoryi=networkSize-1; // to start well with 'T'
    net.naturalFrequency[memoryi]= 0.25;//4.68/2; // 124 bpm
  }

  if (key == 'a') { //A$  Shift frequencies one by one. 
    oldMemoryi=memoryi;
    memoryi++;
    memoryi%=networkSize;
    net.naturalFrequency[memoryi]= net.naturalFrequency[oldMemoryi];
   // net.naturalFrequency[memoryi]= 4.68/2/2/2/2;      //4.68/2; // 124 bpm  4=108 bpm
   // net.naturalFrequency[memoryi]=pow(4, -2);
  }


  if (key == 'Z') { 
    println (" Z$  Divide frequencies F11 by 12/2, F9 by 10/2 and, F7 by 8/2 so on. ");// fonctionne si F11=X et les autres vont à la meme vitesse
    // " Z$  Divide frequencies F1 by 12/2, F3 by 10/2 and, F5 by 8/2, F7 by 6/2, F9 by 4/2, F11 by 2/2 so on. ");// fonctionne si F11=X et les autres vont à la meme vitesse
    float speeed    = map ((float (mouseY)/width*1.0), 0, 1, -2, 2);

    //    net.naturalFrequency[i]= OldFrequency[networkSize-1]; 

    net.naturalFrequency[networkSize-1]= OldFrequency[networkSize-1]; 
    //    net.naturalFrequency[networkSize-1]= 4;

    //    net.naturalFrequency[networkSize-3]= OldFrequency[networkSize-1]/2; 

    // affecting only F1, F3...
    for (int i = 0; i < (networkSize); i++) { 
      //    net.naturalFrequency[i]=  net.naturalFrequency[networkSize-1];

      //   net.naturalFrequency[i]= net.naturalFrequency[0];
      int pair = 0; // impair

      int pairmodulo;
      pairmodulo = (i+pair)%2;
      //     print ("pairmodulo "); println (pairmodulo);
      if (pairmodulo==1) {
        //    if (i%1==0){
        // net.naturalFrequency[i]=  net.naturalFrequency[networkSize-1]/(i+1); // du plus haut au plus bas
        // net.naturalFrequency[networkSize-i]= net.naturalFrequency[networkSize-1]/((i+1)/2.0);
        // " Z$  Divide frequencies F1 by 12/2, F3 by 10/2 and, F5 by 8/2, F7 by 6/2, F9 by 4/2, F11 by 2/2 so on. ");// fonctionne si F11=X et les autres vont à la meme vitesse
        //    divideFrequency[networkSize-i] = net.naturalFrequency[networkSize-1]/((i+1)/2.0);
        //   divideFrequency[networkSize-i] = net.naturalFrequency[networkSize-1]/((i+1)/(8.0/12.0));


        //      net.naturalFrequency[networkSize-i]= net.naturalFrequency[networkSize-1]/((i+1)/2.0);

        //*********************
        //        divideFrequency[networkSize-i] = net.naturalFrequency[networkSize-1]/((i+1)/(12/8.0));
        //      net.naturalFrequency[networkSize-i]=  divideFrequency [networkSize-i];

        print(" ");  
        print (i); 
        print ("  Oscillator pair : "); 
        print (networkSize-i-1); 
        print (" affected by the division: "); 
        print  ((i+1)/(12/8.0)); // Oscillator 0 when i=11 Oscillator 10 when i = 1;
        //      printSummary(networkSize-i);
      }
    }
    println (" ");
    // affecting only F0, F2.. divied with 7,6.. and F10 divided with 2 

    for (int i = 0; i < (networkSize); i++) { 
      //net.naturalFrequency[i]= net.naturalFrequency[0];
      int pair = 1;
      int pairmodulo;
      pairmodulo = (i+1)%2;
      //     print ("pairmodulo "); println (pairmodulo);
      if (pairmodulo==1) {
        //     net.naturalFrequency[networkSize-0-i]= net.naturalFrequency[networkSize-1]/((i+1)/2.0); // (multipild F11 of 2)

        //       net.naturalFrequency[networkSize-i-2]= net.naturalFrequency[networkSize-1]/((i+4)/2.0); // (multipild F11 of 2) bug 

        //*********
        //          divideFrequency[networkSize-i-1] = net.naturalFrequency[networkSize-1]/((i+0.75)/(12/8.0));
        //           net.naturalFrequency[networkSize-i-1]=  divideFrequency [networkSize-i-1];

        //          print(" ");  print (i); print ("Oscillator impair : "); print (networkSize-i-1); print ("  affected by the division: "); println ((i+0.75)/(12/8.0));  //Oscillator 1 it's i=10  Oscillator 11 it's i= 0
        //        printSummary(networkSize-i-1);
        //       printSummary(i);
      }
    }
  }
  if (key == 'z') {  
    println ("//z$  Shift frequencies one by one") ;
    float speeed    = map ((float (mouseY)/width*1.0), 0, 1, -2, 2);
    net.naturalFrequency[networkSize-1]= OldFrequency[networkSize-1]/1; 

    for (int i = 2; i < (networkSize-0); i++) { 
      //    for (int i = networkSize-2; i > -1; i--) { 
      //   net.naturalFrequency[i]= net.naturalFrequency[0];
      int pair = 0;
      if (pair==(i+1)%2) {
        //    if (i%1==0){
        //    net.naturalFrequency[i]=  net.naturalFrequency[networkSize-1]/(i+1);
        //  net.naturalFrequency[networkSize-0-i]= net.naturalFrequency[networkSize-1]/((((i/2)*1)));
        net.naturalFrequency[networkSize-i]= net.naturalFrequency[networkSize-1]/((i+1)/2.0);
        print (i);
        printSummary(i);
      }
    }
  }
  /*
        if (key == 'a') { // a$
   print("a");  println ("Incremente Same offset of phases 12hit");    
   for (int i = 0; i < networkSize; i++) { 
   net.phase[i] += (TWO_PI/(networkSize/1))*(i+1); // TRES BIEN 
   net.phase[i]=  net.phase[i]%TWO_PI; //
   printSummary(i);
   }
   } 
   */
   
 //} //ENDFORMERSARTKEYJ
 

  if (key == 'e') { 
    println ("Incremente positions  12/3 hit");  //e$
   // formerKeyCode = CONTROL;
    for (int i = 0; i < networkSize; i++) {    
      //    net.phase[i] -= (QUARTER_PI/(networkSize-0))*(i+1); // TRES BIEN

      net.phase[i] += ((TWO_PI/(networkSize/1))*(i+1)); // TRES BIEN  ==     net.phase[i] += (i+1)*TWO_PI/4; //4hit  ==   net.phase[i] +=  (i+1)*3.5*PI; 
      net.phase[i] = net.phase[i] % TWO_PI; // TRES BIEN

      printSummary(i);
      key ='#'; keyReleased();
    }
  }  



  if (key == 'E') {   
    print ("Add 2PI/3: PENDULAR $ 3 HIT TO COME BACK" );  print (" Add 2PI/3: PENDULAR $ 3 HIT TO COME BACK" ); //e$
    print ("FormerkeyMetro"); 
    print (char(formerKeyMetro));
    print ("keyNow"); 
    println (char(key));
    for (int i = 0; i < networkSize; i++) {
      //  netOldPhaseBase[i] += (i+1)*4%TWO_PI; 
      //   netPhaseBase[i] +=  (i+1)*3*PI;  // one on two move an offset of PI
      
     // net.phase[i] += (i+1)*TWO_PI/3; //3hit  <=>   net.phase[i] += (i+1)*TWO_PI/1.5; 
     
        net.phase[i] -= (i+1)*TWO_PI/(networkSize+networkSize/2); //3hit  <=>   net.phase[i] += (i+1)*TWO_PI/1.5; 
        key ='#';// keyReleased();
    }
  }



  /*
     if (key == 'w')  {   println ("Add PI/3 : 12HIT : Clock Wise"); //w$
   
   for (int i = 0; i < networkSize; i++) {
   
   net.phase[networkSize-1-i] -= (i*TWO_PI/10)%PI/3;    //PAS TOUCHER 
   net.phase[i]=  net.phase[i]%TWO_PI;
   }     
   }
   */
  if (key == 'r') {
    println ("Soubstract PI/6 PENDULAR $"); // R$ +1.5*HALF_PI; 
    text ("Soubstract PI/6 PENDULAR $", 0,200); // R$ +1.5*HALF_PI; 


    for (int i = 0; i < networkSize; i++) {
      //   net.phase[i] += (i+1) *(TWO_PI/12); // 12 hit

      //    net.phase[i] +=  -(i+2)%PI/6; // mieux
    
      // net.phase[i] += (i*TWO_PI/5)%PI/(networkSize); // pas en mode circular ? 

     // net.phase[i] += (i*TWO_PI/networkSize)%PI/(networkSize*4); // pas en mode circular ? 

      net.phase[networkSize-1-i] += (i*TWO_PI/3)%PI/10;    //PAS TOUCHER
         if (formerKeyMetro=='$'){
        net.phase[i]%=TWO_PI;
      }

    // net.phase[i] += (i*TWO_PI/10/5); //  en mode circular?

      //    net.phase[i] -=  +(i+1)%PI/6;

     // net.phase[i]=  net.phase[i]%(TWO_PI/1) ; // bien en pendulaire?
 
      printSummary(i);
    }
  }


  if (key == 'R') {
    println ("Add PI/6 PENDULAR $ without move 11, 8, 5"); // R$
    for (int i = 0; i < networkSize; i++) {
      //   net.phase[i] += (i+1) *(TWO_PI/12); // 12 hit
      
      //   net.phase[networkSize-1-i] += (i*TWO_PI/3)%PI/11;    //PAS TOUCHER
   //   net.phase[i] -= (i*TWO_PI/5)%PI/5;
          net.phase[i] -= (i*TWO_PI/networkSize)%PI/(networkSize*3); // OK en mode circular ? 
             if (formerKeyMetro=='$'){
        net.phase[i]%=TWO_PI;
      }


      //   net.phase[networkSize-1-i] += (i*TWO_PI/3)%PI/10;    //PAS TOUCHER
      //    net.phase[networkSize-1-i] += (i*TWO_PI/3)%TWO_PI/10;    //PAS TOUCHER // ne va pas avec P
      //     net.phase[networkSize-1-i] += (i*TWO_PI/3)%TWO_PI/11;    //PAS TOUCHER


      //   net.phase[i] += (1*TWO_PI/(11-i+1))%PI/6;
      //   net.phase[i]  += ((PI/(networkSize/6))*(i+1))%PI/3; // OK
      //   net.phase[i]  +=  net.phase[i] +(PI/((networkSize-i/12))*(i+1))%PI/12; // OK


     // netPhaseBase[i]=  netPhaseBase[i]%TWO_PI;
      //   netOldPhaseBase[i]=  netPhaseBase[i];
      printSummary(i);
    }
    // }
  }

   else if (key == 's') {  // g0 reciproque s1
  //  println(" s$s: Reduce the gap between phases by f0 "); //S$
    for (int i = 0; i < networkSize-0; i++) {

      //  net.phase[i] -=(9-i)*0.05;
      //   net.phase[i] -=(networkSize-1-i)*0.05; // oscillator 11 do not move

      // g0 reciproque s0 avec networkSize-1
      net.phase[i] -= (networkSize-1- oscillatorBlocked-i)*0.05; // if oscillatorBlocked=0; net.phase[5] doesn't move
    //  net.phase[i]=  net.phase[i]%TWO_PI;

      printSummary(i);
    }
  }

  // RECIPROQUE DE s ?
  //   net.phase[i]+= (PI/8/(networkSize-2))*(1*(networkSize-1-i)); // TWOPI/10--> 10 hit * 3%PI/3 with and oscillator11 not affected
  //   net.phase[i]%= TWO_PI;

  
  
   else if (key == 'S') { 
  //  println(" S$: Reduce the gap between phases by f0  ");    
    for (int i = 0; i < networkSize; i++) {      
      //   net.phase[i] -=(networkSize-1-i)*0.1;
      //   net.phase[i]=  net.phase[i]%TWO_PI;
         net.phase[i] += (networkSize- oscillatorBlocked-i)*0.01;
      //***    net.phase[i]=  net.phase[i]%TWO_PI;
      printSummary(i);
    }
  }

   else if (key == 'g') { 
   // println(" Decrease the gap between phases of 5% from the oscillator " + oscillatorBlocked + " called with the same number as memoryi " + memoryi   );  
    for (int i = 0; i < networkSize; i++) {
      //       net.phase[i] -=i*0.01;
      //         net.phase[i] -=i*0.05;

      net.phase[i] -=      (oscillatorBlocked+i)*0.05;       //if oscillatorBlocked=0; net.phase[0] doesn't move
    //  net.phase[i]=  net.phase[i]%TWO_PI;
      
    }
  }
   else if (key == 'G') { 
   // println(" G: Decrease the gap between phases by f9 ");  
    for (int i = 0; i < networkSize; i++) {
      //       net.phase[i] -=i*0.01;
    //  net.phase[i] -=i*0.1;
       net.phase[i] -= (networkSize- oscillatorBlocked-i)*0.01;
    //  net.phase[i]=  net.phase[i]%TWO_PI;
      printSummary(i);
    }
  }


  else if (key == 'd') {
    println(" d$: INCREASE (clock way) the gap between phases of 5% from the oscillator " + oscillatorBlocked + " called with the same number as memoryi " + memoryi );
    for (int i = 0; i < networkSize; i++) {

    //  net.phase[i] +=(oscillatorBlocked-i)*0.05; // oscillator 10 do not nove
        net.phase[i] +=(i+1)*0.05;

   //     net.phase[i] -=(i+1)*0.05;
    //        net.phase[i] +=(5-i)*0.1; // oscillator 10 do not nove
   //   net.phase[i] +=(networkSize-oscillatorBlocked)*0.05;
    //%%  net.phase[i] = net.phase[i]-(i)*0.05; //oscillatorBlocked;      //     net.phase[i] += (oscillatorBlocked+i)*0.05; reciproque de f ne fonctionne pas
   //   net.phase[i] =  net.phase[i]%TWO_PI;
      key='#';
      printSummary(i);
    }
  }
  
  else if (key == 'D') { 
    println(" D$: Increase the gap between phases by f0  ");    
    for (int i = 0; i < networkSize; i++) {

    //  net.phase[i] +=(oscillatorBlocked-i)*0.1;
    //   net.phase[i] -=(i+1)*0.1;
        net.phase[i]+=   TWO_PI/networkSize/(networkSize)*(networkSize-1-i); // front  TWO_PI/8/(networkSize)*(i)   behind?
   //   net.phase[i] =  net.phase[i]%TWO_PI;
      printSummary(i);
    }
  }
  /*
    else if (key == 'x') {//x$
   formerKey= 'x';
   fmemory+=f;
   for (int i = 0; i < networkSize-1; i++) {
   
   print ("f: "); 
   println (f);
   
   abstractPhase[networkSize-2-i] += net.oldPhase[networkSize-1]+(i*TWO_PI/3)%PI/12;
   
   net.phase[i]=  abstractPhase[networkSize-2-i]%TWO_PI;
   
   //    printSummary(i);
   
   
   print ("fmemory: "); 
   println (fmemory);
   
   //  key='#';
   }
   
   println(" Increase the gap  fmemory between phases by f9 ");
   
   } 
   */
    else if (key == 'f') { 
    println(" F: Increase the gap between phases by f9 ");    
    for (int i = 0; i < networkSize; i++) {

      //  net.phase[i] +=(i+1)*0.05;
      //    net.phase[i] +=(i+1)*0.005;
      //  net.phase[i] += (oscillatorBlocked+i)*0.05;  // l'oscillateur ne se bloque pas
   //   net.phase[i] -= (networkSize- oscillatorBlocked-i)*0.05;

       net.phase[i] +=(i+1)*0.05;

   //   net.phase[i]=  net.phase[i]%TWO_PI;
      key='#';
      printSummary(i);
     }
     }

    else if (key == 'F') { 
    println(" F: Increase the gap between phases by f9 ");    
    for (int i = 0; i < networkSize; i++) {

     //   net.phase[i] +=(i+1)*0.1;
    //  net.phase[i] +=TWO_PI/8/(networkSize-1)*i; // 8 is the step, if 16 little step
     net.phase[i] +=TWO_PI/12/(networkSize-1)*i; // 8 is the step, if 16 little step  //BEHIND
    //        net.phase[i]+=   TWO_PI/(networkSize)/(networkSize+0)*(networkSize-1-i); // front 

   //   net.phase[i]=  net.phase[i]%TWO_PI;
      key='#';
      printSummary(i);
    }
    }

    else if (key == 'p') {
    text ("DECREASE  phases with special modulo    ", 200, 200); //P$ // UTILISE SI ELLES ONT deja un ecart equidistant
    for (int i = 0; i < networkSize; i++) {  

      net.phase[i]-= ((TWO_PI/(networkSize-2))*(1*(networkSize-1-i)))%PI/6; // 
      if (formerKeyMetro=='$'){
        net.phase[i]%=TWO_PI;
      }
    //  net.phase[i]=  net.phase[i]%TWO_PI;
      key='#';
      printSummary(i);
    }
   }

    
    else if (key == 'P') { 
       text ("INCREASE phases with special MODULO   ", 200, 200); //P$ 
    for (int i = 0; i < networkSize; i++) {

      //     net.phase[i]+=   (TWO_PI/(networkSize-2))*(1*(networkSize-1-i)); // TWOPI/10--> 10 hit and oscillator11 not affected thanks to -1 in second part of equation

      //  net.phase[i]+=   (TWO_PI/(networkSize-2))*(1*(networkSize-3-i)); // TWOPI/10--> 10 hit and oscillator9 not affected thanks to -3 in second part of equation 

      //  net.phase[i]+=   (TWO_PI/(networkSize-2))*(1*(networkSize-1-i))%PI/3; // TWOPI/10--> 10 hit * 3%PI/3 with and oscillator11 not affected

      //  net.phase[i]+=   TWO_PI/(networkSize*2)*(1*(networkSize-1-i)); // 20 hit? hit

        net.phase[i]+=   (TWO_PI/(networkSize-0))*(1*(networkSize-1-i)); //  10 hit but problem with counter
           if (formerKeyMetro=='$'){
        net.phase[i]%=TWO_PI;
      }

      //     net.phase[networkSize-1-i] += (i*TWO_PI/10)%PI/3;  // 10*3 hit//same effect as above 
     //  net.phase[i]=  net.phase[i]%TWO_PI;
     formerKeyCode= CONTROL;
      key='#';
      printSummary(i);
    }
   }

    else if (keyCode == CONTROL) { 
     text ("INCREASE phases with special CONTROL   ",  200, 200); //P$ 

    for (int i = 0; i < networkSize; i++) {

    //  net.phase[i]+=   (TWO_PI/(networkSize-2))*(1*(networkSize-1-i)); // TWOPI/10--> 10 hit and oscillator11 not affected thanks to -1 in second part of equation
    //  net.phase[i]+=   (TWO_PI/(networkSize-2))*(1*(networkSize-3-i)); // TWOPI/10--> 10 hit and oscillator9 not affected thanks to -3 in second part of equation 
    //** net.phase[i]+=   (TWO_PI/(networkSize-2))*(1*(networkSize-1-i)); // TWOPI/10--> 10 hit * 3%PI/3 with and oscillator11 not affected

     net.phase[i]+= (TWO_PI/(networkSize-0))*(1/1*(networkSize+1-i)); // TWOPI/10--> 10 hit * 3%PI/3 with and oscillator11 not affected
    // net.phase[i]%= TWO_PI;


     // net.phase[i]= net.phase[i]+ (TWO_PI/(networkSize-(i+1)));      //*(networkSize+0-i); // front 
     // net.phase[i]= net.phase[i]+ (TWO_PI/(i+1));   // NO   


      //  net.phase[i]+=   TWO_PI/(networkSize-2)*i; // behind
      //  net.phase[networkSize-1-i] += (i*TWO_PI/10)%PI/3;  // 10*3 hit//same effect as above 

      keyCode=BACKSPACE;
      formerKeyCode= CONTROL;

    }
    }

    if (formerKeyCode == CONTROL){  
   
      modeCircular=true; 
           
        for (int i = 0; i < (networkSize-0); i++) {  

         oldOldPosShifted[i]=oldPosShifted[i];
         oldPosShifted[i]=newPosShifted[i];
         newPosShifted[i]=net.phase[i];

        if (newPosShifted[i]<=0)  { 
            newPosShifted[i]+=TWO_PI;
         }
      
        if (oldPosShifted[i]%TWO_PI<newPosShifted[i]){ 
            //net.phase[i]-=TWO_PI;
            // rev[i]-=1;
           rev[i]+=1;
           }
       }
      }

    if ( formerFormerKey== 'U' ){

       modeCircular=true; 
   
      for (int i = 0; i < (networkSize-0); i++) { 

           oldOldPosShifted[i]=oldPosShifted[i];
           oldPosShifted[i]=newPosShifted[i];
           newPosShifted[i]=net.phase[i];

        if (newPosShifted[i]<=0)  { 
            newPosShifted[i]+=TWO_PI;
          }    

        if (oldPosShifted[i]%TWO_PI<newPosShifted[i]){
            net.phase[i]+=TWO_PI;
           // rev[i]+=1;
          }
      }
     }

     
   if (formerFormerKey== 'I' ){ 

      modeCircular=true; 

      for (int i = 0; i < (networkSize-0); i++) {  
           oldOldPosShifted[i]=oldPosShifted[i];
           oldPosShifted[i]=newPosShifted[i];
           newPosShifted[i]=net.phase[i];

       if (newPosShifted[i]<=0)  { 
           newPosShifted[i]+=TWO_PI;
         }
                
       if (oldPosShifted[i]%TWO_PI<newPosShifted[i]){ 
           net.phase[i]-=TWO_PI;
            // rev[i]-=1;
        }
      }
    }


  
  
   else if (key == 'M') { 
    println("INCREASE phases with 0.5   "); //
    for (int i = 0; i < networkSize; i++) {
      //       net.phase[i] += QUARTER_PI/2 * net.phase[1*(networkSize-1-i)] ;//
      net.phase[i] =net.phase[i] +  QUARTER_PI/2;//

      //      net.phase[i] = net.phase[i] - QUARTER_PI  i;
   //   net.phase[i]=  net.phase[i]%TWO_PI;
      key='#';
      printSummary(i);
    }
   }


  
   else if (key == 'm') {
    println("DECREASE phases with 0.5   "); // UTILISE SI ELLES ONT deja un ecart equidistant
    for (int i = 0; i < networkSize; i++) { 
      //   net.phase[i] =net.oldPhase[i]+ (QUARTER_PI/8);
      net.phase[i] += (QUARTER_PI/8)*(1+i);
    
    } 
    }   
    // ****************** ALIGNEMENT of PHASES --- thus, phases alignement depend of coupling.

    else if (key == '9' )   //9$ //&& modeCircular==true 
   { 
    println(" Align oscillator vertically to the top  ");
    for (int i = 0; i < networkSize; i++) {
      net.phase[i]= 0-PI/2; 
      //      net.phase[i]= 0; 
      printSummary(i);
    }
   } 
  
    else if (key == 'ç') {
    if (modeCircular==true) {

    float [] realign = new float [networkSize];
      for (int i = 0; i < networkSize; i++) {
          realign[i] = net.phase[i]%TWO_PI;
          net.phase[i]+=  net.phase[i] - realign[i];   
          net.phase[i]%=TWO_PI;
      }
    }

    if (modeCircular==false) {
      println(" Align oscillator vertically to the down  ");
      //formerKey = 'o';

    float [] realign = new float [networkSize];
      for (int i = 0; i < networkSize; i++) {
           realign[i] = net.phase[i]%TWO_PI+PI/2;
           net.phase[i]+=  net.phase[i] - realign[i];
           net.phase[i]%=TWO_PI;

         //  net.phase[i]= 0+PI/2  ; // position 0+PI/2  
        printSummary(i);
      }
    }
   } 
   ///******************************==================================================== MODULATE SPEED of ALL FREQUENCIE MORE OR LESS FASTLY in PENDULAR $
   /// ****************************  How could i modulate the couple?

   else if (key == 'y') { 
    println("y= Increase last frequencies + 0.05*i ");
    for (int i = 0; i < networkSize; i++) {   
      net.naturalFrequency[i] = net.naturalFrequency[i]*sqrt(sqrt(sqrt((sqrt(2)))));      // 4,42% more at each y pressed
      printSummary(i);
    }
   } else if (key == 'h') { 
    println(" Decrease last frequencies - 0.05*i"); 
    for (int i = 0; i < networkSize; i++) { 
      net.naturalFrequency[i] = net.naturalFrequency[i]/sqrt(sqrt(sqrt((sqrt(2)))));          
      printSummary(i);
    }
    } else if (key == 'Y') { 
    println("y= Increase last frequencies + 0.05*i ");
       println("y= Increase last frequencies + 0.05*i ");

    for (int i = 0; i < networkSize; i++) {   
      println("y= Increase last frequencies + 0.05*i ");
       println("y= Increase last frequencies + 0.05*i ");
      net.naturalFrequency[i] = net.naturalFrequency[i]*(1.10);
      key='#';
      printSummary(i);
    }
    } else if (key == 'H') { 
    println(" Decrease last frequencies - 0.05*i"); 
    for (int i = 0; i < networkSize; i++) { 
      net.naturalFrequency[i] = net.naturalFrequency[i]*(.90);   
      key='#';
      printSummary(i);
     }
   } 

    //************************** CHANGE THE WAY OF ROTATION O$
    else if (key == 'o') { 
        //  text("<=64 lastKey " + lastKey + " event " + formerEvent[note1] + " event " + formerEvent[73] + " vel " + velocity1, 500, 50);

    if ( keyMode != " phasePattern "){
         signal[2]= - signal[2]; 
      }  
    
    for (int i = 0; i < networkSize; i++) {
      //background(120, 20, 20);
      // net.naturalFrequency[i] = signal[2];
      net.naturalFrequency[i] = -1* net.naturalFrequency[i];

      // interFrequency[memoryi] = -1* net.naturalFrequency[i];
      printSummary(i);
      
    }
   }
    /*
    else if (key == 'a'   && keyCode == LEFT) {//Set all frequencies at 2.0");
    for (int i = 0; i < networkSize-0; i++) {   
      text (" memoryi " + memoryi, 500, 500);
      net.naturalFrequency[i]=net.naturalFrequency[memoryi];
    } 
    }
    */

    else if (key == 'à') {  print (" from EXPERIMENTAL T$");   
    for(int i = 0; i < (networkSize); i++) { 
    if ( abs (net.naturalFrequency[0]) >= abs (net.naturalFrequency[networkSize-1])){
    net.naturalFrequency[i]= net.naturalFrequency[0];
    }
    else net.naturalFrequency[i]= net.naturalFrequency[networkSize-1];
    }
    } 

    else if (key == '0') {//Set all frequencies at 2.0");
    for (int i = 0; i < networkSize-0; i++) {   
      text (" memoryi " + memoryi, 500, 500);
      net.naturalFrequency[i]=net.naturalFrequency[memoryi];
    }   
    } 
  
    else if (key == '°') {//Set all frequencies at 2.0");
    for (int i = 0; i < networkSize; i++) {   
      //  net.naturalFrequency[i]=2.0; 
      net.naturalFrequency[i]=0;
     }
    }


     

    /*
     if (key == 'Z' || key == 'z' ){
        formerFormerKey='Z';
     for (int i = 1; i < (networkSize-0); i++) {  
         if (net.oldPhase[i-1]<net.phase[i]){ 
    
        //     net.phase[i]+=TWO_PI;
         }
       }
       
         if (net.oldPhase[0]<net.phase[networkSize-1]){ 
        //     net.phase[networkSize-1]+=TWO_PI;
         }
             //_____________________
        
    
         for (int i = 0; i < (networkSize-0); i++) {          
            if (net.oldPhase[i]>net.phase[i]){ 
                 //     net.phase[i]+=TWO_PI;
              }
          }
     }
    */
 
    else if (keyCode == CONTROL) { 
    text ( coupling, 500, 500); // coupling appears on screen and is recorded on the file data.txt
    net.setCoupling(coupling);
  } 



  
  //  phasePatternBase();
  //  key ='#';
    //  teensyPos();
    /*
              key=formerKey;
             phasePatternBase(); // only with * ?

             for ( int i=0; i< networkSize; i++) {
                   oldDataMappedForMotorisedPosition[i]= dataMappedForMotorisedPosition[i];
              }
      */
  //************************************ ENDPENDULARPATTERN  //************************************ END OF PENDULARRRRRRR  $
  //************************************ DONT TOUCH  //************************************ END OF PENDULARRRRRRR  $
  //************************************ DONT TOUCH  //************************************ END OF PENDULARRRRRRR  $
 }
 //}
}
