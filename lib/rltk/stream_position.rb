module RLTK
  # The StreamPosition class is used to indicate the position of a token or
  # other text inside a stream.
  class StreamPosition
    # @return [Integer]
    attr_accessor :stream_offset

    # @return [Integer]
    attr_accessor :line_number

    # @return [Integer]
    attr_accessor :line_offset

    # @return [Integer]
    attr_accessor :length

    # @return [String]
    attr_accessor :file_name

    alias :start :line_offset

    # Instantiates a new StreamPosition object with the values specified.
    #
    # @param [Integer]		stream_offset	The position from the beginning of the stream.
    # @param [Integer]		line_number	The number of newlines since the beginning of the file.
    # @param [Integer]		line_offset	The offset of this token from the beginning of the current line.
    # @param [Integer]		length		The length of the text of the token.
    # @param [String, nil]	file_name		The name of the file being lexed.
    def initialize(stream_offset = 0, line_number = 0, line_offset = 0, length = 0, file_name = nil)
      @stream_offset	= stream_offset
      @line_number	= line_number
      @line_offset	= line_offset
      @length		= length
      @file_name	= file_name
    end
  end
end
