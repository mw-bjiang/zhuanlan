% pyversion('/usr/local/bin/python3.5')
fid = fopen('relation.txt','w+');

client = py.zhihu_oauth.ZhihuClient;
client.load_token('token.pkl');
matlab = client.column('matlab');

iter = py.zip(py.range(matlab.follower_count),matlab.followers);

list = py.list(iter);
ppl  =list.cell;


for i = 1:numel(ppl)
    try
        subscriberCell = ppl{i}.cell;
        subscriber     = subscriberCell{2};
        nameS           = char(subscriber.name);
        uidS            = char(subscriber.id);
        followerCountS  = double(subscriber.follower_count);
        % Write to file
        fprintf(fid,'%s,%s,%i\t',nameS,uidS,followerCountS);
        % Record all followers
        iterP = py.zip(py.range(subscriber.follower_count),subscriber.followers);
        listP = py.list(iterP);
        followers = listP.cell;        
        
        for j = 1:numel(followers)
            try
                followersCell = followers{j}.cell;
                follower      = followersCell{2};
                nameF          = char(follower.name);
                uidF           = char(follower.id);
                followerCountF = double(follower.follower_count);
                fprintf(fid,'%s,%s,%i;',nameF,uidF,followerCountF);
            catch
                continue
            end
            
        end
        
        % New line
        fprintf(fid,'\n');
    catch
        continue
    end
    
end

fclose(fid);
