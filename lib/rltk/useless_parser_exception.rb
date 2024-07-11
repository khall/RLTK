# The RLTK root module
module RLTK
  # Used to indicate that a parser is empty or hasn't been finalized.
  class UselessParserException < Exception
  # Sets the error messsage for this exception.
  def initialize
    super('Parser has not been finalized.')
  end
  end
end
