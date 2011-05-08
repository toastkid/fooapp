# I'm fed up with typing logger.debug "### blah blah blah"
def ldb(debug_text)
  RAILS_DEFAULT_LOGGER.debug "### #{caller[0].gsub("#{RAILS_ROOT}",".")}: #{debug_text}" 
end

