// To parse this JSON data, do

//final dataModel = dataModelFromJson(jsonString);

import 'dart:convert';

DataModel dataModelFromJson(String str) => DataModel.fromJson(json.decode(str));

String dataModelToJson(DataModel data) => json.encode(data.toJson());

class DataModel {
  DataModel({
    required this.page,
    required this.perPage,
    required this.total,
    required this.totalPages,
    required this.data,
    required this.support,
  });

  int page;
  int perPage;
  int total;
  int totalPages;
  List<Datum> data;
  Support support;

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
        page: json["page"],
        perPage: json["per_page"],
        total: json["total"],
        totalPages: json["total_pages"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        support: Support.fromJson(json["support"]),
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "per_page": perPage,
        "total": total,
        "total_pages": totalPages,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "support": support.toJson(),
      };
}

class Datum {
  Datum({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });
//ab ho jayega na
  //call kr skte ho bhai kro call mere pass balance nhi mobile me
  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
        "avatar": avatar,
      };
}

class Support {
  Support({
    required this.url,
    required this.text,
  });

  String url;
  String text;

  factory Support.fromJson(Map<String, dynamic> json) => Support(
        url: json["url"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "text": text,
      };
}

const data = [
  {
    "Title": "Batman",
    "Poster":
        "https://images-na.ssl-images-amazon.com/images/M/MV5BMTYwNjAyODIyMF5BMl5BanBnXkFtZTYwNDMwMDk2._V1_.jpg"
  },
  {
    "Title": "The Dark Knight",
    "Poster":
        "https://ia.media-imdb.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_UX182_CR0,0,182,268_AL_.jpg"
  },
  {
    "Title": "Dawn of Justice",
    "Poster":
        "https://ia.media-imdb.com/images/M/MV5BYThjYzcyYzItNTVjNy00NDk0LTgwMWQtYjMwNmNlNWJhMzMyXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg"
  },
  {
    "Title": "The Dark Knight Rises",
    "Poster":
        "https://ia.media-imdb.com/images/M/MV5BMTk4ODQzNDY3Ml5BMl5BanBnXkFtZTcwODA0NTM4Nw@@._V1_UX182_CR0,0,182,268_AL_.jpg"
  },
  {
    "Title": "The LEGO Batman Movie",
    "Poster":
        "https://ia.media-imdb.com/images/M/MV5BMTcyNTEyOTY0M15BMl5BanBnXkFtZTgwOTAyNzU3MDI@._V1_UX182_CR0,0,182,268_AL_.jpg"
  },
  {
    "Title": "Batman & Robin",
    "Poster":
        "https://ia.media-imdb.com/images/M/MV5BMGQ5YTM1NmMtYmIxYy00N2VmLWJhZTYtN2EwYTY3MWFhOTczXkEyXkFqcGdeQXVyNTA2NTI0MTY@._V1_UX182_CR0,0,182,268_AL_.jpg"
  },
  {
    "Title": "Batman Returns",
    "Poster":
        "https://ia.media-imdb.com/images/M/MV5BOGZmYzVkMmItM2NiOS00MDI3LWI4ZWQtMTg0YWZkODRkMmViXkEyXkFqcGdeQXVyODY0NzcxNw@@._V1_UX182_CR0,0,182,268_AL_.jpg"
  }
];

const product = [
  {
    "assets": "assets/blog3.jpg",
    "price": "Get This Item For ₹ 259",
    "info": "assets/blolg4.jpg",
    "score": 2929528,
    "details":
        "We design high-quality furniture, accessories, and art that is aesthetically pleasing. Buy modern furniture online in India. Order Now. "
  },
  {
    "assets": "assets/blog1.jpg",
    "price": "Get This Item For ₹ 300",
    "info": "assets/blog2.jpg",
    "score": 3929528,
    "details":
        "We design high-quality furniture, accessories, and art that is aesthetically pleasing. Buy modern furniture online in India. Order Now. "
  },
  {
    // "assets/blog2.jpg"
    "assets": "assets/blog2.jpg",
    "price": "Get This Item For ₹ 159",
    "info": "assets/blog1.jpg",
    "score": 599528,
    "details":
        "We design high-quality furniture, accessories, and art that is aesthetically pleasing. Buy modern furniture online in India. Order Now. "
  },
  {
    "assets": "assets/blolg4.jpg",
    "price": "Get This Item For ₹ 999",
    "info": "assets/blog3.jpg",
    "score": 2929528,
    "details":
        "We design high-quality furniture, accessories, and art that is aesthetically pleasing. Buy modern furniture online in India. Order Now. "
  },
];

final List<Map<String, dynamic>> shopItem = [
  {
    // assets/furniture.jpg
    "materialpic": "assets/furniture.jpg",
    "materialname": "Furniture",
    "scoreprice": 7512,
  },
  {
    "materialpic": "assets/outdoor.jpg",
    "materialname": "Outdoor",
    "scoreprice": 75112,
  },
  {
    "materialpic": "assets/bed.jpg",
    "materialname": "Bed & Bath",
    "scoreprice": 11278,
  },
  {
    "materialpic": "assets/decor.jpg",
    "materialname": "Decor& Pillow",
    "scoreprice": 23065,
  },
  {
    "materialpic": "assets/rugd.jpg",
    "materialname": "Rugs",
    "scoreprice": 11792,
  },
  {
    "materialpic": "assets/lighting.jpg",
    "materialname": "Lighting",
    "scoreprice": 25257,
  },
  {
    "materialpic": "assets/renovation.jpg",
    "materialname": "Renovation",
    "scoreprice": 17639,
  },
  {
    "materialpic": "assets/appliances.jpg",
    "materialname": "Appliances",
    "scoreprice": 26409,
  },
  {
    "materialpic": "assets/kitchen.jpg",
    "materialname": "Kitchen",
    "scoreprice": 5241,
  },
  {
    "materialpic": "assets/baby.jpg",
    "materialname": "Baby & Kids",
    "scoreprice": 27517,
  },
  {
    "materialpic": "assets/offices.jpg",
    "materialname": "Offices",
    "scoreprice": 13524,
  },
  {
    "materialpic": "assets/olrganization.jpg",
    "materialname": "Organization",
    "scoreprice": 51099,
  },
];

final imgList = [
  {
    'id': 1,
    'imagepath':
        'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  },
  {
    'id': 2,
    'imagepath':
        'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  },
  {
    'id': 3,
    'imagepath':
        'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  },
  {
    'id': 4,
    'imagepath':
        'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  },
  {
    'id': 5,
    'imagepath':
        'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80',
  },
  {
    'id': 6,
    'imagepath':
        'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  },
  // 'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  // 'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  // 'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  // 'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  // 'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

const str = [
  {
    "qus": "Contrary to",
    "ans":
        "Lorem Ipsum \nis not simply\n random text. It\n has roots in a \npiece of\n classical\n Latin\n literature\n from 45\n BC,\n making \nit over\n 2000 \nyears\n old. Richard\n McClintock\n, a Latin\n professor \nEvil) \nby Cicero,\n written in \n45 BC."
  },
  {
    "qus": " popular belief,",
    "ans":
        "Lorem Ipsum \nis not simply\n random text. It\n has roots in a \npiece of\n classical\n Latin\n literature\n from 45\n BC,\n making \nit over\n 2000 \nyears\n old. Richard\n McClintock\n, a Latin\n professor \nEvil) \nby Cicero,\n written in \n45 BC."
  }
];
//  final List<Map<String, dynamic>> _allUsers = [
//     {
//       "image":
//           "https://im.rediff.com/300-300/movies/2019/oct/14neeraj-madhav2.jpg",
//       "id": 1,
//       "name": "Dr. Manu Kumar",
//       "des": "Co-founder & CEO @ ",
//     },
//     {
//       "id": 2,
//       "name": "BL Kumawat",
//       "des": "Co-founder & CEO @ ",
//       "image":
//           "https://upload.wikimedia.org/wikipedia/en/4/47/Iron_Man_%28circa_2018%29.png",
//     },
//     {
//       "id": 3,
//       "name": "Rohit Kumar",
//       "des": "Co-founder & CEO @ ",
//       "image":
//           "https://sa1s3optim.patientpop.com/assets/images/provider/photos/1888657.jpg",
//     },
//     {
//       "id": 4,
//       "name": "Mitesh Raj",
//       "des": "Co-founder & CEO @ ",
//       "image":
//           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_LmG47_W3RM0QBVGI23-vodL_oOOJxLIBrg&usqp=CAU",
//     },
//     {
//       "id": 5,
//       "name": "Dr. Manu Kumar",
//       "des": "Co-founder & CEO @ ",
//       "image":
//           "https://img.freepik.com/free-photo/black-man-city_1157-17027.jpg?w=2000",
//     },
//     {
//       "id": 6,
//       "name": "Deno James",
//       "des": "Co-founder & CEO @ ",
//       "image":
//           "https://media.gettyimages.com/photos/portrait-of-smiling-mid-adult-man-wearing-tshirt-picture-id985138674?s=612x612",
//     },
//     {
//       "id": 7,
//       "name": "Kaviraj Patil",
//       "des": "Co-founder & CEO @ ",
//       "image":
//           "https://image.shutterstock.com/image-photo/handsome-young-man-running-across-260nw-587931092.jpg",
//     },
//     {
//       "id": 8,
//       "name": "Raja Ram",
//       "des": "Co-founder & CEO @ ",
//       "image":
//           "https://media.istockphoto.com/photos/portrait-of-young-happy-indian-business-man-executive-looking-at-picture-id1309489745?b=1&k=20&m=1309489745&s=170667a&w=0&h=Wo_7nESC_ePyEYfEsnOm-rP6ElkxbWqIB3Ga4W3nw8M=",
//     },
//     {
//       "id": 9,
//       "name": "Caversky",
//       "des": "Co-founder & CEO @ ",
//       "image":
//           "https://media.istockphoto.com/photos/young-man-looking-at-digital-tablet-picture-id1184382530?k=20&m=1184382530&s=612x612&w=0&h=-G67wR9BU2-XqLTR70purl0vb2PFbu3OAg0T7O_ZpiI=",
//     },
//     {
//       "id": 10,
//       "name": "Becky",
//       "des": "Co-founder & CEO @ ",
//       "image":
//           "https://e0.365dm.com/22/06/2048x1152/skysports-erling-haaland-man-city_5803257.jpg",
//     },
//   ];
const ExpentionHeader = [
  {
    "expheader": "Deal zone",
    "expsecondry": "top deals",
    "details":
        "We design high-quality furniture, accessories, and art that is aesthetically pleasing. Buy modern furniture online in India. Order Now. "
  },
  {
    "assets": "assets/blog1.jpg",
    "price": "Get This Item For ₹ 300",
    "info": "assets/blog2.jpg",
    "score": 3929528,
    "details":
        "We design high-quality furniture, accessories, and art that is aesthetically pleasing. Buy modern furniture online in India. Order Now. "
  },
  {
    // "assets/blog2.jpg"
    "assets": "assets/blog2.jpg",
    "price": "Get This Item For ₹ 159",
    "info": "assets/blog1.jpg",
    "score": 599528,
    "details":
        "We design high-quality furniture, accessories, and art that is aesthetically pleasing. Buy modern furniture online in India. Order Now. "
  },
  {
    "assets": "assets/blolg4.jpg",
    "price": "Get This Item For ₹ 999",
    "info": "assets/blog3.jpg",
    "score": 2929528,
    "details":
        "We design high-quality furniture, accessories, and art that is aesthetically pleasing. Buy modern furniture online in India. Order Now. "
  },
];
