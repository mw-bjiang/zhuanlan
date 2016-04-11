classdef RunnerWithXiaoHong < RunnerWithPlugins
    methods
        function xmPlugin = RunnerWithXiaoHong(aSuccessor)
            xmPlugin@RunnerWithPlugins(aSuccessor);
        end
        function setup(aPlugin)
            setup@RunnerWithPlugins(aPlugin)
            disp('Setting up for XiaoHongTeam...');
        end
        
        function run(aPlugin)
            run@RunnerWithPlugins(aPlugin)
            disp('Running for XiaoHong Team...');
            
        end
        
        function cleanup(aPlugin)
            cleanup@RunnerWithPlugins(aPlugin)            
            disp('Cleaning up for XiaoHong Team...');
        end
    end
end