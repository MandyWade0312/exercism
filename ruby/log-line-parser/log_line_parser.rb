class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    return @line.split(':').delete_at(1).strip
  end

  def log_level
    return @line.split(':').delete_at(0).downcase.gsub('[','').gsub(']','')
  end

  def reformat
    split_string = @line.split(':')
    message = split_string[0].downcase.gsub('[','(').gsub(']',')')
    value = split_string[1].strip
    return "#{value}" + " #{message}"
  end
end
