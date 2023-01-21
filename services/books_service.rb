require_relative "../models/bible"

class BooksService
  def self.editions
    data = [
      {},
      {
          "language" => "English",
          "language_abr" => "en",
          "edition" => "King James"
      },
      {
          "language" => "Portuguese",
          "language_abr" => "pt",
          "edition" => "Almeida Revista e Atualizada"
      }
    ]
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
      book_edition: self.editions[book_edition.to_i],
      book: book.BookName,
      chapter: book.Chapter,
      verses: verses
    }
  end
end