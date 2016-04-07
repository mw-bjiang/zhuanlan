classdef singLanguageVisitor < LanguageVisitor
    properties
        person
        response
    end
    methods
        function theVisitor = singLanguageVisitor(aPerson)
            theVisitor.person = aPerson;
            theVisitor.response = '';
        end
        
        function visitChinese(this, aLanguage)
            theResponse = this.person.getSingResponse(aLanguage);
            this.response = theResponse;
        end
        
        function visitRussian(this, aLanguage)
            theResponse = this.person.getSingResponse(aLanguage);
            this.response = theResponse;
        end
    end
end
    