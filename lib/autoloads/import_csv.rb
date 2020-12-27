class ImportCsv
  def self.import(path)
    list = []
      CSV.foreach(path, headers: true) do |row|
        list << row.to_h
      end
    list
  end

  def self.text_data
    list = import("db/csv_data/text_data.csv")
    Text.create!(list)
  end

  def self.movie_data
    list = import("db/csv_data/movie_data.csv")
    Movie.create!(list)
  end
end