class Document < ActiveRecord::Base
  # named_scope :limited, :limit => 50
  # named_scope :ordered, :order => 'created_at desc'
  
  attr_accessible :body, :title
  
  def to_json(options = {})
    super(options.merge(:only => [ :id, :title, :created_at, :body ]))
  end
  
end
