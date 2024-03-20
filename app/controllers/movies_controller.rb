class MoviesController < ApplicationController
  has_scope :keyword
  has_scope :is_showing

  def index
    @movies = apply_scopes(Movie).order(created_at: :desc)
  end
end
