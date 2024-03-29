import 'package:flutter/material.dart';
import 'package:flutter_application_1/stogare/SQFlite/sqlOperation.dart';

void main() {
  runApp(MaterialApp(home: MainSQL()));
}

class MainSQL extends StatefulWidget {
  const MainSQL({super.key});

  @override
  State<MainSQL> createState() => _MainSQLState();
}

class _MainSQLState extends State<MainSQL> {

  bool isLoading = true;
  List<Map<String, dynamic>> note_from_db = [];

  @override
  void initState() {
    refreshData();
    super.initState();
  }

  void refreshData() async {
    final datas = await SQLHelper.readNotes();

    setState(() {
      note_from_db = datas;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Notes"),
      ),
      body: isLoading ? 
        CircularProgressIndicator() :
        ListView.builder(
          itemCount: note_from_db.length,
          itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(note_from_db[index]['title']),
              subtitle: Text(note_from_db[index]['note']),
              trailing: SizedBox(
                width: 100,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: (){
                        showForm(note_from_db[index]['id']);
                      }, 
                      icon: Icon(Icons.edit)),
                    IconButton(
                      onPressed: (){
                        deleteNote(note_from_db[index]['id']);
                      }, 
                      icon: Icon(Icons.delete)),
                  ]),
              ),
            ),
          );
        }),
        floatingActionButton: FloatingActionButton(
          onPressed: ()=> showForm(null),
          child: Icon(Icons.add),
        ),
    );
  }

  final title = TextEditingController();
  final note = TextEditingController();

  void showForm(int? id) async {
    if(id != null){
      final existingNote = note_from_db.firstWhere((note) => note['id'] == id);
      title.text = existingNote['title'];
      note.text = existingNote['note'];
    }

    showModalBottomSheet(
      context: context,
      elevation: 3,
      isScrollControlled: true, 
      builder: (context) => Container(
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
          top: 10,
          bottom: MediaQuery.of(context).viewInsets.bottom + 120
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: title,
              decoration: InputDecoration(
                hintText: "title",
                border: OutlineInputBorder()),
            ),
            SizedBox(height: 10),
            TextField(
              controller: note,
              decoration: InputDecoration(
                hintText: "Enter note",
                border: OutlineInputBorder()),
            ),
            ElevatedButton(onPressed: () async{
              if(id == null){
                await addNote();
              }
              if(id != null){
                await updateNote(id);
              }
            }, child: Text(id == null ? 'ADD NOTE' : "UPDATE"))
        ]),
      )
    );
  }

  Future addNote() async{
    await SQLHelper.createNote(title.text, note.text);
    refreshData();
  }

  Future<void> updateNote(int id) async{
    await SQLHelper.updateNote(id,title.text,note.text);
    refreshData();
  }
  
  void deleteNote(int id) async{
    await SQLHelper.deletenote(id);
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Note Deleted")));
    refreshData();
  }

}

