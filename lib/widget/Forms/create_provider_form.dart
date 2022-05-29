import 'dart:developer';

import 'package:flutter/material.dart';

class Provider {
  String? name;
  String? dni;
  String? address;
  String? vendor;
  String? phone;
  String? email;
}

class CreateProviderForm extends StatefulWidget {
  const CreateProviderForm({super.key});

  @override
  CreateProviderFormState createState() {
    return CreateProviderFormState();
  }
}

class CreateProviderFormState extends State<CreateProviderForm>
    with RestorationMixin {
  Provider provider = Provider();
  final _formKey = GlobalKey<FormState>();
  late FocusNode _name, _dni, _address, _vendor, _phone, _email;

  @override
  void initState() {
    super.initState();
    _name = FocusNode();
    _dni = FocusNode();
    _address = FocusNode();
    _vendor = FocusNode();
    _phone = FocusNode();
    _email = FocusNode();
  }

  @override
  void dispose() {
    _name.dispose();
    _dni.dispose();
    _address.dispose();
    _vendor.dispose();
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
                labelText: "Nombre Proveedor",
              ),
              onSaved: (value) {
                _dni.requestFocus();
              },
              onChanged: (value) {
                provider.name = value;
              },
              validator: _validateName),
          sizedBoxSpace,
          TextFormField(
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                filled: true,
                icon: Icon(Icons.badge),
                labelText: "Rut Proveedor",
              ),
              focusNode: _dni,
              onSaved: (value) {
                _address.requestFocus();
              },
              onChanged: (value) {
                provider.dni = value;
              },
              validator: _validateName),
          sizedBoxSpace,
          TextFormField(
              textInputAction: TextInputAction.next,
              focusNode: _address,
              decoration: const InputDecoration(
                filled: true,
                icon: Icon(Icons.place),
                labelText: "Dirección",
              ),
              onSaved: (value) {
                _vendor.requestFocus();
              },
              onChanged: (value) {
                provider.address = value;
              },
              validator: _validateName),
          sizedBoxSpace,
          TextFormField(
              textInputAction: TextInputAction.next,
              focusNode: _vendor,
              decoration: const InputDecoration(
                filled: true,
                icon: Icon(Icons.assignment_ind),
                labelText: "Vendedor",
              ),
              onSaved: (value) {
                _phone.requestFocus();
              },
              onChanged: (value) {
                provider.vendor = value;
              },
              // The validator receives the text that the user has entered.
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
                provider.phone = value;
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
                provider.email = value;
              },
              validator: _validateName),
          sizedBoxSpace,
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
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
