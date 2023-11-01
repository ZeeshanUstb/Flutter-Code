import 'package:salary_management/view/Screens/linker.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  TextEditingController name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image:
                  AssetImage('images/bg.jpg'), // Replace with your image asset
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
                  const Text('SignUp', style: TextStyle(fontSize: 40)),
                  const SizedBox(
                    height: 30,
                  ),
                  CreatTextField('Enter your Name', false, name),
                  const SizedBox(
                    height: 20,
                  ),
                  CreatTextField('Enter your email', false, email),
                  const SizedBox(
                    height: 20,
                  ),
                  CreatTextField('Enter your password', false, password),
                  const SizedBox(
                    height: 20,
                  ),
                  CreatTextField('Confirm password', false, confirmPassword),
                  const SizedBox(
                    height: 20,
                  ),
                  customButton('SignUp', () {
                    if (_formKey.currentState!.validate()) {
                      if (password.text == confirmPassword.text) {
                        Athentication().signUp(
                            email.text, password.text, name.text, context);
                      } else {
                        customSnackbar(context,
                            "your password doesn't match with confirm password");
                      }
                    }
                  }),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("if you  have an account"),
                          const SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(LogIn());
                            },
                            child: const Text('LogIn',
                                style: TextStyle(
                                  color: Colors.blueAccent,
                                )),
                          ),
                        ]),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
