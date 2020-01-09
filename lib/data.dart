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
  const PortfolioItem('Localodge', 'Android App', '', 'assets/apps/localodge.png'),
  const PortfolioItem('Neuwly', 'Android App', '', 'assets/apps/neuwly.png'),
  const PortfolioItem('TeamPics', 'Android App', '', 'assets/apps/teampics.png'),
  const PortfolioItem('Jumpbox', 'Cross Platform', '', 'assets/apps/jumpbox.png'),
  const PortfolioItem('Devs Social', 'Android App', '', 'assets/apps/devs_social.png'),
  const PortfolioItem('Fitness TACKLer', 'Android App', '', 'assets/apps/fitness_tackler.png'),
  const PortfolioItem('Cuiseek', 'Android App', '', 'assets/apps/cuiseek.png'),
  const PortfolioItem('Mafia', 'Cross Platform', '', 'assets/apps/mafia.png')
];

class PortfolioItem {
  final String title;
  final String type;
  final String description;
  final String imagePath;
  const PortfolioItem(this.title, this.type, this.description, this.imagePath);
}
