class MatchesController < ApplicationController

  def index
    @matches = Match.all
  end

 def new
    @match = Match.new
  end

  def create
     @match = Match.new(match_params)

     if @match.save
       redirect_to @match
     else
       render 'new'
     end
   end

 private
 def match_params
   params.require(:match).permit(:homeTeam_id, :awayTeam_id)
 end

end
