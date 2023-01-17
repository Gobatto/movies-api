require "test_helper"

class Api::V1::MoviesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "should get index" do
    get api_v1_movies_url
    assert_response :success
  end

  test "should get movie title" do
    get api_v1_movies_url, params: { title: "Batman: The Killing Joke" }
    assert_response :success
  end

  test "should get movie genre" do
    get api_v1_movies_url, params: { genre: "Movie" }
    assert_response :success
  end

  test "should get movie year" do
    get api_v1_movies_url, params: { year: "2020" }
    assert_response :success
  end

  test "should get movie country" do
    get api_v1_movies_url, params: { country: "United States"}
    assert_response :success
  end

end


# s765,Movie,Batman: The Killing Joke,Sam Liu,"Kevin Conroy, Mark Hamill, Tara Strong, Ray Wise, John DiMaggio, Robin Atkin Downes, Brian George, JP Karliak, Andrew Kishino, Nolan North",United States,"October 15, 2020",2016,R,77 min,Action & Adventure,The Joker makes life hell for the Gordon family in a monstrous attempt to prove to Batman that one bad day can drive a good man to madness.
