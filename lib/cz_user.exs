defmodule CzUser do

  alias CzUser.CheckIn.Create, as: CheckinCreate

  def wait_for_messages do
    receive do
      {:basic_deliver, payload, _meta} ->
        {_status, list} = JSON.decode(payload)
        CheckinCreate.call(list)
        wait_for_messages()
    end
  end
end

{:ok, connection} = AMQP.Connection.open
{:ok, channel} = AMQP.Channel.open(connection)
AMQP.Queue.declare(channel, "cz_user_in")
AMQP.Basic.consume(channel, "cz_user_in", nil, no_ack: true)
IO.puts " [*] Waiting for messages. To exit press CTRL+C, CTRL+C"

CzUser.wait_for_messages()
