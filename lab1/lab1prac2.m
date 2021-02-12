clear
clc
close all

% %1
% % graph for setp response on varying k 
% for k = 0.1 : .1 : 1
%     response = cltf(1,k); 
%     step(response), grid on
%     title('Step Response varying k')
%     xlabel('Time (t)') 
%     ylabel('Amplitude y(t)')
%     hold on
% end


% % graph for setp response on varying a
% for a = 1 : 1 : 11
%     response = cltf(a,11); 
%     step(response),grid
%     title('Step Response varying a')
%     xlabel('Time (t)') 
%     ylabel('Amplitude y(t)')
%     hold on
% end

%2
% array = [];
% aa =[];
% kk = [];
% 
% % graph for RiseTime varying a 
% for a = 1 : 1 : 20
%     response = cltf(a,1); 
%     %step(response)
%     %hold on
%     rest = stepinfo(response);
%        
%     array(end+1)=  rest.RiseTime ;
%     aa(end+1) = a;
%     %%kk(end+1) = log(k);
% end
% 
% 
% plot(aa, array )
% title('Rise Time varying a')
% xlabel('a') 
% ylabel('Rise Time (t)') 
% % %hold on
% % %plot(kk2, array2);
% 
% 
% array = [];
% aa =[];
% kk = [];
% % graph for RiseTime varying k
% for k = 0.1 : .1 : 3
%     response = cltf(1,k); 
%     %step(response)
%     %hold on
%     rest = stepinfo(response);
%        
%     array(end+1)=  rest.RiseTime ;
%     %%aa(end+1) = a;
%     kk(end+1) = log(k);
% end
% 
% plot(kk, array)
% title('Rise Time varying k')
% xlabel('log(k)') 
% ylabel('Rise Time (t)') 
% %hold on
% %plot(kk2, array2);
% 
% %3

% array = [];
% aa =[];
% kk = [];
% % graph for SettlingTime varying a 
% for a = 1 : 1 : 20
%     response = cltf(a,1); 
%     %step(response)
%     %hold on
%     rest = stepinfo(response);
%        
%     array(end+1)=  rest.SettlingTime ;
%     aa(end+1) = a;
%     %%kk(end+1) = log(k);
% end
% 
% plot(aa, array)
% title('Settling Time varying a')
% xlabel('a') 
% ylabel('Settling Time (t)') 
% % %hold on
% % %plot(kk2, array2);
% % 
% array = [];
% aa =[];
% kk = [];
% % graph for RiseTime varying k
% for k = 0.1 : .1 : 3
%     response = cltf(1,k); 
%     %step(response)
%     %hold on
%     rest = stepinfo(response);
%        
%     array(end+1)=  rest.SettlingTime ;
%     %%aa(end+1) = a;
%     kk(end+1) = log(k);
% end
% 
% plot(kk, array)
% title('Settling Time varying k')
% xlabel('log(k)') 
% ylabel('Settling Time') 
%hold on
%plot(kk2, array2);
% 
% %4
% array = [];
% aa =[];
% kk = [];
% % graph for SettlingTime varying a 
% for a = 1 : 1 : 11
%     response = cltf(a,11); 
%     %step(response)
%     %hold on
%     rest = stepinfo(response);
%        
%     array(end+1)=  rest.Overshoot ;
%     aa(end+1) = a;
%     %%kk(end+1) = log(k);
% end
% 
% plot(aa, array)
% title('Peak Overshoot varying a')
% xlabel('a') 
% ylabel('Peak Overshoot (t)') 
% % %hold on
% % %plot(kk2, array2);
% 
% array = [];
% aa =[];
% kk = [];
% % graph for RiseTime varying k
% for k = 0.1 : .1 : 1
%     response = cltf(1,k); 
%     %step(response)
%     %hold on
%     rest = stepinfo(response);
%        
%     array(end+1)=  rest.Overshoot ;
%     %%aa(end+1) = a;
%     kk(end+1) = log(k);
% end
% 
% plot(kk, array)
% title('Peak Overshoot (t) varying k')
% xlabel('log(k)') 
% ylabel('Peak Overshoot (t)') 
% %hold on
% %plot(kk2, array2);
% 
array = [];
aa =[];
kk = [];
% 5
% for a = 1 : .05 : 10
%     response = cltf(a,3); 
%     %step(response)
%     %hold on
%     rest = stepinfo(response);
%     
%     SP=1;                    %input value, if you put 1 then is the same as step(sys)
%     [y,t]=step(SP*response); %get the response of the system to a step with amplitude SP
%     array(end+1)= abs(SP-y(end));
%     
%     %array(end+1)=  rest.;
%     aa(end+1) = a;
%     %%kk(end+1) = log(k);
% end
% 
% plot(aa, array)
% title('Steady state Error varying a')
% xlabel('a') 
% ylabel('Steady State Error') 
% % %hold on
% %plot(kk2, array2);
% 
% %hold on
% %plot(kk2, array2);

% 5
for k = 0.1: .1 : 5
    response = cltf(1,k); 
    %step(response)
    %hold on
    rest = stepinfo(response);
    
    SP=1;                    %input value, if you put 1 then is the same as step(sys)
    [y,t]=step(SP*response); %get the response of the system to a step with amplitude SP
    array(end+1)= abs(SP-y(end));
    
    %array(end+1)=  rest.;
    %aa(end+1) = a;
    kk(end+1) = log(k);
end

plot(kk, array)
title('Steady state Error varying k')
xlabel('log(k)') 
ylabel('Steady State Error') 


% %SP=1; %input value, if you put 1 then is the same as step(sys)
% %[y,t]=step(SP*sys); %get the response of the system to a step with amplitude SP
% %sserror=abs(SP-y(end)); %get the steady state error
% 
% plot(aa, array)
% title('Overshoot')
% xlabel('a') 
% ylabel('Overshoot') 
% %hold on
% %plot(kk2, array2);


%step(cltf(-12,1), cltf(-8,1), cltf(-4,1), cltf(-2,1), cltf(1,1), cltf(10,1)), grid
%step(cltf(-10,2), cltf(-10,5), cltf(-12,10), cltf(-12,15)), grid

function T = cltf(k,a)
    s = tf('s');
    F = 1;   
    G = 1/((s+3)*(s+5)); 
    S = 1;           
    C = k*(s+a)/s;           
        
    T = F * feedback(G*C,S);
    
%     G1 = zpk([],[-3,-5],1);
%     G2 =zpk(0 , a ,(k));
%     T=feedback(G1,G2);
end
    
