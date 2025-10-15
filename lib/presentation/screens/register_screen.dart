import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Nuevo usuario')),
      body: const _RegisterView(),
    );
  }
}

class _RegisterView extends StatelessWidget {
  const _RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlutterLogo( size: 100,),
              TextFormField(),
              TextFormField(),
              TextFormField(),
              TextFormField(),
              const SizedBox(height: 20),
              FilledButton.tonalIcon(
                onPressed: (){},
                icon: Icon(Icons.save),
               label: Text('Crear usuario')),
              const SizedBox(height: 20),
            ]),
        ),
      ),
    );
  }
}
