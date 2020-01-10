List<String> images = [
  "assets/image_04.jpg",
  "assets/image_03.jpg",
  "assets/image_02.jpg",
  "assets/image_01.png",
];

List<String> title = [
  "Hounted Ground",
  "Fallen In Love",
  "The Dreaming Moon",
  "Jack the Persian and the Black Castel",
];

List<PortfolioItem> portfolioItems = [
  const PortfolioItem(
    'Neuwly', 
    'Android App', 
    'A social media application that features in-app messaging, augmented reality, event booking, text and media posts among users, and geo search.', 
    'assets/apps/neuwly.png',
    ['Firebase', 'Kotlin', 'Algolia', 'ARCore', 'Room', 'Dagger', 'RxJava', 'Google Places API', 'Android Jetpack'],
    'https://play.google.com/store/apps/details?id=com.latticestudios.neuwly',
    '2019',
    '7 months',
    'Lattice Studios',
    'https://www.latticestudios.com/'
    ),
  const PortfolioItem(
    'TeamPics', 
    'Android App', 
    'A kiosk and management software for photographers. Built while working for Lattice Studios. Made with Kotlin, Firebase, and Room using MVVM design architecture.', 
    'assets/apps/teampics.png',
    ['Firebase', 'Kotlin', 'Algolia'],
    'https://play.google.com/store/apps/details?id=com.latticestudios.teampicsmobile',
    '2019',
    '4 months',
    'Lattice Studios',
    'https://www.latticestudios.com/'
    ),
  const PortfolioItem(
    'Jumpbox', 
    'Cross Platform', 
    '', 
    'assets/apps/jumpbox.png',
    ['Firebase', 'Kotlin', 'Algolia'],
    '',
    '2019',
    '6 months',
    'CS 441 - Computer Networks \nUniversity Of Calgary',
    'https://www.ucalgary.ca/'
    ),
  const PortfolioItem(
    'Devs Social', 
    'Android App', 
    'A social media platform that provides networking and collaborative space for developers. Features include in-app messaging, personalized portfolio, notifications, projects showcase, and more.', 
    'assets/apps/devs_social.png',
    ['Firebase', 'Kotlin', 'Algolia'],
    'https://www.devssocial.com/',
    '2017',
    '2 years',
    'Personal Project',
    ''
    ),
  const PortfolioItem(
    'Fitness TACKLer', 
    'Android App', 
    'A fitness app geared towards power lifting. Developed with Xamarin and C#, built with emphasis on UI and User Experience design.', 
    'assets/apps/fitness_tackler.png',
    ['Firebase', 'Kotlin', 'Algolia'],
    '',
    '2018',
    '6 months',
    'CS 481 - Human Computers Interaction \nUniversity Of Calgary',
    'https://www.ucalgary.ca/'
    ),
  const PortfolioItem(
    'Cuiseek', 
    'Android App', 
    'Worked on several social media features for the app using Java and Firebase', 
    'assets/apps/cuiseek.png',
    ['Firebase', 'Kotlin', 'Algolia'],
    'https://play.google.com/store/apps/details?id=com.cuiseek.android',
    '2018',
    '4 months',
    'Personal Internship @ Cuiseek',
    'http://cuiseek.com/'
    ),
  const PortfolioItem(
    'Mafia', 
    'Cross Platform', 
    'A java application based on the popular Mafia party game.', 
    'assets/apps/mafia.png',
    ['Firebase', 'Kotlin', 'Algolia'],
    '',
    '2017',
    '6 months',
    'Personal Project',
    ''
    ),
    const PortfolioItem(
      'Localodge',
      'Android App', 
      'A local classifieds app', 
      'assets/apps/localodge.png',
      ['Firebase', 'Kotlin', 'Algolia'],
      '',
      '2019',
      'Ongoing',
      'Personal Project',
      ''
    ),
];

class PortfolioItem {
  final String title;
  final String type;
  final String description;
  final String imagePath;
  final List<String> tags;
  final String url;

  final String year;
  final String projectLength;
  final String associatedWith;
  final String companyUrl;
  const PortfolioItem(this.title, this.type, this.description, this.imagePath, this.tags, this.url, this.year, this.projectLength, this.associatedWith, this.companyUrl);
}
