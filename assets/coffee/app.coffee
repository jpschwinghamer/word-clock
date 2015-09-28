$ ->

  # Setup interval, create date object, send to hour and minute functions, and parse out words
  parseTime = setInterval( ->
    date = new Date()
    hourWord = switch
      when (hour(date) == 12 && minutes(date) >= 35) then "one"
      when (hour(date) == 1 && minutes(date) < 35) then "one"
      when hour(date) == 1 && minutes(date) >= 35 then "two"
      when (hour(date) == 2 && minutes(date) < 35) then "two"
      when hour(date) == 2 && minutes(date) >= 35 then "three"
      when (hour(date) == 3 && minutes(date) < 35) then "three"
      when hour(date) == 3 && minutes(date) >= 35 then "four"
      when (hour(date) == 4 && minutes(date) < 35) then "four"
      when hour(date) == 4 && minutes(date) >= 35 then "five"
      when (hour(date) == 5 && minutes(date) < 35) then "five"
      when hour(date) == 5 && minutes(date) >= 35 then "six"
      when (hour(date) == 6 && minutes(date) < 35) then "six"
      when hour(date) == 6 && minutes(date) >= 35 then "seven"
      when (hour(date) == 7 && minutes(date) < 35) then "seven"
      when hour(date) == 7 && minutes(date) >= 35 then "eight"
      when (hour(date) == 8 && minutes(date) < 35) then "eight"
      when hour(date) == 8 && minutes(date) >= 35 then "nine"
      when (hour(date) == 9 && minutes(date) < 35) then "nine"
      when hour(date) == 9 && minutes(date) >= 35 then "ten"
      when (hour(date) == 10 && minutes(date) < 35) then "ten"
      when hour(date) == 10 && minutes(date) >= 35 then "eleven"
      when (hour(date) == 11 && minutes(date) < 35) then "eleven"
      when hour(date) == 11 && minutes(date) >= 35 then "twelve"
      when (hour(date) == 12 && minutes(date) < 35) then "twelve"
    minuteWord = switch
      when minutes(date) >= 0 && minutes(date) < 5 then "oclock"
      when minutes(date) >= 5 && minutes(date) < 10 then "five-past"
      when minutes(date) >= 10 && minutes(date) < 15 then "ten-past"
      when minutes(date) >= 15 && minutes(date) < 20 then "quarter-past"
      when minutes(date) >= 20 && minutes(date) < 25 then "twenty-past"
      when minutes(date) >= 25 && minutes(date) < 30 then "twenty-five-past"
      when minutes(date) >= 30 && minutes(date) < 35 then "half-past"
      when minutes(date) >= 35 && minutes(date) < 40 then "twenty-five-to"
      when minutes(date) >= 40 && minutes(date) < 45 then "twenty-to"
      when minutes(date) >= 45 && minutes(date) < 50 then "quarter-to"
      when minutes(date) >= 50 && minutes(date) < 55 then "ten-to"
      when minutes(date) >= 55 && minutes(date) < 60 then "five-to"

    # Update DOM classes
    $("h1:not('.prompt')").removeClass('active')
    $(".#{minuteWord}, .#{hourWord}").addClass('active')
    console.log(minuteWord + " " + hourWord)
  , 1000)

  # Get hour and format to 12
  hour = (date) ->
    if date.getHours() == 0
      12
    else if date.getHours() > 12
       date.getHours() - 12
    else
      date.getHours()

  # Get minutes
  minutes = (date) ->
    date.getMinutes()

