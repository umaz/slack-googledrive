# This file was auto-generated by lib/generators/tasks/generate.rb

module Slack
  module Endpoint
    module Mpim
      #
      # Closes a multiparty direct message channel.
      #
      # @option options [Object] :channel
      #   MPIM to close.
      # @see https://api.slack.com/methods/mpim.close
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/mpim.close.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/mpim.close.json
      def mpim_close(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        post("mpim.close", options)
      end

      #
      # Fetches history of messages and events from a multiparty direct message.
      #
      # @option options [Object] :channel
      #   Multiparty direct message to fetch history for.
      # @option options [Object] :count
      #   Number of messages to return, between 1 and 1000.
      # @option options [Object] :inclusive
      #   Include messages with latest or oldest timestamp in results.
      # @option options [Object] :latest
      #   End of time range of messages to include in results.
      # @option options [Object] :oldest
      #   Start of time range of messages to include in results.
      # @option options [Object] :unreads
      #   Include unread_count_display in the output?
      # @see https://api.slack.com/methods/mpim.history
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/mpim.history.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/mpim.history.json
      def mpim_history(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        post("mpim.history", options)
      end

      #
      # Lists multiparty direct message channels for the calling user.
      #
      # @see https://api.slack.com/methods/mpim.list
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/mpim.list.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/mpim.list.json
      def mpim_list(options={})
        post("mpim.list", options)
      end

      #
      # Sets the read cursor in a multiparty direct message channel.
      #
      # @option options [Object] :channel
      #   multiparty direct message channel to set reading cursor in.
      # @option options [Object] :ts
      #   Timestamp of the most recently seen message.
      # @see https://api.slack.com/methods/mpim.mark
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/mpim.mark.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/mpim.mark.json
      def mpim_mark(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        throw ArgumentError.new("Required arguments :ts missing") if options[:ts].nil?
        post("mpim.mark", options)
      end

      #
      # This method opens a multiparty direct message.
      #
      # @option options [Object] :users
      #   Comma separated lists of users.  The ordering of the users is preserved whenever a MPIM group is returned.
      # @see https://api.slack.com/methods/mpim.open
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/mpim.open.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/mpim.open.json
      def mpim_open(options={})
        throw ArgumentError.new("Required arguments :users missing") if options[:users].nil?
        post("mpim.open", options)
      end

      #
      # Retrieve a thread of messages posted to a direct message conversation from a multiparty direct message.
      #
      # @option options [Object] :channel
      #   Multiparty direct message channel to fetch thread from.
      # @option options [Object] :thread_ts
      #   Unique identifier of a thread's parent message.
      # @see https://api.slack.com/methods/mpim.replies
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/mpim.replies.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/mpim.replies.json
      def mpim_replies(options={})
        throw ArgumentError.new("Required arguments :channel missing") if options[:channel].nil?
        throw ArgumentError.new("Required arguments :thread_ts missing") if options[:thread_ts].nil?
        post("mpim.replies", options)
      end

    end
  end
end
