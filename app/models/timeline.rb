class Timeline
  def initialize(user)
    @user = user
  end

  def shouts
    Shout.where(user_id: user).
    order(created_at: :desc)
  end

  def to_partial_path
    "timelines/timeline"
  end

  private

  attr_reader :user

end
