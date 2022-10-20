require 'time_error'

RSpec.describe "" do
  it 'returns the time difference between server
    time and computer time' do
      fake_requester = double :requester
      allow(fake_requester).to receive(:get).with(URI("https://worldtimeapi.org/api/ip")).
      and_return('{"abbreviation":"BST","client_ip":"2a0c:b381:420:a900:e12a:404e:57f9:ada1",
      "datetime":"2022-10-20T14:48:20.962544+01:00","day_of_week":4,"day_of_year":293,"dst":true,
      "dst_from":"2022-03-27T01:00:00+00:00","dst_offset":3600,"dst_until":"2022-10-30T01:00:00+00:00",
      "raw_offset":0,"timezone":"Europe/London","unixtime":1666273700,"utc_datetime":"2022-10-20T13:48:20.962544+00:00",
      "utc_offset":"+01:00","week_number":42}')
      time = Time.new(2022, 10, 20, 14, 48, 20)
      time_error = TimeError.new(fake_requester)
      expect(time_error.error(time)).to eq 0.962544
  end
end