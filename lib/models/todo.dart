class Todo {
  int? id;
  String title;
  String? description;
  bool? isDone;
  String? date;

  Todo({
    this.id,
    required this.title,
    this.description,
    this.isDone = false,
    this.date,
  });
}

List<Todo> todoList = [
  Todo(
    id: 1,
    title: "Apprendre Html",
    description: "Apprendre les bases de html",
    date: "26-04-2025",
  ),
  Todo(
    id: 2,
    title: "Apprendre CSS",
    description: "Apprendre les bases de CSS",
    date: "24-04-2025",
    isDone: true,
  ),
  Todo(
    id: 3,
    title: "Apprendre Javascript",
    description: "Apprendre les bases de Javascript",
    date: "26-04-2025",
    isDone: true,
  ),
  Todo(
    id: 4,
    title: "Apprendre Php",
    description: "Apprendre les bases de PHP",
    date: "27-04-2025",
    isDone: false,
  ),
  Todo(
    id: 5,
    title: "Apprendre Laravel",
    description: "Apprendre les bases de Laravel",
    date: "27-04-2025",
    isDone: false,
  ),
];
