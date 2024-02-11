class ShortUrl < ApplicationRecord
  CHARS = %w[abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789]
  LENGTH = 7
  before_save :shorten

  def shorten
    self.short_code = SecureRandom.urlsafe_base64[0..7]

  rescue SQLite3::ConstraintException
    retry
  end
end
