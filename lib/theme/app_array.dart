
import 'package:buaberry_mobile/routes/app_pages.dart';
import 'package:buaberry_mobile/shared/assets/assets.dart';

import 'theme_font.dart';

class AppArray {
  var bottomList = [
    {'icon': foSvgAssets.foodHome, 'title': "home"},
    {'icon': foSvgAssets.foodSearch, 'title': "search"},
    {'icon': foSvgAssets.foodCart, 'title': "cart"},
    {'icon': foSvgAssets.foodOffer, 'title': "offers"},
    {'icon': foSvgAssets.foodUser, 'title': "profile"}
  ];

  //banner list
  var bannerList = [
    {
      "title": "Food1",
      "desc": "terms",
      "offer": "50%",
      "image": foImageAssets.banner1
    },
    {
      "title": "Food2",
      "desc": "terms",
      "offer": "50%",
      "image": foImageAssets.banner2
    }
  ];

  //cuisine list
  var cuisineList = [
    {'title': 'mexican', 'image': foImageAssets.mexican},
    {'title': 'chinese', 'image': foImageAssets.chinese},
    {'title': 'italian', 'image': foImageAssets.italian},
    {'title': 'thai', 'image': foImageAssets.thai}
  ];

  //instruction list
  var instructionList = [
    {'title': 'fastDelivery', 'image': foIconAssets.truck},
    {'title': 'pureVeg', 'image': foIconAssets.veg},
    {'title': 'greatOffer', 'image': foGifAssets.offer}
  ];

  //near by restaurant
  var nearByRestaurant = [
    {
      "image": foImageAssets.nearBy1,
      "name": "theSoupFactory",
      "foodType": "northIndian",
      "rating": 4.7,
      "arriveTime": "20min",
      "distance": "1km",
      "isBestSeller": false,
      "isNewOpen": false,
      "offer": "",
      "address": "626 Green Acres Road, Charlotte,",
      "state": "United States",
      "city": "North Carolina,",
      "price": "25",
      "priceForPeople": "two",
      "qty": 0,
    },
    {
      "image": foImageAssets.nearBy2,
      "name": "gourmetNachoSpot",
      "foodType": "multiCuisine",
      "rating": 5.0,
      "arriveTime": "25min",
      "distance": "1.5km",
      "isBestSeller": false,
      "isNewOpen": false,
      'offer': "",
      "address": "626 Green Acres Road, Charlotte,",
      "state": "United States",
      "city": "North Carolina,",
      "price": "30",
      "priceForPeople": "three",
      "qty": 0,
    },
    {
      "image": foImageAssets.nearBy3,
      "name": "farmToTable",
      "foodType": "mexicanContinental",
      "rating": 4.2,
      "arriveTime": "28min",
      "distance": "2km",
      "isBestSeller": false,
      "isNewOpen": false,
      'offer': "",
      "address": "626 Green Acres Road, Charlotte,",
      "state": "United States",
      "city": "North Carolina,",
      "price": "30",
      "priceForPeople": "three",
      "qty": 0,
    }
  ];

  //featured restaurant
  var featuredRestaurant = [
    {
      "image": foImageAssets.product1,
      "name": "cafeJack",
      "foodType": "multiCuisine",
      "rating": 4.1,
      "arriveTime": "35min",
      "distance": "2km",
      "isBestSeller": true,
      "isNewOpen": false,
      'offer': "50off",
      "address": "626 Green Acres Road, Charlotte,",
      "state": "United States",
      "city": "North Carolina,",
      "price": "20",
      "priceForPeople": "two",
      "qty": 0,
    },
    {
      "image": foImageAssets.product2,
      "name": "earthWind",
      "foodType": "mexicanContinental",
      "rating": 4.2,
      "arriveTime": "28min",
      "distance": "2km",
      "isBestSeller": false,
      "isNewOpen": false,
      'offer': "40off",
      "address": "626 Green Acres Road, Charlotte,",
      "state": "United States",
      "city": "North Carolina,",
      "price": "30",
      "priceForPeople": "three",
      "qty": 0,
    },
    {
      "image": foImageAssets.product3,
      "name": "wokThisWay",
      "foodType": "northIndian",
      "rating": 4.2,
      "arriveTime": "28min",
      "distance": "2km",
      "isBestSeller": false,
      "isNewOpen": false,
      'offer': "50off",
      "address": "626 Green Acres Road, Charlotte,",
      "state": "United States",
      "city": "North Carolina,",
      "price": "30",
      "priceForPeople": "three",
      "qty": 0,
    }
  ];

