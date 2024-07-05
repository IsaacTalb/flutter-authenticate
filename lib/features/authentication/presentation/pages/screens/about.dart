import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About Us')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Our Company',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'We are a leading company in the tech industry, committed to providing high-quality products and services to our customers. Our mission is to innovate and deliver solutions that make a difference in the world.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 24),
            MissionSection(),
            SizedBox(height: 24),
            TeamSection(),
            SizedBox(height: 24),
            SocialMediaSection(),
          ],
        ),
      ),
    );
  }
}

class MissionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Our Mission',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          'Our mission is to leverage technology to create innovative solutions that improve the quality of life for people around the world. We strive to be at the forefront of technological advancements and deliver products that exceed customer expectations.',
        ),
      ],
    );
  }
}

class TeamSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Meet Our Team',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        TeamMember(
          name: 'John Doe',
          role: 'CEO',
          imageUrl: 'https://via.placeholder.com/150',
        ),
        TeamMember(
          name: 'Jane Smith',
          role: 'CTO',
          imageUrl: 'https://via.placeholder.com/150',
        ),
        TeamMember(
          name: 'Michael Brown',
          role: 'Lead Developer',
          imageUrl: 'https://via.placeholder.com/150',
        ),
      ],
    );
  }
}

class TeamMember extends StatelessWidget {
  final String name;
  final String role;
  final String imageUrl;

  TeamMember({required this.name, required this.role, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
            radius: 30,
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(role),
            ],
          ),
        ],
      ),
    );
  }
}

class SocialMediaSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Follow Us',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Row(
          children: [
            IconButton(
              icon: Icon(FontAwesomeIcons.facebook),
              onPressed: () {
                // Navigate to Facebook
              },
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.twitter),
              onPressed: () {
                // Navigate to Twitter
              },
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.instagram),
              onPressed: () {
                // Navigate to Instagram
              },
            ),
          ],
        ),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: AboutScreen(),
  ));
}
