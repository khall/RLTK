# The RLTK root module
module RLTK
  # A NotInLanguage error is raised whenever there is no valid parse tree
  # for a given token stream.  In other words, the input string is not in the
  # defined language.
  class NotInLanguage < StandardError

  class << self
    def default_context_length
      @default_context_length || 100
    end

    def default_context_length=(v)
      @default_context_length = v
    end
  end

  # @return [Array<Token>]  List of tokens that have been successfully parsed
  attr_reader :seen

  # @return [Token]  Token that caused the parser to stop
  attr_reader :current

  # @return [Array<Token>]  List of tokens that have yet to be seen
  attr_reader :remaining

  # @param [Array<Token>]  seen       Tokens that have been successfully parsed
  # @param [Token]         current    Token that caused the parser to stop
  # @param [Array<Token>]  remaining  Tokens that have yet to be seen
  def initialize(seen, current, remaining, context_length = self.class.default_context_length)
    @seen           = seen
    @current        = current
    @remaining      = remaining
    @context_length = context_length
  end

  # @return [String] String representation of the error.
  def to_s
    seen = @context_length == :all ? @seen : @seen[-@context_length..-1]
    remaining = @context_length == :all ? @remaining : @remaining[0..@context_length]
    "String not in language.  Token info:\n\tSeen: #{seen}\n\tCurrent: #{@current}\n\tRemaining: #{remaining}"
  end
  end
end