  //must try
  var mustTryList = [
    {
      "image": foImageAssets.product4,
      "name": "theZenGarden",
      "foodType": "multiCuisine",
      "rating": 5.0,
      "arriveTime": "20min",
      "distance": "2km",
      "isBestSeller": false,
      "isNewOpen": false,
      'offer': "30off",
      "address": "626 Green Acres Road, Charlotte,",
      "state": "United States",
      "city": "North Carolina,",
      "price": "30",
      "priceForPeople": "three",
      "qty": 0,
    },
    {
      "image": foImageAssets.product5,
      "name": "yinYummy",
      "foodType": "mexicanContinental",
      "rating": 4.8,
      "arriveTime": "25min",
      "distance": "1.5km",
      "isBestSeller": false,
      "isNewOpen": false,
      'offer': "45off",
      "address": "626 Green Acres Road, Charlotte,",
      "state": "United States",
      "city": "North Carolina,",
      "price": "35",
      "priceForPeople": "three",
      "qty": 0,
    },
    {
      "image": foImageAssets.product3,
      "name": "wokThisWay",
      "foodType": "northIndian",
      "rating": 4.2,
      "arriveTime": "28min",
      "distance": "2km",
      "isBestSeller": false,
      "isNewOpen": false,
      'offer': "50off",
      "address": "626 Green Acres Road, Charlotte,",
      "state": "United States",
      "city": "North Carolina,",
      "price": "35",
      "priceForPeople": "two",
      "qty": 0,
    }
  ];

  //shop
  var shopList = [
    {
      "image": foImageAssets.product5,
      "name": "theSoupFactory",
      "foodType": "multiCuisine",
      "rating": 4.1,
      "arriveTime": "35min",
      "distance": "4km",
      "isBestSeller": true,
      "isNewOpen": false,
      'offer': "",
      "address": "626 Green Acres Road, Charlotte,",
      "state": "United States",
      "city": "North Carolina,",
      "price": "30",
      "priceForPeople": "three",
      "qty": 0,
    },
    {
      "image": foImageAssets.product2,
      "name": "gourmetNachoSpot",
      "foodType": "multiCuisine",
      "rating": 4.1,
      "arriveTime": "35min",
      "distance": "4km",
      "isBestSeller": false,
      "isNewOpen": true,
      'offer': "",
      "address": "626 Green Acres Road, Charlotte,",
      "state": "United States",
      "city": "North Carolina,",
      "price": "30",
      "priceForPeople": "three",
      "qty": 0,
    },
    {
      "image": foImageAssets.product1,
      "name": "yinYummy",
      "foodType": "multiCuisine",
      "rating": 4.1,
      "arriveTime": "35min",
      "distance": "4km",
      "isBestSeller": false,
      "isNewOpen": false,
      'offer': "",
      "address": "626 Green Acres Road, Charlotte,",
      "state": "United States",
      "city": "North Carolina,",
      "price": "30",
      "priceForPeople": "three",
      "qty": 0,
    },
    {
      "image": foImageAssets.product4,
      "name": "farmToTable",
      "foodType": "multiCuisine",
      "rating": 4.1,
      "arriveTime": "35min",
      "distance": "4km",
      "isBestSeller": false,
      "isNewOpen": false,
      'offer': "",
      "address": "626 Green Acres Road, Charlotte,",
      "state": "United States",
      "city": "North Carolina,",
      "price": "30",
      "priceForPeople": "three",
      "qty": 0,
    },
    {
      "image": foImageAssets.nearBy2,
      "name": "earthWind",
      "foodType": "multiCuisine",
      "rating": 4.1,
      "arriveTime": "35min",
      "distance": "4km",
      "isBestSeller": false,
      "isNewOpen": false,
      'offer': "",
      "address": "626 Green Acres Road, Charlotte,",
      "state": "United States",
      "city": "North Carolina,",
      "price": "30",
      "priceForPeople": "three",
      "qty": 0,
    },
    {
      "image": foImageAssets.nearBy3,
      "name": "earthWind",
      "foodType": "multiCuisine",
      "rating": 4.1,
      "arriveTime": "35min",
      "distance": "4km",
      "isBestSeller": false,
      "isNewOpen": false,
      'offer': "",
      "address": "626 Green Acres Road, Charlotte,",
      "state": "United States",
      "city": "North Carolina,",
      "price": "30",
      "priceForPeople": "three",
      "qty": 0,
    }
  ];

