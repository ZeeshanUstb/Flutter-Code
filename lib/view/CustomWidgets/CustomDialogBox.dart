import 'package:salary_management/view/Screens/linker.dart';

List<String>? expenditure;
TextEditingController others = TextEditingController();
bool check = true;
dialogBox(var context) async {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return Expanded(
        child: AlertDialog(
          title: const Text('Expenditure'),
          content: SingleChildScrollView(
            child: Column(
              children: [
                listTile('Grocery', check, (v) {}),
                listTile('House Rent', check, (v) {}),
                listTile('Transport', check, (v) {}),
                listTile('Education Fee', check, (v) {}),
                listTile('Electricity bill', check, (v) {}),
                listTile('Gas Bill', check, (v) {}),
                listTile('Gas Bill', check, (v) {}),
                listTile('Medicine', check, (v) {}),
                // ____________________________________________others  ___________________________________
                InkWell(
                  onTap: () {
                    AlertDialog(
                      title: const Text('Expenditure'),
                      content: CreatTextField(
                          "Enter your other Expenditure", false, others),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('CANCEL'),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('ACCEPT'),
                        ),
                      ],
                    );
                  },
                  child: const ListTile(
                    title: Text(" others"),
                  ),
                )
              ],
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('CANCEL'),
            ),
            ElevatedButton(
              onPressed: () {
                // call listtile view function and then call list
              },
              child: const Text('SUBMIT'),
            ),
          ],
        ),
      );
    },
  );
}

// _____________________listtile function__________________________________________
listTile(String text, var check, Function(void) onchanged) {
  Get.find<CheckBoxController>();

  return ListTile(
      title: Text(text),
      trailing: Checkbox(
          value: CheckBoxController.isCheck,
          tristate: true,
          onChanged: (newBool) {
            Get.find<CheckBoxController>();
            CheckBoxController.isCheck = newBool!;
            if (check == true) {
              expenditure = [text.toString()];
              print(expenditure);
            } else {
              print('error');
            }
          })

      //  GetBuilder<ShowDialogs>(builder: build:(controller){
      //     return  onChanged:OnChanged();
      //   }),
      // (Value)
      // ),
      );
}

// storeList() {
//   List<String> Expenditure = [];
// }
