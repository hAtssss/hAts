class ToppagesController < ApplicationController
    def index
        @toppages = Toppage.all
    end
    def new
        @toppage = Toppage.new
      end
    
      def create
        toppage = Toppage.new(toppage_params)
        if toppage.save!
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end
      def edit
        @toppage = Toppage.find(params[:id])
      end
      def update
        toppage = Toppage.find(params[:id])
        if toppage.update(toppage_params)
          redirect_to :action => "index", :id => toppage.id
        else
          redirect_to :action => "new"
        end
      end
      def destroy
        toppage = Toppage.find(params[:id])
        toppage.destroy
        redirect_to action: :index
      end
    
      private
      def toppage_params
        params.require(:toppage).permit(:body)
      end
end
