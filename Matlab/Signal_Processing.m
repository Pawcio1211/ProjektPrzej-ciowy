s_sum_1=squares_sum(TAB_EMG_1);
s_sum_2=squares_sum(TAB_EMG_2);
s_sum_3=squares_sum(TAB_EMG_3);
s_sum_4=squares_sum(TAB_EMG_4);
s_sum_5=squares_sum(TAB_EMG_5);
s_sum_6=squares_sum(TAB_EMG_6);
s_sum_7=squares_sum(TAB_EMG_7);
s_sum_8=squares_sum(TAB_EMG_8);

if(s_sum_1<200 && s_sum_2<650 && s_sum_3< 800 && s_sum_4<200  && s_sum_5<150 && s_sum_6<150 && s_sum_7<200 && s_sum_8<500 && allow==1)
    allow = 0;
    a_11 = 1;
    angle_1 = 0;
    angle_2 = 0;
    angle_3 = 0;
    angle_4 = 0;
    angle_5 = 0;
    pose = 'Powitanie';     % wszystkie palce proste - wystarczy lekko
elseif(s_sum_1>40000 && s_sum_2>120000 && s_sum_3>12000 && s_sum_4>60000 && s_sum_7>1000 && allow==1)
    allow = 0;
    a_11 = 1;
    angle_1 = 60;
    angle_2 = 90;
    angle_3 = 90;
    angle_4 = 90;
    angle_5 = 90;
    pose = 'Chwyt';      % wszystkie palce mocno zaciœniête w piêœæ
elseif(s_sum_1<1000000 && 5000 < s_sum_3 && s_sum_3 < 25000 && s_sum_4>17000 && s_sum_4<25000 && s_sum_5<5500 && s_sum_6>600 && s_sum_7>1000 && s_sum_7<4500 && allow==1)
    allow = 0;
    a_11 = 1;
    angle_1 = 60;
    angle_2 = 0;
    angle_3 = 60;
    angle_4 = 60;
    angle_5 = 60;
    pose = 'Wskazanie';     % najpierw lekko ugiac wszystkie place, potem wyprostowac palec 2
elseif(s_sum_1<200 && s_sum_2<800 && s_sum_3<3000 && s_sum_3>1000 && s_sum_4<3000 && s_sum_4>800 && s_sum_5<300 && s_sum_6<200 && s_sum_7<350 && allow==1)
    allow = 0;
    a_11 = 0;
    angle_1 = -5;
    angle_2 = 60;
    angle_3 = 60;
    angle_4 = 60;
    angle_5 = 60;
    pose = 'OK';        % znak ok lekko, potem doscisnac palce 2-5
elseif(s_sum_4>2500 && s_sum_4<4500 && s_sum_5<1100 && s_sum_6<800 && s_sum_7<1000 && s_sum_7>600 && allow==1)
    allow = 0;
    a_11 = 4.5;
    angle_1 = 43;
    angle_2 = 52;
    angle_3 = 10;
    angle_4 = 5;
    angle_5 = 2;
    pose = 'Precyzyjny';	% najpierw mocno palec 1 do 2, potem wyprostowac reszte
elseif(s_sum_1<3000 && s_sum_1>400 && 1000<s_sum_3 && s_sum_3<4000 && s_sum_4<11000 && s_sum_4>5000 && s_sum_5>100 && s_sum_5<800 && s_sum_6>90 && s_sum_8>800 && s_sum_8<4000 && allow==1)
    allow = 0;
    a_11 = 2;
    angle_1 = 60;
    angle_2 = 0;
    angle_3 = 0;
    angle_4 = 60;
    angle_5 = 60;
    pose = 'Victoria';   % najpierw lekko zacisnac, potem palce 2 i 3 mocno wyprostowac
elseif(4000 <s_sum_1 && s_sum_3>100000 &&  s_sum_4>3000 && s_sum_8<30000 && s_sum_8>15000 && allow==1)
    allow = 0;
    a_11 = 1;
    angle_1 = 0;
    angle_2 = 0;
    angle_3 = 90;
    angle_4 = 90;
    angle_5 = 0;
    pose = 'Mano cornuta';      % mocno wyprostowac palce 1, 2, 5
elseif(allow == 1)
    a_11 = 1;
    angle_1 = 30;
    angle_2 = 20;
    angle_3 = 20;
    angle_4 = 20;
    angle_5 = 20;
    pose = 'rest';
end

if(s_sum_1+s_sum_2+s_sum_3+s_sum_4+s_sum_5+s_sum_6+s_sum_7+s_sum_8<2000)
    allow = 1;
end

run(a_11, angle_1, angle_2, angle_3, angle_4, angle_5);
fprintf('%s,%d,%d,%d,%d,%d,%d,%d,%d \n ', pose, s_sum_1, s_sum_2, s_sum_3, s_sum_4, s_sum_5, s_sum_6, s_sum_7, s_sum_8);