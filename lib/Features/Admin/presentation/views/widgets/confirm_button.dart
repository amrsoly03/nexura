// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:nexura/Core/utils/theme.dart';
import 'package:nexura/Core/widgets/custom_button.dart';
import 'package:nexura/Features/Admin/presentation/manager/admin_cubit/admin_cubit.dart';

import '../../../../../Core/widgets/custom_snackbar.dart';

// ignore: must_be_immutable
class ConfirmButton extends StatelessWidget {
  ConfirmButton({
    super.key,
    required this.function,
    required this.title,
  });

  final Function()? function;
  final String title;

  var _isUploading = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AdminCubit, AdminState>(
      listener: (context, state) {
        if (state is AdminLoading) {
          _isUploading = true;
        } else if (state is UpdateDegreesSuccess) {
          kShowSnackBar(context, state.message);
          _isUploading = false;
        } else if (state is AddAllQuestionsSuccess) {
          kShowSnackBar(context, state.message);
          _isUploading = false;
        } else if (state is AdminFailure) {
          kShowSnackBar(context, state.errMessage);
          log(state.errMessage);
          _isUploading = false;
        }
      },
      builder: (context, state) {
        return _isUploading
            ? const Center(
                child: CircularProgressIndicator(
                  color: darkBlue,
                ),
              )
            : CustomButton(
                title: title,
                function: function,
              );
      },
    );
  }
}
