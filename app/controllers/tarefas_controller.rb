class TarefasController < ApplicationController
  def index
    @tarefas = Tarefa.all
  end

  def new
    @tarefa = Tarefa.new
  end
  
  def show
    @tarefa = Tarefa.find(params[:id])
  end
  
  def edit
    @tarefa = Tarefa.find(params[:id])
  end
  
  def create
    @tarefa = Tarefa.new(tarefa_params)
    if @tarefa.save
      redirect_to @tarefa,
      		notice: 'Tarefa criada com sucesso!'
    else
      render action: :new
    end
  end
  
  def update
    @tarefa = Tarefa.find(params[:id])
    if @tarefa.update(tarefa_params)
      redirect_to @tarefa,
        notice: 'tarefa atualizada com sucesso!'
    else
      render action: :edit
    end
  end
        
  def destroy
    @tarefa = Tarefa.find(params[:id])
    @tarefa.destroy
    respond_to do |format|
      format.html { redirect_to tarefas_url, notice: "Tarefa removida com sucesso!." }      
    end
  end
   

   private
  def tarefa_params
  	params.
  	  require(:tarefa).
  	  permit(:titulo, :status, :descricao)
  end
end
