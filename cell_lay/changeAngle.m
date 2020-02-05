function angle_All = changeAngle(xt,yt,angle_OwnUser)

  if (yt>0 && xt<0)
        angle_All=180-angle_OwnUser;
    
    elseif (yt<0 && xt<0)
        angle_All=angle_OwnUser+180;
        
    elseif (yt<0 && xt>0)
        angle_All=360-angle_OwnUser;
        
    else
       angle_All=angle_OwnUser;
 end