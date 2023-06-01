import '../MedicalPractice.dart';

List<Patient> patientData = [
  Patient(
    name: 'Anmol KC',
    age: 24,
    insuranceProvider: InsuranceProvider(name: 'abc', address: 'Baalkot'),
  ),
  Patient(
    name: 'Shyam',
    age: 21,
    insuranceProvider: InsuranceProvider(name: 'xyz', address: 'New Road'),
  ),
  Patient(
    name: 'Ram KC',
    age: 23,
    insuranceProvider: InsuranceProvider(name: 'abc', address: 'Baalkot'),
  ),
  Patient(
    name: 'Hero KC',
    age: 20,
    insuranceProvider: InsuranceProvider(name: 'xyz', address: 'New Road'),
  ),
  Patient(
    name: 'Gita Kunwar',
    age: 20,
    insuranceProvider: InsuranceProvider(name: 'xyz', address: 'New Road'),
  )
];

List<Doctor> doctorsData = [
  Doctor(name: 'Bikrant', speciality: 'Opthalmology', availability: true),
  Doctor(name: 'Amreet', speciality: 'Cardiology', availability: false),
  Doctor(name: 'Aayush', speciality: 'Psychiatry', availability: true),
  Doctor(name: 'Hari', speciality: 'Neurosurgery', availability: false),
  Doctor(name: 'Balen', speciality: 'Pediatrics', availability: true),
];

List<Appointment> appointmentData = [
  Appointment(
    patient: patientData.first,
    doctor: doctorsData.first,
    dateTime: '2023-01-12',
  ),
  Appointment(
    patient: patientData[1],
    doctor: doctorsData[1],
    dateTime: '2023-01-12',
  ),
  Appointment(
    patient: patientData[2],
    doctor: doctorsData[2],
    dateTime: '2023-01-13',
  ),
  Appointment(
    patient: patientData[3],
    doctor: doctorsData[3],
    dateTime: '2023-01-13',
  ),
  Appointment(
    patient: patientData.last,
    doctor: doctorsData.last,
    dateTime: '2023-01-13',
  ),
];
