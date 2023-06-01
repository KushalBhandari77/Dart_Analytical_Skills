import 'MedicalPractice.dart';

void main() {
  print(getMedicalData());
}

getMedicalData() {
  MedicalPractice medicalPractice = MedicalPractice();
  // medicalPractice.getAllAppointmentsList;
  // medicalPractice.getDoctorsList;
  // medicalPractice.getPatientsList;
  // medicalPractice.getPatientWithInsuranceProvider(insuranceProviderName: 'abc');
  // medicalPractice.getPatientWithInsuranceProvider(insuranceProviderName: 'xyz');
  // medicalPractice.getPatientsAndDoctorsWithAppointmentDate(
  //     appointmentDate: '2023-01-13');
  // medicalPractice.getAllDoctorsWithSpeciality(speciality: "Pediatrics");
  medicalPractice.getAvailableDoctorsAtDateTime(dateTime: "2023-01-13");

  return '';
}
