classdef(Abstract) LanguageVisitor < handle
    % The Visitor
    methods
        function visitChinese(this, inChinese)
            error('Person:NoChinese','I don''t speak Chinese');
        end
        
        function visitRussian(this, inRussian)
            error('Person:NoRussian','I don''t speak Russian');
        end
    end
end