function StoreUsers = randomUser1(radius,user_no,bs,cell_no)


R=radius;
StoreUsers=zeros(user_no,2);
for n=1:user_no    
Random_1_to_19=rand*cell_no;
roundup=ceil(Random_1_to_19);
outside = true;
%//////////////////////////////////////////////////////////////

    while outside
     x_temp = 2*rand*R-R;
     y_temp = 2*rand*R-R;
     Big_D=(x_temp^2+y_temp^2)^0.5;
     x_temp1 = abs(x_temp);
     y_temp1 = abs(y_temp);
     angle_a = atan(y_temp1/x_temp1)*360/(2*pi);
     if angle_a>60
         angle_a=angle_a-60;
     end
     Small_D=radius*sind(60)/sind(120-angle_a);
     if(Big_D>Small_D)
        outside = true;
     else
         outside = false;
     end
    end
StoreUsers(n,1)= x_temp + bs(roundup,1);
StoreUsers(n,2)= y_temp + bs(roundup,2);
    
end



plot(StoreUsers(:,1),StoreUsers(:,2),'b.')

