require 'net/http'
require 'rexml/document'

searches  = ["restaurant","pizza","chicken","bank", "enterprise","subway","daycare", "business", "computers", "electronics","warehouse","factory","plant","gas","grocery","laundry","carwash",
              "bakery","hair","barber","shop","salon","boutique","cafe","hardware","sports","Vet","hospital", "apparel"]
              
CITY    = "Magnolia"
ZIP     = 71753

def addSelectedItems(jsonID, array) 
    @doc.elements.each('query/results/Result/' + jsonID) do |ele|
      
        array << ele.text
      
    end
  end

  
  
searches.each do | search|
  
  
  searchString      = search.gsub(" ", "%20")
  # Web search for "madonna"
  
  urltemplate       = 'http://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20local.search%20where%20zip%3D\'POSTAL\'%20and%20query%3D\'XXXX\'&diagnostics=true'
  
  urlWithSearch     = urltemplate.gsub("XXXX",searchString)
  url               = urlWithSearch.gsub('POSTAL', ZIP.to_s)
  
  # get the XML data as a string
  xml_data          = Net::HTTP.get_response(URI.parse(url)).body
  
  # extract event information
  @doc          = REXML::Document.new(xml_data)
  
  titles        = []
  latitudes     = []
  longitudes    = []
  cities        = []
  phoneNums     = []
  
  searchParams = {
    "Title"     => titles,
    "Latitude"  => latitudes,
    "Longitude" => longitudes,
    "City"      => cities,
    "Phone"     => phoneNums
  }
  
  searchParams.each do |key, value|
    addSelectedItems(key,value)
  end
  
  puts "\n" + search.rjust(19).upcase + "\n"
  
  # print all events
  titles.each_with_index do |title, idx|
     if cities[idx] == CITY
      print "#{title} (#{latitudes[idx]}, #{longitudes[idx]}) #{phoneNums[idx]}\n"
     end
  end
end


