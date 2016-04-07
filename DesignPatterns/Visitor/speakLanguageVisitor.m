classdef speakLanguageVisitor < LanguageVisitor
    properties
        person
        response
    end
    methods
        function theVisitor = speakLanguageVisitor(aPerson)
            theVisitor.person = aPerson;
            theVisitor.response = '';
        end
        
        function visitChinese(this, aLanguage)
            theResponse = this.person.getSpeakResponse(aLanguage);
            this.response = theResponse;
        end
        
        function visitRussian(this, aLanguage)
            theResponse = this.person.getSpeakResponse(aLanguage);
            this.response = theResponse;
        end
    end
end
    