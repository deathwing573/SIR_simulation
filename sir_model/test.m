
if Store_Bs(1,m)==2
    ytemp=(StoreUsers(m,2)-bs(2,2));
    xtemp=(StoreUsers(m,1)-bs(2,1));
    
    angle_OwnUser= abs(atan((StoreUsers(m,2)-bs(2,2))/(StoreUsers(m,1)-bs(2,1)))*360/(2*pi));
     angle_OwnUser_c = changeAngle(xtemp,ytemp,angle_OwnUser);
     
    for n=1:user_no
     x_t=(StoreUsers(n,1)-bs(2,1));
        y_t=(StoreUsers(n,2)-bs(2,2));
        angle_AllUser= abs(atan((StoreUsers(n,2)-bs(2,2))/(StoreUsers(n,1)-bs(2,1)))*360/(2*pi)) ; 
        angle_AllUser_c = add_90degree(x_t,y_t,angle_AllUser);
    
    
    Distance=((StoreUsers(n,2)-bs(2,2))^2+(StoreUsers(n,1)-bs(2,1))^2)^0.5;
    Store_array(n,m) = find_p(angle_OwnUser_c,angle_AllUser_c);
    Store_array_after_distance(n,m)=Store_array(n,m)/Distance^4;
    end
end    