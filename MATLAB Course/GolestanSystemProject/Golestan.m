clear all
close all
clc

Username_student=["9926001","9926002","9926003","9926004","9926005","9926006","9926007","9926008","9926009","9926010","9926011","9926012","9926013","9926014","9926015","9926016","9926017","9926018","9926019","9926020"];
Password_student=["amir007","reza051","amirali1392","12345678","abcd","1234","1123","8888","99","1010","0926","1212","4545","7777","1215","16","alireza021","URL","1919","sajjad2020"];

Username_professor=["Taheri","Abbasi","Ahmadi"];
Password_professor=["Alireza","Ehsan","Amirali"];

Username_employee=["peyman","heydari"];
Password_employee=["jabbari","mazyar"];

Litrature_scores=[-1,-1, -1,-1 ,-1,-1 ,-1,-1 ,-1,-1 ,-1,-1 ,-1,-1 ,-1,-1 ,-1,-1, -1,-1 ] ;
Vahed_Litrature=3;

Calculus1_scores=[-1,-1, -1,-1 ,-1,-1 ,-1,-1 ,-1,-1 ,-1,-1 ,-1,-1 ,-1,-1 ,-1,-1, -1,-1 ] ;
Vahed_Calculus1=3;

Calculus2_scores=[-1,-1, -1,-1 ,-1,-1 ,-1,-1 ,-1,-1 ,-1,-1 ,-1,-1 ,-1,-1 ,-1,-1, -1,-1 ] ;
Vahed_Calculus2=3;

Differential_equations_scores=[-1,-1, -1,-1 ,-1,-1 ,-1,-1 ,-1,-1 ,-1,-1 ,-1,-1 ,-1,-1 ,-1,-1, -1,-1 ] ;
Vahed_Differential_equations=3;

Programming_scores=[-1,-1, -1,-1 ,-1,-1 ,-1,-1 ,-1,-1 ,-1,-1 ,-1,-1 ,-1,-1 ,-1,-1, -1,-1 ] ;
Vahed_Programming=3;

disp('Welcome')

flag1=0;
j=0;
while (flag1==0)
   
    choice_role=menu('You are a/an ... ','Professor','Student','Employee','Exit');
    if choice_role==1
        Username=input('Enter your username :','s');
        for i=1:3
            j=i;
            flag1=strcmp(Username,Username_professor(i));
            if flag1 == 1
                break
            end
        end
        if flag1==0
            disp('Invalid Username.')
            disp('_________________________________________________________')
