import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class MyTODo extends StatefulWidget {
  const MyTODo({super.key});

  @override
  State<MyTODo> createState() => _MyTODoState();
}

class _MyTODoState extends State<MyTODo> {

  List<Map<String,dynamic>> task = [];
  final tbox = Hive.box('task_box');

  @override
  void initState() {
    loadTask();
    super.initState();
  }
  
  Future<void> createTask(Map<String, String> task) async{
    await tbox.add(task);
    loadTask();
  }

  void loadTask() {
    final data = tbox.keys.map((id) {
      final value = tbox.get(id);
      return {"key" : id, 'name' : value['name'], 'details' : value['details']};
    }).toList();
    setState(() {
      task = data.reversed.toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ToDo"),),
      body: task.isEmpty ? Center(child: Text("NO DATA",style: TextStyle(fontSize: 40),),) :
        ListView.builder(
          itemCount: task.length,
          itemBuilder: (context, index){
            final tsk = task[index];
            return Card(
              color: Colors.pink,
              margin: EdgeInsets.all(10),
              elevation: 3,
              child: ListTile(
                title: Text(tsk['name']),
                subtitle: Text(tsk['details']),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: (){}, 
                      icon: Icon(Icons.edit_calendar)),
                    IconButton(
                      onPressed: (){}, 
                      icon: Icon(Icons.delete))
                  ],
                ),
              ),
            );
          }),
    floatingActionButton: FloatingActionButton(
      onPressed: () => showForm(context,null),
      child: Icon(Icons.add),  
    ),
    );
  }

  final TextEditingController name_controller = TextEditingController();
  final TextEditingController details_controller = TextEditingController();

  void showForm(BuildContext context, int? id) async{

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      elevation: 5, 
      builder: (context){
        return Container(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom + 120,
            top: 15,
            left: 15,
            right: 15,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                controller: name_controller,
                decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'Tsk Name'),
              ),
              TextField(
                controller: details_controller,
                decoration: InputDecoration(border: OutlineInputBorder(), hintText: "Task Details"),
              ),
              SizedBox(height: 15,),
              ElevatedButton(onPressed: (){
                if(id == null){
                  createTask({'name':name_controller.text, "details":details_controller.text});
                }
                if(id != null){
                  updateTask(id ,{'name':name_controller.text, "details":details_controller.text});
                } 
                name_controller.text = '';
                details_controller.text = '';
                Navigator.of(context).pop();
              }, 
                child: Text(id == null ? "Create Task" : "Update Task"))
            ],
          ),
        );
      });
  }
  

  void updateTask(int id, Map<String, String> map) {}
}