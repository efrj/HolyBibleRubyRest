require_relative "../models/bible"
require "json"

class BooksService
  def self.editions(id)
    # file = File.open "db/editions.json"
    # data = JSON.load file
    id = id.to_i - 1
    data = JSON.parse(File.read('db/editions.json'))
    return data[id]
  end

  def self.find_verses(book_edition, book_abr, chapter_number, verse_number)
    if verse_number.present?
      book = Bible.find_by(
        BookAbr: book_abr,
        Chapter: chapter_number,
        Verse: verse_number)
      
      verses = [
        {
          verse: book.Verse,
          text: book.VText
        }
      ]
    else
      book = Bible.find_by(BookAbr: book_abr, Chapter: chapter_number)
      verses = Bible.where(["BookAbr = ?", book_abr])
                .where(["Chapter = ?", chapter_number])
                .select("Verse as verse, VText as text")
                .all
    end

    data = {
      book_edition: self.editions(book_edition),
      book: book.BookName,
      chapter: book.Chapter,
      verses: verses
    }
  end
end