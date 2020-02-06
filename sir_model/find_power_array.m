function [Store_array,Store_array_after_distance,distance] = find_power_array(user_no,bs,StoreUsers,Store_Bs,Store_logb,Store_rayc,antenna_no)

Store_array=zeros(user_no,user_no);
Store_array_after_distance=zeros(user_no,user_no);
distance=zeros(user_no,user_no);
for m=1:user_no
k=Store_Bs(1,m);
    
 %////////////////////////////////////////////////   
    ytemp=(StoreUsers(m,2)-bs(k,2));
    xtemp=(StoreUsers(m,1)-bs(k,1));
    angle_OwnUser= abs(atan(ytemp/xtemp)*360/(2*pi)); 
    
    angle_OwnUser_c = changeAngle(xtemp,ytemp,angle_OwnUser);
    
    for n=1:user_no
        x_t=(StoreUsers(n,1)-bs(k,1));
        y_t=(StoreUsers(n,2)-bs(k,2));
        angle_AllUser= abs(atan(y_t/x_t)*360/(2*pi))  ;
        angle_AllUser_c = add_90degree(x_t,y_t,angle_AllUser);
        
        
   Distance=(y_t^2+x_t^2)^0.5;
   distance(n,m)=Distance;
    Store_array(n,m) = find_p(angle_OwnUser_c,angle_AllUser_c,Store_logb(k,n),Store_rayc(k,n),antenna_no);
    Store_array_after_distance(n,m)=Store_array(n,m)/1^4;
    end
end