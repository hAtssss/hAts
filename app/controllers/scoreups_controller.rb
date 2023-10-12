class ScoreupsController < ApplicationController
    def index
        @scoreups = Scoreup.all
    end
    def new
        @scoreup = Scoreup.new
      end
    
      def create
        scoreup = Scoreup.new(scoreup_params)
        if scoreup.save!
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end
      def edit
        @scoreup = Scoreup.find(params[:id])
      end
      def update
        scoreup = Scoreup.find(params[:id])
        if scoreup.update(scoreup_params)
          redirect_to :action => "index", :id => scoreup.id
        else
          redirect_to :action => "new"
        end
      end
      def destroy
        scoreup = Scoreup.find(params[:id])
        scoreup.destroy
        redirect_to action: :index
      end
    
      private
      def scoreup_params
        params.require(:scoreup).permit(:body, :image)
      end
end
