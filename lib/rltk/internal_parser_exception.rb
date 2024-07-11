# The RLTK root module
module RLTK
  # Used for runtime exceptions that are the parsers fault.  These should
  # never be observed in the wild.
  class InternalParserException < Exception; end
end
