class CommentsController < ApplicationController
	def create
		@song = Song.find(params[:song_id])
		@comments = @song.comments.create(comment_params)
		redirect_to song_path(@song)
	end


	def destroy
    @song = Song.find(params[:song_id])
    @comment = @song.comments.find(params[:id])
    @comment.destroy
    redirect_to song_path(@song)
  end

	private
		def comment_params
			params.require(:comment).permit(:commenter, :body)
		end

end
