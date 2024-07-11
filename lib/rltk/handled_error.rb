
# The RLTK root module
module RLTK
  # An error of this type is raised when the parser encountered a error that
  # was handled by an error production.
  class HandledError < StandardError

  # The errors as reported by the parser.
  #
  # @return [Array<Object>]
  attr_reader :errors

  # The result that would have been returned by the call to *parse*.
  attr_reader :result

  # Instantiate a new HandledError object with *errors*.
  #
  # @param [Array<Object>]	errors Errors added to the parsing environment by calls to {Parser::Environment#error}.
  # @param [Object]		result Object resulting from parsing Tokens before the error occurred.
  def initialize(errors, result)
    @errors = errors
    @result = result
  end
  end
end
