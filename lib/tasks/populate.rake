namespace :populate do
  desc "populate 25 doctors"
  task doctors: :environment do
    Doctor.populate(25) do |doctor|
      doctor.name = Faker::Name.name
    end
    puts "Doctors created successfully. There are now #{Doctor.count} doctors."
  end

  desc "populate 300 patients"
  task patients: :environment do
    Patient.populate(300) do |patient|
      patient.name = Faker::Name.name
      patient.email = Faker::Internet.email
    end
    puts "Patients created successfully. There are now #{Patient.count} patients."
  end

end
