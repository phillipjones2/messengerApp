class MessagesController < ApplicationController
	before_action :set_message, only: [:show, :edit, :update, :destroy]


	def index
		@messages = Message.all
	end

	def show
	end

	def new
		@message = Message.new
	end

	def edit
	end

	def create
		@message = Message.new(message_params)
		respond_to do |format|
			if @message.save
				flash[:success] = 'Message was successfully created.'
				format.html { redirect_to @message}
				format.json { render :show, status: :created, location: @message }
			else
				flash[:danger] = 'There was a problem creating the Message'
				format.html { render :new }
				format.json { render json: @message.errors, status: :unprocessable_entity }
			end
		end
	end

	def update
		respond_to do |format|
			if @message.update(message_params)
				flash[:success] = 'Message was successfully updated.'
				format.html { redirect_to @message}
				format.json { render :show, status: :created, location: @message }
			else
				flash[:danger] = 'There was a problem updating the Message'
				format.html { render :new }
				format.json { render json: @message.errors, status: :unprocessable_entity }
			end
		end
	end

	def destroy
		@message.destroy
		respond_to do |format|
      flash[:success] = 'Todo was successfully destroyed.'
      format.html { redirect_to messages_path }
      format.json { head :no_content }
    end
  end

	private

	# Use callbacks to share common setup or constraints between actions.
	def set_message
		@message = Message.find(params[:id])
	end

	def message_params
		params.require(:message).permit(:name, :email, :content)
	end

end