  //recent list
  var recentList = [
    {'title': 'theSoupFactory'},
    {'title': 'gourmetNachoSpot'},
    {'title': 'cheeseBurst'},
    {'title': 'mexicanFood'}
  ];

  //restaurant offer
  var restaurantOffer = [
    {'title': '50off25', 'code': 'MULTIKIT50'},
    {'title': '20off', 'code': 'MULTIKIT20'}
  ];

  //restaurant category
  var restaurantCategory = [
    {
      "id": 1,
      "title": "recommended",
      'product': [
        {
          "image": foImageAssets.product6,
          "name": "vegCheeseQuesadillas",
          "foodType": "multiCuisine",
          "rating": 4.5,
          "arriveTime": "35min",
          "distance": "4km",
          "isBestSeller": true,
          "isNewOpen": false,
          'offer': "",
          "address": "626 Green Acres Road, Charlotte,",
          "state": "United States",
          "city": "North Carolina,",
          "price": "25",
          "priceForPeople": "three",
          "qty": 0,
          "variants": [
            {
              "title": "choiceOfVegetables",
              "data": [
                {"title": "lettuce"},
                {"title": "cucumbers"},
                {"title": "tomatoes"},
                {"title": "capsicums"},
                {"title": "tomatoes"},
                {"title": "olives"},
                {"title": "redPaprika"},
                {"title": "onion"},
                {"title": "babyCorn"}
              ]
            }
          ]
        },
        {
          "image": foImageAssets.product5,
          "name": "barbarescaPasta",
          "foodType": "multiCuisine",
          "rating": 4.5,
          "arriveTime": "35min",
          "distance": "4km",
          "isBestSeller": false,
          "isNewOpen": true,
          'offer': "",
          "address": "626 Green Acres Road, Charlotte,",
          "state": "United States",
          "city": "North Carolina,",
          "price": "25",
          "priceForPeople": "three",
          "qty": 0,
          "variants": [
            {
              "title": "choiceOfVegetables",
              "data": [
                {"title": "lettuce"},
                {"title": "cucumbers"},
                {"title": "tomatoes"},
                {"title": "capsicums"},
                {"title": "tomatoes"},
                {"title": "olives"},
              ]
            }
          ]
        },
        {
          "image": foImageAssets.product7,
          "name": "sproutsSalad",
          "foodType": "multiCuisine",
          "rating": 4.1,
          "arriveTime": "35min",
          "distance": "4km",
          "isBestSeller": false,
          "isNewOpen": false,
          'offer': "",
          "address": "626 Green Acres Road, Charlotte,",
          "state": "United States",
          "city": "North Carolina,",
          "price": "30",
          "priceForPeople": "three",
          "qty": 0,
        }
      ]
    },
    {
      "id": 2,
      "title": "quickBites",
      'product': [
        {
          "image": foImageAssets.product8,
          "name": "fries",
          "foodType": "multiCuisine",
          "rating": 4.1,
          "arriveTime": "35min",
          "distance": "4km",
          "isBestSeller": false,
          "isNewOpen": false,
          'offer': "",
          "address": "626 Green Acres Road, Charlotte,",
          "state": "United States",
          "city": "North Carolina,",
          "price": "30",
          "priceForPeople": "three",
          "qty": 0,
          "variants": [
            {
              "title": "choiceOfVegetables",
              "data": [
                {"title": "lettuce"},
                {"title": "cucumbers"},
                {"title": "tomatoes"},
                {"title": "capsicums"},
                {"title": "tomatoes"}
              ]
            }
          ]
        },
        {
          "image": foImageAssets.product9,
          "name": "cheeseSticks",
          "foodType": "multiCuisine",
          "rating": 4.1,
          "arriveTime": "35min",
          "distance": "4km",
          "isBestSeller": false,
          "isNewOpen": false,
          'offer': "",
          "address": "626 Green Acres Road, Charlotte,",
          "state": "United States",
          "city": "North Carolina,",
          "price": "30",
          "priceForPeople": "three",
          "qty": 0,
          "variants": [
            {
              "title": "choiceOfVegetables",
              "data": [
                {"title": "lettuce"},
                {"title": "cucumbers"},
                {"title": "tomatoes"},
                {"title": "capsicums"},
                {"title": "tomatoes"},
                {"title": "olives"},
                {"title": "redPaprika"}
              ]
            }
          ]
        },
        {
          "image": foImageAssets.product10,
          "name": "garlicBread",
          "foodType": "multiCuisine",
          "rating": 4.1,
          "arriveTime": "35min",
          "distance": "4km",
          "isBestSeller": false,
          "isNewOpen": false,
          'offer': "",
          "address": "626 Green Acres Road, Charlotte,",
          "state": "United States",
          "city": "North Carolina,",
          "price": "30",
          "priceForPeople": "three",
          "qty": 0,
        },
        {
          "image": foImageAssets.product11,
          "name": "sandwich",
          "foodType": "multiCuisine",
          "rating": 4.1,
          "arriveTime": "35min",
          "distance": "4km",
          "isBestSeller": false,
          "isNewOpen": false,
          'offer': "",
          "address": "626 Green Acres Road, Charlotte,",
          "state": "United States",
          "city": "North Carolina,",
          "price": "30",
          "priceForPeople": "three",
          "qty": 0,
        }
      ]
    },
    {
      "id": 3,
      "title": "sandwiches",
      'product': [
        {
          "image": foImageAssets.product11,
          "name": "grilledCheeseSandwich",
          "foodType": "multiCuisine",
          "rating": 4.1,
          "arriveTime": "35min",
          "distance": "4km",
          "isBestSeller": false,
          "isNewOpen": false,
          'offer': "",
          "address": "626 Green Acres Road, Charlotte,",
          "state": "United States",
          "city": "North Carolina,",
          "price": "30",
          "priceForPeople": "three",
          "qty": 0,
        },
        {
          "image": foImageAssets.product12,
          "name": "hamSandwich",
          "foodType": "multiCuisine",
          "rating": 4.1,
          "arriveTime": "35min",
          "distance": "4km",
          "isBestSeller": false,
          "isNewOpen": false,
          'offer': "",
          "address": "626 Green Acres Road, Charlotte,",
          "state": "United States",
          "city": "North Carolina,",
          "price": "30",
          "priceForPeople": "three",
          "qty": 0,
        },
        {
          "image": foImageAssets.product13,
          "name": "cheeseSandwich",
          "foodType": "multiCuisine",
          "rating": 4.1,
          "arriveTime": "35min",
          "distance": "4km",
          "isBestSeller": false,
          "isNewOpen": false,
          'offer': "",
          "address": "626 Green Acres Road, Charlotte,",
          "state": "United States",
          "city": "North Carolina,",
          "price": "30",
          "priceForPeople": "three",
          "qty": 0,
        }
      ]
    },
    {
      "id": 4,
      "title": "pizza",
      'product': [
        {
          "image": foImageAssets.product14,
          "name": "greekPizza",
          "foodType": "multiCuisine",
          "rating": 4.1,
          "arriveTime": "35min",
          "distance": "4km",
          "isBestSeller": false,
          "isNewOpen": false,
          'offer': "",
          "address": "626 Green Acres Road, Charlotte,",
          "state": "United States",
          "city": "North Carolina,",
          "price": "30",
          "priceForPeople": "three",
          "qty": 0,
        },
        {
          "image": foImageAssets.product15,
          "name": "margherita",
          "foodType": "multiCuisine",
          "rating": 4.1,
          "arriveTime": "35min",
          "distance": "4km",
          "isBestSeller": false,
          "isNewOpen": false,
          'offer': "",
          "address": "626 Green Acres Road, Charlotte,",
          "state": "United States",
          "city": "North Carolina,",
          "price": "30",
          "priceForPeople": "three",
          "qty": 0,
        }
      ]
    }
  ];

