function [Store_Bs] = distance_and_angle(radius,user_no,StoreUsers)

Store_Bs=zeros(1,user_no);


for n=1:user_no
angle_b = atan(abs(StoreUsers(n,2))/abs(StoreUsers(n,1)))*360/(2*pi);
Big_D=(StoreUsers(n,1)^2+StoreUsers(n,2)^2)^0.5;
%//////////////////////////////////////////////////////////
if(StoreUsers(n,1)>=0 && StoreUsers(n,2)>0)
    temp_angle=angle_b;
    if angle_b>60
       angle_b=angle_b-60;
    end
    Small_D=radius*sind(60)/sind(120-angle_b);
    if (Big_D>Small_D) && temp_angle>60
       Store_Bs(1,n)=3;
    elseif (Big_D>Small_D) && temp_angle<60
       Store_Bs(1,n)=2;
    else
        Store_Bs(1,n)=1;
    end
    
end

%//////////////////////////////////////////////////////////
if(StoreUsers(n,1)<=0 && StoreUsers(n,2)>0)
    temp_angle=angle_b;
    if angle_b>60
       angle_b=angle_b-60;
    end
    Small_D=radius*sind(60)/sind(120-angle_b);
    if (Big_D>Small_D) && temp_angle>60
       Store_Bs(1,n)=3;
    elseif (Big_D>Small_D) && temp_angle<60
       Store_Bs(1,n)=4;
    else
       Store_Bs(1,n)=1;
    end
    
end

%//////////////////////////////////////////////////////////
if(StoreUsers(n,1)<=0 && StoreUsers(n,2)<0)
    temp_angle=angle_b;
    if angle_b>60
       angle_b=angle_b-60;
    end
    Small_D=radius*sind(60)/sind(120-angle_b);
    if (Big_D>Small_D) && temp_angle>60
       Store_Bs(1,n)=6;
    elseif (Big_D>Small_D) && temp_angle<60
       Store_Bs(1,n)=5;
    else
       Store_Bs(1,n)=1;
    end
    
end

%//////////////////////////////////////////////////////////
if(StoreUsers(n,1)>=0 && StoreUsers(n,2)<0)
    temp_angle=angle_b;
    if angle_b>60
       angle_b=angle_b-60;
    end
    Small_D=radius*sind(60)/sind(120-angle_b);
    if (Big_D>Small_D) && temp_angle>60
       Store_Bs(1,n)=6;
    elseif (Big_D>Small_D) && temp_angle<60
       Store_Bs(1,n)=7;
    else
       Store_Bs(1,n)=1;
    end
    
end
end
