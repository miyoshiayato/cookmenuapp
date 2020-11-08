module ApplicationHelper
  def full_title(page_title = '')
    base_title = 'クックメニュー'
    if page_title.blank?
      base_title  
    else
      "#{page_title} - #{base_title}" # トップ以外のページはタイトル「利用規約 - クックメニュー」（例）
    end
  end
end