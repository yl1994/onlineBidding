module ApplicationHelper

  # 消息类型
  def flash_status_chn(status)
    case status.to_sym
    when :error
      I18n.t('common.messages.error_msg')
    when :success
      I18n.t('common.messages.success_msg')
    else
      I18n.t('common.messages.notice_msg')
    end
  end

  #必填项
  def required_span
    raw "<span class='red'>*</span>"  
  end
end
