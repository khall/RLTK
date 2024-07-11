# The RLTK root module
module RLTK
  # A BadToken error indicates that a token was observed in the input stream
  # that wasn't used in the grammar's definition.
  class BadToken < StandardError
  # @return [String] String representation of the error.
  def initialize(token)
    @token = token
  end

  def to_s
    "Unexpected token: #{@token.inspect}.  Token not present in grammar definition."
  end
  end
end
