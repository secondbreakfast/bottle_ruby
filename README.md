[gem]: https://rubygems.org/gems/bottle_ruby

# .bottle_ruby

Interact with the Bottle API in ruby.

* [Homepage](https://github.com/secondbreakfast/bottle_ruby)

## Description

[Bottle](https://sendbottles.com) is a work messenger. This is an API that allows you to send messages via Bottle programatically in Ruby.

## How It Works

### Installing

```
  $ gem install bottle_ruby
```

### Initialize a Client

The first step is to initialize a Bottle::Client object.

```ruby
client = Bottle::Client.new(uid, token)
```

### Creating a Message

Next, you need to initialize a Bottle::Message object with the message information.

```ruby
#  Bottle::Message.new(information_hash)
message = Bottle::Message.new(to: '555-555-5555', name: 'Recipient Name', body: 'Body of message', tags: ['tag1', 'tag2'])
```

You can also initialize a message using a conversation_id instead of a to phone number.

```ruby
message = Bottle::Message.new(conversation_id: 100, name: 'Recipient Name', body: 'Body of message', tags: ['tag1', 'tag2'])
```

### Sending a Message

Then, you send the message using the client object.

```ruby
client = Bottle::Client.new(uid, token)
message = Bottle::Message.new(conversation_id: 100, name: 'Recipient Name', body: 'Body of message', tags: ['tag1', 'tag2'])
message.send(client)
```

### Creating a Conversation

Initialize a Bottle::Conversation object with the conversation information.

```ruby
client = Bottle::Client.new(uid, token)
conversation = Bottle::Conversation.new(phone: '555-555-5555', name: 'Contact Name', tags: ['tag1', 'tag2'])
result = conversation.send(client)
```

Alternatively, you can initialize a conversation using a @handle instead of a phone number.

```ruby
conversation = Bottle::Conversation.new(handle: 'BottleBot', tags: ['tag1', 'tag2'])
```

## Contributors

Will Schreiber
