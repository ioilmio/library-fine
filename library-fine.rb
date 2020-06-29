# frozen_string_literal: true

def libraryFine(d1, m1, y1, d2, m2, y2)
  per_day_fine = 15
  per_month_fine = 500
  per_year_fine = 10_000

  day_later = d1 - d2
  month_later = m1 - m2
  year_later = y1 - y2
    if y1 == y2 && m1 == m2 && d1 > d2
      day_later * per_day_fine
    elsif y1 == y2 && m1 > m2
      month_later * per_month_fine
    elsif y1 > y2
      per_year_fine
    else
      0 #due on time or before
    end
  end
