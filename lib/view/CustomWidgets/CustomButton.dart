import 'package:salary_management/view/Screens/linker.dart';

// ______________________________________create submit button function______________________________
customButton(String texts, VoidCallback onTap) {
  return InkWell(
    onTap: onTap,
    child: Container(
        height: 45,
        width: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.greenAccent,
        ),
        child: Center(
          child: Text(
            texts,
          ),
        )),
  );
}
