classdef(Abstract) Person < handle
    methods
        function response = getSpeakResponse(this,inLanguage)
                error('Person:cantSpeak','I can''t speak %s',class(inLanguage));
        end
        function response = getSingResponse(this,inLanguage)
                error('Person:cantSing','I can''t sing %s',class(inLanguage));
        end
    end
end