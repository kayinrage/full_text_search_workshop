require 'rails_helper'

describe Post do
  describe '.search' do
    it 'finds text case insensitive' do
      create(:post, content: 'error')
      post = create(:post, content: 'Black Widow')

      expect(Post.search('widow')).to eq([post])
    end

    it 'finds text case insensitive and does not care about html tags' do
      create(:post, content: 'error')
      post = create(:post, content: '<b>Black</b> Widow')

      expect(Post.search('black widow')).to eq([post])
    end

    it 'finds text using full text search' do
      create(:post, content: 'error')
      post = create(:post, content: 'Natasha Romanoff is the <b>Black</b> Widow')

      expect(Post.search('WIDOWs')).to eq([post])
      expect(Post.search('black natasha')).to eq([post])
    end
  end
end
