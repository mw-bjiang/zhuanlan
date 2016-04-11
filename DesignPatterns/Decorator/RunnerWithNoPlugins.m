classdef RunnerWithNoPlugins < Runner
    methods        
        function setup(obj)
            disp('Setting up...');
        end %end setup
        
        function run(obj)
            disp('Running up...');
        end %end run
        
        function cleanup(obj)
            disp('Cleaning up...');
        end %end cleanup
        
        
    end
end