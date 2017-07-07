module Bottle
  class Conversation

    attr_accessor :phone, :handle, :name, :tags, :id, :conversation_id, :created_at, :updated_at, :relationship_status, :object_name, :object_key, :user_id, :last_viewed_timestamp, :conversation_name, :conversation_type, :conversation_status, :user_display_identifier, :avatar_color, :user_phone_active, :favorited, :last_sent_timestamp, :unread_count, :last_message_is_from_user, :conversation_title, :group_identifier


    def initialize(phone=nil, handle=nil, name=nil, tags=nil)
      @url_extension = 'conversations'
      if phone.is_a?(Hash)
        attributes = phone.convert_keys_to_symbols
        @phone = attributes[:phone]
        @handle = attributes[:handle]
        @tags = attributes[:tags]
        @name = attributes[:name]
        @id = attributes[:id]
        @conversation_id = attributes[:conversation_id]
        @created_at = attributes[:created_at]
        @updated_at = attributes[:updated_at]
        @relationship_status = attributes[:relationship_status]
        @object_name = attributes[:object_name]
        @object_key = attributes[:object_key]
        @user_id = attributes[:user_id]
        @last_viewed_timestamp = attributes[:last_viewed_timestamp]
        @conversation_name = attributes[:conversation_name]
        @conversation_type = attributes[:conversation_type]
        @conversation_status = attributes[:conversation_status]
        @user_display_identifier = attributes[:user_display_identifier]
        @avatar_color = attributes[:avatar_color]
        @user_phone_active = attributes[:user_phone_active]
        @favorited = attributes[:favorited]
        @last_sent_timestamp = attributes[:last_sent_timestamp]
        @unread_count = attributes[:unread_count]
        @last_message_is_from_user = attributes[:last_message_is_from_user]
        @conversation_title = attributes[:conversation_title]
        @group_identifier = attributes[:group_identifier]
      else
        @phone = phone
        @handle = handle
        @name = name
        @tags = tags
      end
    end

    def send(client)
      client.post(@url_extension, {conversation: {phone: self.phone, handle: self.handle, name: self.name, tags: self.tags}})
    end

  end
end