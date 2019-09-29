class MypicArController < ApplicationController
    
    #jsからのpostが、外部からのpostとみなされ、弾かれてるっぽいので、機能をオフにする
    protect_from_forgery except: :search # searchアクションを除外
    def index
    end

    def editpic
    end

    def takeaphoto
        @picnumber = params[:number]
        @onimg = Pictemp.find(@picnumber)[:picture]
    end

    def create
        @img = Pictemp.new()
        @img.picture = params[:picture]
        #logger.debug "!!!!!!!!!!!!!!!!!!!!!"
        #logger.debug @img
        #logger.debug "!!!!!!!!!!!!!!!!!!!!!"
        @img.save
        @number = @img.id
        redirect_to mypic_ar_takeaphoto_path(number: @number)
    end

end
