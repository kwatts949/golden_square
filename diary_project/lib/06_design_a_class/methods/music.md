# MusicList Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE
class MusicList
  def initialize
  end

  def add(track) # track is a string
    # adds a track to the list
  end

  def tracks
    # returns a list of tracks
  end
end

```

## 3. Create Examples as Tests

```ruby
# EXAMPLE

# 1
music = MusicList.new
music.tracks => []

# 2
music = MusicList.new
music.add("Centuries")
music.tracks => ["Centuries"]

# 3
music = MusicList.new
music.add("Centuries")
music.add("Who let the dogs out?")
music.tracks => ["Centuries", "Who let the dogs out?"]

# 4
music = MusicList.new
music.add("Centuries")
music.add("Centuries")
music.tracks => ["Centuries"]

## 4. Implement the Behaviour
