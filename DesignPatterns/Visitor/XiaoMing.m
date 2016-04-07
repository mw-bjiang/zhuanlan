classdef XiaoMing < Person
    methods
        function response = getSpeakResponse(this,aLanguage)
            switch class(aLanguage)
                case 'Chinese'
                    response = 'nihao!';
                otherwise
                    response = getSpeakResponse@Person(this,aLanguage);
            end
        end
        function response = getSingResponse(this,aLanguage)
            switch class(aLanguage)
                case 'Chinese'
                    response = 'What a beautiful jasmine!';
                otherwise
                    response = getSingResponse@Person(this,aLanguage);
            end
        end
        
    end
end