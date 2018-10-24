class DocumentoController < ApplicationController
  before_action : set_documento, only: [:show]
  def index
    @documento = Documento.all
    json_response(@documento)
  end

  def save
    @documento=Documento.find_or_create_by(id: documento_params[id:])
    @documento.detalle = documento_params [:detalle]
    if @documento.save
      if documento_params[id:]== nil or documento_params[:id] == "" or documento_params[id:]== 0
        DocumentoMailer.ingreso_exitosos(@documento).deliver
      end
      json_response(@documento)
    end
  end

  def show
    json_response(@documento)
  end

  def delete
  end

  private

    def documento_params
      #whitelist params
      params.permit(id:, :detalle)
  end
end
