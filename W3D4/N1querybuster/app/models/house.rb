class House < ApplicationRecord
  has_many :gardeners,
    class_name: 'Gardener',
    foreign_key: :house_id,
    primary_key: :id

  has_many :plants,
    through: :gardeners,
    source: :plants

  def n_plus_one_seeds
    plants = self.plants
    seeds = []
    plants.each do |plant|
      seeds << plant.seeds
    end

    seeds
  end


# Create an array of all the seeds within a given house.
  def better_seeds_query
    data = House.plants.includes(:seeds)
    all_seeds = []

    data.each do |plant|
      all_seeds.push(plant.seeds)
    end

    all_seeds

  end
end


# Count all of the tracks on each album by a given artist.
# from first problem
# data = Artist.albums
#   .select('COUNT(title)', albums)
#   .join(:tracks)
#   .group('albums.id')
#
# album_counts = {}
#
# albums.each do |album|
#   album_counts[album.title] = album.tracks_count
# end
#
# album_counts
