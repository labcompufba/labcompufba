class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    
    if user.admin? 
      can :manage, :all
    end
    
    if user.pesq?  or user.admin? 
       alias_action  :create, :read, :update, :destroy, :to => :pesq 
       can :pesq, Equipamento
       can :pesq, Instituto
       can :pesq, Laboratorio
       can :pesq, Labequip
    else
        alias_action  :read, :to => :usuario
        can :usuario, :all
      #can :manage, User
    end
  end
  
  
  
  
end