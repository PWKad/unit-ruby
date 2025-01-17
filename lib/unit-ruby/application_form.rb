module Unit
  class ApplicationForm < Util::APIResource
    path '/application-forms'

    attribute :tags, Types::Hash # Optional
    attribute :allowed_application_types, Types::Array # Optional. Array of Individual, Business or SoleProprietorship.
    attribute :applicant_details, Types::ApplicationFormPrefill # Optional. Add data that is already known about the end-customer to be auto populated on the form.
    attribute :settings_override, Types::ApplicationFormSettingsOverride # Optional. Override disclosure URLs that were defined in the application form settings.
    attribute :stage, Types::String
    attribute :url, Types::String

    include Util::ResourceOperations::Create
  end
end
