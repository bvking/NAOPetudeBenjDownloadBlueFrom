void abletonPos () 
{    
  for (int i = 0; i < networkSize; i++)
   {

      if (revolution[i]==0)
        {
          TrigmodPos[i]=0;
        // TrigModPos[i]=0;
        }
      else  
        {

           TrigmodPos[i]=1;
          //  TrigModPos[i]=1;
        }

   }



      if (keyMode == " propagationSampledBall ") 
       {
       //  dataMappedForMotorisedPosition=positionToMotor; // do it just in abletonPos
      }

       // if ( modeCircular || !modeCircular ) {
      for (int i = 0; i < networkSize; i++) {

    
        //  CircularOldVirtualPosition[i]=CircularVirtualPosition[i];
        //  CircularVirtualPosition[i]= int (map (positionToMotor[i], 0, numberOfStep , 0, numberOfStep));
         Pos[i]= int (map ((net.phase[i]), 0, TWO_PI, 0, 127)); // to Oscsend
          //  Pos[i]= int (map ((dataMappedForMotorisedPosition[i]), 0, numberOfStep, 0, 127)); // to Oscsend
         Pos[i]%=127;

      if (networkSize == 6 )
        {
          posAverage = ( Pos[0] + Pos[1] + Pos[1] + Pos[2] + Pos[3] + Pos[4] + Pos[5] ) / networkSize;
         }


       // print (" datM " + dataMappedForMotorisedPosition[i] + " abletonPos " + Pos[i]);
       // println();


       // print (" dat/ " + dataMappedForMotorisedPosition[i]/numberOfStep + " abletonPos " + Pos[i]);
       // println();
         
       // if (modeCircular==false) { Pos[i]=abs (Pos[i]) };
        
      
    
       }
   // }


  //*********** COMPUTE ACCELERATION

  if (  keyMode == " null " || keyMode != " null "  ) {  // keyMode == " addSignalOneAndTwo "
    for (int i = 0; i < networkSize; i++) {
      //     net.phase[i] = newPosF[i];  // to compute acceelration
      //**     net.phase[i] = newPosXaddSignal[i];
      oldPhaseAcceleration[i] = phaseAcceleration[i];
      phaseAcceleration[i] = net.phase[i];

      oldVelocityBis[i] = velocityBis[i];
      //**   velocityBis[i] = (net.phase[i] - net.oldPhase[i]) / 1;
      velocityBis[i] = (phaseAcceleration[i] - oldPhaseAcceleration[i]) / 1;

      accelerationBis[i] = (velocityBis[i] - oldVelocityBis[i]) / 1;

      mapAcceleration[i]= constrain ((int (map (abs(accelerationBis[i] *100), -100, 100, 0, 127))), 0, 127);
    }
    rotate (HALF_PI);
    text ( "vel[0] " + velocityBis[0], -700, 1500 );
    text ( "Acc[0]" + mapAcceleration[0], -700, 1600 );
    rotate (-HALF_PI);
  }

  //*********** END COMPUTE ACCELERATION
}
