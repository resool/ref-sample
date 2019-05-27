# frozen_string_literal: true

class Base
  include ActiveModel::Validations

  def call
    validate!
    send(:run)
    self
  end
end
