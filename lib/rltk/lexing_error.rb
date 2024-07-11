module RLTK
  # A LexingError exception is raised when an input stream contains a
  # substring that isn't matched by any of a lexer's rules.
  class LexingError < StandardError
    # @return [Integer]
    attr_reader :stream_offset

    # @return [Integer]
    attr_reader :line_number

    # @return [Integer]
    attr_reader :line_offset

    # @return [String]
    attr_reader :remainder

    # @param [Integer]	stream_offset	Offset from begnning of string.
    # @param [Integer]	line_number	Number of newlines encountered so far.
    # @param [Integer]	line_offset	Offset from beginning of line.
    # @param [String]	remainder		Rest of the string that couldn't be lexed.
    def initialize(stream_offset, line_number, line_offset, remainder)
      @stream_offset	= stream_offset
      @line_number	= line_number
      @line_offset	= line_offset
      @remainder	= remainder
    end

    # @return [String] String representation of the error.
    def to_s
      "#{super()}: #{@remainder}"
    end
  end
end
