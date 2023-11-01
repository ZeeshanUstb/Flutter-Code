import 'package:salary_management/view/Screens/linker.dart';

class home extends StatelessWidget {
  home({super.key});

  TextEditingController totalSalary = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // Get.find<ShowDialogs>();
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.greenAccent,
          leading: const Icon(Icons.menu),
          title: const Text("Salary Management"),
          actions: [
            IconButton(
                onPressed: () {
                  Athentication().logOut(context);
                },
                icon: const Icon(Icons.logout))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            CreatTextField('Enter your Monthly Salary ', false, totalSalary),
            const Divider(
              height: 100,
              color: Colors.green,
              // thickness: 1,
              // indent : 10,
              // endIndent : 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              const Text(
                'Expances',
                style: TextStyle(fontSize: 20),
              ),
              IconButton(
                  onPressed: () {
                    dialogBox(context);
                  },
                  icon: Icon(Icons.add)),
            ]),
          ]),
        ));
  }
}
