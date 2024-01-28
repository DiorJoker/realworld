class ArticlesController < ApplicationController


  skip_before_action :verify_authenticity_token



  def create

    @todo = Todo.new(article_params)


    if @todo.save
      render json: {
        article: {
          title: @todo.title,
          description: @todo.description,
          body: @todo.body,
          tagList: @todo.tagList
        }
      }
    else
      render json: { errors: @todo.errors.full_messages }
    end
  end

  def get
  end

  def show
    @todo = Todo.find(params[:id])

    render json:
        @todo
  end

  def update
    @todo = Todo.find(params[:id])

    if @todo.update(article_params)
      render json: {
        todo: {
          id: @todo.id,
          title: @todo.title
        }
      }
    else
      render json: { errors: @todo.errors.full_messages }
    end
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    render json: {
      title: @todo.title
    }
  end



  private



    def article_params
      params.require(:article).permit(:title, :description, :body, :tagList)
    end


end
