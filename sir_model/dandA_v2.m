function [Store_Bs,Store_biggest,Store_logb,Store_rayc,store_bc,store_dis] = dandA_v2(user_no,StoreUsers,bs,cell_no)
Store_Bs=zeros(1,user_no);
Store_biggest=zeros(1,user_no);
Store_logb=zeros(cell_no,user_no);
Store_rayc=zeros(cell_no,user_no);
store_bc=zeros(cell_no,user_no);
store_dis=zeros(cell_no,user_no);
for m=1:user_no
for n=1:cell_no
Distance=((StoreUsers(m,2)-bs(n,2))^2+(StoreUsers(m,1)-bs(n,1))^2)^0.5;
[final,b,c] = abc(Distance);
Store_logb(n,m)=b;
Store_rayc(n,m)=c;
store_bc(n,m)=b*c;
store_dis(n,m)=Distance;
if n==1
   biggest=final-0.001; 
end
if biggest<final
    Store_Bs(m)=n;
    biggest=final;
end
end
Store_biggest(1,m)=biggest;
%looooooooooooooooooooooooooooooooooooooooooooop=1
end
