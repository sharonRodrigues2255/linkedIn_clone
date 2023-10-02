List<Map<String, dynamic>> messagesData = [
  {
    'name': 'Elon',
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
