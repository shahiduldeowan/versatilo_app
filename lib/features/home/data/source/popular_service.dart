import '../../../../core/constants/assets_constants.dart';
import '../model/popular_model.dart';

List<PopularModel> popularItems = const [
  PopularModel(
    id: 1,
    title: 'Smart Watch',
    description: 'Track your fitness goals with our smart watch',
    image: AssetsConstants.smartWatch,
    price: 99.99,
  ),
  PopularModel(
    id: 2,
    title: 'Wireless Headphones',
    description: 'Enjoy your music with our wireless headphones',
    image: AssetsConstants.wirelessHeadphones,
    price: 49.99,
  ),
  PopularModel(
    id: 3,
    title: 'Power Bank',
    description: 'Charge your devices on the go with our power bank',
    image: AssetsConstants.powerBank,
    price: 29.99,
  ),
  PopularModel(
    id: 4,
    title: 'Fitness Tracker',
    description: 'Track your fitness goals with our fitness tracker',
    image: AssetsConstants.fitnessTracker,
    price: 79.99,
  ),
  PopularModel(
    id: 5,
    title: 'Smart Speaker',
    description: 'Control your home with our smart speaker',
    image: AssetsConstants.smartSpeaker,
    price: 129.99,
  ),
];
