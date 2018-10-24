class DocumentoMailerPreview <ActionMailer: DocumentoMailerPreview
    def ingreso_exitoso_preview
        DocumentoMiler.ingreso_exitoso(Documento.first)
    end
end