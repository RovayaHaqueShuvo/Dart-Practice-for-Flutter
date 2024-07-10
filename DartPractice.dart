import 'dart:math';

void main() {
  var doctors = [
    {
      "Name": "Doctor Amzid",
      "Specialist in": "Dermatologist",
      "Service charge": 1000
    },
    {
      "Name": "Doctor Hossain",
      "Specialist in": "Neuro",
      "Service charge": 1000
    },
    {
      "Name": "Doctor Devodotto",
      "Specialist in": "Orthopedist",
      "Service charge": 1000
    },
    {
      "Name": "Doctor Nila",
      "Specialist in": "Gynecologist",
      "Service charge": 500
    },
    {
      "Name": "Doctor Subha",
      "Specialist in": "Psychologist",
      "Service charge": 1500
    }
  ];

  var patients = [
    {"name": "Muhibullah", "mobile": "+8801688446611"},
    {"name": "Muhin", "mobile": "+88016363467471"},
    {"name": "Habibullah", "mobile": "+8801686466561"},
    {"name": "Abdullah", "mobile": "+8801688446611"},
    {"name": "Sofiullah", "mobile": "+8801688446611"},
    {"name": "Kolimullah", "mobile": "+8801688446611"},
    {"name": "Sah-Zada", "mobile": "+8801688446611"},
    {"name": "Subaita", "mobile": "+880168865654"},
    {"name": "Karin", "mobile": "+880168654654"},
    {"name": "Soniya", "mobile": "+8801685465451"},
    {"name": "Resi", "mobile": "+8801688446511"},
    {"name": "Said", "mobile": "+88016884465461"},
    {"name": "Sakib", "mobile": "+8801688465411"}
  ];

  var random = Random();
  for (var doctor in doctors) {
    print('Name: ${doctor['Name']}');
    print('Specialist in: ${doctor['Specialist in']}');
    print('Service charge: ${doctor["Service charge"]}\n');

    // Shuffle patients
    patients.shuffle(random);

    // Determine random number of patients (minimum 1)
    int numPatients = random.nextInt(patients.length) + 1;

    print('Patient(s):');
    for (var i = 0; i < numPatients; i++) {
      var patient = patients[i];
      print('  Name: ${patient['name']}');
      print('  Mobile: ${patient['mobile']}\n');
    }
    print('\n');
  }
}
