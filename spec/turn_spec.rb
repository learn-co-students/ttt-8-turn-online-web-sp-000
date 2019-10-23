
  describe '#input_to_index' do	  describe '#input_to_index' do


    it 'convervets a user_input to an integer' do	    it 'converts a user_input to an integer' do
      user_input = "1"	      user_input = "1"


      expect(input_to_index(user_input)).to be_a(Integer)	      expect(input_to_index(user_input)).to be_a(Integer)
