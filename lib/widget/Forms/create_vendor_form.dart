import 'package:flutter/material.dart';

class Vendor {
  String? name;
  String? dni;
  String? phone;
  String? email;
}

class CreateVendorForm extends StatefulWidget {
  const CreateVendorForm({super.key});

  @override
  CreateVendorFormState createState() {
    return CreateVendorFormState();
  }
}

class CreateVendorFormState extends State<CreateVendorForm>
    with RestorationMixin {
  Vendor vendor = Vendor();
  final _formKey = GlobalKey<FormState>();
  late FocusNode _name, _dni, _phone, _email;

  @override
  void initState() {
    super.initState();
    _name = FocusNode();
    _dni = FocusNode();
    _phone = FocusNode();
    _email = FocusNode();
  }

  @override
  void dispose() {
    _name.dispose();
    _dni.dispose();
    _phone.dispose();
    _email.dispose();
    super.dispose();
  }

  String? _validateName(String? value) {
    if (value == null || value.isEmpty) {
      return "Requerido";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    const sizedBoxSpace = SizedBox(height: 24);

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sizedBoxSpace,
          TextFormField(
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                filled: true,
                icon: Icon(Icons.local_shipping),
                labelText: "Nombre Vendedor",
              ),
              onSaved: (value) {
                _dni.requestFocus();
              },
              onChanged: (value) {
                vendor.name = value;
              },
              validator: _validateName),
          sizedBoxSpace,TextFormField(
              textInputAction: TextInputAction.next,
              focusNode: _dni,
              decoration: const InputDecoration(
                filled: true,
                icon: Icon(Icons.local_shipping),
                labelText: "Rut Vendedor",
              ),
              onSaved: (value) {
                _phone.requestFocus();
              },
              onChanged: (value) {
                vendor.dni = value;
              },
              validator: _validateName),
          sizedBoxSpace,
          TextFormField(
              focusNode: _phone,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                  filled: true, icon: Icon(Icons.phone), labelText: "Telefono"),
              onSaved: (value) {
                _email.requestFocus();
              },
              onChanged: (value) {
                vendor.phone = value;
              },
              validator: _validateName),
          sizedBoxSpace,
          TextFormField(
              focusNode: _email,
              decoration: const InputDecoration(
                filled: true,
                icon: Icon(Icons.alternate_email),
                labelText: "Correo",
              ),
              onChanged: (value) {
                vendor.email = value;
              },
              validator: _validateName),
          sizedBoxSpace,
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    print(vendor.name);
                    print(vendor.dni);
                    print(vendor.phone);
                    print(vendor.email);
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Enviando datos')),
                      );
                    }
                  },
                  child: const Text('Guardar'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancelar'),
                ),
              ])
        ],
      ),
    );
  }

  @override
  String get restorationId => 'text_field_demo';

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_autoValidateModeIndex, 'autovalidate_mode');
  }

  final RestorableInt _autoValidateModeIndex =
      RestorableInt(AutovalidateMode.disabled.index);
}
