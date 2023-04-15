# Codewars - Kyu 6 : https://www.codewars.com/kata/58b2c5de4cf8b90723000051/ruby

class GuessWho
  def initialize(character)
    @characteristic = [{ personna: "Jean-Claude", characteristics: ["Male","Glasses","Brown eyes","Bald","White hair","Small mouth","Small nose"] },
                    { personna: "Pierre", characteristics: ["Male","Mustache","Brown eyes","Brown hair","Big mouth","Small nose"] },
                    { personna: "Jean", characteristics: ["Male","White hair","Big nose","Big mouth","Blue eyes"]},
                    { personna: "Amelie", characteristics: ["Female","Hat","Brown hair","Small mouth","Long hair","Brown eyes","Small nose"]},
                    { personna: "Mirabelle", characteristics: ["Female","Black hair","Earrings","Small mouth","Brown eyes","Big nose"]},
                    { personna: "Isabelle", characteristics: ["Female","Blonde hair","Glasses","Hat","Small mouth","Small nose","Brown eyes"]},
                    { personna: "Antonin", characteristics: ["Male","Brown eyes","Black hair","Small nose","Big mouth"]},
                    { personna: "Bernard", characteristics: ["Male","Brown eyes","Brown hair","Small nose","Hat"] },
                    { personna: "Owen", characteristics: ["Male","Blue eyes","Blonde hair","Small nose","Small mouth"]},
                    { personna: "Dylan", characteristics: ["Male","Brown eyes","Blonde hair","Small nose","Small mouth","Bald","Beard"]},
                    { personna: "Herbert", characteristics: ["Male","Brown eyes","Blonde hair","Big nose","Small mouth","Bald"]},
                    { personna: "Christine", characteristics:["Female","Blue eyes","Blonde hair","Small nose","Small mouth","Long hair"]},
                    { personna: "Luc", characteristics: ["Male","Brown eyes","White hair","Small nose","Small mouth","Glasses"]},
                    { personna: "Cecilian", characteristics: ["Male","Brown eyes","Ginger hair","Small nose","Small mouth"]},
                    { personna: "Lionel", characteristics: ["Male","Brown eyes","Brown hair","Big nose","Big mouth","Mustache"]},
                    { personna: "Benoit", characteristics: ["Male","Brown eyes","Brown hair","Small mouth","Small nose","Mustache","Beard"]},
                    { personna: "Robert", characteristics: ["Male","Blue eyes","Brown hair","Big nose","Big mouth"] },
                    { personna: "Charline", characteristics: ["Female","Brown hair","White hair","Small nose","Big mouth"] },
                    { personna: "Renaud", characteristics: ["Male","Brown eyes","Blonde hair","Small nose","Big mouth","Mustache"] },
                    { personna: "Michel", characteristics: ["Male","Brown eyes","Blonde hair","Small nose","Big mouth","Beard"]},
                    { personna: "Pierre-Louis", characteristics: ["Male","Blue eyes","Brown hair","Small nose","Small mouth","Bald","Glasses"]},
                    { personna: "Etienne", characteristics: ["Male","Brown eyes","Blonde hair","Small nose","Small mouth","Glasses"]},
                    { personna: "Henri", characteristics: ["Male","Brown eyes","White hair","Small nose","Big mouth","Hat"]},
                    { personna: "Damien", characteristics: ["Male","Brown eyes","Blonde hair","Small nose","Big mouth","Hat"]}]
    @character = character
    @turn_count = 0
  end

  def guess(guess)
    @turn_count += 1
    return ["Correct! in #{@turn_count} turns"] if guess == @character

    personna = find_personna(@character)
    filter_characteristic(personna, guess)
    filter_personna(guess)
    list_personnas
  end

  private

  def find_personna(character)
    @characteristic.find { |char| char[:personna] == character }
  end

  def filter_characteristic(personna, guess)
    if personna[:characteristics].include?(guess)
      @characteristic.select! do |character|
        character[:characteristics].include?(guess)
      end
    else
      @characteristic.reject! do |character|
        character[:characteristics].include?(guess)
      end
    end
  end

  def filter_personna(guess)
    @characteristic.reject! { |char| char[:personna] == guess } if list_personnas.include?(guess)
  end

  def list_personnas
    @characteristic.map { |character| character[:personna] }
  end
end