%             break
        end
        if flag1==1
            Password=input('Enter your password :','s');
            if strcmp(Password,Password_professor(j)) == 1
                disp('Successful login :)')
                choice_class=menu('choose a lesson :','Litrature','Calculus1','Calculus2','Differential equations','Programming');
             
                if choice_class==1
                    if Litrature_scores(1)==-1
                        disp('Scores not entered !')
                       
                        for x=1:20
                            disp(Username_student(x))
                            Litrature_scores(x)=input('Score : ');
                            while (Litrature_scores(x)<0 || Litrature_scores(x)>20)
                                    Litrature_scores(x)=input('Enter a score between 0 and 20 : ');
                                    if Litrature_scores(x)>=0 && Litrature_scores(x)<=20
                                        break;
                                    end
                            end
                        end

                    else

                        for x=1:20
                            fprintf('%.0f : %.2f\n_______________________________________________________________\n',Username_student(x),Litrature_scores(x))
                        end
                        fprintf('The highest score : %.2f \nThe lowest score: %.2f \nAverage class score : %.3f\n_______________________________________________________________\n',max(Litrature_scores),min(Litrature_scores),mean(Litrature_scores))
                        choice_change=menu('Do you want to change scores?','Yes','No');
                        if choice_change==1
                            for x=1:20
                                disp(Username_student(x))
                                Litrature_scores(x)=input('Score : ');
                                while (Litrature_scores(x)<0 || Litrature_scores(x)>20)
                                        Litrature_scores(x)=input('Enter a score between 0 and 20 : ');
                                        if Litrature_scores(x)>=0 && Litrature_scores(x)<=20
                                            break;
                                        end
                                end
                            end
                        end
                        fprintf('The highest score : %.2f \nThe lowest score: %.2f \nAverage class score : %.3f\n_______________________________________________________________\n',max(Litrature_scores),min(Litrature_scores),mean(Litrature_scores))

                    end

                elseif choice_class==2

                    if Calculus1_scores(1)==-1
                        disp('Scores not entered !')

                        for x=1:20
                            disp(Username_student(x))
                            Calculus1_scores(x)=input('Score : ');
                            while (Calculus1_scores(x)<0 || Calculus1_scores(x)>20)
                                    Calculus1_scores(x)=input('Enter a score between 0 and 20 : ');
                                    if Calculus1_scores(x)>=0 && Calculus1_scores(x)<=20
                                        break;
                                    end
                            end
                        end

                    else

                        for x=1:20
                            fprintf('%.0f : %.2f\n_______________________________________________________________\n',Username_student(x),Calculus1_scores(x))
                        end
                        fprintf('The highest score : %.2f \nThe lowest score: %.2f \nAverage class score : %.3f\n_______________________________________________________________\n',max(Calculus1_scores),min(Calculus1_scores),mean(Calculus1_scores))
                        choice_change=menu('Do you want to change scores?','Yes','No');
                        if choice_change==1
                            for x=1:20
                                disp(Username_student(x))
                                Calculus1_scores(x)=input('Score : ');
                                while (Calculus1_scores(x)<0 || Calculus1_scores(x)>20)
                                        Calculus1_scores(x)=input('Enter a score between 0 and 20 : ');
                                        if Calculus1_scores(x)>=0 && Calculus1_scores(x)<=20
                                            break;
                                        end
                                end
                            end
                        end
                        fprintf('The highest score : %.2f \nThe lowest score: %.2f \nAverage class score : %.3f\n_______________________________________________________________\n',max(Calculus1_scores),min(Calculus1_scores),mean(Calculus1_scores))
                    end
                    
                elseif choice_class==3

                    if Calculus2_scores(1)==-1
                        disp('Scores not entered !')
                        for x=1:20
                            disp(Username_student(x))
                            Calculus2_scores(x)=input('Score : ');
                            while (Calculus2_scores(x)<0 || Calculus2_scores(x)>20)
                                    Calculus2_scores(x)=input('Enter a score between 0 and 20 : ');
                                    if Calculus2_scores(x)>=0 && Calculus2_scores(x)<=20
                                        break;
                                    end
                            end
                        end

                    else

                        for x=1:20
                            fprintf('%.0f : %.2f\n_______________________________________________________________\n',Username_student(x),Calculus2_scores(x))
                        end
                        fprintf('The highest score : %.2f \nThe lowest score: %.2f \nAverage class score : %.3f\n_______________________________________________________________\n',max(Calculus2_scores),min(Calculus2_scores),mean(Calculus2_scores))
                        choice_change=menu('Do you want to change scores?','Yes','No');
                        if choice_change==1
                            for x=1:20
                                disp(Username_student(x))
                                Calculus2_scores(x)=input('Score : ');
                                while (Calculus2_scores(x)<0 || Calculus2_scores(x)>20)
                                        Calculus2_scores(x)=input('Enter a score between 0 and 20 : ');
                                        if Calculus2_scores(x)>=0 && Calculus2_scores(x)<=20
                                            break;
                                        end
                                end
                            end
                        end
                        fprintf('The highest score : %.2f \nThe lowest score: %.2f \nAverage class score : %.3f\n_______________________________________________________________\n',max(Calculus2_scores),min(Calculus2_scores),mean(Calculus2_scores))
                    end

                elseif choice_class==4

                    if Differential_equations_scores(1)==-1
                        disp('Scores not entered !')
                        for x=1:20
                            disp(Username_student(x))
                            Differential_equations_scores(x)=input('Score : ');
                            while (Differential_equations_scores(x)<0 || Differential_equations_scores(x)>20)
                                    Differential_equations_scores(x)=input('Enter a score between 0 and 20 : ');
                                    if Differential_equations_scores(x)>=0 && Differential_equations_scores(x)<=20
                                        break;
                                    end
                            end
                        end

                    else

                        for x=1:20
                            fprintf('%.0f : %.2f\n_______________________________________________________________\n',Username_student(x),Differential_equations_scores(x))
                        end
                        fprintf('The highest score : %.2f \nThe lowest score: %.2f \nAverage class score : %.3f\n_______________________________________________________________\n',max(Differential_equations_scores),min(Differential_equations_scores),mean(Differential_equations_scores))
                        choice_change=menu('Do you want to change scores?','Yes','No');
                        if choice_change==1
                            for x=1:20
                                disp(Username_student(x))
                                Differential_equations_scores(x)=input('Score : ');
                                while (Differential_equations_scores(x)<0 || Differential_equations_scores(x)>20)
                                        Differential_equations_scores(x)=input('Enter a score between 0 and 20 : ');
                                        if Differential_equations_scores(x)>=0 && Differential_equations_scores(x)<=20
                                            break;
                                        end
                                end
                            end
                        end
                        fprintf('The highest score : %.2f \nThe lowest score: %.2f \nAverage class score : %.3f\n_______________________________________________________________\n',max(Differential_equations_scores),min(Differential_equations_scores),mean(Differential_equations_scores))
                    end

                elseif choice_class==5

                    if Programming_scores(1)==-1
                        disp('Scores not entered !')
                        for x=1:20
                            disp(Username_student(x))
                            Programming_scores(x)=input('Score : ');
                            while (Programming_scores(x)<0 || Programming_scores(x)>20)
                                    Programming_scores(x)=input('Enter a score between 0 and 20 : ');
                                    if Programming_scores(x)>=0 && Programming_scores(x)<=20
                                        break;
                                    end
                            end
                        end

                    else

                        for x=1:20
                            fprintf('%.0f : %.2f\n_______________________________________________________________\n',Username_student(x),Programming_scores(x))
                        end
                        fprintf('The highest score : %.2f \nThe lowest score: %.2f \nAverage class score : %.3f\n_______________________________________________________________\n',max(Programming_scores),min(Programming_scores),mean(Programming_scores))
                        choice_change=menu('Do you want to change scores?','Yes','No');
                        if choice_change==1
                            for x=1:20
                                disp(Username_student(x))
                                Programming_scores(x)=input('Score : ');
                                while (Programming_scores(x)<0 || Programming_scores(x)>20)
                                        Programming_scores(x)=input('Enter a score between 0 and 20 : ');
                                        if Programming_scores(x)>=0 && Programming_scores(x)<=20
                                            break;
                                        end
                                end
                            end
                        end
                        fprintf('The highest score : %.2f \nThe lowest score: %.2f \nAverage class score : %.3f\n_______________________________________________________________\n',max(Programming_scores),min(Programming_scores),mean(Programming_scores))
                    end
                    
               end
                flag1=0;

            else
                disp('Login failed.Username and password do not match!')
                disp('_____________________________________________________')
                flag1=0;
            end
        end
        
    end

    if choice_role == 2
        Username=input('Enter your username :','s');
        for i=1:20
            j=i;
            flag1=strcmp(Username,Username_student(i));
            if flag1 == 1
                break
            end
        end
        if flag1==0
            disp('Invalid Username.')
            disp('_________________________________________________________')
