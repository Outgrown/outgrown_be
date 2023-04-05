class Mutations::CreateUser < Mutations::BaseMutation
  argument :name, String, required: false

  field :success, Boolean, null: false
  field :user, Types::UserType, null: true
  field :errors, [String], null: false

  def resolve(**args)
    user = User.new(args)

    if user.save
      { success: true, user: user, errors: [] }
    else
      binding.pry
      { success: false, user: nil, errors: user.errors.full_messages }
    end
  end
end
