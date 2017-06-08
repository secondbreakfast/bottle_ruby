module Bottle
  class Message

    attr_accessor :to, :name, :body, :file, :tags,
      :id, :from_number, :to_number, :delivered_at, :viewed_at, :created_at, :updated_at, :direction, :conversation_id, :origin, :object_name, :object_key, :user_id, :created_from_rule_id, :body_decoded, :attachments


    def initialize(to=nil, name=nil, body=nil, file=nil, tags=nil)
      @url_extension = 'messages'
      if to.is_a?(Hash)
        attributes = to.convert_keys_to_symbols
        @to = attributes[:to]
        @name = attributes[:name]
        @body = attributes[:body]
        @file = attributes[:file]
        @tags = attributes[:tags]
        @id = attributes[:id]
        @from_number = attributes[:from_number]
        @to_number = attributes[:to_number]
        @delivered_at = attributes[:delivered_at]
        @viewed_at = attributes[:viewed_at]
        @created_at = attributes[:created_at]
        @updated_at = attributes[:updated_at]
        @direction = attributes[:direction]
        @conversation_id = attributes[:conversation_id]
        @origin = attributes[:origin]
        @object_name = attributes[:object_name]
        @object_key = attributes[:object_key]
        @user_id = attributes[:user_id]
        @created_from_rule_id = attributes[:created_from_rule_id]
        @body_decoded = attributes[:body_decoded]
        @attachments = attributes[:attachments]
      else
        @to = to
        @name = name
        @body = body
        @file = file
        @tags = tags
      end
    end

    def send(client)
      client.post(@url_extension, {message: {to: self.to, name: self.name, text: self.body, file: self.file}, conversation: {tags: self.tags}})
    end

  end
end