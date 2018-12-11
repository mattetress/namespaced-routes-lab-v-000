class Admin::PreferencesController < ApplicationController

  def index
    @preferences = Preference.first_or_create(song_sort_order: "ASC", artist_sort_order: "ASC", allow_create_songs: true, allow_create_artists: true)
  end

  def update
    @preferences = Preference.first
  end

end
