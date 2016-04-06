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
        
        function visitChinese(this, aLangauge)
            theResponse = this.person.getResponse(aLangauge);
            this.response = theResponse;
        end
        
        function visitRussian(this, aLangauge)
            theResponse = this.person.getResponse(aLangauge);
            this.response = theResponse;
        end
    end
end
    