class Seed

  def self.begin
    seed = Seed.new
    seed.generate_quotes
  end

  def generate_animals
    20.times do |i|
      animal = Animal.create!(
        name: Faker::Cat.name,
        breed: Faker::Cat.breed,
        age: [1,1,1,1,1,1,2,2,2,2,3,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,120].sample,
        available: true
      )
    end
  end
end

Seed.begin
