classdef myc < Person
    methods
        function response = getSpeakResponse(this,aLanguage)
            switch class(aLanguage)
                case 'Russian'
                    response = 'Privet!';
                case 'Chinese'
                    response = 'ganha?';
                otherwise
                    response = getSpeakResponse@Person(this,aLanguage);
                    
            end            
        end
    end
end
