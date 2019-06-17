class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
          
  has_many :usertodos
  has_many :todos, through: :usertodos

  after_create :task_assignment

  def task_assignment
    Todo.all.each do |todo|
      self.todos << todo
    end
  end

  def completed_count
    self.usertodos.where(completed: true).count
  end

end
