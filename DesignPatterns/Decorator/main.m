function main(teams)
plugins = cellstr(teams);
runner = RunnerWithNoPlugins();
for i = 1:numel(plugins)
    teamName = plugins{i};
    if strcmp(teamName,'XiaoMing')
        runner = RunnerWithXiaoMing(runner);
    elseif strcmp(teamName,'XiaoHong')
        runner = RunnerWithXiaoHong(runner);
    elseif strcmp(teamName,'MYC')
        runner = RunnerWithMYC(runner);
    end
end

runner.setup();
runner.run();
runner.cleanup();

end %end main