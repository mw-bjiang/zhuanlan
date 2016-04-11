classdef RunnerWithMYC < RunnerWithPlugins
    methods
        function xmPlugin = RunnerWithMYC(aSuccessor)
            xmPlugin@RunnerWithPlugins(aSuccessor);
        end
        function setup(aPlugin)
            setup@RunnerWithPlugins(aPlugin)
            disp('Setting up for MYCTeam...');
        end
        
        function run(aPlugin)
            run@RunnerWithPlugins(aPlugin)
            disp('Running for MYC Team...');
            
        end
        
        function cleanup(aPlugin)
            cleanup@RunnerWithPlugins(aPlugin)            
            disp('Cleaning up for MYC Team...');
        end
    end
end