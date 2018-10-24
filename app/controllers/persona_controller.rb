class PersonaController < ApplicationController
  before_action : set_persona, only: [:show]
  def index
    @persona = Persona.all
    json_response(@persona)
  end

  def save
    @persona=Persona.find_or_create_by(id: persona_params[id:])
    @persona.detalle = persona_params [:detalle]
    if @persona.save
      if persona_params[id:]== nil or persona_params[:id] == "" or persona_params[id:]== 0
        PersonaMailer.ingreso_exitosos(@Persona).deliver
      end
      json_response(@persona)
    end
  end

  def show
    json_response(@persona)
  end

  def delete
  end

  private

    def persona_params
      #whitelist params
      params.permit(id:, :detalle)
  end
end