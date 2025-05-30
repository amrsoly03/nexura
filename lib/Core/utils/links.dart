class Links {
  //static const linkServerName = 'http://10.0.2.2/ssma';
  static const linkServerName = 'http://192.168.1.8/ssma';

  static const linkUploadSchedule = '$linkServerName/upload/schedules_images';
  static const linkUploadActivities =
      '$linkServerName/upload/activities_images';
  static const linkUploadProducts = '$linkServerName/upload/products_images';

  static const linkAdminLogin = '$linkServerName/Admin/admin_login.php';
  static const linkCreateUser = '$linkServerName/Admin/create_user.php';
  static const linkEditUser = '$linkServerName/Admin/edit_user.php';
  static const linkAdminSendReport = '$linkServerName/Admin/send_report.php';
  static const linkSendActivityNotification =
      '$linkServerName/Admin/send_activity_notification.php';
  static const linkApproveSubject = '$linkServerName/Admin/approve_subject.php';
  static const linkViewAdminSentReports =
      '$linkServerName/Admin/view_sent_reports.php';
  static const linkUpdateDegrees = '$linkServerName/Admin/update_degree.php';
  static const linkAddQuiz = '$linkServerName/Admin/add_quiz.php';
  static const linkAddQuestion = '$linkServerName/Admin/add_question.php';
  static const linkAddProduct = '$linkServerName/Admin/add_product.php';
  static const linkAddActivity = '$linkServerName/Admin/add_activity.php';
  

  static const linkViewActivities =
      '$linkServerName/Models/view_activities.php';
  static const linkViewApprovmentSubjects =
      '$linkServerName/Models/view_approvment_subjects.php';
  static const linkViewGrades = '$linkServerName/Models/view_grades.php';
  static const linkViewSubjects = '$linkServerName/Models/view_subjects.php';
  static const linkViewProducts = '$linkServerName/Models/view_products.php';
  static const linkViewAllOrders = '$linkServerName/Models/view_orders.php';

  static const linkStudentLogin = '$linkServerName/Student/student_login.php';
  static const linkViewDegrees = '$linkServerName/Student/view_std_degrees.php';
  static const linkViewStudentQuizzes =
      '$linkServerName/Student/view_std_quizzes.php';
  static const linkViewQuizQuestions =
      '$linkServerName/Student/view_quiz_questions.php';
  static const linkAddOrder = '$linkServerName/Student/add_order.php';
  static const linkAddOrderProduct =
      '$linkServerName/Student/add_order_product.php';
  static const linkSubmitQuiz = '$linkServerName/Student/submit_quiz.php';
  static const linkIncreasePracticalDegree =
      '$linkServerName/Student/increase_practical_degree.php';
  static const linkViewSchedule =
      '$linkServerName/Student/view_std_schedule.php';
  static const linkSubscribeActivity =
      '$linkServerName/Student/subscribe_activity.php';

  static const linkParentLogin = '$linkServerName/Parent/parent_login.php';
  static const linkParentSendReport = '$linkServerName/Parent/parent_send_report.php';
  static const linkViewParentSentReports = '$linkServerName/Parent/view_sent_reports.php';
  static const linkViewCoins = '$linkServerName/Parent/view_coins.php';
  static const linkViewFees = '$linkServerName/Parent/view_fees.php';
  static const linkViewPreviousTransactions = '$linkServerName/Parent/view_previous_transactions.php';
  static const linkViewOrderDetails = '$linkServerName/Parent/view_order_details.php';
  static const linkViewOrderProducts = '$linkServerName/Parent/view_order_products.php';
  static const linkChargeCoins = '$linkServerName/Parent/charge_coins.php';
  static const linkPayFees = '$linkServerName/Parent/pay_fees.php';
  static const linkApproveOrder = '$linkServerName/Parent/approve_order.php';
  static const linkApproveActivity = '$linkServerName/Parent/approve_activity.php';
  static const linkViewApproveActivities = '$linkServerName/Parent/view_approve_activities.php';
}