  //delivery instruction
  var deliveryInstruction = [
    {"title": "leaveAtDoor", 'icon': foIconAssets.door, 'isChecked': false},
    {
      "title": "don'tRingDoorBell",
      'icon': foIconAssets.bell,
      'isChecked': false
    }
  ];

  //bill layout
  var billLayout = [
    {'price': 220.00, 'title': 'itemTotal'},
    {'price': 20.00, 'title': 'deliveryFee'},
    {'price': "addTip", 'title': 'deliveryTip'},
    {'price': 50.00, 'title': 'taxesCharges'},
    {'price': 290.00, 'title': 'totalPay'}
  ];

  //address list
  var addressList = [
    {
      'address': 'address1',
      'pinCode': 21104,
      'state': "state",
      "phone": "+1 5454512315",
      "addressType": "home",
      "icon": foSvgAssets.foodHome
    },
    {
      'address': 'address1',
      'pinCode': 21104,
      'state': "state",
      "phone": "+1 5454512315",
      "addressType": "office",
      "icon": foSvgAssets.city
    },
  ];

  var paymentMethod = [
    {
      "title": "recentMethod",
      "methodList": [
        {
          "cardNo": "XXXX-XXXX-XXXX-9862",
          "expiryDate": "9/22",
          "icon": commonImageAssets.visa
        },
        {
          "cardNo": "gPay",
          'expiryDate': "jacobp@okbanking",
          "icon": foIconAssets.gPay
        }
      ]
    },
    {
      "title": "debitCreditCard",
      "methodList": [
        {
          "cardNo": "XXXX-XXXX-XXXX-9862",
          "expiryDate": "9/22",
          "icon": commonImageAssets.visa
        },
        {
          "cardNo": "XXXX-XXXX-XXXX-5621",
          "expiryDate": "2/22",
          "icon": commonImageAssets.masterCard
        },
        {
          "cardNo": "XXXX-XXXX-XXXX-5621",
          "expiryDate": "2/22",
          "icon": commonImageAssets.masterCard
        }
      ]
    },
    {
      "title": "payViaUpi",
      "methodList": [
        {
          "cardNo": "gPay",
          "expiryDate": "jacobp@okbanking",
          "icon": foIconAssets.gPay
        }
      ]
    },
    {
      "title": "wallets",
      "methodList": [
        {
          "cardNo": "venmo",
          "expiryDate": "linkYourVenmoWallet",
          "icon": foIconAssets.venmo
        },
        {
          "cardNo": "applePay",
          "expiryDate": "linkYourAppleWallet",
          "icon": foIconAssets.apple
        }
      ]
    },
    {
      "title": "payOnDelivery",
      "methodList": [
        {
          "cardNo": "cashOnDelivery",
          "expiryDate": "linkYourVenmoWallet",
          "icon": foIconAssets.cod
        }
      ]
    }
  ];

