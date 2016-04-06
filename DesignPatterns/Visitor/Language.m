classdef(Abstract) Language < handle    
    % The element
    methods(Abstract)
        accept(this, aLanguageVisitor);
    end
    
    methods(Sealed)
        function response = getResponse(this,aPerson)
            aLanguageVisitor = speakLanguageVisitor(aPerson);
            this.accept(aLanguageVisitor);
            response = aLanguageVisitor.response;
        end
    end
    
end