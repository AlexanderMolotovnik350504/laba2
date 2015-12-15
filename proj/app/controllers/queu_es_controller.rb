class QueuEsController < ApplicationController
  before_action :set_queu_e, only: [:show, :edit, :update, :destroy]

  # GET /queu_es
  # GET /queu_es.json
  def index
    @queu_es = QueuE.all
  end

  # GET /queu_es/1
  # GET /queu_es/1.json
  def show
  end

  # GET /queu_es/new
  def new
    @queu_e = QueuE.new
  end

  # GET /queu_es/1/edit
  def edit
  end

  # POST /queu_es
  # POST /queu_es.json
  def create
    @queu_e = QueuE.new(queu_e_params)

    respond_to do |format|
      if @queu_e.save
        format.html { redirect_to @queu_e, notice: 'Queu e was successfully created.' }
        format.json { render :show, status: :created, location: @queu_e }
      else
        format.html { render :new }
        format.json { render json: @queu_e.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /queu_es/1
  # PATCH/PUT /queu_es/1.json
  def update
    respond_to do |format|
      if @queu_e.update(queu_e_params)
        format.html { redirect_to @queu_e, notice: 'Queu e was successfully updated.' }
        format.json { render :show, status: :ok, location: @queu_e }
      else
        format.html { render :edit }
        format.json { render json: @queu_e.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /queu_es/1
  # DELETE /queu_es/1.json
  def destroy
    @queu_e.destroy
    respond_to do |format|
      format.html { redirect_to queu_es_url, notice: 'Queu e was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_queu_e
      @queu_e = QueuE.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def queu_e_params
      params.require(:queu_e).permit(:room_id, :date, :time)
    end
end
