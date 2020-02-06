function final = find_p(angle_from_Bs,other_User_angle,b,c,antenna_no)


channelarray=zeros(1,antenna_no);
rowarray=zeros(antenna_no,1);
f=1*10^9;
w=2*pi*f;

for n=1:antenna_no
    channelarray(1,n)=exp(-1i*w*(n-1)*pi*sind(other_User_angle)/w);
    rowarray(n,1)=exp(1i*w*(n-1)*pi*sind(angle_from_Bs)/w);
       
end
    power=abs(channelarray*rowarray);
    a=power;

%///////////////////////////
final=a;



    


