class PokemonsController < ApplicationController
  def capture
    @pokemon = Pokemon.find(params[:id])
    @pokemon.trainer = current_trainer
    @pokemon.save!

    redirect_to '/'
  end

  def damage
  	@pokemon = Pokemon.find(params[:id])
  	@pokemon.health -= 10
  	@pokemon.save
  	if @pokemon.health <= 0
  		@pokemon.destroy
    else
      @pokemon.save
  	end
  	redirect_to trainer_path(id: @pokemon.trainer)
  end

   def new
    @pokemon = Pokemon.new
  end 

  def create
    @pokemon = Pokemon.new(form_output)
    @pokemon.health = 100
    @pokemon.level = 1
    @pokemon.trainer = current_trainer
    if @pokemon.save
      redirect_to current_trainer_path(id: @pokemon.trainer)
      flash[:success] = "New pokemon has been added"
    else
      flash[:error] = pokemon.errors.full_message.to_sentence
      redirect_to new_path
    end
  end
end 