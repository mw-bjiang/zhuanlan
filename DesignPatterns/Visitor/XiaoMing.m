classdef XiaoMing < Person
    methods
        function response = getResponse(this,aLanguage)
            switch class(aLanguage)
                case 'Chinese'
                    response = '你好!';
                otherwise
                    response = '';
                    
            end
        end
    end
end