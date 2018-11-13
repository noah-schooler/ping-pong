require 'rspec'
require 'ping_pong.rb'
require 'pry'

describe ('#ping_pong') do
  it('counts to two') do
    expect(ping_pong(2)).to(eq([1,2]))
  end

  it('replaces dvisible by three with "ping"') do
    expect(ping_pong(3)).to(eq([1, 2, "ping"]))
  end

  it('replaces divisible by five with "pong"') do
    expect(ping_pong(5)).to(eq([1, 2, "ping", 4, "pong"]))
  end

  it('replaces numbers divisible by both three and five with "ping pong"') do
    expect(ping_pong(15)).to(eq([1, 2, "ping", 4, "pong", "ping", 7, 8, "ping", "pong", 11, "ping", 13, 14, "ping pong"]))
  end
end
