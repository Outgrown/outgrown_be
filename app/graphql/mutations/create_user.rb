class Mutations::CreateUser < Mutations::BaseMutation
  argument :name, String, required: true

  field :success, Boolean, null: false
  field :user, Types::UserType, null: false
  field :errors, [String], null: false

  def resolve(name:)

    user = User.new(name: name)

    if user.save
      { success: true, user: user, errors: [] }
    else
      binding.pry
      { success: false, user: nil, errors: user.errors.full_messages }
    end
  end
end
