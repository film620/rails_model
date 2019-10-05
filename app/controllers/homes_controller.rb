class HomesController < ApplicationController
    def index
    end
    def second 
        @data=params[:numb]
        @data=@data.to_i
        
        if @data%2==0
            @result="짝수 입니다."
        else 
            @result="홀수 입니다."
        end
        
        one_line=Post.new
        one_line.age = @data
        one_line.save
        
        redirect_to request.referrer
    end
    
    def third 
        @entry=Post.all
    end
end