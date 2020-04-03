def get_name(person)
  return person[:name]
end

def get_tv_show(person)
  return person[:favourites][:tv_show]
end

def like_food(person, fav)
  food = person[:favourites][:snacks][0]
  if (fav == food)
    return true
  else
    return false
  end
end

def add_friend(person, name)
  return person[:friends] << name
end

def remove_friend(person, friend)
  person[:friends].delete(friend)
  return person[:friends]
end

def total_money(people)
  total = 0
  for p in people
    total += p[:monies]
  end
  return total
end

def joined_food(people)
  snacks = []
  for p in people
    snacks = snacks.concat(p[:favourites][:snacks])
  end
  return snacks
end

def no_friends(people)
  no_friends = []
  for p in people
    if (p[:friends].length < 1)
      no_friends << p[:name]
    end
  end
  return no_friends
end
