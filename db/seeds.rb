# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  require 'httparty'


def player_seed(offset)
    url = "http://api.fantasy.nfl.com/v1/players/editordraftranks?count=100&format=json&offset=#{offset}"
    response = HTTParty.get(url)
    players_hash = response.parsed_response
    players_hash = players_hash["players"]

    players_hash.map do |player|
      if player["position"] == "QB" || player["position"] == "RB" || player["position"] == "WR" || player["position"] == "TE" || player["position"] == "DEF" || player["position"] == "K"

        Player.create(first_name: player["firstName"],
          last_name: player["lastName"],
          player_id: player["id"],
          teamAbbr: player["teamAbbr"],
          rank: player["rank"],
          position: player["position"]
          )
      end
    end

end

def seed_db
player_seed(0)
player_seed(100)
player_seed(200)
player_seed(300)
player_seed(400)
player_seed(500)
end

seed_db
