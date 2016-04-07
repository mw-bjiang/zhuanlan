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
        function testXiaoMingSpeak(test)
            me = XiaoMing;
            % Chinese
            lang = Chinese;
            response = lang.speak(me);
            test.verifyMatches(response,'nihao!');
            
            % Russian
            lang = Russian;
            test.verifyError(@()lang.speak(me),'Person:cantSpeak');
            
        end
        
        function testmycSpeak(test)
            me = myc;
            % Chinese
            lang = Chinese;
            response = lang.speak(me);
            test.verifyMatches(response,'ganha?');
            
            % Russian
            lang = Russian;
            response = lang.speak(me);
            test.verifyMatches(response,'Privet!');
        end
        
        function testXiaoMingSing(test)
            me = XiaoMing;
            % Chinese
            lang = Chinese;
            response = lang.sing(me);
            test.verifyMatches(response,'What a beautiful jasmine!');
            
            % Russian
            lang = Russian;
            test.verifyError(@()lang.sing(me),'Person:cantSing');

        end        
    end
end