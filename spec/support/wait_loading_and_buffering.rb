def wait_loading_and_buffering
  seconds = 0.0
  until page.execute_script 'return playerReady'
    print ':'
    sleep 0.25
    seconds += 0.25
    next if seconds < 5
    raise "5 seconds is too long to wait for a player. Ain't nobody got time for that!"
  end

  page.execute_script 'player.mute()'

  seconds = 0.0
  until page.execute_script('return player.getPlayerState()') != 3
    print ':'
    sleep 0.25
    seconds += 0.25
    next if seconds < 5
    raise "Buffering shouldn't take more than 5 seconds. Let's give this up."
  end
end
