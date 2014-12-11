class Album
  attr_reader :id, :name, :artists, :tracks

  def initialize(id, name, artists, tracks = [])
    @id = id
    @name = name
    @artists = artists
    @tracks = tracks
  end

  def get_tracks
    new_array = []
    self.tracks.each do |track|
      new_array << "- #{track.title}"
    end
    new_array
  end

  def duration_min
    dur_array = []
    self.tracks.each do |track|
      dur_array << track.duration_ms
    end
    sum = 0.0
    dur_array.each do |milliseconds|
      sum += milliseconds.to_i
    end
    (sum.to_f/60000.0).round(2)
  end

  def summary
    print "Name: #{@name}\nArsist(s): #{@artists}\nDuration (min.): #{duration_min}\nTracks:\n"
    new_array = []
    self.tracks.each do |track|
      new_array << "- #{track.title}"
    end
    new_array
  end
end
