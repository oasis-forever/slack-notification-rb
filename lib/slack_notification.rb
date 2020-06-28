require 'slack/incoming/webhooks'

class SlackNotifier
  def self.post(msg)
    # Webhook URLは .zzhrc / .bash_profile に環境変数として設定
    slack = Slack::Incoming::Webhooks.new(ENV['MY_CHANNEL'])
    # アイコンの絵文字設定
    slack.icon_emoji = ':smile:'
    # インスタンスメソッドとして呼出し元でメッセージを渡す
    slack.post(msg)
  end
end
