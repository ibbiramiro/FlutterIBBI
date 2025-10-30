import '../models/news_model.dart';
import '../models/promo_model.dart';
import '../models/feature_model.dart';

class DummyData {
  static List<NewsModel> getNewsData() {
    return [
      NewsModel(
        id: '1',
        title: 'Donasi untuk Gaza',
        description: 'Starbucks Indonesia - donasi bersama untuk membantu saudara-saudara kita di Gaza',
        imageUrl: 'https://via.placeholder.com/100x100/006241/FFFFFF?text=GOOD+THINGS',
        category: 'News',
        publishedAt: DateTime.now().subtract(const Duration(days: 1)),
      ),
      NewsModel(
        id: '2',
        title: 'Starbucks Features',
        description: 'Get the best of Starbucks Rewards right at your fingertips',
        imageUrl: 'https://via.placeholder.com/100x100/006241/FFFFFF?text=FEATURES',
        category: 'Features',
        publishedAt: DateTime.now().subtract(const Duration(days: 2)),
      ),
      NewsModel(
        id: '3',
        title: 'Starbucks Benefits',
        description: 'As a Starbucks Rewards member, you get exclusive benefits',
        imageUrl: 'https://via.placeholder.com/100x100/006241/FFFFFF?text=BENEFITS',
        category: 'Benefits',
        publishedAt: DateTime.now().subtract(const Duration(days: 3)),
      ),
    ];
  }

  static List<PromoModel> getPromoData() {
    return [
      PromoModel(
        id: '1',
        title: 'Meet Up Sambil Nyeruput Americano',
        description: 'diterbangin ke STARBUCKS RESERVE™ ROASTERY Tokyo',
        imageUrl: 'https://via.placeholder.com/300x200/F5F5DC/006241?text=ROASTERY+Tokyo',
        category: 'Contest',
        prizes: [
          'Fly soon to 3 Winners STARBUCKS RESERVE ROASTERY TOKYO',
          '3 Winners IPHONE 16',
          '20 Winners 1 YEAR FREE BEVERAGE',
        ],
        monthlyPerks: [
          '10 Free Tumbler',
          '10 Free Mug',
          '10 Starbucks Card (100rb)',
          '20 Starbucks Card (50rb)',
          '50 Reward Free Beverage (Tall)',
        ],
      ),
      PromoModel(
        id: '2',
        title: 'Starbucks Rewards Special',
        description: 'Earn more stars with every purchase',
        imageUrl: 'https://via.placeholder.com/300x200/006241/FFFFFF?text=REWARDS',
        category: 'Rewards',
        prizes: [
          'Double Stars Weekend',
          'Free Birthday Drink',
          'Exclusive Member Discounts',
        ],
        monthlyPerks: [
          'Free Tall Beverage',
          'Free Pastry',
          '50% Off Merchandise',
        ],
      ),
    ];
  }

  static List<FeatureModel> getFeatureData() {
    return [
      FeatureModel(
        id: '1',
        title: 'Starbucks Rewards',
        description: 'Earn stars with every purchase and unlock exclusive benefits',
        icon: 'star',
        category: 'Rewards',
      ),
      FeatureModel(
        id: '2',
        title: 'Mobile Order',
        description: 'Order ahead and skip the line',
        icon: 'local_cafe',
        category: 'Order',
      ),
      FeatureModel(
        id: '3',
        title: 'Store Locator',
        description: 'Find the nearest Starbucks store',
        icon: 'store',
        category: 'Store',
      ),
      FeatureModel(
        id: '4',
        title: 'Digital Card',
        description: 'Pay with your phone using Starbucks Card',
        icon: 'credit_card',
        category: 'Payment',
      ),
    ];
  }
}
