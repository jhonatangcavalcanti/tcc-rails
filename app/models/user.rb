class User < ApplicationRecord
  enum kind: [:editor, :admin]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :validatable
  # :rememberable, :registerable, :recoverable

  def admin?
    return self.kind == 'admin'
  end

  def editor?
    return self.kind == 'editor'
  end
end
