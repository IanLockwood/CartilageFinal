class FilmsController < ApplicationController
  def index
    @films = Film.all.where(archived: false).order("order_sort DESC")
    @archived_films = Film.all.where(archived: true).order("name DESC")
  end

  def new
    if admin?
      @film = Film.new
    else
      redirect_to root_url
    end
  end

  def create
    @film = Film.new(film_params)

      if @film.save
        redirect_to(
          films_path,
          notice: "Film created successfully!"
        )
      else
        render :new, notice: "Error creating film"
      end
  end

  def show
    @film = Film.find(params[:id])
  end

  def edit
    if admin?
      @film = Film.find(params[:id])
    else
      redirect_to root_url
    end
  end

  def update
    @film = Film.find(params[:id])

    if @film.update(film_params)
        redirect_to(
          film_path(@film),
          notice: "Film Updated Successfully"
        )
      else
        render "edit", status: 400
      end
  end

  def destroy
    film = Film.find(params[:id])
      film.destroy!

      redirect_to(
        films_path,
        notice: "Film Deleted"
      )
  end

  private

  def film_params
    params.require(:film).permit(
        :name,
        :synopsis,
        :trailer_url,
        :poster_url,
        :press_url,
        :release_date,
        :theater_dates,
        :past_dates,
        :featured,
        :archived,
        :film_page,
        :offsite_link,
        :order_sort
      )
  end
end
