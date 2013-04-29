" Vim syntax file
" Language: php
" Maintainer: Timothy Madden <terminatorul@gmail.com>
" Last Change: 29 apr 2013
" Version:  0.1

if !exists('g:php_annotations_syntax') || g:php_annotations_syntax != 0
    syntax match phpDocCommentLineStart #\v^\s*\*\s*# contained
    syntax region phpAnnotationExpressionParenthesis start=#\V(# end=#\V)# contained contains=phpAnnotationExpressionParenthesis, phpAnnotationExpressionBraces, phpAnnotationExpressionBrackets, phpDocCommentLineStart
    syntax region phpAnnotationExpressionBraces start=#\V{# end=#\V}# contained contains=phpAnnotationExpressionParenthesis, phpAnnotationExpressionBraces, phpAnnotationExpressionBrackets, phpDocCommentLineStart
    syntax region phpAnnotationExpressionBrackets start=#\V[# end=#\V]# contained contains=phpAnnotationExpressionParenthesis, phpAnnotationExpressionBraces, phpAnnotationExpressionBrackets, phpDocCommentLineStart

    syntax region phpAnnotation start=#\v^\s*\*?\s*\zs\@# end=#$# contained contains=phpAnnotationExpressionParenthesis, phpAnnotationExpressionBraces, phpAnnotationExpressionBrackets
    syntax region phpDocComment start=#\v/\*\*# end=#\v\ze\*/# containedin=phpComment contains=phpAnnotation keepend

    highlight link phpDocCommentLineStart Comment
    highlight link phpAnnotationExpressionParenthesis Special
    highlight link phpAnnotationExpressionBraces Special
    highlight link phpAnnotationExpressionBrackets Special
    highlight link phpAnnotation Special
    highlight link phpDocComment Comment
endif
