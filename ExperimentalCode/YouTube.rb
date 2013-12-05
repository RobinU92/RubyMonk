youtube = '<iframe width="560" height="315" src="//www.youtube.com/embed/-Xgjb8spwew" frameborder="0" allowfullscreen></iframe>'

youtube = youtube.sub(youtube[15..17], "700")
youtube = youtube.sub(youtube[28..30], "500")
puts youtube