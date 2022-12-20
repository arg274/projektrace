import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:uuid/uuid.dart';

class GovControler
{
  final FirebaseFirestore db = FirebaseFirestore.instance;
  //TODO this will move the pending project pid to the project table
  Future? approve(Uuid pid)
  {
    return null;
  }
  //TODO this will simply change the status of the project pid to be declined
  Future? disapprove(Uuid pid)
  {
    return null;
  }


}