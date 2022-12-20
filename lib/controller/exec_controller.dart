import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:uuid/uuid.dart';

class ExecutiveController
{
  final FirebaseFirestore db = FirebaseFirestore.instance;
  //TODO this will return all the projects under this user
  Query<Map<String, dynamic>>? listCurrentProjects(String execId)
  {
    return db.collection("projects").where("exec" , isEqualTo: execId);
    //return null;
  }
  //TODO this will return all projects under this user with sorted order
  Future? listCurrentProjectsFiltered(Uuid execId, String type)
  {
    return null;
  }

  //TODO this will edit a project, delete and create basically
  Future? editProject(Uuid execId,String name, String location,
      double latitude, double longitude, double cost, double timespan,
      String goal, DateTime proposalDate)
  {
    //basically resubmitting and deleting the old one
    return null;
  }
  //TODO this will delete the project
  Future? deleteProject(Uuid pid)
  {
    return null;
  }

  //TODO this will create a project
  Future? createProject(Uuid execId,String name, String location,
      double latitude, double longitude, double cost, double timespan,
      String goal, DateTime proposalDate)
  {
    //basically creating a new tuple
    return null;
  }




}