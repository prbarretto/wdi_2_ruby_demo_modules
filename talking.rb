module Talk
  def say(phrase)
    # call the OSX say command
    %x{say #{phrase} }
  end
end
