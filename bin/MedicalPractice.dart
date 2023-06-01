import 'static_data/static_data.dart';

class MedicalPractice {
  List<Patient> patientsList = patientData;
  List<Doctor> doctorsList = doctorsData;
  List<Appointment> appointmentsList = appointmentData;

  scheduleAppointments() {}
  manageAppointments() {}
  trackMedicalRecords() {}
  claimInsurance() {}

  get getPatientsList {
    for (Patient doctor in patientsList) {
      print('Patient\'s Name: ${doctor.name}');
    }
  }

  get getDoctorsList {
    for (Doctor doctor in doctorsList) {
      print('Doctor\'s Name: ${doctor.name}');
    }
  }

  get getAllAppointmentsList {
    for (Appointment appointment in appointmentsList) {
      print(
          'Patient\'s Name: ${appointment.patient.name} -- Doctor\'s Name: ${appointment.doctor.name} --Appointment Date:  ${appointment.dateTime}');
    }
  }

  getPatientWithInsuranceProvider({required String insuranceProviderName}) {
    for (Patient patient in patientData) {
      if (patient.insuranceProvider.name.toLowerCase() ==
          insuranceProviderName.toLowerCase()) {
        print(
            "Patient's Name: ${patient.name} -- Patient's Age: ${patient.age} -- Insurance Provider: ${patient.insuranceProvider.name}");
      }
    }
  }

  getPatientsAndDoctorsWithAppointmentDate({required String appointmentDate}) {
    for (Appointment appointment in appointmentData) {
      if (appointment.dateTime == appointmentDate &&
          appointment.doctor.availability) {
        print(
            "Patient's Name: ${appointment.patient.name} -- Patient's Age: ${appointment.patient.age} -- Insurance Provider: ${appointment.patient.insuranceProvider.name}");
        print(
            "Doctor's Name: ${appointment.doctor.name} -- Doctor's Speciality: ${appointment.doctor.speciality} -- Availablity: Yes");
      }
    }
  }

  getAllDoctorsWithSpeciality({required String speciality}) {
    for (Doctor doctor in doctorsList) {
      if (speciality == doctor.speciality) {
        print(
            "Doctor's Name: ${doctor.name} -- Doctor's Availability: ${doctor.availability}");
      }
    }
  }

  getAvailableDoctorsAtDateTime({required String dateTime}) {
    for (Appointment appointment in appointmentData) {
      if (dateTime == appointment.dateTime && appointment.doctor.availability) {
        print(
            "Doctor's Name: ${appointment.doctor.name} -- Doctor's Speciality: ${appointment.doctor.speciality} -- Doctor's Availability: ${appointment.doctor.availability}");
      }
    }
  }
}

class Patient {
  String name;
  int age;
  InsuranceProvider insuranceProvider;
  Patient(
      {required this.name, required this.age, required this.insuranceProvider});
}

class Doctor {
  String name;
  String speciality;
  bool availability;
  Doctor(
      {required this.name,
      required this.speciality,
      required this.availability});
}

class Appointment {
  Patient patient;
  Doctor doctor;
  String dateTime;
  Appointment(
      {required this.patient, required this.doctor, required this.dateTime});
}

class InsuranceProvider {
  String name;
  String address;
  InsuranceProvider({required this.name, required this.address});
}
