clf
clc
format long g
format short g
times=1;
averageSNR_times=0;
cell_no=1;
antenna_no=64;
count_no=0;
Store_avg=zeros(1,times);
Store_avg2=zeros(1,times);
for n=1:times
radius = 100;
user_no =5;

bs = cell_layout(radius,cell_no);%find BS coordinate

StoreUsers = randomUser1(radius,user_no,bs,cell_no)%find user coordinate

[Store_Bs,Store_biggest,Store_logb,Store_rayc,store_bc,store_dis] = dandA_v2(user_no,StoreUsers,bs,cell_no)%find BS that user belongs to

[Store_array,Store_array_after_distance,ddd] = find_power_array(user_no,bs,StoreUsers,Store_Bs,Store_logb,Store_rayc,antenna_no)%find power array

averageSNR2 = averageSNR(user_no,Store_array_after_distance,Store_Bs)

Store_avg2(n)=averageSNR2;
Store_avg(n)=10*log10(averageSNR2);
if ~isnan(averageSNR2)
    
averageSNR_times = averageSNR_times+averageSNR2;

    count_no=count_no+1;
end

end
bs
StoreUsers
averageSNR_times_divide=averageSNR_times/count_no;
ten_log= 10*log10(averageSNR_times_divide)







