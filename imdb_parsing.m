%%%%% Aggeliki Alampanou
%%%%% agalaban@uth.gr   


%%Search actor's name from the imdb database




x = input('Select actor: ','s');    

%(Change the path if needed)
fid = fopen('Desktop\sister stockholm\proj_elenis\actors_pro\actors2.list','r');

%Skip 239 lines 
% for i=1:239
%     fgetl(fid);
% end


lines = textscan(fid, '%s', 'Delimiter', '\n');  

[k m]=size(lines{1});
lines=lines{:};

index = strfind(lines,x);
index = find(~cellfun(@isempty,index));
index(1);


blank_lines = find(cellfun('isempty', lines));  
a=blank_lines(1);

jcell=index(1); 
 
flag=0;

while(jcell<k)

    if isequal(lines(jcell), lines(a))
        b=jcell;
        flag=1;
        break;
    end
    
    if flag==0 
       string = lines(jcell);
       disp(string{1})

       jcell=jcell+1;
    end
end


fclose(fid);



