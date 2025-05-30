import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexura/Core/models/activity_model.dart';
import 'package:nexura/Core/models/parent_model.dart';
import 'package:nexura/Core/models/product_model.dart';
import 'package:nexura/Features/Parent/data/repo/parent_repo.dart';
import 'package:nexura/main.dart';

import '../../../../../Core/models/order_model.dart';
import '../../../../../Core/models/report_model.dart';

part 'parent_state.dart';

class ParentCubit extends Cubit<ParentState> {
  ParentCubit(this.parentRepo) : super(ParentInitial());

  final ParentRepo parentRepo;

  Future<void> parentLogin({
    required String student_id,
    required String parent_password,
  }) async {
    emit(ParentLoading());

    final loginResult = await parentRepo.parentLogin(
      student_id: student_id,
      parent_password: parent_password,
    );

    loginResult.fold(
      (failures) {
        emit(ParentFailure(failures.errMessage));
      },
      (parentModel) {
        emit(ParentLoginSuccess(parentModel));
      },
    );
  }

  Future<void> parentSendReport({
    required String std_report,
    required String content,
  }) async {
    emit(ParentLoading());

    final loginResult = await parentRepo.parentSendReport(
      std_report: std_report,
      content: content,
    );

    loginResult.fold(
      (failures) {
        emit(ParentFailure(failures.errMessage));
      },
      (message) {
        emit(SendReportSuccess(message));
      },
    );
  }

  Future<void> viewParentSentReports({required String std_report}) async {
    emit(ParentLoading());

    final loginResult =
        await parentRepo.viewParentSentReports(std_report: std_report);

    loginResult.fold(
      (failures) {
        emit(ParentFailure(failures.errMessage));
      },
      (reports) {
        emit(ViewSentReportsSuccess(reports));
      },
    );
  }

  Future<void> viewCoins() async {
    emit(ParentLoading());

    final loginResult = await parentRepo.viewCoins(
      parent_id: sharedPref.getString('user_id')!,
    );

    loginResult.fold(
      (failures) {
        emit(ParentFailure(failures.errMessage));
      },
      (coins) {
        emit(ViewCoinsSuccess(coins));
      },
    );
  }

  Future<void> viewPreviousTransactions({
    required String order_student,
    required String order_approved,
  }) async {
    emit(ParentLoading());

    final loginResult = await parentRepo.viewPreviousTransactions(
      order_student: order_student,
      order_approved: order_approved,
    );

    loginResult.fold(
      (failures) {
        emit(ParentFailure(failures.errMessage));
      },
      (orders) {
        emit(ViewPreviousTransactionsSuccess(orders));
      },
    );
  }

  Future<void> viewOrderProducts({required String op_order}) async {
    emit(ParentLoading());

    final loginResult = await parentRepo.viewOrderProducts(op_order: op_order);

    loginResult.fold(
      (failures) {
        emit(ParentFailure(failures.errMessage));
      },
      (products) {
        emit(ViewOrderProductsSuccess(products));
      },
    );
  }

  Future<void> chargeCoins({
    required String increase_by,
    required String parent_id,
  }) async {
    emit(ParentLoading());

    final loginResult = await parentRepo.chargeCoins(
      parent_id: parent_id,
      increase_by: increase_by,
    );

    loginResult.fold(
      (failures) {
        emit(ParentFailure(failures.errMessage));
      },
      (message) {
        emit(ChargeCoinsSuccess(message));
      },
    );
  }

  Future<void> payFees() async {
    emit(ParentLoading());

    final loginResult = await parentRepo.PayFees(
      parent_id: sharedPref.getString('user_id')!,
    );

    loginResult.fold(
      (failures) {
        emit(ParentFailure(failures.errMessage));
      },
      (message) {
        emit(PayFeesSuccess(message));
      },
    );
  }

  Future<void> approveOrder({
    required String order_id,
    required String total_price,
  }) async {
    emit(ParentLoading());

    final loginResult = await parentRepo.approveOrder(
      parent_id: sharedPref.getString('user_id')!,
      order_id: order_id,
      total_price: total_price,
    );

    loginResult.fold(
      (failures) {
        emit(ParentFailure(failures.errMessage));
        viewPreviousTransactions(
          order_student: sharedPref.getString('student_id')!,
          order_approved: '0',
        );
      },
      (message) {
        emit(ApproveOrderSuccess(message));
        viewPreviousTransactions(
          order_student: sharedPref.getString('student_id')!,
          order_approved: '0',
        );
      },
    );
  }

  Future<void> viewApproveActivities() async {
    emit(ParentLoading());

    final loginResult = await parentRepo.viewApproveActivities(
      student_id: sharedPref.getString('student_id')!,
    );

    loginResult.fold(
      (failures) {
        emit(ParentFailure(failures.errMessage));
      },
      (activities) {
        emit(ViewApproveActivitiesSuccess(activities));
      },
    );
  }

  Future<void> approveActivity({
    required String activity_as,
    required String total_price,
  }) async {
    emit(ParentLoading());

    final loginResult = await parentRepo.approveActivity(
      parent_id: sharedPref.getString('user_id')!,
      student_as: sharedPref.getString('student_id')!,
      activity_as: activity_as,
      total_price: total_price,
    );

    loginResult.fold(
      (failures) {
        emit(ParentFailure(failures.errMessage));
        viewApproveActivities();
      },
      (message) {
        emit(ApproveActivitySuccess(message));
        viewApproveActivities();
      },
    );
  }
}
