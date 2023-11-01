import 'package:salary_management/view/Screens/linker.dart';

class LogIn extends StatelessWidget {
  LogIn({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // main container
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg.jpg'), // Replace with your image asset
            fit: BoxFit.cover, // Adjust this to control image sizing
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Login', style: TextStyle(fontSize: 40)),
                const SizedBox(
                  height: 30,
                ),
                CreatTextField('Enter your email', false, emailCtrl),
                const SizedBox(
                  height: 20,
                ),
                CreatTextField('Enter your password', true, passwordCtrl),
                const SizedBox(
                  height: 20,
                ),
                customButton('Login', () {
                  Athentication()
                      .logIn(emailCtrl.text, passwordCtrl.text, context);
                }),
                const SizedBox(
                  height: 30,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Text("if you don't have an account"),
                  const SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(SignUp());
                    },
                    child: const Text(
                      'SignUp',
                      style: TextStyle(
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
