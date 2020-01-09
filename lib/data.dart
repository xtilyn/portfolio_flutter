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
    'https://play.google.com/store/apps/details?id=com.latticestudios.neuwly'
    ),
  const PortfolioItem(
    'TeamPics', 
    'Android App', 
    'A kiosk and management software for photographers. Built while working for Lattice Studios. Made with Kotlin, Firebase, and Room using MVVM design architecture.', 
    'assets/apps/teampics.png',
    ['Firebase', 'Kotlin', 'Algolia'],
    'https://play.google.com/store/apps/details?id=com.latticestudios.teampicsmobile'
    ),
  const PortfolioItem(
    'Jumpbox', 
    'Cross Platform', 
    '', 
    'assets/apps/jumpbox.png',
    ['Firebase', 'Kotlin', 'Algolia'],
    ''
    ),
  const PortfolioItem(
    'Devs Social', 
    'Android App', 
    'A social media platform that provides networking and collaborative space for developers. Features include in-app messaging, personalized portfolio, notifications, projects showcase, and more.', 
    'assets/apps/devs_social.png',
    ['Firebase', 'Kotlin', 'Algolia'],
    'https://www.devssocial.com/'
    ),
  const PortfolioItem(
    'Fitness TACKLer', 
    'Android App', 
    'A fitness app geared towards power lifting. Developed with Xamarin and C#, built with emphasis on UI and User Experience design.', 
    'assets/apps/fitness_tackler.png',
    ['Firebase', 'Kotlin', 'Algolia'],
    ''
    ),
  const PortfolioItem(
    'Cuiseek', 
    'Android App', 
    'Worked on several social media features for the app using Java and Firebase', 
    'assets/apps/cuiseek.png',
    ['Firebase', 'Kotlin', 'Algolia'],
    'https://play.google.com/store/apps/details?id=com.cuiseek.android'
    ),
  const PortfolioItem(
    'Mafia', 
    'Cross Platform', 
    'A java application based on the popular Mafia party game.', 
    'assets/apps/mafia.png',
    ['Firebase', 'Kotlin', 'Algolia'],
    'https://github.com/elvinlimpin/Mafia',
    ),
    const PortfolioItem(
      'Localodge',
      'Android App', 
      'A local classifieds app', 
      'assets/apps/localodge.png',
      ['Firebase', 'Kotlin', 'Algolia'],
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
  const PortfolioItem(this.title, this.type, this.description, this.imagePath, this.tags, this.url);
}
