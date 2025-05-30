import 'package:go_router/go_router.dart';
import 'package:nexura/Features/Admin/presentation/views/activities_notification_view.dart';
import 'package:nexura/Features/Admin/presentation/views/add_degree_view.dart';
import 'package:nexura/Features/Admin/presentation/views/add_exam_view.dart';
import 'package:nexura/Features/Admin/presentation/views/school_admin_home_view.dart';
import 'package:nexura/Features/Admin/presentation/views/approve_subject_view.dart';
import 'package:nexura/Features/Admin/presentation/views/send_report_view.dart';
import 'package:nexura/Features/Admin/presentation/views/sent_reports_view.dart';
import 'package:nexura/Features/Parent/presentation/views/notifications_and_reports_view.dart';
import 'package:nexura/Features/Parent/presentation/views/parent_home_view.dart';
import 'package:nexura/Features/Parent/presentation/views/parent_send_report_view.dart';
import 'package:nexura/Features/Parent/presentation/views/parent_sent_reports_view.dart';
import 'package:nexura/Features/Parent/presentation/views/charge_coins_view.dart';
import 'package:nexura/Features/Parent/presentation/views/previous_transaction_view.dart';
import 'package:nexura/Features/Parent/presentation/views/wallet_details_view.dart';
import 'package:nexura/Features/Student/presentation/views/activities_view.dart';
import 'package:nexura/Features/Student/presentation/views/activity_details_view.dart';
import 'package:nexura/Features/Student/presentation/views/cafeteria_view.dart';
import 'package:nexura/Features/Student/presentation/views/categories_view.dart';
import 'package:nexura/Features/Student/presentation/views/degrees_view.dart';
import 'package:nexura/Features/Student/presentation/views/products_view.dart';
import 'package:nexura/Features/Student/presentation/views/quiz_view.dart';
import 'package:nexura/Features/Student/presentation/views/quizzes_view.dart';
import 'package:nexura/Features/Student/presentation/views/schedule_view.dart';
import 'package:nexura/Features/Student/presentation/views/school_activities_view.dart';
import 'package:nexura/Features/Student/presentation/views/student_home_view.dart';

import '../../Features/Admin/presentation/views/activities_admin_home_view.dart';
import '../../Features/Admin/presentation/views/add_activity_view.dart';
import '../../Features/Admin/presentation/views/add_product_view.dart';
import '../../Features/Admin/presentation/views/admins_home_view.dart';
import '../../Features/Admin/presentation/views/all_orders_view.dart';
import '../../Features/Admin/presentation/views/cafeteria_admin_home_view.dart';
import '../../Features/Admin/presentation/views/create_account_view.dart';
import '../../Features/Admin/presentation/views/edit_user_view.dart';
import '../../Features/Admin/presentation/views/teacher_home_view.dart';
import '../../Features/Auth/presentation/views/login_view.dart';
import '../../Features/Parent/presentation/views/approve_activities_view.dart';
import '../../Features/Parent/presentation/views/approve_orders_view.dart';
import '../../Features/Parent/presentation/views/order_products_view.dart';
import '../../Features/Parent/presentation/views/pay_fees_view.dart';
import '../../Features/Parent/presentation/views/student_follow_up_view.dart';
import '../../first_screen.dart';
import '../../main.dart';
import '../models/activity_model.dart';
import '../models/quiz_model.dart';

abstract class AppRouter {
  //static const kSplashScreen = '/SplashScreen';
  static const kFirstScreen = '/FirstScreen';
  static const kLoginView = '/LoginView';
  static const kAdminsHomeView = '/AdminsHomeView';
  static const kSchoolAdminHomeView = '/SchoolAdminHomeView';
  static const kCafeteriaAdminHomeView = '/CafeteriaAdminHomeView';
  static const kActivitiesAdminHomeView = '/ActivitiesAdminHomeView';
  static const kTeacherHomeView = '/TeacherHomeView';
  static const kStudentHomeView = '/StudentHomeView';
  static const kParentHomeView = '/ParentHomeView';
  static const kCreateAccountView = '/CreateAccountView';
  static const kEditUserView = '/EditUserView';
  static const kApproveSubjectView = '/ApproveSubjectView';
  static const kAddDegreeView = '/AddDegreeView';
  static const kAddExamView = '/AddExamView';
  static const kSendReportView = '/SendReportView';
  static const kSentReportsView = '/SentReportsView';
  static const kAddProductView = '/AddProductView';
  static const kAddActivityView = '/AddActivityView';
  static const kAllOrdersView = '/AllOrdersView';

  //
  static const kActivitiesNotificationView = '/ActivitiesNotificationView';
  static const kSchoolActivitiesView = '/SchoolActivitiesView';
  static const kActivitiesView = '/ActivitiesView';
  static const kCafeteriaView = '/CafeteriaView';
  static const kCategoriesView = '/CategoriesView';
  static const kProductsView = '/ProductsView';
  static const kQuizzesView = '/QuizzesView';
  static const kDegreesView = '/DegreesView';
  static const kScheduleView = '/ScheduleView';
  static const kQuizView = '/QuizView';
  static const kActivityDetailsView = '/ActivityDetailsView';

  //
  static const kWalletDetailsView = '/WalletDetailsView';
  static const kChargeCoinsView = '/ChargeCoinsView';
  static const kPayFeesView = '/PayFeesView';
  static const kPreviousTransactionView = '/PreviousTransactionView';
  static const kNotificationsAndReportsView = '/NotificationsAndReportsView';
  static const kParentSendReportView = '/ParentSendReportView';
  static const kParentSentReportsView = '/ParentSentReportsView';
  static const kOrderProductsView = '/OrderProductsView';
  static const kApproveOrdersView = '/ApproveOrdersView';
  static const kStudentFollowUpView = '/StudentFollowUpView';
  static const kApproveActivitiesView = '/ApproveActivitiesView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          String userType = sharedPref.getString('user_type') ?? '';

