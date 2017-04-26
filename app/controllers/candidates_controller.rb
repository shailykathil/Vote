class CandidatesController < ApplicationController
  def create
  	 @result=Vote.where(:candidate_id=>1).count
      @candidate = Candidate.create(:result=>@result)
  	 # @result=Vote.where(:candidate_id=>1).count
  	 # @candidate=Candidate.create(:result=> "#{@result}")
     redirect_to @candidate
   end
  def new
  	@candidate = Candidate.new
  end

end