  //var profile list
  var profileList = [
    {
      "title": ThemeFont.profile_menu_orders_head,
      "profileList": [
        {
          "title": ThemeFont.profile_menu_orders,
          "icon": foIconAssets.order,
          "routeName": Routes.PROFILE_ORDER_HISTORY
        },
        {
          "title": ThemeFont.profile_menu_favourite_orders,
          "icon": foIconAssets.placeholder,
          "routeName": Routes.PROFILE_FAVOURITE_ORDER
        },
        {
          "title": ThemeFont.profile_menu_address_book,
          "icon": foIconAssets.addressBook,
          "routeName": Routes.PROFILE_ADDRESS_BOOK
        }
      ]
    },
    {
      "title": ThemeFont.profile_menu_payments_head,
      "profileList": [
        {
          "title": ThemeFont.profile_menu_wallets,
          "icon": foIconAssets.wallet,
          "routeName": Routes.PROFILE_WALLETS
        },
        {
          "title": ThemeFont.profile_menu_saved_book,
          "icon": foIconAssets.card,
          "routeName": Routes.PROFILE_SAVED_BOOK
        }
      ]
    },
    {
      "title": ThemeFont.profile_menu_language_head,
      "profileList": [
        {"title": "ENGLISH", "icon": foIconAssets.language, "routeName": Routes.PROFILE_ENGLISH}
      ]
    },
    {
      "title": "landing",
      "profileList": [
        {"title": "HOME", "icon": commonImageAssets.logo, "routeName": Routes.HOME}
      ]
    },
  ];

