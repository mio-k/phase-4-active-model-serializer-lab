class OrderSerializer < ActiveModel::Serializer
  attributes :item
  belongs_to :dog
end
