#!/usr/bin/ruby -w
# ALBUM
# Copyright Mark Keane, All Rights Reserved, 2014
require_relative "predicate"
# Class that encodes details of an album.
class Album
	include Pred
	attr_accessor :name, :tracks, :length, :artist, :owners, :id
	def initialize(name, tracks, length, artist, owners)
		@name = name
		@tracks = tracks
		@length = length
		@artist = artist
		@owners = owners
		@id = name.object_id
	end
	def to_s
		puts "The album #{@name} by #{@artist}. \n"
	end
	def self.make_album(name,tracks, length, artist, owners)
		Album.new(name, tracks, length, artist, owners)
	end
	def self.build_all(data, albums = [])
		album_names = data.songs.collect{|song| song.album}
		album_names.uniq.each do |album_name|
			albums << self.build_an_album_called(data, album_name)
		end
		albums
	end

  # Class method that takes an album name, it finds all the sounds that are in that album
  # builds up arrays of the song-names (tracks), runtimes, artist names.  These all get used
  # to populate the various attributes of the album object.

  def self.build_an_album_called(data, album_name)
		song_names = []
		runtimes = []
		artist_names = []
		owners = []
		data.songs.each do |item|
			if item.album == album_name
				song_names.push(item.name)
				runtimes.push(item.time)
				artist_names.push(item.artist)
				owners.push(item.owners)
			end
		end
		#using inject to get sum of the array to get total length of the album
		return self.make_album(album_name, song_names, runtimes.inject(:+), artist_names, owners)
	end

end