  //order history
  var orderHistory = [
    {
      "image": foImageAssets.product8,
      "name": "theSoupFactory",
      "rating": 0.0,
      "address": "orderHistoryAddress",
      "price": "30",
      "date": "date1",
      "status": "delivered",
      "items": [
        {"quantity": 1, "name": "vegCheeseQuesadillas"},
        {"quantity": 1, "name": "barbarescaPasta"},
        {"quantity": 1, "name": "sproutsSalad"}
      ],
    },
    {
      "image": foImageAssets.product1,
      "name": "earthWind",
      "rating": 0.0,
      "address": "orderHistoryAddress",
      "price": "50",
      "date": "date2",
      "status": "delivered",
      "items": [
        {"quantity": 1, "name": "cheeseSticks"},
        {"quantity": 1, "name": "barbarescaPasta"}
      ],
    },
    {
      "image": foImageAssets.nearBy3,
      "name": "farmToTable",
      "rating": 4.0,
      "address": "orderHistoryAddress",
      "price": "30",
      "date": "date1",
      "status": "delivered",
      "items": [
        {"quantity": 1, "name": "vegCheeseQuesadillas"},
        {"quantity": 1, "name": "barbarescaPasta"},
        {"quantity": 1, "name": "sproutsSalad"}
      ],
    }
  ];

  //favourite
  var favouriteList = [
    {
      "image": foImageAssets.product1,
      "name": "cafeJack",
      "foodType": "multiCuisine",
      "rating": 4.1,
      "arriveTime": "35min",
      "distance": "2km",
      "isBestSeller": true,
      "isNewOpen": false,
      'offer': "50off",
      "address": "626 Green Acres Road, Charlotte,",
      "state": "United States",
      "city": "North Carolina,",
      "price": "20",
      "priceForPeople": "two",
      "qty": 0
    },
    {
      "image": foImageAssets.product2,
      "name": "earthWind",
      "foodType": "mexicanContinental",
      "rating": 4.2,
      "arriveTime": "28min",
      "distance": "2km",
      "isBestSeller": false,
      "isNewOpen": false,
      'offer': "40off",
      "address": "626 Green Acres Road, Charlotte,",
      "state": "United States",
      "city": "North Carolina,",
      "price": "30",
      "priceForPeople": "three",
      "qty": 0
    },
    {
      "image": foImageAssets.product5,
      "name": "farmToTable",
      "foodType": "mexicanContinental",
      "rating": 4.2,
      "arriveTime": "28min",
      "distance": "2km",
      "isBestSeller": false,
      "isNewOpen": false,
      'offer': "50off",
      "address": "626 Green Acres Road, Charlotte,",
      "state": "United States",
      "city": "North Carolina,",
      "price": "30",
      "priceForPeople": "three",
      "qty": 0
    },
    {
      "image": foImageAssets.product4,
      "name": "theSoupFactory",
      "foodType": "multiCuisine",
      "rating": 4.1,
      "arriveTime": "35min",
      "distance": "4km",
      "isBestSeller": true,
      "isNewOpen": false,
      'offer': "40off",
      "address": "626 Green Acres Road, Charlotte,",
      "state": "United States",
      "city": "North Carolina,",
      "price": "30",
      "priceForPeople": "three",
      "qty": 0
    }
  ];

