module ApplicationHelper
  def app_name
    "Diablo Valley Tech Initiative"
  end

  def page_title(title)
    title.present? ? "#{title}" : "Promoting a thriving tech sector in the Diablo Valley | DVTI "
  end

  def meta_description(meta_description)
    meta_description.present? ? "#{meta_description}" : "Studying and promoting the initiatives that enable the Diablo Valley to cultivate and benefit from a thriving tech sector"
  end

  def flash_class(level)
    case level
      when "notice" then "alert alert-info"
      when "success" then "alert alert-success"
      when "error" then "alert alert-danger"
      when "alert" then "alert alert-danger"
    end
  end
end
