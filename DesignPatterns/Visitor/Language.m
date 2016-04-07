classdef(Abstract) Language < handle    
    % The element
    methods(Abstract)
        accept(this, aLanguageVisitor);
    end
    
    methods(Sealed)
        function response = speak(this,aPerson)
            aLanguageVisitor = speakLanguageVisitor(aPerson);
            this.accept(aLanguageVisitor);
            response = aLanguageVisitor.response;
        end
        function response = sing(this,aPerson)
            aLanguageVisitor = singLanguageVisitor(aPerson);
            this.accept(aLanguageVisitor);
            response = aLanguageVisitor.response;
        end

    end
    
end