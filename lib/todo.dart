import 'package:firstapp/models/todo.dart';
import 'package:firstapp/reutilisable.dart';
import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  // controlleur des champs de saisies
  final TextEditingController _nameTextController = TextEditingController();
  final TextEditingController _descriptionTextController =
      TextEditingController();
  final TextEditingController _dateTextController = TextEditingController();
  String errorText = "";
//
  void showModalBottom({Todo? todo}) {
    if (todo != null) {
      // définir la valeur de chaque champ
      _nameTextController.text = todo.title;
      _descriptionTextController.text = todo.description!;
      _dateTextController.text = todo.date!;
    }
    showModalBottomSheet(
      isScrollControlled: true,
      // éviter de cacher la boite
      isDismissible: false,
      enableDrag: false,
      context: context,
      builder: (context) {
        return Container(
          width: double.infinity,
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
            // éviter que le clavier du mobile cache le formulaire
            bottom: MediaQuery.of(context).viewInsets.bottom + 20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 15,
            children: [
              Text(
                todo == null ? "Ajouter une tâche" : "Modifier cette tâche",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              // champ de saisie
              TextField(
                controller: _nameTextController,
                decoration: InputDecoration(
                  hintText: "Titre de la tâche",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              TextField(
                controller: _descriptionTextController,
                decoration: InputDecoration(
                  labelText: "Description de la tâche",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                maxLines: 3,
              ),
              TextField(
                controller: _dateTextController,
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                  labelText: "Date",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),

              // les boutons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent),
                      onPressed: () {
                        // afficher les données des champs
                        if (_nameTextController.text == "") {
                          return;
                        }
                        // mettre à jour l'état de la liste par setState
                        setState(() {
                          todo == null ? addTodo() : editTodo(todo.id!);
                        });
                      },
                      child: Text(todo == null ? "Ajouter" : "Modifier",
                          style: TextStyle(color: Colors.white))),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent),
                    onPressed: () {
                      clearText();
                      // fermer la boite du formulaire
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Annuler",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }

  void addTodo() {
    // trim() : enlever les espaces avant et après le texte
    int id = 1;
    if (todoList.isNotEmpty) {
      // récupérer l'id du dernier élément
      var lastId = todoList.last.id;
      id = lastId! + 1;
    }
    Todo todo = Todo(
        id: id,
        title: _nameTextController.text.trim(),
        description: _descriptionTextController.text.trim(),
        date: _dateTextController.text.trim());
    // ajouter cette tâche à la liste de tache
    todoList.add(todo);
    Navigator.pop(context);
    displayMsg("Tâche ajouté avec succès!", true);
    clearText();
  }

// modification
  void editTodo(int id) {
    // parcourir la liste de tâches pour chaque élément
    todoList.map((item) {
      // là où l'id de l'élément est = id passé dans paramètre
      if (item.id == id) {
        // modifier les info de cet élément
        item.title = _nameTextController.text.trim();
        item.description = _descriptionTextController.text.trim();
        item.date = _dateTextController.text.trim();
      }
    }).toList();
    Navigator.pop(context);
    displayMsg("Tâche modifié avec succès!", true);
    clearText();
  }

  void clearText() {
    // effacer les données du champ
    _nameTextController.clear();
    _descriptionTextController.clear();
    _dateTextController.clear();
  }

  // afficher un message à l'écran
  void displayMsg(String msg, bool isSucess) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: isSucess ? Colors.green[100] : Colors.red[100],
        content: Text(
          msg,
          style: TextStyle(
            color: isSucess ? Colors.green[800] : Colors.red[800],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar("Liste de tâches"),
      floatingActionButton: CircleAvatar(
        backgroundColor: Colors.blueAccent,
        child: GestureDetector(
          onTap: showModalBottom,
          child: Icon(
            Icons.add,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.separated(
        itemCount: todoList.length,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, index) {
          Todo todo = todoList[index];
          return ListTile(
            leading: GestureDetector(
              onTap: () {
                setState(() {
                  todo.isDone = !todo.isDone!;
                });
              },
              child: Icon(
                todo.isDone! ? Icons.check : Icons.radio_button_unchecked,
                color: todo.isDone! ? Colors.green : Colors.blueGrey,
                size: 30,
              ),
            ),
            title: Text(
              todo.title,
              style: TextStyle(
                decoration: todo.isDone!
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
              ),
            ),
            subtitle: Text(todo.description ?? ""),
            trailing: InkWell(
              onTap: () {
                showModalBottom(todo: todo);
              },
              child: Icon(
                Icons.info_outline,
                size: 30,
                color: Colors.blueGrey,
              ),
            ),
          );
        },
      ),
    );
  }
}
