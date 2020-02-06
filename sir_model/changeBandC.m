function [Store_array_after_distance2] = changeBandC(Store_biggest,Store_array_after_distance,user_no)
 Store_array_after_distance2=Store_array_after_distance;
for m=1:user_no
   Store_array_after_distance2(m,m)=Store_biggest(1,m);
end