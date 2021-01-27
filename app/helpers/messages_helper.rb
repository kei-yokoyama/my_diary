module MessagesHelper
  def message_lists(messages)
    html = ''
    unless messages.nil?
      messages.each do |message|
        html += render(partial: 'message', locals: { message: message })
      end
      raw(html)
    end
  end
end
