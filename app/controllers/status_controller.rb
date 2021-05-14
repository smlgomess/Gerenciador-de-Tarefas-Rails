class StatusController < ApplicationController
  def index
    @tarefas = Tarefa.all
  end

end
