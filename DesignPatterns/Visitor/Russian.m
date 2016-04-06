classdef Russian < Language    
    methods
        function accept(this, aLanguageVisitor)
            aLanguageVisitor.visitRussian(this);
        end
    end
end