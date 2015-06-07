class Seed
  def run
    generate_heroes
    generate_admin
    generate_shifts
  end

  def generate_heroes
    given_users.each do |name|
      User.create(name: name, password: "pw", role: 0)
    end
  end

  def generate_admin
    User.create(name: "admin", password: "pw", role: 1)
  end

  def given_users
    ["Sherry", "Boris", "Vicente", "Matte", "Jack", "Kevin", "Zoe", "Jay", "Eadon", "Franky", "Luis", "James"]
  end

  def generate_shifts
    counter = 0

    40.times do
      Shift.create(date: (Date.today + counter), user_id: [*1..12].sample)
      counter += 1
    end
  end

  def self.run
    new.run
  end
end

Seed.run

