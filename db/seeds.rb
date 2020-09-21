contact = Contact.create(name: 'Adrian Hyman', category: 'Personal', company: 'n/a')

interaction = Interaction.create(contact_id: 1, date:Date.today , description: 'Talked about health and wellness', notes: 'will follow-up in 2 weeks')

interaction_2 = Interaction.create(contact_id: 1, date:Date.today , description: '2Talked about health and wellness', notes: '2will follow-up in 2 weeks')
