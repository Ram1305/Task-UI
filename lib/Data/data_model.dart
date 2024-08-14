import 'package:flutter/material.dart';
import 'package:task/Values/values.dart';

class AppData {
  static final List<Map<String, dynamic>> progressIndicatorList = [
    {
      "cardTitle": "Progress Task Progress",
      "rating": "3/5",
      "progress": "50",
      "progressBar": "2"
    },
    {
      "cardTitle": "Registration",
      "rating": "3/4",
      "progress": "50.00",
      "progressBar": "3"
    },
    {
      "cardTitle": "Invite 5 Members",
      "rating": "2/5",
      "progress": "50",
      "progressBar": "1"
    },
    {
      "cardTitle": "Setup Profile",
      "rating": "3/4",
      "progress": "75",
      "progressBar": "3"
    },
    {
      "cardTitle": "Complete Workspace",
      "rating": "3/5",
      "progress": "68.99",
      "progressBar": "2"
    },
  ];

  static final List<Map<String, dynamic>> notificationMentions = [
    {
      "mentionedBy": "Elzin",
      "mentionedIn": "Unity Gaming",
      "read": false,
      "date": "Nov 2nd",
      "profileImage": "assets/memoji/1.png",
      "hashTagPresent": true,
      "userOnline": false,
      "color": "BBF1C3",
      "hashElement": "@ramram1305",
      "message":
          " when you have time please take a look at the new designs I just made in Figma. 👋"
    },
    {
      "mentionedBy": "Meena",
      "mentionedIn": "Unity Gaming",
      "read": true,
      "date": "Nov 2nd",
      "profileImage": "assets/memoji/2.png",
      "hashTagPresent": false,
      "color": "DBCFFE",
      "userOnline": true,
      "hashElement": "",
      "message":
          "Please make the presentation as soon as possible Meena. We're still waiting for it. 🏀"
    },

    {
      "mentionedBy": "Marie Bowen",
      "mentionedIn": "Productivity",
      "date": "Nov 2nd",
      "read": true,
      "profileImage": "assets/memoji/7.png",
      "hashTagPresent": false,
      "color": "FAA3FF",
      "userOnline": false,
      "hashElement": "",
      "message": "Are you actually working? We're still waiting for it. 🏀"
    },
  ];

  static final List<String> profileImages = [
    "assets/memoji/1.png",
    "assets/memoji/2.png",
    "assets/memoji/4.png",
    "assets/memoji/7.png"
  ];

  static final List<Color> groupBackgroundColors = [
    HexColor.fromHex("BCF2C7"),
    HexColor.fromHex("8D96FF"),
    HexColor.fromHex("A5F69C"),
    HexColor.fromHex("FCA3FF")
  ];

  static final List<Map<String, dynamic>> onlineUsers = [
    {
      "name": "Sam 🔥",
      "profileImage": "assets/memoji/1.png",
      "color": "BAF0C5",
    },
    {
      "name": "Ram",
      "profileImage": "assets/memoji/2.png",
      "color": "DACFFE",
    },
    {
      "name": "Raj 🎉",
      "profileImage": "assets/memoji/4.png",
      "color": "FFC7D5",
    },
    {
      "name": "Kumar 🔥",
      "profileImage": "assets/memoji/7.png",
      "color": "C0E7FD",
    },
    {
      "name": "Ruth  🔥",
      "profileImage": "assets/memoji/9.png",
      "color": "D7D2D4",
    },
    {
      "name": "Angel 🎉",
      "profileImage": "assets/memoji/4.png",
      "color": "FFC7D5",
    },
    {
      "name": "Samuel 🔥",
      "profileImage": "assets/memoji/7.png",
      "color": "C0E7FD",
    },
    {
      "name": "Master 🔥",
      "profileImage": "assets/memoji/9.png",
      "color": "D7D2D4",
    },

    {
      "name": "Vincent Lyons 🇺🇸",
      "profileImage": "assets/memoji/2.png",
      "color": "DACFFE",
    },

  ];

  static final List<Map<String, dynamic>> employeeData = [
    {
      "employeeName": "Ram",
      "employeeImage": "assets/girl_smile.png",
      "color": HexColor.fromHex("FCA3FF"),
      "activated": true,
      "employeePosition": "Senior Interactions Agent"
    },
    {
      "employeeName": "Sam",
      "employeeImage": "assets/man-head.png",
      "color": HexColor.fromHex("94F1F1"),
      "activated": false,
      "employeePosition": "Dynamic Security Technician"
    },
    {
      "employeeName": "Raju",
      "employeeImage": "assets/memoji/7.png",
      "color": HexColor.fromHex("8D96FF"),
      "activated": true,
      "employeePosition": "Senior Interactions Agent"
    },
    {
      "employeeName": "Katherine ",
      "employeeImage": "assets/memoji/2.png",
      "color": HexColor.fromHex("DBD0FD"),
      "activated": false,
      "employeePosition": "Dynamic Security Technician"
    },
    {
      "employeeName": "Bethera",
      "employeeImage": "assets/memoji/9.png",
      "color": HexColor.fromHex("FFC5D5"),
      "activated": false,
      "employeePosition": "Dynamic Security Technician"
    },

  ];

  static final List<Map<String, dynamic>> productData = [
    {
      "projectName": "Unity ",
      "category": "Design",
      "color": "A06AFA",
      "ratingsUpperNumber": 5,
      "ratingsLowerNumber": 20
    },
    {
      "projectName": "Instagram ",
      "category": "Marketing",
      "color": "8D96FF",
      "ratingsUpperNumber": 8,
      "ratingsLowerNumber": 20
    },
    {
      "projectName": "Cubbies",
      "category": "Design",
      "color": "FF968E",
      "ratingsUpperNumber": 5,
      "ratingsLowerNumber": 20
    },
    {
      "projectName": "OpenMind 🚀",
      "category": "Development",
      "color": "FFDE72",
      "ratingsUpperNumber": 19,
      "ratingsLowerNumber": 20
    },
    {
      "projectName": "UI8 Platform",
      "category": "Design",
      "color": "A06AFA",
      "ratingsUpperNumber": 10,
      "ratingsLowerNumber": 20
    },
    {
      "projectName": "3D .",
      "category": "Development",
      "color": "A6F69C",
      "ratingsUpperNumber": 18,
      "ratingsLowerNumber": 20
    },
  ];
}
