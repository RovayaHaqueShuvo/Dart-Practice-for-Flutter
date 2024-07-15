//Create a class Song that has the following fields: name, artist, duration, album (all are String).
// Add a constructor that takes all the field values as arguments. Use name required arguments.
// Inside the Song class, create a method that returns the full song information.
// Inside the main function, create at least 5 Song objects and print all the information about the songs.
// Sample output: (Name - Artist - Album - Duration)
// 1. Bohemian Rhapsody - Queen - A Night at the Opera (1975) - 5:55
// 2. A Change is Gonna Come - Sam Cooke - Otis! Redding Sings Soul Classics (1965) - 3:14
// 3. What a Wonderful World - Louis Armstrong - The Complete ABC-Paramount Recordings (1933-1946) (1992) - 2:08
// 4. Hallelujah - Leonard Cohen - Various Positions (1984) - 4:00
// 5. Imagine - John Lennon - Imagine (1971) - 3:01

void main() {
  Song s1 = Song(
      name: "Bohemian Rhapsody",
      artist: "Queen",
      album: "A Night at the Opera (1975)",
      duaration: "5:55");
  Song s2 = Song(
      name: "A Change is Gonna Come",
      artist: "Sam Cooke",
      album: "Otis! Redding Sings Soul Classics (1965)",
      duaration: "3:14");
  Song s3 = Song(
      name: "What a Wonderful World",
      artist: "Louis Armstrong",
      album: "The Complete ABC-Paramount Recordings (1933-1946) (1992)",
      duaration: "2:08");
  Song s4 = Song(
      name: "Hallelujah",
      artist: "Leonard Cohen",
      album: "Various Positions (1984)",
      duaration: "4:00");
  Song s5 = Song(
      name: "Imagine",
      artist: "John Lennon",
      album: "Imagine (1971)",
      duaration: "3:01");

  print(s1.getFullInfo());
  print(s2.getFullInfo());
  print(s3.getFullInfo());
  print(s4.getFullInfo());
  print(s5.getFullInfo());
}

class Song {
  String name;
  String? artist;
  String? duaration;
  String? album;

  Song({required this.name, this.artist, this.duaration, this.album});

  getFullInfo() {
    return "$name - $artist - $album - $duaration";
  }
}
