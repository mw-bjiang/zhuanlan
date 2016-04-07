classdef myc < Person
    methods
        function response = getResponse(this,aLanguage)
            switch class(aLanguage)
                case 'Russian'
                    response = 'Privet!';
                case 'Chinese'
                    response = 'å¹²å?ï¼?;
                otherwise
                    
            end
        end
    end
end
