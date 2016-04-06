classdef testVisitor < matlab.unittest.TestCase
    properties
        OriginalPath
    end
    methods(TestClassSetup)
        function init(test)
            % Add the source path
            testDir = fileparts(mfilename('fullpath'));
            test.OriginalPath = addpath(fullfile(testDir,'..'));
        end
    end
    
    methods(TestClassTeardown)
        function restore(test)
            % restore the path
            path(test.OriginalPath);
        end
    end
    
    
    methods(Test)
        function testXiaoMing(test)
            me = XiaoMing;
            % Chinese
            lang = Chinese;
            response = lang.getResponse(me);
            test.verifyMatches(response,'你好!');
            
            % Russian
            lang = Russian;
            response = lang.getResponse(me);

            test.verifyEmpty(response);
        end
        
        function testmyc(test)
            me = myc;
            % Chinese
            lang = Chinese;
            response = lang.getResponse(me);
            test.verifyMatches(response,'干哈？');
            
            % Russian
            lang = Russian;
            response = lang.getResponse(me);
            test.verifyMatches(response,'Privet!');
        end
        
    end
end