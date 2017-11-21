% Linear potential
E=be(z); atp=1:15; adpi=be(z); adp=2; 
Max=combvec(E, atp, adpi, adp);Min=[2 2 0 2 ];   

V_dash=zeros(4,N); 

for j=1:size(Max,2)    
for s=1:4
  if s==1
      a=0.9; 
  elseif s==2
     a=0.9; 
  elseif s==3
      a=0.9;
  else 
      a=0.5;
  end
  n1=1+a*l/dx;
 for n=1:N
   if n<=n1
     x_n=(n-1)*dx;
     V_dash(s,n)= Max(s,j)*kT - ((Max(s,j)*kT - Min(s)*kT)/(a*l)) * x_n;
   else
     x_n=  (n-1)*dx;
     V_dash(s,n)= Min(s)*kT + (Max(s,j)*kT-Min(s)*kT)/(l-a*l) * (x_n-a*l);
   end
 end
end
   vel_wpe_method
end