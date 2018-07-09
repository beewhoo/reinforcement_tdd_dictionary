class Dictionary



  def initialize
    @entries = {}
  end

  def entries
    @entries
  end

  def add(entry)
    if entry.class == Hash
      @entries.merge!(entry)
      return true
    elsif entry.class == String
      @entries.merge!({entry => nil})
      return true
    else
      return false
    end
  end



  def include?(string)
    @entries.keys.include?(string)
  end

  def keywords
    @entries.keys.sort
  end

  def find(string)
    @entries.select do |key, value|
      key.include?(string)
    end
  end









end