  var offerList = [{
    "offer":20,
    "title":"onYourFirstOrder",
    "desc":"aboveOrder",
    "code":"SCD450"
  },{
    "offer":25,
    "title":"onYourFirstOrder",
    "desc":"hdfcCard",
    "code":"SCD450"
  },{
    "offer":40,
    "title":"onYourFirstOrder",
    "desc":"hdfcCard",
    "code":"SCD450"
  }];


  //var cart data
  var cartData =[
    {
      "image": foImageAssets.product6,
      "name": "vegCheeseQuesadillas",
      "foodType": "multiCuisine",
      "rating": 4.5,
      "arriveTime": "35min",
      "distance": "4km",
      "isBestSeller": true,
      "isNewOpen": false,
      'offer': "",
      "address": "626 Green Acres Road, Charlotte,",
      "state": "United States",
      "city": "North Carolina,",
      "price": "25",
      "priceForPeople": "three",
      "qty": 0,
      "variants": [
        {
          "title": "choiceOfVegetables",
          "data": [
            {"title": "lettuce"},
            {"title": "cucumbers"},
            {"title": "tomatoes"},
            {"title": "capsicums"},
            {"title": "tomatoes"},
            {"title": "olives"},
            {"title": "redPaprika"},
            {"title": "onion"},
            {"title": "babyCorn"}
          ]
        }
      ]
    },
    {
      "image": foImageAssets.product5,
      "name": "barbarescaPasta",
      "foodType": "multiCuisine",
      "rating": 4.5,
      "arriveTime": "35min",
      "distance": "4km",
      "isBestSeller": false,
      "isNewOpen": true,
      'offer': "",
      "address": "626 Green Acres Road, Charlotte,",
      "state": "United States",
      "city": "North Carolina,",
      "price": "25",
      "priceForPeople": "three",
      "qty": 0,
      "variants": [
        {
          "title": "choiceOfVegetables",
          "data": [
            {"title": "lettuce"},
            {"title": "cucumbers"},
            {"title": "tomatoes"},
            {"title": "capsicums"},
            {"title": "tomatoes"},
            {"title": "olives"},
          ]
        }
      ]
    }
  ];

