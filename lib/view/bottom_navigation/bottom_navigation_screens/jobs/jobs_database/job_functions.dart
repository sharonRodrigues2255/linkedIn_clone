import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/jobs/jobs_database/jobs_db.dart';

List<Map<String, dynamic>> moreJobs = [];
List<Map<String, dynamic>> recomendedJobs = [];
List<Map<String, dynamic>> hybridJobs = [];
List<Map<String, dynamic>> remoteJobs = [];

void jObsTypes() {
  recomendedJobs.clear();
  moreJobs.clear();
  final list = JobDatabase.jobPostings;
  for (Map<String, dynamic> item in list) {
    if (item["jobTitle"] == "Flutter Developer" ||
        item["jobTitle"] == "Android Developer") {
      recomendedJobs.add(item);
    } else {
      moreJobs.add(item);
    }
  }
}
