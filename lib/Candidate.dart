import 'package:flutter/material.dart';

class Candidate {
  final String candidateName;
  final String candidateJob;
  final String candidateStatus;
  final String candidateSkills;
  final Icon candidateImage;

  Candidate(
      this.candidateImage,
      this.candidateJob,
      this.candidateName,
      this.candidateSkills,
      this.candidateStatus);
}