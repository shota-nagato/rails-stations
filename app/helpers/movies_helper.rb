module MoviesHelper
  def status_text(movie)
    return movie.is_showing ? '上映中' : '上映予定'
  end
end