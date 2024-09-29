module ApplicationHelper
  def full_user
    sanitize("<i class='fa-solid fa-user-circle'></i>&nbsp;#{current_user.first_name} #{current_user.last_name}")
  end

  def admin?
    current_user.admin == true
  end

  def accounter?
    current_user.accounter == true
  end

  def manager?
    current_user.manager == true
  end

  def regular?
    current_user.regular == true
  end
end
