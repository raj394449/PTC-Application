// ignore_for_file: prefer_typing_uninitialized_variables

class ChatPageData {
  static final chatPagedata = [
    ChatData(
      id: 01,
      name: "Dr. Raju Sharma",
      desc: "Assoc. Prof.",
      image: "assets/faculty_cliparts/01_men.png",
    ),
    ChatData(
      id: 02,
      name: "Dr. Rekha Singh",
      desc: "Professor",
      image: "assets/faculty_cliparts/01_women.png",
    ),
    ChatData(
      id: 03,
      name: "Miss.Sohani Sharma",
      desc: "Asst. Prof.",
      image: "assets/faculty_cliparts/02_women.png",
    ),
    ChatData(
      id: 04,
      name: "Dr. Rima",
      desc: "Assoc. Prof.",
      image: "assets/faculty_cliparts/03_women.png",
    ),
    ChatData(
      id: 05,
      name: "Mr. Vivke Mondal",
      desc: "Asst. Prof.",
      image: "assets/faculty_cliparts/02_men.png",
    ),
    ChatData(
      id: 06,
      name: "Dr. Niraj Kumar Sah",
      desc: "Assoc. Prof.",
      image: "assets/faculty_cliparts/03_men.png",
    ),
    ChatData(
      id: 07,
      name: "Rima Singh",
      desc: "Asst. Prof.",
      image: "assets/faculty_cliparts/04_women.png",
    ),
    ChatData(
      id: 08,
      name: "Dr. Ram",
      desc: "Assoc. Prof.",
      image: "assets/faculty_cliparts/04_men.png",
    ),
    ChatData(
      id: 09,
      name: "Mr. Sonu Singh",
      desc: "Asst. Prof.",
      image: "assets/faculty_cliparts/05_men.png",
    ),
    ChatData(
      id: 10,
      name: "Dr. Vikash Verma",
      desc: "Professor",
      image: "assets/faculty_cliparts/06_men.png",
    ),
    ChatData(
      id: 11,
      name: "Mrs. Sima Tyagi",
      desc: "Asst. Prof.",
      image: "assets/faculty_cliparts/05_women.png",
    ),
    ChatData(
      id: 12,
      name: "Dr. Anjali Sharma",
      desc: "Assoc. Prof.",
      image: "assets/faculty_cliparts/06_women.png",
    ),
  ];
}

class ChatData {
  final num id;
  final String name;
  final String desc;

  final String image;

  ChatData({
    required this.id,
    required this.name,
    required this.desc,
    required this.image,
  });
}