  //var productList
  var productList = [
    {
      "image": foImageAssets.product6,
      "name": "vegCheeseQuesadillas",
      "foodType": "multiCuisine",
      "rating": 4.5,
      "arriveTime": "35min",
      "distance": "4km",
      "isBestSeller": true,
      "isNewOpen": false,
      'offer': "",
      "address": "626 Green Acres Road, Charlotte,",
      "state": "United States",
      "city": "North Carolina,",
      "price": "25",
      "priceForPeople": "three",
      "qty": 0,
      "variants": [
        {
          "title": "choiceOfVegetables",
          "data": [
            {"title": "lettuce"},
            {"title": "cucumbers"},
            {"title": "tomatoes"},
            {"title": "capsicums"},
            {"title": "tomatoes"},
            {"title": "olives"},
            {"title": "redPaprika"},
            {"title": "onion"},
            {"title": "babyCorn"}
          ]
        }
      ]
    },
    {
      "image": foImageAssets.product5,
      "name": "barbarescaPasta",
      "foodType": "multiCuisine",
      "rating": 4.5,
      "arriveTime": "35min",
      "distance": "4km",
      "isBestSeller": false,
      "isNewOpen": true,
      'offer': "",
      "address": "626 Green Acres Road, Charlotte,",
      "state": "United States",
      "city": "North Carolina,",
      "price": "25",
      "priceForPeople": "three",
      "qty": 0,
      "variants": [
        {
          "title": "choiceOfVegetables",
          "data": [
            {"title": "lettuce"},
            {"title": "cucumbers"},
            {"title": "tomatoes"},
            {"title": "capsicums"},
            {"title": "tomatoes"},
            {"title": "olives"},
          ]
        }
      ]
    },
    {
      "image": foImageAssets.product7,
      "name": "sproutsSalad",
      "foodType": "multiCuisine",
      "rating": 4.1,
      "arriveTime": "35min",
      "distance": "4km",
      "isBestSeller": false,
      "isNewOpen": false,
      'offer': "",
      "address": "626 Green Acres Road, Charlotte,",
      "state": "United States",
      "city": "North Carolina,",
      "price": "30",
      "priceForPeople": "three",
      "qty": 0,
    },
    {
      "image": foImageAssets.product8,
      "name": "fries",
      "foodType": "multiCuisine",
      "rating": 4.1,
      "arriveTime": "35min",
      "distance": "4km",
      "isBestSeller": false,
      "isNewOpen": false,
      'offer': "",
      "address": "626 Green Acres Road, Charlotte,",
      "state": "United States",
      "city": "North Carolina,",
      "price": "30",
      "priceForPeople": "three",
      "qty": 0,
      "variants": [
        {
          "title": "choiceOfVegetables",
          "data": [
            {"title": "lettuce"},
            {"title": "cucumbers"},
            {"title": "tomatoes"},
            {"title": "capsicums"},
            {"title": "tomatoes"}
          ]
        }
      ]
    },
    {
      "image": foImageAssets.product9,
      "name": "cheeseSticks",
      "foodType": "multiCuisine",
      "rating": 4.1,
      "arriveTime": "35min",
      "distance": "4km",
      "isBestSeller": false,
      "isNewOpen": false,
      'offer': "",
      "address": "626 Green Acres Road, Charlotte,",
      "state": "United States",
      "city": "North Carolina,",
      "price": "30",
      "priceForPeople": "three",
      "qty": 0,
      "variants": [
        {
          "title": "choiceOfVegetables",
          "data": [
            {"title": "lettuce"},
            {"title": "cucumbers"},
            {"title": "tomatoes"},
            {"title": "capsicums"},
            {"title": "tomatoes"},
            {"title": "olives"},
            {"title": "redPaprika"}
          ]
        }
      ]
    },
    {
      "image": foImageAssets.product10,
      "name": "garlicBread",
      "foodType": "multiCuisine",
      "rating": 4.1,
      "arriveTime": "35min",
      "distance": "4km",
      "isBestSeller": false,
      "isNewOpen": false,
      'offer': "",
      "address": "626 Green Acres Road, Charlotte,",
      "state": "United States",
      "city": "North Carolina,",
      "price": "30",
      "priceForPeople": "three",
      "qty": 0,
    },
    {
      "image": foImageAssets.product11,
      "name": "sandwich",
      "foodType": "multiCuisine",
      "rating": 4.1,
      "arriveTime": "35min",
      "distance": "4km",
      "isBestSeller": false,
      "isNewOpen": false,
      'offer': "",
      "address": "626 Green Acres Road, Charlotte,",
      "state": "United States",
      "city": "North Carolina,",
      "price": "30",
      "priceForPeople": "three",
      "qty": 0,
    }
  ];
}
