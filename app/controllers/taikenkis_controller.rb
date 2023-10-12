class TaikenkisController < ApplicationController
    def index
        @taikenkis = Taikenki.all
    end

    def new
        @taikenki = Taikenki.new
      end
    
      def create
        taikenki = Taikenki.new(taikenki_params)
        if taikenki.save!
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end
      def edit
        @taikenki = Taikenki.find(params[:id])
      end
      def update
        taikenki = Taikenki.find(params[:id])
        if taikenki.update(taikenki_params)
          redirect_to :action => "index", :id => taikenki.id
        else
          redirect_to :action => "new"
        end
      end
      def destroy
        taikenki = Taikenki.find(params[:id])
        taikenki.destroy
        redirect_to action: :index
      end
    
      private
      def taikenki_params
        params.require(:taikenki).permit(:body)
      end
end
