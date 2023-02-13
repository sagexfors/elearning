# To deliver this notification:
#
# LessonNotification.with(post: @post).deliver_later(current_user)
# LessonNotification.with(post: @post).deliver(current_user)

class LessonNotification < Noticed::Base
  # Add your delivery methods
  #
  deliver_by :database
  # deliver_by :email, mailer: "UserMailer"
  # deliver_by :slack
  # deliver_by :custom, class: "MyDeliveryMethod"

  # Add required params
  #
  param :lesson

  # Define helper methods to make rendering easier.
  #
  # def message
  #   t(".message")
  # end
  #
  def url
    subject_lesson_path(params[:lesson])
  end
end
