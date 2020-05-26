require 'slack/incoming/webhooks'

module SlackNotification
  def post_to_channel(msg)
    # Webhook URLは .zzhrc に環境変数として設定
    slack = Slack::Incoming::Webhooks.new(ENV['MY_CHANNEL'])
    # アイコンの絵文字設定
    slack.icon_emoji = ':ishida_cat:'
    # インスタンスメソッドとして呼出し元でメッセージを渡す
    slack.post(msg)
  end
end
