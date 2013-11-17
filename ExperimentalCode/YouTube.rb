youtube = '<iframe width="560" height="315" src="//www.youtube.com/embed/-Xgjb8spwew" frameborder="0" allowfullscreen></iframe>'

width   = youtube.gsub("560","700")
replace  = width.gsub("315", "500")
puts replace