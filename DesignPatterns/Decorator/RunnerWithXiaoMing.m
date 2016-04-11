classdef RunnerWithXiaoMing < RunnerWithPlugins
    methods
        function xmPlugin = RunnerWithXiaoMing(aSuccessor)
            xmPlugin@RunnerWithPlugins(aSuccessor);
        end
        function setup(aPlugin)
            setup@RunnerWithPlugins(aPlugin)
            disp('Setting up for XiaoMing Team...');
        end
        
        function run(aPlugin)
            run@RunnerWithPlugins(aPlugin)
            disp('Running for XiaoMing Team...');
            
        end
        
        function cleanup(aPlugin)
            cleanup@RunnerWithPlugins(aPlugin)            
            disp('Cleaning up for XiaoMing Team...');
        end
    end
end