classdef(Abstract) RunnerWithPlugins < Runner    
    properties(Access = private)
        Successor;
    end
    
    methods
        function plugin = RunnerWithPlugins(aSuccesor)
            plugin.Successor = aSuccesor;
        end
        
        function setup(aPlugin)
            aPlugin.Successor.setup();
        end
        
        function run(aPlugin)
            aPlugin.Successor.run();
        end
        
        function cleanup(aPlugin)
            aPlugin.Successor.cleanup();
        end
    end
    
end