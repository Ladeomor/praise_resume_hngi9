import 'package:flutter/material.dart';
import 'package:portfolioo_app/constants/text.dart';

class PictureHeaderSection extends StatelessWidget {
  const PictureHeaderSection({Key? key}) : super(key: key);
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    final top = 200 - profileHeight/2;
    final bottom = profileHeight/2;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
            margin: EdgeInsets.only(bottom: bottom),
            child: _buildCoverImage()),
        Positioned(
            top: top,
            child: _buildProfileImage()),
        Positioned(
            top: 220,
            child: _buildContent())
      ],
    );
  }
  Widget _buildProfileImage(){
    return CircleAvatar(radius: 50, child: ClipOval(child: Image.asset('assets/images/praise-two.jpg',fit: BoxFit.cover, width: 150, height:150 ),));

  }
  Widget _buildCoverImage(){
    return Container(
      color: Colors.grey,
      child: Image.asset('assets/images/header.jpg',  width: double.infinity,
        height: 200, fit: BoxFit.cover,),


    );
  }

  Widget _buildContent(){
    return Column(
      children: [
        const SizedBox(height: 8,),
        AppLargeText(text: 'Odeyemi Praise', size: 20,),
        const SizedBox(height: 8,),
        AppText(text: 'Mobile Developer')

      ],
    );
  }
}