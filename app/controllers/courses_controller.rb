class CoursesController < ApplicationController

    def index
        @courses = Course.all
    end
    def new
        @course = Course.new
      end
    
      def create
         course = Course.new(course_params)
        if course.save!
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end
      def edit
        @course = Course.find(params[:id])
      end
      def update
        course = Course.find(params[:id])
        if course.update(course_params)
          redirect_to :action => "index", :id => course.id
        else
          redirect_to :action => "new"
        end
      end
      def destroy
        course = Course.find(params[:id])
        course.destroy
        redirect_to action: :index
      end
    
      private
      def course_params
        params.require(:course).permit(:body)
      end
end
