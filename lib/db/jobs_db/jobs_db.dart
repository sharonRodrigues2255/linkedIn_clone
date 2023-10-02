class JobDatabase {
  static List<Map<String, dynamic>> jobPostings = [
    {
      'jobTitle': 'Network Engineer',
      'address': '1111 Maple Drive',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=N',
      'companyName': 'Network Innovators',
      'location': 'Philadelphia, Pennsylvania, USA',
      'remoteStatus': 'Online',
      'timePosted': '4 weeks ago'
    },
    {
      'jobTitle': 'Machine Learning Engineer',
      'address': '1212 Cedar Road',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=A',
      'companyName': 'AI Creations',
      'location': 'Atlanta, Georgia, USA',
      'remoteStatus': 'Remote',
      'timePosted': '5 weeks ago'
    },
    {
      'jobTitle': 'Data Analyst',
      'address': '1313 Birch Lane',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=D',
      'companyName': 'Data Crunchers',
      'location': 'Boston, Massachusetts, USA',
      'remoteStatus': 'Online',
      'timePosted': '5 weeks ago'
    },
    {
      'jobTitle': 'Cybersecurity Analyst',
      'address': '1414 Cedar Avenue',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=S',
      'companyName': 'Secure Solutions',
      'location': 'Washington, D.C., USA',
      'remoteStatus': 'Remote',
      'timePosted': '6 weeks ago'
    },
    {
      'jobTitle': 'Cloud Solutions Architect',
      'address': '1515 Elm Street',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=C',
      'companyName': 'Cloud Innovations',
      'location': 'Dallas, Texas, USA',
      'remoteStatus': 'Hybrid',
      'timePosted': '7 weeks ago'
    },
    {
      'jobTitle': 'Game Developer',
      'address': '1616 Oakwood Road',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=G',
      'companyName': 'Game Studios',
      'location': 'Orlando, Florida, USA',
      'remoteStatus': 'Remote',
      'timePosted': '8 weeks ago'
    },
    {
      'jobTitle': 'Embedded Systems Engineer',
      'address': '1717 Pinecrest Lane',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=E',
      'companyName': 'Embedded Tech Solutions',
      'location': 'San Jose, California, USA',
      'remoteStatus': 'Online',
      'timePosted': '8 weeks ago'
    },
    {
      'jobTitle': 'IT Support Specialist',
      'address': '1818 Birch Avenue',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=I',
      'companyName': 'IT Support Experts',
      'location': 'Raleigh, North Carolina, USA',
      'remoteStatus': 'Remote',
      'timePosted': '9 weeks ago'
    },
    {
      'jobTitle': 'Technical Writer',
      'address': '1919 Cedar Lane',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=D',
      'companyName': 'Docs and Code',
      'location': 'Pittsburgh, Pennsylvania, USA',
      'remoteStatus': 'Hybrid',
      'timePosted': '10 weeks ago'
    },
    {
      'jobTitle': 'Robotics Engineer',
      'address': '2020 Oakridge Drive',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=R',
      'companyName': 'RoboTech Innovations',
      'location': 'Detroit, Michigan, USA',
      'remoteStatus': 'Remote',
      'timePosted': '11 weeks ago'
    },
    {
      'jobTitle': 'UI/UX Researcher',
      'address': '2121 Elmwood Road',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=R',
      'companyName': 'Research Labs',
      'location': 'Cambridge, Massachusetts, USA',
      'remoteStatus': 'Online',
      'timePosted': '12 weeks ago'
    },
    {
      'jobTitle': 'Systems Administrator',
      'address': '2222 Cypress Avenue',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=S',
      'companyName': 'System Experts',
      'location': 'Salt Lake City, Utah, USA',
      'remoteStatus': 'Remote',
      'timePosted': '12 weeks ago'
    },
    {
      'jobTitle': 'Business Analyst',
      'address': '2323 Pinecrest Street',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=B',
      'companyName': 'Business Solutions',
      'location': 'Kansas City, Missouri, USA',
      'remoteStatus': 'Hybrid',
      'timePosted': '13 weeks ago'
    },
    {
      'jobTitle': 'Network Security Engineer',
      'address': '2424 Oakwood Lane',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=S',
      'companyName': 'Security Innovations',
      'location': 'Charlotte, North Carolina, USA',
      'remoteStatus': 'Online',
      'timePosted': '14 weeks ago'
    },
    {
      'jobTitle': 'Product Designer',
      'address': '2525 Birch Road',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=P',
      'companyName': 'Product Design Studios',
      'location': 'Denver, Colorado, USA',
      'remoteStatus': 'Remote',
      'timePosted': '15 weeks ago'
    },
    {
      'jobTitle': 'Digital Marketing Specialist',
      'address': '2626 Cedar Street',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=D',
      'companyName': 'Digital Marketing Experts',
      'location': 'Austin, Texas, USA',
      'remoteStatus': 'Hybrid',
      'timePosted': '16 weeks ago'
    },
    {
      'jobTitle': 'Machine Vision Engineer',
      'address': '2727 Elmwood Drive',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=V',
      'companyName': 'Vision Tech Solutions',
      'location': 'San Diego, California, USA',
      'remoteStatus': 'Remote',
      'timePosted': '17 weeks ago'
    },
    {
      'jobTitle': 'Sales Representative',
      'address': '2828 Cypress Road',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=S',
      'companyName': 'Sales Experts Inc.',
      'location': 'Nashville, Tennessee, USA',
      'remoteStatus': 'Online',
      'timePosted': '18 weeks ago'
    },
    {
      'jobTitle': 'HR Specialist',
      'address': '2929 Pine Lane',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=H',
      'companyName': 'HR Solutions',
      'location': 'Atlanta, Georgia, USA',
      'remoteStatus': 'Remote',
      'timePosted': '19 weeks ago'
    },
    {
      'jobTitle': 'Technical Support Engineer',
      'address': '3030 Oakridge Avenue',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=T',
      'companyName': 'Tech Support Experts',
      'location': 'Dallas, Texas, USA',
      'remoteStatus': 'Hybrid',
      'timePosted': '20 weeks ago'
    },
    {
      'jobTitle': 'Flutter Developer',
      'address': '3131 Oakwood Drive',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=F',
      'companyName': 'Flutter Tech Solutions',
      'location': 'San Diego, California, USA',
      'remoteStatus': 'Hybrid',
      'timePosted': '21 weeks ago'
    },
    {
      'jobTitle': 'Flutter Developer',
      'address': '3232 Cedar Road',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=A',
      'companyName': 'App Innovate',
      'location': 'Seattle, Washington, USA',
      'remoteStatus': 'Online',
      'timePosted': '22 weeks ago'
    },
    {
      'jobTitle': 'Flutter Developer',
      'address': '3333 Pinecrest Lane',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=M',
      'companyName': 'Mobile Magic',
      'location': 'Los Angeles, California, USA',
      'remoteStatus': 'Remote',
      'timePosted': '23 weeks ago'
    },
    {
      'jobTitle': 'Flutter Developer',
      'address': '3434 Oakridge Avenue',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=F',
      'companyName': 'Flutter Creations',
      'location': 'Chicago, Illinois, USA',
      'remoteStatus': 'Hybrid',
      'timePosted': '24 weeks ago'
    },
    {
      'jobTitle': 'Flutter Developer',
      'address': '3535 Birch Lane',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=A',
      'companyName': 'App Wizards',
      'location': 'New York, New York, USA',
      'remoteStatus': 'Online',
      'timePosted': '25 weeks ago'
    },
    {
      'jobTitle': 'Flutter Developer',
      'address': '3636 Pine Street',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=M',
      'companyName': 'Mobile Innovations',
      'location': 'Denver, Colorado, USA',
      'remoteStatus': 'Remote',
      'timePosted': '26 weeks ago'
    },
    {
      'jobTitle': 'Flutter Developer',
      'address': '3737 Elmwood Road',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=A',
      'companyName': 'App Developers Inc.',
      'location': 'Miami, Florida, USA',
      'remoteStatus': 'Hybrid',
      'timePosted': '27 weeks ago'
    },
    {
      'jobTitle': 'Flutter Developer',
      'address': '3838 Oakwood Road',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=T',
      'companyName': 'Tech Innovate',
      'location': 'Atlanta, Georgia, USA',
      'remoteStatus': 'Online',
      'timePosted': '28 weeks ago'
    },
    {
      'jobTitle': 'Flutter Developer',
      'address': '3939 Cedar Avenue',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=M',
      'companyName': 'Mobile Wizards',
      'location': 'Dallas, Texas, USA',
      'remoteStatus': 'Remote',
      'timePosted': '29 weeks ago'
    },
    {
      'jobTitle': 'Flutter Developer',
      'address': '4040 Cypress Road',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=C',
      'companyName': 'Code Crafters',
      'location': 'Orlando, Florida, USA',
      'remoteStatus': 'Hybrid',
      'timePosted': '30 weeks ago'
    },
    {
      'jobTitle': 'Android Developer',
      'address': '4141 Pinecrest Street',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=A',
      'companyName': 'Android Creations',
      'location': 'San Jose, California, USA',
      'remoteStatus': 'Online',
      'timePosted': '31 weeks ago'
    },
    {
      'jobTitle': 'Android Developer',
      'address': '4242 Oakwood Lane',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=T',
      'companyName': 'Tech Innovations',
      'location': 'Austin, Texas, USA',
      'remoteStatus': 'Remote',
      'timePosted': '32 weeks ago'
    },
    {
      'jobTitle': 'Android Developer',
      'address': '4343 Cypress Road',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=A',
      'companyName': 'App Solutions',
      'location': 'Boston, Massachusetts, USA',
      'remoteStatus': 'Hybrid',
      'timePosted': '33 weeks ago'
    },
    {
      'jobTitle': 'Android Developer',
      'address': '4444 Cedar Road',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=A',
      'companyName': 'Android Wizards',
      'location': 'Philadelphia, Pennsylvania, USA',
      'remoteStatus': 'Online',
      'timePosted': '34 weeks ago'
    },
    {
      'jobTitle': 'Android Developer',
      'address': '4545 Elm Street',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=M',
      'companyName': 'Mobile Tech Solutions',
      'location': 'Raleigh, North Carolina, USA',
      'remoteStatus': 'Remote',
      'timePosted': '35 weeks ago'
    },
    {
      'jobTitle': 'Android Developer',
      'address': '4646 Pine Lane',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=A',
      'companyName': 'App Innovators',
      'location': 'Charlotte, North Carolina, USA',
      'remoteStatus': 'Hybrid',
      'timePosted': '36 weeks ago'
    },
    {
      'jobTitle': 'Android Developer',
      'address': '4747 Birch Lane',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=A',
      'companyName': 'Android Solutions Inc.',
      'location': 'Kansas City, Missouri, USA',
      'remoteStatus': 'Online',
      'timePosted': '37 weeks ago'
    },
    {
      'jobTitle': 'Android Developer',
      'address': '4848 Oakridge Drive',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=T',
      'companyName': 'Tech Builders',
      'location': 'Nashville, Tennessee, USA',
      'remoteStatus': 'Remote',
      'timePosted': '38 weeks ago'
    },
    {
      'jobTitle': 'Android Developer',
      'address': '4949 Cedar Lane',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=A',
      'companyName': 'Android Innovate',
      'location': 'Washington, D.C., USA',
      'remoteStatus': 'Hybrid',
      'timePosted': '39 weeks ago'
    },
    {
      'jobTitle': 'Android Developer',
      'address': '5050 Oakwood Road',
      'image': 'https://via.placeholder.com/150/3498db/FFFFFF?text=M',
      'companyName': 'Mobile Apps Inc.',
      'location': 'Salt Lake City, Utah, USA',
      'remoteStatus': 'Online',
      'timePosted': '40 weeks ago'
    },
  ];
}
