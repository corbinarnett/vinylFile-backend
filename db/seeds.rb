album = Album.create(name: "Chet Baker Sings", artist: "Chet Baker", label: "Pacific Jazz", release_date: "1954", image_url: "https://img.discogs.com/0q_xj68gTVDNMtPkpwKPZGscfgA=/fit-in/300x300/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/R-2930625-1437056636-5751.jpeg.jpg")

review = Review.new(content: "Lorem Ipsum", username: "corbinarnett", rating: 9.8, album_id: 1)