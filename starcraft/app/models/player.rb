class Player < ActiveRecord::Base

  def show_won_matches
    Match.joins("INNER JOIN 'players' ON 'players'.'id' = 'matches'.'winner_id'").where("'players'.'id' = #{id}")
  end

  def show_by_faction(faction)
    matches = show_won_matches
    matches.where("'winner_faction' = #{faction} OR 'loser_faction' = #{faction}")
  end

end
