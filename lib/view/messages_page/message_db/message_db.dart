List<Map<String, dynamic>> messagesData = [
  {
    'name': 'Elon',
    'messages': [
      {
        'send': [
          {
            'message': 'Hello, Bill! How are you?',
            'time': DateTime.now().subtract(Duration(days: 2))
          },
          {
            'message': 'Hey, Google! What\'s new?',
            'time': DateTime.now().subtract(Duration(days: 1))
          }
        ],
        'received': [
          {
            'message': 'Hi Elon! I\'m doing well, thanks!',
            'time': DateTime.now().subtract(Duration(days: 2))
          }
        ]
      }
    ]
  },
  {
    'name': 'Bill',
    'messages': [
      {
        'send': [
          {
            'message': 'Hi Elon! I\'m good. How about you?',
            'time': DateTime.now().subtract(Duration(days: 2))
          }
        ],
        'received': [
          {
            'message': 'Hello, Bill! I\'m doing great!',
            'time': DateTime.now().subtract(Duration(days: 2))
          },
          {
            'message': 'Hey, Google! Let\'s catch up soon.',
            'time': DateTime.now().subtract(Duration(days: 1))
          }
        ]
      }
    ]
  },
  {
    'name': 'Google',
    'messages': [
      {
        'send': [
          {
            'message': 'Hello, everyone! What\'s happening?',
            'time': DateTime.now().subtract(Duration(days: 1))
          }
        ],
        'received': [
          {
            'message': 'Hey Elon! Exciting things at SpaceX?',
            'time': DateTime.now().subtract(Duration(days: 1))
          },
          {
            'message': 'Hi Bill! Let\'s schedule a meeting.',
            'time': DateTime.now().subtract(Duration(days: 1))
          }
        ]
      }
    ]
  }
];
