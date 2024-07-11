# Author:		Chris Wailes <chris.wailes@gmail.com>
# Project: 	Ruby Language Toolkit
# Date:		2011/03/27
# Description:	This file sets up autoloads for the RLTK module.

# The RLTK module provides a collection of useful tools for dealing with
# context-free grammars and code generation.  This includes a class for
# representing CFGs, lexers, parsers, and generating code using LLVM.
module RLTK
	autoload :AST, 'rltk/ast_node'
	autoload :CFG, 'rltk/cfg'
	autoload :CG, 'rltk/cg'
	autoload :Lexer, 'rltk/lexer'
	autoload :LexingError, 'rltk/lexing_error'
	autoload :Parser, 'rltk/parser'
	autoload :StreamPosition, 'rltk/stream_position'
	autoload :Token, 'rltk/token'
end
