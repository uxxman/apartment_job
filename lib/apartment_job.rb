module ApartmentJob
  extend ActiveSupport::Concern

  included do
    around_perform do |_, block|
      Apartment::Tenant.switch(@tenant) do
        block.call
      end
    end
  end

  def serialize
    super.merge('tenant' => Apartment::Tenant.current)
  end

  def deserialize(job_data)
    super
    @tenant = job_data[:tenant]
  end
end

ActiveSupport.on_load(:active_job) do
  include ApartmentJob
end
