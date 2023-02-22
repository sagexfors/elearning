# frozen_string_literal: true

# To deliver this notification:
#
# ActivityNotification.with(post: @post).deliver_later(current_user)
# ActivityNotification.with(post: @post).deliver(current_user)

class ActivityNotification < Noticed::Base
  # Add your delivery methods
  #
  deliver_by :database
  # deliver_by :email, mailer: "UserMailer"
  # deliver_by :slack
  # deliver_by :custom, class: "MyDeliveryMethod"

  # Add required params
  #
  param :activity

  # Define helper methods to make rendering easier.
  #
  def message
    @activity = params[:activity]
    @subject = @activity.subject
    "<strong>#{@activity.created_at.to_s(:short)}</strong> New Activity: #{@activity.name} has been posted in #{@subject.name}.".html_safe
  end

  def url
    subject_activities_path(params[:activity])
  end
end
