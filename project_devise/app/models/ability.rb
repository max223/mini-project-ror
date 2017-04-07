class Ability
  include CanCan::Ability
  def initialize(user)
    # Define abilities for the passed in user here. For example:
    user ||= User.new # guest user (not logged in)
    if user.superadmin_role?
      can :manage, :all
      can :acess, :rails_admin
      can :dashboard
    end
    if user.supervisor_role?
      can :manage, User
    end

  end
end
