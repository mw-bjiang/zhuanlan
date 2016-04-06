classdef Chinese < Language

    methods
        function accept(this, aLanguageVisitor)
            aLanguageVisitor.visitChinese(this);
        end
    end
        
end