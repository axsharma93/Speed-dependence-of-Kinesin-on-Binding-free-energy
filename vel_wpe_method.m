% Velocity calculation
L=zeros(N,N,4);L_p=zeros(4*N); L_n=zeros(4*N); 

for s=1:4
% L matrix calculation
d1=zeros(N-1,1); d2=zeros(N,1); d3=zeros(N-1,1);
V=V_dash(s,:);
for i=1:N-1
    alpha= -(V(i+1)-V(i))/kT; 
     if alpha==0
        F=D/dx^2;
     else
        F= D/dx^2 * -alpha/(exp(-alpha)-1);
     end
   d1(i)=F;
end

for i=1:N
           if i==N
               alpha= -(V(1)-V(N))/kT;
               if alpha==0
                 F=D/dx^2;
               else
                 F= D/dx^2 * -alpha/(exp(-alpha)-1);
               end
          
            else
                 alpha= -(V(i+1)-V(i))/kT;
                 if alpha==0
                 F=D/dx^2;
               else
                 F= D/dx^2 * -alpha/(exp(-alpha)-1);
                 end
            end
            
            if i==1
              alpha= -(V(1)-V(N))/kT;
              if alpha==0
                 B=D/dx^2;
               else
               B= D/dx^2 * alpha/(exp(alpha)-1);
              end
            else
                 alpha= -(V(i)-V(i-1))/kT;
                 if alpha==0
                   B=D/dx^2;
                 else
                   B= D/dx^2 * alpha/(exp(alpha)-1);
                 end
            end
         d2(i)=-(F+B);
end

for i=1:N-1
    alpha= -(V(i+1)-V(i))/kT;
    if alpha==0
        B=D/dx^2;
    else  
       B= D/dx^2 * alpha/(exp(alpha)-1);
    end
   d3(i)=B; 
end

L(:,:,s)=full(gallery('tridiag',d1,d2,d3));

     alpha= -(V(1)-V(N))/kT;  
  if alpha==0
     L(N,1,s)= D/dx^2;
  else
     L(N,1,s)= D/dx^2 * alpha/(exp(alpha)-1);
 end                                             %B_1/2
    alpha= -(V(1)-V(N))/kT;  
 if alpha==0
     L(1,N,s)= D/dx^2; 
 else
     L(1,N,s)= D/dx^2 * -alpha/(exp(-alpha)-1);
 end                                             %F_N+1/2
    
    L_n(s*N,(s-1)*N+1)=L(N,1,s) ;   %B_1/2
    L_p((s-1)*N+1,s*N)=L(1,N,s);   %F_N+1/2
 
end

 transition_rates
 zer=zeros(N);

 M=[L(:,:,1)-k12-k14 k21 zer k41; k12  L(:,:,2)-k21-k23 k32 zer; zer k23 L(:,:,3)-k34-k32 k43; k14 zer k34 L(:,:,4)-k41-k43];
 M(1,:)=1;
 B=zeros(4*N,1); B(1)=1;
 P=M\B;
 
 v(j,z)= l*(sum((L_p-L_n)*P));
