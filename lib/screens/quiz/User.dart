class User {
  static const String PassionCooking = 'cooking';
  static const String PassionHiking = 'hiking';
  static const String PassionTraveling = 'traveling';
  static const String PassionMusic = 'playing an instrument';
  static const String PassionYoga = 'yoga';

  String firstName = '';
  String lastName = '';
  Map<String, bool> passions = {
    PassionCooking: false,
    PassionHiking: false,
    PassionTraveling: false,
    PassionMusic: false,
    PassionYoga: false
  };
  bool newsletter = false;

  save() {
    print('It has been saved');
  }
}