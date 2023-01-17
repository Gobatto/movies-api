require "test_helper"

class MovieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'valid movie' do
    movie = Movie.new(title: 'Batman: The Killing Joke',
                      genre: 'Movie',
                      year: '2020',
                      country: 'United States',
                      published_at: '2020-10-15',
                      description: "The Joker makes life hell for the Gordon family in a monstrous attempt to prove to Batman that
                                    one bad day can drive a good man to madness.")
    assert movie.valid?
  end

  test 'invalid movie' do
    movie = Movie.new(genre: 'TV Show',
                      year: '2017',
                      country: 'Canada',
                      published_at: '2018-03-01',
                      description: "Players and coaches for a Montreal soccer team chase dreams of stardom while their personal lives
                                    erupt with love, fear, passion and violence.")
    assert_not movie.valid?
  end
end
