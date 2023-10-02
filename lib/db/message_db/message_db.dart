List<Map<String, dynamic>> messagesData = [
  {
    'name': 'Elon',
    "picture": "assets/images/peopleimages/ellonmusk.jpg",
    "headline": "CEO Tesla",
    'messages': [
      {
        "type": "s",
        "message": "hello",
        "time": DateTime.now().subtract(Duration(days: 1))
      },
      {
        "type": "r",
        "message": "hey",
        "time": DateTime.now().subtract(Duration(days: 1))
      }
    ]
  },
  {
    'name': 'Bill',
    "headline": "CEO Microsoft",
    "picture": "assets/images/peopleimages/billgates.jpg",
    'messages': [
      {
        "type": "s",
        "message": "hello bro",
        "time": DateTime.now().subtract(Duration(days: 1))
      },
      {
        "type": "r",
        "message": "Ssup buddy ",
        "time": DateTime.now().subtract(Duration(days: 1))
      }
    ]
  },
  {
    'name': 'Google',
    "headline": "a company",
    "picture": "assets/images/companiesicon/goolge.png",
    'messages': [
      {
        "type": "r",
        "message": "We, have a job offer for you",
        "time": DateTime.now().subtract(Duration(days: 1))
      },
      {
        "type": "s",
        "message": "Nah, find someone else",
        "time": DateTime.now().subtract(Duration(days: 1))
      }
    ]
  }
];
