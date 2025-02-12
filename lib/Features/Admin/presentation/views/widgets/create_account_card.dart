import 'package:flutter/material.dart';

import '../../../../../Core/widgets/custom_elevated_buttom.dart';
import '../../../../../Core/widgets/custom_form_field.dart';

// ignore: must_be_immutable
class CreateAccountCard extends StatelessWidget {
  CreateAccountCard({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _enteredName = TextEditingController();
  TextEditingController _enteredEmail = TextEditingController();
  TextEditingController _enteredId = TextEditingController();
  TextEditingController _enteredStdPass = TextEditingController();
  TextEditingController _enteredParentPass = TextEditingController();

  var _isUploading = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 15),
              CustomFormField(
                controller: _enteredName,
                labelText: 'full name',
                //onSaved: (value) => _enteredEmail = value!,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'enter valid name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 15),
              CustomFormField(
                controller: _enteredEmail,
                labelText: 'email',
                //onSaved: (value) => _enteredEmail = value!,
                validator: (value) {
                  if (value == null ||
                      value.trim().isEmpty ||
                      !value.contains('@')) {
                    return 'enter valid email';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 15),
              CustomFormField(
                controller: _enteredId,
                labelText: 'ID',
                //onSaved: (value) => _enteredEmail = value!,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'enter valid ID';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 15),
              CustomFormField(
                controller: _enteredStdPass,
                labelText: 'student password',
                //onSaved: (value) => _enteredPassword = value!,
                validator: (value) {
                  if (value == null || value.trim().length < 6) {
                    return 'password must be at least 6 characters long';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 15),
              CustomFormField(
                controller: _enteredParentPass,
                labelText: 'parent password',
                //onSaved: (value) => _enteredPassword = value!,
                validator: (value) {
                  if (value == null || value.trim().length < 6) {
                    return 'password must be at least 6 characters long';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 15),
              if (!_isUploading)
                CustomElevatedButton(
                  label: 'Create Account',
                  onPressed: () {},
                ),
              if (!_isUploading)
                if (_isUploading) const CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
