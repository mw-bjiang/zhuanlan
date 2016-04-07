classdef XiaoMing < Person
    methods
        function response = getSpeakResponse(this,aLanguage)
            switch class(aLanguage)
                case 'Chinese'
                    response = '你好!';
                otherwise
                    response = getSpeakResponse@Person(this,aLanguage);
            end
        end
        function response = getSingResponse(this,aLanguage)
            switch class(aLanguage)
                case 'Chinese'
                    response = '好一朵美丽的茉莉花!';
                otherwise
                    response = getSingResponse@Person(this,aLanguage);
            end
        end
        
    end
end