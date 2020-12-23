class ImportCsv
  def self.import(path)
      CSV.foreach(path, headers: true) do |row|
        Text.create!(
          genre: row["genre"]
          title: row["title"]
          content: row["content"]
        )
      end
  end
end