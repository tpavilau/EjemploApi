class DocumentoMailer < ApplicationMailer
    default from: 'tpavilau@gmail.com'

    def ingreso_exitoso (documento)
        @documento = documento.detalle
        @url = "https://faceboook.com"
        mail (to: "tpavilau@gmail.com",
            subject: "Ingreso de documento exitoso")
        end

end
