class Seed

  def self.begin
    seed = Seed.new
    seed.generate_quotes
  end

  def generate_animals
    20.times do |i|
      animal = Animal.create!(
        name: Faker::Cat.name,
        breed: Faker::Cat.breed
      )
    end
  end
end

Seed.begin
