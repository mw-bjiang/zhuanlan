data = importfile('relation');

subscribers = data.Subscriber;
% parse the data into separate cells
str = cellfun(@(x)strsplit(x,','),subscribers,'UniformOutput',false);
[ids,names,followerCount] = cellfun(@(x)deal(x{:}),str,'UniformOutput',false);

subsG = digraph();
subsG = subsG.addnode(ids);
subsG.Nodes.uName = names;
subsG.Nodes.Weight = followerCount;


for i = 1:numel(ids)
    followers = data.Follower{i};
    str = strsplit(followers,';');
    splitstr = cellfun(@(x)strsplit(x,','),str,'UniformOutput',false);
    
    [fids,fnames,ffollowerCount] = cellfun(@(x)deal(x{:}),splitstr,'UniformOutput',false);
    
    %deblank
    fids(end)=[];
    fnames(end)=[];
    ffollowerCount(end)=[];
    if isempty(fids)
        continue
    end
    [newIds,idx]= setdiff(fids,subsG.Nodes.Name);
    
    if ~isempty(newIds)        
        newNodes = table(newIds',fnames(idx)',ffollowerCount(idx)','VariableNames',{'Name','uName','Weight'});
        subsG = subsG.addnode(newNodes);
    end
    subsG = subsG.addedge(ids{i},fids);
    
end

h  = plot(subsG);
realFollower = subsG.findnode(ids);
allfollowers = 1:height(subsG.Nodes);
followerEdge = subgraph(subsG,realFollower)
nonfollowerNodes = setdiff(allfollowers,realFollower);
s = subsG.findnode(followerEdge.Edges.EndNodes(:,1));
t = subsG.findnode(followerEdge.Edges.EndNodes(:,2));
h.MarkerSize = 0.1;
h.LineStyle = ':'
h.highlight(realFollower,'MarkerSize',10,'NodeColor','r');
h.MarkerSize(realFollower) = log(str2double(subsG.Nodes.Weight(realFollower))+1.1)*2
h.highlight(s,t,'EdgeColor','r','LineWidth',1,'LineStyle','-')
h.EdgeAlpha = 0.1
load forcegraph.mat
h.XData = gf.XData;
h.YData = gf.YData;
hdt = datacursormode;
hdt.UpdateFcn = @(obj,event_obj) GraphCursorCallback(obj,event_obj,subsG.Nodes);
