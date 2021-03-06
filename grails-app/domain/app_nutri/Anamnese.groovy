package app_nutri

class Anamnese {

    static enum Patologia{
        DIABETES,
        OSTEOPOROSE,
        ENDOCRINO,
        HIPERTENSÃO,
        CARDIACO,
        RGE,
        CIRCULATORIO,
        DISLIPIDEMIA,
        CANCER,
        HIPOGLICEMIA,
        ANSIEDADE,
        RENAL,
        HERPES,
        DEPRESSAO,
        HEPATITE,
        GASTRITE,
        HIPOTIREOIDISMO,
        HIPERTIREOIDISMO
    }

    List<Patologia> patologias
    String suplementos
    String alergiaAlimentar
    String intoleranciaAlimentar
    Date data = new Date()
    HabitoDeVida habitoDeVida

    static belongsTo = [paciente: Paciente]

    static constraints = {
        habitoDeVida nullable: true
        patologias nullable: true
        suplementos nullable: true
        alergiaAlimentar nullable: true
        intoleranciaAlimentar nullable: true
    }

    static mapping = {
        habitoDeVida cascade: "save-update"
    }

    static getPatologiasDisponiveis(){
        return Patologia.values()
    }

}
