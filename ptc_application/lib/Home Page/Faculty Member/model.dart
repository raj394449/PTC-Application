// ignore_for_file: prefer_typing_uninitialized_variables

class FacultyMember {
  static final facultyMember = [
    Item(
        id: 01,
        name: "Dr. Raju Sharma",
        desc: "Assoc. Prof.",
        color: "#3305a",
        image: "assets/faculty_cliparts/01_men.png"),
    Item(
        id: 02,
        name: "Dr. Rekha Singh",
        desc: "Professor",
        color: "#3305a",
        image: "assets/faculty_cliparts/01_women.png"),
    Item(
        id: 03,
        name: "Miss.Sohani Sharma",
        desc: "Asst. Prof.",
        color: "#3305a",
        image: "assets/faculty_cliparts/02_women.png"),
    Item(
        id: 04,
        name: "Dr. Rima",
        desc: "Assoc. Prof.",
        color: "#3305a",
        image: "assets/faculty_cliparts/03_women.png"),
    Item(
        id: 05,
        name: "Mr. Vivke Mondal",
        desc: "Asst. Prof.",
        color: "#3305a",
        image: "assets/faculty_cliparts/02_men.png"),
    Item(
        id: 06,
        name: "Dr. Niraj Kumar Sah",
        desc: "Assoc. Prof.",
        color: "#3305a",
        image: "assets/faculty_cliparts/03_men.png"),
    Item(
        id: 07,
        name: "Rima Singh",
        desc: "Asst. Prof.",
        color: "#3305a",
        image: "assets/faculty_cliparts/04_women.png"),
    Item(
        id: 08,
        name: "Dr. Ram",
        desc: "Assoc. Prof.",
        color: "#3305a",
        image: "assets/faculty_cliparts/04_men.png"),
    Item(
        id: 09,
        name: "Mr. Sonu Singh",
        desc: "Asst. Prof.",
        color: "#3305a",
        image: "assets/faculty_cliparts/05_men.png"),
    Item(
        id: 10,
        name: "Dr. Vikash Verma",
        desc: "Professor",
        color: "#3305a",
        image: "assets/faculty_cliparts/06_men.png"),
    Item(
        id: 11,
        name: "Mrs. Sima Tyagi",
        desc: "Asst. Prof.",
        color: "#3305a",
        image: "assets/faculty_cliparts/05_women.png"),
    Item(
        id: 12,
        name: "Dr. Anjali Sharma",
        desc: "Assoc. Prof.",
        color: "#3305a",
        image: "assets/faculty_cliparts/06_women.png"),
  ];
}

class Item {
  final num id;
  final String name;
  final String desc;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.color,
      required this.image});
}
