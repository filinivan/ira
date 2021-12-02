# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
divisions = Division.create!([
  { name: 'Офис', service: false },
  { name: 'It', service: true },
  { name: 'Отель', service: false },

])

users = User.create!([
  { fist_name: 'Маркус', last_name: 'Миллер', division_id: 1, email: 'asd@asd.rr', password: '123123', encrypted_password: '123'}
])

jobs = Job.create!([
  { name: 'Освещение в номере'},
  { name: 'Плохо работает Wi-Fi'},
  { name: 'Тараканы кусаются'},

])

job_executions = JobExecution.create!([
  { explanation: 'В номере 13', urgent: true, closed: false, job_id: 1, user_id: 1, division_id: 1},
  { explanation: 'В номере 13', urgent: false, closed: true, job_id: 3, user_id: 1, division_id: 1}
])