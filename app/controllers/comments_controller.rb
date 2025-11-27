class CommentsController < ApplicationController
    before_action :set_post

    def create
        @post.comments.create! params.expect(comment: [ :content ])
        redirect_to @post
    end

    private
        # Use callbacks to share common setup or constraints between actions.
        def set_post
            @post = Post.find(params.expect(:post_id))
        end
end
