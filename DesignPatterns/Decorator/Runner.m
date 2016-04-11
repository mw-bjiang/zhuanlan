classdef(Abstract) Runner < handle
    methods(Abstract)
        setup(obj);
        run(obj);
        cleanup(obj);
    end 
end