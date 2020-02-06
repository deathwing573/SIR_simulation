function averageSNR2 = averageSNR(user_no,Store_array,Store_Bs)
averageSNR3=zeros(user_no,1);
a=0;
for n=1:user_no
   if Store_Bs(n)==1
      b=Store_array(n,n);
      c=sum(Store_array(n,:));

      averageSNR3(a+1)=b/(c-b);
      a=a+1;
      
   end
end
averageSNR2=sum(averageSNR3(:,1));
averageSNR2=averageSNR2/a;