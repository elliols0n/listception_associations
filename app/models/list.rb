# == Schema Information
#
# Table name: lists
#
#  id             :integer          not null, primary key
#  title          :string
#  board_id       :integer
#  position_order :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class List < ApplicationRecord
    
validates :title, :presence => true

has_many( :cards, :class_name => "Card", :foreign_key => "list_id" )
has_one( :boards, :class_name => "Board", :through => "board_id" )
    
end
