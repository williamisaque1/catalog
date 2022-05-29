class FinalsController < ApplicationController
  before_action :set_final, only: %i[ show edit update destroy ]

  # GET /finals or /finals.json
  def index
    @finals = Final.all
  end

  # GET /finals/1 or /finals/1.json
  def show
  end

  # GET /finals/new
  def new
    @final = Final.new
    render 'edit.js'
  end

  # GET /finals/1/edit
  def edit
    render 'edit.js' 

  end

  # POST /finals or /finals.json
  def create

    @final = Final.new(final_params)
    if @final.save
    render 'create.js'
    end

    
  end

  # PATCH/PUT /finals/1 or /finals/1.json
  def update

      if @final.update(final_params) 
        
      else
        respond_to do |format|
        format.js { render 'edit.js'  }
       
      end
    end
  end

  # DELETE /finals/1 or /finals/1.json
  def destroy

    @final.destroy

    respond_to do |format|
      format.html { redirect_to finals_url, notice: "Final was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_final
      @final = Final.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def final_params
      params.require(:final).permit(:name)
    end
end
