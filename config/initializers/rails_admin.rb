RailsAdmin.config do |config|
  config.authorize_with do
    redirect_to main_app.root_path unless current_user.admin == true
  end

  config.parent_controller = 'ApplicationController'

  require 'i18n'
  I18n.default_locale = :it

  config.main_app_name = ['TRANTOR']

  config.model 'User' do
    visible true
    label 'Utente'
    label_plural 'Utenti'
    configure :name do
      label 'Nome e Cognome:'
    end
    configure :institute do
      label 'Istituto:'
    end
    configure :office do
      label 'Ufficio:'
    end
    configure :phone do
      label 'Cellulare:'
    end
    configure :pec do
      label 'Posta certificata:'
    end
    configure :address do
      label 'Indirizzo:'
    end
    configure :category do
      label 'Categoria:'
    end
    configure :secretary do
      label 'Segretario:'
    end
    configure :transport_types do
      visible false
    end
    configure :veichles do
      visible false
    end
    configure :mission_places do
      visible false
    end
    configure :mission_structures do
      visible false
    end
    configure :mission_reasons do
      visible false
    end
    configure :mission_roads do
      visible false
    end
    configure :reimbursments do
      visible false
    end
    configure :admin do
      label 'Amministratore:'
    end
    configure :manager do
      label 'Direttore:'
    end
    configure :regular do
      label 'Operatore:'
    end
    configure :created_at do
      label 'Creato il:'
    end
    configure :updated_at do
      label 'Aggiornato il:'
    end
  end

  config.model 'MissionPlace' do
    visible true
    label 'luogo Missione'
    label_plural 'Luoghi Missione'
    configure :name do
      label 'Luogo Missione:'
    end
    configure :position do
      label 'Posizione:'
    end
    configure :user do
      visible false
    end
    configure :created_at do
      label 'Creato il:'
    end
    configure :updated_at do
      label 'Aggiornato il:'
    end
  end

  config.model 'MissionReason' do
    visible true
    label 'Motivo Missione'
    label_plural 'Motivi Missione'
    configure :name do
      label 'Motivo Missione:'
    end
    configure :position do
      label 'Posizione:'
    end
    configure :user do
      visible false
    end
    configure :created_at do
      label 'Creato il:'
    end
    configure :updated_at do
      label 'Aggiornato il:'
    end
  end

  config.model 'MissionStructure' do
    visible true
    label 'Struttura Missione'
    label_plural 'Strutture Missione'
    configure :name do
      label 'Struttura Missione:'
    end
    configure :position do
      label 'Posizione:'
    end
    configure :user do
      visible false
    end
    configure :created_at do
      label 'Creato il:'
    end
    configure :updated_at do
      label 'Aggiornato il:'
    end
  end

  config.model 'TransportType' do
    visible true
    label 'Tipologia Trasporto'
    label_plural 'Tipologie Trasporto'
    configure :name do
      label 'Tipologia Trasporto:'
    end
    configure :position do
      label 'Posizione:'
    end
    configure :user do
      label 'Utente:'
    end
    configure :created_at do
      label 'Creato il:'
    end
    configure :updated_at do
      label 'Aggiornato il:'
    end
  end

  config.model 'MissionRoad' do
    visible true
    label 'Percorso Missione'
    label_plural 'Percorsi Missione'
    configure :name do
      label 'Percorso:'
    end
    configure :km do
      label 'Km:'
    end
    configure :highway_cost do
      label 'Costo Autostrada:'
    end
    configure :position do
      label 'Posizione:'
    end
    configure :user do
      visible false
    end
    configure :created_at do
      label 'Creato il:'
    end
    configure :updated_at do
      label 'Aggiornato il:'
    end
  end

  config.model 'Veichle' do
    visible true
    label 'Mezzo'
    label_plural 'Mezzi'
    configure :name do
      label 'Modello:'
    end
    configure :producer do
      label 'Produttore:'
    end
    configure :licenceplate do
      label 'Targa:'
    end
    configure :position do
      label 'Posizione:'
    end
    configure :user do
      label 'Utente:'
    end
    configure :created_at do
      label 'Creato il:'
    end
    configure :updated_at do
      label 'Aggiornato il:'
    end
  end

  config.model 'Reimbursment' do
    visible true
    label 'Rimborso'
    label_plural 'Rimborsi'
    configure :name do
      label 'Numero:'
    end
    configure :transport_type do
      label 'Tipologia Trasporto:'
    end
    configure :veichle do
      label 'Mezzo:'
    end
    configure :mission_place do
      label 'Luogo Missione:'
    end
    configure :mission_structure do
      label 'Struttura Missione:'
    end
    configure :mission_reason do
      label 'Motivo Missione:'
    end
    configure :departure_date do
      label 'Data Partenza:'
    end
    configure :return_date do
      label 'Data Rientro:'
    end
    configure :request_date do
      label 'Data Richiesta:'
    end
    configure :reimbursment_date do
      label 'Data Rimborso:'
    end
    configure :mission_road do
      label 'Percorso Missione:'
    end
    configure :parking_cost do
      label 'Costo Parcheggio:'
    end
    configure :food_cost do
      label 'Costo Vitto:'
    end
    configure :room_cost do
      label 'Costo Alloggio:'
    end
    configure :ticket_cost do
      label 'Costo Ticket:'
    end
    configure :generic_cost do
      label 'Costi Vari:'
    end
    configure :costkm do
      visible false
    end
    configure :institute do
      visible false
    end
    configure :address do
      visible false
    end
    configure :secretary do
      visible false
    end
    configure :user do
      visible false
    end
    configure :created_at do
      label 'Creato il:'
    end
    configure :updated_at do
      label 'Aggiornato il:'
    end
  end

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
  end
end
