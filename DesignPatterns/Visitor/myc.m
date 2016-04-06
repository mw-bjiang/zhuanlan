classdef myc < Person
    
    
    methods
        function response = getResponse(this,aLanguage)
            switch class(aLanguage)
                case 'Russian'
                    response = 'Privet!';
                case 'Chinese'
                    response = '干哈？';
                otherwise
                    response = '';
            end
        end
    end
end
