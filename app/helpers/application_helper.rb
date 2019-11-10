module ApplicationHelper
  def avatar_url(user)
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase
    "https://www.gravatar.com/avatar/#{gravatar_id}.jpg?d=identical&s=150"
  end

  def toastr_flash_class(type)
    case type
    when "alert"
      "toastr.error"
    when "notice"
      "toastr.success"
    else
      "toastr.info"
    end
  end
end
