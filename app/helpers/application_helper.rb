module ApplicationHelper

  def bootstrap_class_for flash_type
      { success: "alert-success", error: "alert-danger", alert: "alert-warning", notice: "alert-info" }[flash_type] || flash_type.to_s
    end

    def flash_messages(opts = {})
      flash.each do |msg_type, message|
        concat(content_tag(:div, message, class: "alert #{bootstrap_class_for(msg_type)} fade in") do
                concat content_tag(:button, 'x', class: "close alert alert-#{name} ", data: { dismiss: 'alert' })
                concat message
              end)
      end
      nil
    end

    # Returns the full title on a per-page basis.
    def full_title(page_title = '')
      base_title = "Phillip Emerson Jones portfolio"
      if page_title.empty?
        base_title
      else
        "PEJ | " + page_title
      end
    end

end
