Place.destroy_all
Entry.destroy_all

mexico = Place.new
mexico["name"] = "Mexico"
mexico.save

day1 = Entry.new
day1["title"] = "Arrival"
day1["description"] = "got into the city"
day1["posted_on"] = 1
day1["place_id"] = mexico["id"]
day1.save