%             break
        end
        if flag1==1
            Password=input('Enter your password :','s');
            if strcmp(Password,Password_student(j)) == 1
                disp('Successful login :)')
                choice_class=menu('choose a class :','Litrature','Calculus1','Calculus2','Differential equations','Programming','Report card');
                if choice_class==1
                    if Litrature_scores(j)==-1
                        disp('Score not entered !')
                        disp('_________________________________________________')
                    else
                        disp('Litrature score :')
                        disp(Litrature_scores(j))
                        choice_more=menu('Do you want more information?','Yes','No');
                        if choice_more==1 
                            fprintf('The highest score : %.2f \nThe lowest score: %.2f \nAverage class score : %.3f\n_______________________________________________________________\n',max(Litrature_scores),min(Litrature_scores),mean(Litrature_scores))
                        end
                    end
                elseif choice_class==2
                    if Calculus1_scores(j)==-1
                        disp('Score not entered !')
                        disp('_________________________________________________')
                    else
                        disp('Calculus1 score : ')
                        disp(Calculus1_scores(j))
                        choice_more=menu('Do you want more information?','Yes','No');
                        if choice_more==1 
                            fprintf('The highest score : %.2f \nThe lowest score: %.2f \nAverage class score : %.3f\n_______________________________________________________________\n',max(Calculus1_scores),min(Calculus1_scores),mean(Calculus1_scores))
                        end
                    end
                elseif choice_class==3
                    if Calculus2_scores(j)==-1
                        disp('Score not entered !')
                        disp('_________________________________________________')
                    else
                        disp('Calculus2 score : ')
                        disp(Calculus2_scores(j))
                        choice_more=menu('Do you want more information?','Yes','No');
                        if choice_more==1 
                            fprintf('The highest score : %.2f \nThe lowest score: %.2f \nAverage class score : %.3f\n_______________________________________________________________\n',max(Calculus2_scores),min(Calculus2_scores),mean(Calculus2_scores))
                        end
                    end
                elseif choice_class==4
                    if Differential_equations_scores(j)==-1
                        disp('Score not entered !')
                        disp('_________________________________________________')
                    else
                        disp('Differential equations score :')
                        disp(Differential_equations_scores(j))
                        choice_more=menu('Do you want more information?','Yes','No');
                        if choice_more==1 
                            fprintf('The highest score : %.2f \nThe lowest score: %.2f \nAverage class score : %.3f\n_______________________________________________________________\n',max(Differential_equations_scores),min(Differential_equations_scores),mean(Differential_equations_scores))
                        end
                    end
                elseif choice_class==5
                    if Programming_scores(j)==-1
                        disp('Score not entered !')
                        disp('_________________________________________________')
                    else
                        disp('Programming score :')
                        disp(Programming_scores(j))
                        choice_more=menu('Do you want more information?','Yes','No');
                        if choice_more==1 
                            fprintf('The highest score : %.2f \nThe lowest score: %.2f \nAverage class score : %.3f\n_______________________________________________________________\n',max(Programming_scores),min(Programming_scores),mean(Programming_scores))
                        end
                    end
                elseif choice_class==6
                    sum_scores=0;
                    Vahed=0;
                    if Litrature_scores(j) ~= -1
                        disp('Litrature score :')
                        disp(Litrature_scores(j))
                        sum_scores= sum_scores + Litrature_scores(j)*Vahed_Litrature;
                        Vahed=Vahed+Vahed_Litrature;
                    end
                    if Calculus1_scores(j) ~= -1
                        disp('Calculus1 score :')
                        disp(Calculus1_scores(j))
                        sum_scores= sum_scores + Calculus1_scores(j)*Vahed_Calculus1;
                        Vahed=Vahed+Vahed_Calculus1;
                    end
                    if Calculus2_scores(j) ~= -1
                        disp('Calculus2 score :')
                        disp(Calculus2_scores(j))
                        sum_scores= sum_scores + Calculus2_scores(j)*Vahed_Calculus2;
                        Vahed=Vahed+Vahed_Calculus2;
                    end
                    if Differential_equations_scores(j) ~= -1
                        disp('Differential equations scores :')
                        disp(Differential_equations_scores(j))
                        sum_scores= sum_scores + Differential_equations_scores(j)*Vahed_Differential_equations;
                        Vahed=Vahed+Vahed_Differential_equations;
                    end
                    if Programming_scores(j) ~= -1
                        disp('Programming score :')
                        disp(Programming_scores(j))
                        sum_scores= sum_scores + Programming_scores(j)*Vahed_Programming;
                        Vahed=Vahed+Vahed_Programming;
                    end
                    if sum_scores ~= 0
                        mean=sum_scores/Vahed;
                        disp('Average :')
                        disp(mean)
                    else
                        disp('No score entered !')
                        disp('_________________________________________________')
                    end
                end
                flag1=0;

            else
                disp('Login failed.Username and password do not match!')
                disp('_________________________________________________')
                flag1=0;
            end
        end
    elseif choice_role==3
        Username=input('Enter your username :','s');
        for i=1:2
            j=i;
            flag1=strcmp(Username,Username_employee(i));
            if flag1 == 1
                break
            end
        end
        if flag1==0
            disp('Invalid Username.')
            disp('_________________________________________________')
%             break
        end
        if flag1==1
            Password=input('Enter your password :','s');
            if strcmp(Password,Password_employee(j)) == 1
                disp('Successful login :)')
                choice_class=menu('choose a lesson :','Litrature','Calculus1','Calculus2','Differential equations','Programming');
                choice_change=menu('Do you want to change the unit of this lesson?','Yes','No');
                if choice_change==1 && choice_class==1
                    Vahed_Litrature=input('input the new value :');
                elseif choice_change==1 && choice_class==2
                    Vahed_Calculus1=input('input the new value :');
                elseif choice_change==1 && choice_class==3
                    Vahed_Calculus2=input('input the new value :');
                elseif choice_change==1 && choice_class==4
                    Vahed_Differential_equations=input('input the new value :');
                elseif choice_change==1 && choice_class==5
                    Vahed_Programming=input('input the new value :');
                end
                       
                flag1=0;
            else
                disp('Login failed.Username and password do not match!')
                disp('_________________________________________________')
                flag1=0;
            end
        end
       
    elseif choice_role==4
        break
    end
end

