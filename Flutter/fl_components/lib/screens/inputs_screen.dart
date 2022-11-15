import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  
  const InputsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    
    final GlobalKey <FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'name'     : 'Juan',
      'job'      : 'Developer',
      'emal'     : 'gm@fi.cr',
      'password' : '*******'
    };

    return Scaffold(
      key: myFormKey,
      appBar: AppBar(
        title: Text('Text Forms'),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(labelText: 'Nombre', hintText: 'Nombre del usuario', helperText: 'Solo letras', icon: Icons.kitesurfing_sharp, suffixIcon: Icons.temple_hindu_rounded, formProperty: 'name', formValues: formValues),
                const SizedBox(height : 20),
                
                CustomInputField(labelText: 'Ocupacion', hintText: 'Ocupacion', icon: Icons.work_history_outlined, suffixIcon: Icons.sentiment_very_satisfied_sharp, formProperty: 'job', formValues: formValues),
                const SizedBox(height : 20),

                CustomInputField(labelText: 'Email', hintText: 'Correo electronico', keyboardType: TextInputType.emailAddress ,icon: Icons.mail_rounded, suffixIcon: Icons.app_shortcut_outlined , formProperty: 'email', formValues: formValues),
                const SizedBox(height : 20),

                CustomInputField(labelText: 'Password', hintText: 'Contraseña', obscureText: true ,icon: Icons.key_outlined, suffixIcon: Icons.password, formProperty: 'password', formValues: formValues),
                const SizedBox(height : 20),
          
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar'))
                  ),
                  onPressed: () {

                    // *desactivar teclado
                    FocusScope.of(context).requestFocus(FocusNode());
                    
                    /*if( !myFormKey.currentState!.validate() ){
                      print('Formulario no válido');
                      return;
                    }*/
                    //* imprimir valores del formulario
                    print(formValues);
                  }, 
                )

              ],
            ),
          ),
        ),
      )
    );
  }
}