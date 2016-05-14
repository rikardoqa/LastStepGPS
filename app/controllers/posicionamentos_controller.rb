class PosicionamentosController < ApplicationController
  before_action :set_posicionamento, only: [:show, :edit, :update, :destroy]

  # GET /posicionamentos
  # GET /posicionamentos.json
  def index
    @posicionamentos = Posicionamento.all
  end

  # GET /posicionamentos/1
  # GET /posicionamentos/1.json
  def show
  end

  # GET /posicionamentos/new
  def new
    @posicionamento = Posicionamento.new
  end

  # GET /posicionamentos/1/edit
  def edit
  end

  # POST /posicionamentos
  # POST /posicionamentos.json
  def create
    @posicionamento = Posicionamento.new(posicionamento_params)

    respond_to do |format|
      if @posicionamento.save
        format.html { redirect_to @posicionamento, notice: 'Posicionamento was successfully created.' }
        format.json { render :show, status: :created, location: @posicionamento }
      else
        format.html { render :new }
        format.json { render json: @posicionamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posicionamentos/1
  # PATCH/PUT /posicionamentos/1.json
  def update
    respond_to do |format|
      if @posicionamento.update(posicionamento_params)
        format.html { redirect_to @posicionamento, notice: 'Posicionamento was successfully updated.' }
        format.json { render :show, status: :ok, location: @posicionamento }
      else
        format.html { render :edit }
        format.json { render json: @posicionamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posicionamentos/1
  # DELETE /posicionamentos/1.json
  def destroy
    @posicionamento.destroy
    respond_to do |format|
      format.html { redirect_to posicionamentos_url, notice: 'Posicionamento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_posicionamento
      @posicionamento = Posicionamento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def posicionamento_params
      params.require(:posicionamento).permit(:posicao, :data, :horario, :usuario_id)
    end
end
