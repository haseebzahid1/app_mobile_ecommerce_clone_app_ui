class ExploreBanner {
  final int year;
  final String title;
  final String description;
  final String buttonTitle;

  ExploreBanner({
    required this.year,
    required this.title,
    required this.description,
    required this.buttonTitle,
  });
}

List<ExploreBanner> exploreBanner = [
  ExploreBanner(title: "Urban Collection",year:2019,buttonTitle:"SEE THE COLLECTION",description: "Discover our urban collection to spend the summer with great style."),
  ExploreBanner(title: "Urban Fashion",year:2020,buttonTitle:"SEE THE FASHION",description: "Discover our urban collection to spend the summer with great style."),
  ExploreBanner(title: "Urban Collection",year:2021,buttonTitle:"SEE THE COLLECTION",description: "Discover our urban collection to spend the summer with great style."),
  ExploreBanner(title: "Urban Fashion",year:2022,buttonTitle:"SEE THE FASHION",description: "Discover our urban collection to spend the summer with great style."),

];