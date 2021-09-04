import 'package:cari_hotel/detail_screen.dart';
import 'package:cari_hotel/hotel_card.dart';
import 'package:cari_hotel/recommended_card.dart';
import 'package:cari_hotel/theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();

  void dispose() {
    searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 60),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.menu),
                ),
              ),
              SizedBox(height: 20),
              Text('Find Your\nPerfect Place!', style: header1),
              SizedBox(height: 20),
              Container(
                height: 55,
                padding: EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.only(right: 20),
                child: TextFormField(
                  controller: searchController,
                  decoration: InputDecoration(
                    hintText: 'Find your dream home',
                    prefixIcon: Container(
                      padding: EdgeInsets.all(10),
                      child: Icon(Icons.search, color: primaryColor),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(200),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.25),
                      offset: Offset(3, 3),
                      blurRadius: 5,
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(200),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff616161).withOpacity(0.06),
                      offset: Offset(0, 3),
                      blurRadius: 5,
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(),
                          ),
                        );
                      },
                      child: HotelCard(
                          images: 'assets/hotel1.png',
                          name: 'Villa Imah Seniman',
                          location: 'Bandung, Indonesia'),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      child: HotelCard(
                          images: 'assets/hotel2.png',
                          name: 'Katsuba Hotel',
                          location: 'Bandung, Indonesia'),
                    ),
                    SizedBox(width: 20),
                    SizedBox(width: 20),
                    GestureDetector(
                      child: HotelCard(
                          images: 'assets/hotel3.png',
                          name: 'Villa Padi',
                          location: 'Jogjakarta, Indonesia'),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      child: HotelCard(
                          images: 'assets/hotel4.png',
                          name: 'Villa Coral Flora',
                          location: 'Bali, Indonesia'),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      child: HotelCard(
                          images: 'assets/hotel5.png',
                          name: 'The Layar',
                          location: 'Bali, Indonesia'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text('Recomended For You', style: header2),
              SizedBox(height: 10),
              RecommendedCard(
                images: 'assets/recomended1.png',
                name: 'Villa Istana Bunga',
                location: 'Bandung',
              ),
              SizedBox(height: 10),
              RecommendedCard(
                images: 'assets/recomended2.png',
                name: 'Dusun Bambu Villa',
                location: 'Jogjakarta',
              ),
              SizedBox(height: 10),
              RecommendedCard(
                images: 'assets/recomended3.png',
                name: 'The Berlian Hotel',
                location: 'Semarang',
              ),
              SizedBox(height: 10),
              RecommendedCard(
                images: 'assets/recomended4.png',
                name: 'Luxury Hotel and Resort',
                location: 'Bandung',
              ),
              SizedBox(height: 10),
              RecommendedCard(
                images: 'assets/recomended5.png',
                name: 'Riza Villa',
                location: 'Jogjakarta',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