          switch (userType) {
            case 'student':
              return const StudentHomeView();
            case 'parent':
              return const ParentHomeView();
            case 'teacher':
              return const TeacherHomeView();
            case 'schoolAdmin':
              return const SchoolAdminHomeView();
            case 'cafeteriaAdmin':
              return const CafeteriaAdminHomeView();
            case 'activitiesAdmin':
              return const ActivitiesAdminHomeView();
            default:
              return const FirstScreen();
          }
        },
      ),
      GoRoute(
        path: kFirstScreen,
        builder: (context, state) => const FirstScreen(),
      ),
      GoRoute(
        path: kLoginView,
        builder: (context, state) => LoginView(
          user: state.extra as Users,
        ),
      ),
      GoRoute(
        path: kSchoolAdminHomeView,
        builder: (context, state) => const SchoolAdminHomeView(),
      ),
      GoRoute(
        path: kCafeteriaAdminHomeView,
        builder: (context, state) => const CafeteriaAdminHomeView(),
      ),
      GoRoute(
        path: kActivitiesAdminHomeView,
        builder: (context, state) => const ActivitiesAdminHomeView(),
      ),
      GoRoute(
        path: kTeacherHomeView,
        builder: (context, state) => const TeacherHomeView(),
      ),
      GoRoute(
        path: kAdminsHomeView,
        builder: (context, state) => const AdminsHomeView(),
      ),
      GoRoute(
        path: kStudentHomeView,
        builder: (context, state) => const StudentHomeView(),
      ),
      GoRoute(
        path: kParentHomeView,
        builder: (context, state) => const ParentHomeView(),
      ),
      GoRoute(
        path: kCreateAccountView,
        builder: (context, state) => CreateAccountView(),
      ),
      GoRoute(
        path: kEditUserView,
        builder: (context, state) => const EditUserView(),
      ),
      GoRoute(
        path: kApproveSubjectView,
        builder: (context, state) => const ApproveSubjectView(),
      ),
      GoRoute(
        path: kAddDegreeView,
        builder: (context, state) => const AddDegreeView(),
      ),
      GoRoute(
        path: kAddExamView,
        builder: (context, state) => const AddExamView(),
      ),
      GoRoute(
        path: kSendReportView,
        builder: (context, state) => const SendReportView(),
      ),
      GoRoute(
        path: kSentReportsView,
        builder: (context, state) => const SentReportsView(),
      ),
      GoRoute(
        path: kAddProductView,
        builder: (context, state) => const AddProductView(),
      ),
      GoRoute(
        path: kAddActivityView,
        builder: (context, state) => const AddActivityView(),
      ),
      GoRoute(
        path: kAllOrdersView,
        builder: (context, state) => const AllOrdersView(),
      ),
      GoRoute(
        path: kActivitiesNotificationView,
        builder: (context, state) => const ActivitiesNotificationView(),
      ),
      GoRoute(
        path: kSchoolActivitiesView,
        builder: (context, state) => const SchoolActivitiesView(),
      ),
      GoRoute(
        path: kActivitiesView,
        builder: (context, state) => const ActivitiesView(),
      ),
      GoRoute(
        path: kCafeteriaView,
        builder: (context, state) => const CafeteriaView(),
      ),
      GoRoute(
        path: kCategoriesView,
        builder: (context, state) => const CategoriesView(),
      ),
      GoRoute(
        path: kProductsView,
        builder: (context, state) => ProductsView(
          category: state.extra as String, // Pass the category as an extra
        ),
      ),
      GoRoute(
        path: kQuizzesView,
        builder: (context, state) => const QuizzesView(),
      ),
      GoRoute(
        path: kDegreesView,
        builder: (context, state) => const DegreesView(),
      ),
      GoRoute(
        path: kScheduleView,
        builder: (context, state) => const ScheduleView(),
      ),
      GoRoute(
        path: kQuizView,
        builder: (context, state) => QuizView(
          quizModel: state.extra as QuizModel,
        ),
      ),
      GoRoute(
        path: kActivityDetailsView,
        builder: (context, state) => ActivityDetailsView(
          activityModel: state.extra as ActivityModel,
        ),
      ),
      GoRoute(
        path: kWalletDetailsView,
        builder: (context, state) => const WalletDetailsView(),
      ),
      GoRoute(
        path: kChargeCoinsView,
        builder: (context, state) => const ChargeCoinsView(),
      ),
      GoRoute(
        path: kPayFeesView,
        builder: (context, state) => const PayFeesView(),
      ),
      GoRoute(
        path: kPreviousTransactionView,
        builder: (context, state) => const PreviousTransactionView(),
      ),
      GoRoute(
        path: kNotificationsAndReportsView,
        builder: (context, state) => const NotificationsAndReportsView(),
      ),
      GoRoute(
        path: kParentSendReportView,
        builder: (context, state) => const ParentSendReportView(),
      ),
      GoRoute(
        path: kParentSentReportsView,
        builder: (context, state) => const ParentSentReportsView(),
      ),
      GoRoute(
        path: kOrderProductsView,
        builder: (context, state) => OrderProductsView(
          approvedProducts: state.extra as bool,
        ),
      ),
      GoRoute(
        path: kApproveOrdersView,
        builder: (context, state) => const ApproveOrdersView(),
      ),
      GoRoute(
        path: kStudentFollowUpView,
        builder: (context, state) => const StudentFollowUpView(),
      ),
      GoRoute(
        path: kApproveActivitiesView,
        builder: (context, state) => const ApproveActivitiesView(),
      ),
    ],
  );
}
