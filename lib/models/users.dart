class User {
  final int id;
  final String name;
  final String about;
  final int max;
  final int min;
  final String interest;
  final String location;
  final String type;
  final String industry;
  final String imageUrls;
  
  const User({
    required this.id, 
    required this.name, 
    required this.about, 
    required this.max, 
    required this.min, 
    required this.interest, 
    required this.location, 
    required this.type, 
    required this.industry, 
    required this.imageUrls, 
  });

  List<Object?> get props => [id, name, about, max, min, interest, location, type, industry, imageUrls];

  static List<User> users = [
    const User(
      id: 1,
      name: 'Antarprerana',
      about: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt...',
      max: 200000,
      min: 75000,
      interest: 'IT',
      location: 'Kathmandu',
      type: 'Loan',
      industry: 'IT',
      imageUrls: 'https://api.v1.jobejee.com/v2/resource/employer-logo/59e4c43e1626090219472.png'
    ),
    const User(
      id: 2,
      name: 'Hathway Investments',
      about: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt...',
      max: 100000,
      min: 75000,
      interest: 'EV',
      location: 'Kathmandu',
      type: 'Debt',
      industry: 'Automobile',
      imageUrls: 'https://www.hathwaynepal.com.np/wp-content/uploads/2021/07/New-Project-4.jpg'
    ),
    const User(
      id: 3,
      name: 'Siddhartha Capital Ltd.',
      about: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt...',
      max: 300000,
      min: 150000,
      interest: 'Hydroponics',
      location: 'Lalitpur',
      type: 'Equity',
      industry: 'Agriculture',
      imageUrls: 'https://content.sharesansar.com/photos/shares/company/1524546458-siddhartha_capital_ss.jpg'
    ),
    const User(
      id: 4,
      name: 'Shikhar Organization Ltd.',
      about: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt...',
      max: 200000,
      min: 75000,
      interest: 'FinTech',
      location: 'Kathmandu',
      type: 'Loan',
      industry: 'IT',
      imageUrls: 'https://shikharorganization.com/wp-content/uploads/2021/03/cropped-logo11.png'
    ),
  ];
}
