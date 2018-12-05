class ContaController < ApplicationController
  before_action :set_contum, only: [:show, :edit, :update, :destroy]

  # GET /conta
  # GET /conta.json
  def index
    @conta = Conta.all
  end

  # GET /conta/1
  # GET /conta/1.json
  def show
  end

  # GET /conta/new
  def new
    @contum = Conta.new
  end

  # GET /conta/1/edit
  def edit
  end

  # POST /conta
  # POST /conta.json
  def create
    @contum = Conta.new(contum_params)

    respond_to do |format|
      if @contum.save
        format.html { redirect_to @contum, notice: 'Conta was successfully created.' }
        format.json { render :show, status: :created, location: @contum }
      else
        format.html { render :new }
        format.json { render json: @contum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conta/1
  # PATCH/PUT /conta/1.json
  def update
    respond_to do |format|
      if @contum.update(contum_params)
        format.html { redirect_to @contum, notice: 'Conta was successfully updated.' }
        format.json { render :show, status: :ok, location: @contum }
      else
        format.html { render :edit }
        format.json { render json: @contum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conta/1
  # DELETE /conta/1.json
  def destroy
    @contum.destroy
    respond_to do |format|
      format.html { redirect_to conta_index_url, notice: 'Conta was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contum
      @contum = Conta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contum_params
      params.require(:contum).permit(:descricao, :tipo, :despesa, :valor, :vencimento, :fornecedor_id)
    end
end