
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



episodes = Episode.create([
	{episode_id: '1',
	series_id:'1',
     category_id:'001',
     title:'Sexual Harassment',
     description: 'Episode 1',
	 rating: '4',
     snap_shot:'SexualHarassment'
	},
		{
			episode_id: '2',
			series_id:'1',
     category_id:'001',
     title:'Equal Opportunity Employer',
     description: 'Episode 2',
	 rating: '4',
     snap_shot:'EqualOpportunityEmployer'
	},
		{episode_id: '3',
			series_id:'1',
     category_id:'001',
     title:'Vetting Employees',
     description: 'Episode 3',
	 rating: '5',
     snap_shot:'VettingEmployees'
	},
		{episode_id: '4',
			series_id:'1',
     category_id:'001',
     title:'Business Bar Brawls',
     description: 'Episode 4',
	 rating: '4',
     snap_shot:'BusinessBarBrawls'
	},
		{episode_id: '5',
			series_id:'1',
     category_id:'001',
     title:'When Politicians Ought To Stay Home',
     description: 'Episode 5',
	 rating: '3',
     snap_shot:'WhenPoliticiansOughtToStayHome'
	},
		{episode_id: '6',
			series_id:'3',
     category_id:'003',
     title:'Secure Passwords',
     description: 'Episode 1',
	 rating: '3',
     snap_shot:'SecurePasswords'
	},
	{episode_id: '7',
	series_id:'3',
     category_id:'003',
     title:'Phishing',
     description: 'Episode 2',
	 rating: '4',
     snap_shot:'Phishing'
	},
		{
			episode_id: '8',
			series_id:'3',
     category_id:'003',
     title:'Securing Your Computer',
     description: 'Episode 3',
	 rating: '4',
     snap_shot:'SecuringYourComputer'
	},
		{episode_id: '9',
			series_id:'3',
     category_id:'003',
     title:'Identify Your ID',
     description: 'Episode 4',
	 rating: '5',
     snap_shot:'IdentifyYourID'
	},
		{episode_id: '10',
			series_id:'3',
     category_id:'003',
     title:'Toe Prints Are IT',
     description: 'Episode 5',
	 rating: '4',
     snap_shot:'ToePrintsAreIT'
	},
		{episode_id: '11',
			series_id:'2',
     category_id:'004',
     title:'Unconscious Incompetence',
     description: 'Episode 1',
	 rating: '3',
     snap_shot:'UnconsciousIncompetence'
	},
	{episode_id: '12',
	series_id:'2',
     category_id:'004',
     title:'Conscious Incompetence',
     description: 'Episode 2',
	 rating: '4',
     snap_shot:'ConsciousIncompetence'
	},
		{
			episode_id: '13',
			series_id:'2',
     category_id:'004',
     title:'Conscious Competence',
     description: 'Episode 3',
	 rating: '4',
     snap_shot:'ConsciousCompetence'
	},
		{episode_id: '14',
			series_id:'2',
     category_id:'004',
     title:'Invisible Matter',
     description: 'Episode 4',
	 rating: '5',
     snap_shot:'InvisibleMatter'
	},
		{episode_id: '15',
			series_id:'2',
     category_id:'004',
     title:'Signs of Nothing',
     description: 'Episode 5',
	 rating: '4',
     snap_shot:'SignsofNothing'
	}

]);



seasons = Season.create([
	{series_id:'1',
     category_id:'001',
     title:'The HR Files',
     description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ',
     rating: '5',
     snap_shot: 'TheHRFiles'
	},
		{series_id:'2',
     category_id:'004',
     title:'Sea Knot',
     description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ',
     rating: '4',
     snap_shot: 'SeaKnot'
	},
		{series_id:'3',
     category_id:'003',
     title:'Hacks',
     description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ',
     rating: '5',
     snap_shot: 'Hacks'
	}
]);
	



categoryOne = Category.create([{
     category_id: '001', 
	title: 'Ethics & Compliance',
	description: 'Ethics and Compliance', 
	snap_shot: 'EthicsAndCompliance',
	}
]);
categoryTwo = Category.create([{category_id: '004', 
	title: 'Consciousness',
	description: 'Consciousness', 
	snap_shot: 'Consciousness',
	}
]);
categorythree = Category.create([{category_id: '003', 
     title: 'Technology',
     description: 'Computer security, also known as cybersecurity or IT security, is the protection of information systems from theft or damage to the hardware, the software, and to the information on them, as well as from disruption or misdirection of the services they provide.', 
     snap_shot: 'Technology',
     }
]);

	




