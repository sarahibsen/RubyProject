# Author: Sarah A. Ibsen
# Assignment: Ruby Program
# Instructor: Dr. Delugach
# Course: CS 424
# Date: April 9, 2024
#
# This Ruby program processes registration information for an athletic meet from 'register.txt'.
# It utilizes classes to manage athletes and events, parsing input to link athletes with events.
# Outputs include lists of athletes with their events and events with their athletes.
# The design focuses on readability, efficient data handling, and meeting assignment specifications.

class Athlete
  attr_accessor :id, :name

  # set the id's and name's
  def initialize(id, name)
    @id = id
    @name = name
    @events = []
  end

  # Associate an athlete with an event
  def add_event(event)
    @events << event
  end

  # List the events an athlete is participating in
  def list_events
    @events.map(&:name).join(', ')
  end
end

class Event
  attr_accessor :id, :name

  def initialize(id, name)
    @id = id
    @name = name
    @athletes = []
  end

  # Register an athlete for the event
  def add_athlete(athlete)
    @athletes << athlete
  end

  # List athletes participating in the event
  def list_athletes
    @athletes.map(&:name).join(', ')
  end
end

def main
  athletes = {}
  events = {}
  section = 1
# read in the file
  File.foreach("register.txt") do |line|
    line.strip!
    if line.empty?
      section += 1
      next
    end

    case section
    when 1
      id, *name_parts = line.split()
      athletes[id] = Athlete.new(id, name_parts.join(' '))
    when 2
      id, *event_parts = line.split()
      events[id] = Event.new(id, event_parts.join(' '))
    when 3
      athlete_id, event_id = line.split()
      if !athletes.has_key?(athlete_id)
        puts "Error: Unknown athlete ID #{athlete_id}"
      end
      if !events.has_key?(event_id)
        puts "Error: Unknown event ID #{event_id}"
      end
      # makes sure the event is valid, event and athlete
      if athletes.has_key?(athlete_id) && events.has_key?(event_id)
        athletes[athlete_id].add_event(events[event_id])
        events[event_id].add_athlete(athletes[athlete_id])
      end
    end
  end
  #puts("#{events.has_key?("01234")}")
  puts "Athletes and their Events:"
  athletes.each_value do |athlete|
    puts "#{athlete.name} is registered for: #{athlete.list_events}"
  end

  puts "\nEvents and their Athletes:"
  events.each_value do |event|
    puts "#{event.name} includes athletes: #{event.list_athletes}"
  end
end

main

=begin
Reflections:
I appreciated the documentation that ruby has when it comes to all of their classes and implementations.
I think that Ruby as a language may not be as readable and writable as python but the majority of
object oriented programming languages are not as readable and writable.
One thing, that I learned when taking the quiz in the class, was the difference between class variables and
instance variables in ruby. I did not know that class variables are @@.
After writing with ruby for hours, it is easier to see how the language works. But I believe that you can eventually
learn any programming language when you spend hours writing in it.

=end
