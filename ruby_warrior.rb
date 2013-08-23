class Player
  def health_check(last_health, current_health, warrior)
    if last_health > current_health # loosing health
      if current_health < 15 # low health
        warrior.walk! @direction_reverse #backup before healing
      else
        warrior.walk! @direction #charge forward and fight!
      end
    else
      if current_health < 20 #not loosing health, but not perfect health
        warrior.rest!
      else
        warrior.walk! @direction
      end
    end
  end
  
  def switch_directions
    if @direction == :backward
      @direction = :forward
      @direction_reverse = :backward
    elsif @direction == :forward
      @direction = :backward
      @direction_reverse = :backward
    end
  end
  
  def play_turn(warrior)
    @health = warrior.health unless @health
    @direction = :backward unless @direction #always look behind you first
    @direction_reverse = :forward unless @direction_reverse
    
    space = warrior.feel @direction
    view = warrior.look @direction
    enemy_location = view.index { |space| space.enemy? }
    captive_location = view.index { |space| space.captive? }
    
    if enemy_location && @direction == :backward
      warrior.pivot!
      switch_directions
    
    elsif enemy_location && @direction == :forward
      if captive_location && captive_location < enemy_location
        if space.empty?
          warrior.walk! @direction
        elsif space.captive?
          warrior.rescue! @direction
        end
      else
        warrior.shoot!
      end
    elsif enemy_location && enemy_location <= 2
      health_check(@health, warrior.health, warrior)
    else
      if space.empty? && @direction == :backward
        warrior.pivot!
        switch_directions
      end
        
      if space.enemy? && @direction == :forward
        warrior.attack!
      elsif space.enemy? && @direction == :backward
        warrior.pivot!
        switch_directions
      elsif space.empty?
        health_check(@health, warrior.health, warrior)
      elsif space.captive?
        warrior.rescue! @direction
      elsif space.wall?
        switch_directions
      elsif space.stairs?
        warrior.walk!
      end
    end
    
    @health = warrior.health
  end
end
