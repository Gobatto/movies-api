require 'csv'

namespace :csv do
  desc "import netflix_titles.csv"
  task import: :environment do
    CSV.foreach('../lib/netflix_titles;csv', col_sep: ';').with_index do |row|
      unless (id == 0)
        Movie.create!()
  end

end
