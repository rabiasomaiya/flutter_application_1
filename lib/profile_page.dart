import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ProfilePage"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: SizedBox(
          height: 350,
          width: 300,
          child: Card(
            color: const Color.fromARGB(255, 172, 193, 204),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  
                  // -------- Name Field --------
                  TextFormField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      hintText: "Enter Name",
                      border: OutlineInputBorder(),
                    ),
                  ),

                  const SizedBox(height: 15),

                  // -------- Email Field --------
                  TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      hintText: "Enter Email",
                      border: OutlineInputBorder(),
                    ),
                  ),

                  const SizedBox(height: 15),

                  // -------- Phone Field --------
                  TextFormField(
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      hintText: "Enter Phone",
                      border: OutlineInputBorder(),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // -------- Save Button --------
                  ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "Saved: ${nameController.text}, ${emailController.text}, ${phoneController.text}",
                          ),
                        ),
                      );
                    },
                    child: const Text("Save"),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
  