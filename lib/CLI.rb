  require "pry"
# prompt = TTY::Prompt.new(symbols: {marker: '🛸'})

# choices = [
#   {name:"", value: 1},
#   {name:"", value: 2},
#   {name:"", value: 3}
# ]
# user_input = prompt.select("", choices)


def main_logo
  puts "\t-----------------------------------------------------------------------------"
    
  puts  "\t\t░██████╗░░█████╗░███╗░░░███╗███████╗██╗░░██╗██╗░░░██╗██████╗░"
  puts  "\t\t██╔════╝░██╔══██╗████╗░████║██╔════╝██║░░██║██║░░░██║██╔══██╗"
  puts  "\t\t██║░░██╗░███████║██╔████╔██║█████╗░░███████║██║░░░██║██████╦╝"
  puts  "\t\t██║░░╚██╗██╔══██║██║╚██╔╝██║██╔══╝░░██╔══██║██║░░░██║██╔══██╗"
  puts  "\t\t╚██████╔╝██║░░██║██║░╚═╝░██║███████╗██║░░██║╚██████╔╝██████╦╝"
  puts  "\t\t░╚═════╝░╚═╝░░╚═╝╚═╝░░░░░╚═╝╚══════╝╚═╝░░╚═╝░╚═════╝░╚═════╝░"

  puts "\t-----------------------------------------------------------------------------"
end
class CommandLineInterface
  def greet
    puts "\t-----------------------------------------------------------------------------"
    
    puts  "\t\t░██████╗░░█████╗░███╗░░░███╗███████╗██╗░░██╗██╗░░░██╗██████╗░"
    puts  "\t\t██╔════╝░██╔══██╗████╗░████║██╔════╝██║░░██║██║░░░██║██╔══██╗"
    puts  "\t\t██║░░██╗░███████║██╔████╔██║█████╗░░███████║██║░░░██║██████╦╝"
    puts  "\t\t██║░░╚██╗██╔══██║██║╚██╔╝██║██╔══╝░░██╔══██║██║░░░██║██╔══██╗"
    puts  "\t\t╚██████╔╝██║░░██║██║░╚═╝░██║███████╗██║░░██║╚██████╔╝██████╦╝"
    puts  "\t\t░╚═════╝░╚═╝░░╚═╝╚═╝░░░░░╚═╝╚══════╝╚═╝░░╚═╝░╚═════╝░╚═════╝░"

    puts "\t-----------------------------------------------------------------------------"

      sleep(1.5)
    puts "\n\n\t\t\t\tnew entity detected!"
      sleep(1.5)
    puts "\n\n\t\t\t\trunning greeting sequence..." 
      sleep(1.5)
    puts "\n\n\tWelcome to gamehub the best gamer based review resource in the known universe."
      sleep(1.5)
    puts "\n\t\t\t\t\tso.."

     greeting_options
    # returning_user_options
    # logged_in_user_options
    #  create_review
    # search_for_game_reviews
  end

  def logo
puts "
    \t\t\t\t\t\t╭━━━╮╱╱╱╱╱╱╱╱╭╮╱╱╱╱╭╮
    \t\t\t\t\t\t┃╭━╮┃╱╱╱╱╱╱╱╱┃┃╱╱╱╱┃┃
    \t\t\t\t\t\t┃┃╱╰╋━━┳╮╭┳━━┫╰━┳╮╭┫╰━╮
    \t\t\t\t\t\t┃┃╭━┫╭╮┃╰╯┃┃━┫╭╮┃┃┃┃╭╮┃
    \t\t\t\t\t\t┃╰┻━┃╭╮┃┃┃┃┃━┫┃┃┃╰╯┃╰╯┃
    \t\t\t\t\t\t╰━━━┻╯╰┻┻┻┻━━┻╯╰┻━━┻━━╯
    \t\t\t\t\t\t-----------------------"
  end

     # start of greeting set of options code block
     # ⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️  

  def greeting_options
    prompt = TTY::Prompt.new(symbols: {marker: '🚁'}) 
    # 🛸
    choices = [
  {name: "\nReturning user", value: 1},
  {name: "\nNew user", value: 2},
  {name: "\nLeaving", value: 3}]

  user_input = prompt.select("\n\n\t\t\t\t what is your status?\n", choices)


    case user_input
    when 1 
      system "clear"
      returning_user
    when 2
      system "clear"
      new_user
    when 3
      system "clear"
      closing_sequence_logged_in
    end
end
     


  def returning_user

    logo

    puts "\n\ngreat"
     sleep 1
    puts "\nso.."
     sleep 1
    puts "\nwhat is your gamer name\n\n"
    
    user_name = gets.chomp
    # system "clear"
    
    user_account = Gamer.find_by(username:user_name)
    system "clear"
    if user_account === nil
      puts "Gamer not found, please try again"
      sleep 3
      returning_user
    end
    

      

    logged_in_user_options(user_account)
  end

  # ending of greeting set of options code block
  # ⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️





  # start of logged in user options code block
  # ⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️
  

  def logged_in_user_options(user)

    logo

    prompt = TTY::Prompt.new(symbols: {marker: '🚤'})

    choices = [
      {name:"\ncreate review", value: 1},
      {name:"\nsearch for game reviews", value: 2},
      {name:"\nupdate my reviews", value: 3},
      {name:"\ndelete review", value: 4},
      {name:"\ntake me back", value: 5}
    ]

    puts "\nOk #{user.username}, the time has come, you must now choose your path...\n\n"
    sleep 3
      
    user_input = prompt.select("", choices)

    case user_input
    when 1
      create_review(user)
      system "clear"
    when 2
      search_for_game_reviews(user)
      system "clear"
    when 3
      update_reviews(user)
      system "clear"
    when 4
      delete_review(user)
      system "clear"
    when 5
      greeting_options
      system "clear"
    end
  end
      # ending of logged in user code block
  # ⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️

 # start of create review code block
  # ⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️
  def create_review(user)
    # binding.pry
    prompt = TTY::Prompt.new(symbols: {marker: '🛸'})

    
    genre_types = Genre.all.map{|genre|genre.genre_type}
    system "clear"
    choices = genre_types
    logo

    user_genre = prompt.select("great, what genre does the game belong to which you would like to leave a review for?\n\n", choices)
    genre_instance = Genre.find_by(genre_type:user_genre)

    # binding.pry

    game_names = genre_instance.games_genres.map{|gg|gg.game.name}
    # binding.pry
    system "clear"
    choices2 = game_names.uniq
    system "clear"

    logo

    user_game_name = prompt.select("Ok, now select which game you'd like to review from the list", choices2)
    game = Game.find_by(name:user_game_name)
    system "clear"

    logo

    user_score = prompt.slider("fantastico! and what rating would you like to give", min: 1, max: 10) 
    
    new_review = Review.create(game_id: game.id, gamer_id: user.id, rating: user_score)
    system "clear"

    logo

    # puts "noooice, would you like to do anything else?"
    user_input = prompt.yes?("noooice, would you like to do anything else?")
    #  binding.pry

    case user_input
    when true
      logged_in_user_options(user)
    when false
      puts "\n\n\n\t\t\t\tOk"
      sleep 2
      puts "\n\n\n\t\t\t\trunning shutdown sequence.."
      sleep 2
      puts "\n\n\n\t\t\t\tOk dokes, till next time gamer #{user.username}\n\n\n"
      sleep 3
      main_logo
      sleep 5
    end


  end
        # ending of create review code block
  # ⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️

  # start of read review(logged in) code block
  # ⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️

  def search_for_game_reviews(user)
    prompt = TTY::Prompt.new(symbols: {marker: '📖'})

    genre_types = Genre.all.map{|genre|genre.genre_type}
    system "clear"
    
    choices = genre_types
    system "clear"
    logo
    user_genre = prompt.select("Coolio, and what game genre would you like to browse", choices)

    genre = Genre.find_by(genre_type:user_genre)
    system "clear"
    
    games_in_genre = GamesGenre.where(genre_id: genre.id)
    # binding.pry
    system "clear"
    
    games_names = games_in_genre.map{|gg|gg.game.name}
    system "clear"
    
    choices2 = games_names.uniq
    system "clear"
    
    logo

    selected_game = prompt.select("Ok, now from the list select which game's rating you'd like to view", choices2)
    # binding.pry
    game = Game.find_by(name: selected_game)
    system "clear"
    game_reviews = game.reviews
    system "clear"
    game_ratings = game_reviews.map{|gr|gr.rating}
    game_average = game_ratings.sum/game_ratings.size
    game_average = game_average.round(1)
    # binding.pry

    logo

    choices3 = [
      {name:"check another review\n", value: 1},
      {name:"go to previous menu\n", value: 2},
      {name:"I'm done", value: 3}
    ]
    

    what_now = prompt.select("\tAh yes it says here that the average rating for #{selected_game} is #{game_average} \n 
      what would you like to do next?\n", choices3)

        case what_now
        when 1 
          search_for_game_reviews(user)
        when 2
          logged_in_user_options(user)
        when 3
          closing_sequence_logged_in
        end
      end
    end

    # ending of read review(logged in) code block
  # ⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️



  # start of update review(logged in) code block
  # ⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️

  def update_reviews(user)

    
    logo

    prompt = TTY::Prompt.new(symbols: {marker: '🔧'})

    user_reviews = Review.where(gamer_id: user.id) 
    if user_reviews == []
      puts "It seems you don't have any reviews, you can create some in your Gamer menu.
      redirecting..."
      sleep 5
      logged_in_user_options(user)
    end
    system "clear"
    game_names = user_reviews.map{|g|g.game.name}
    system "clear"
    choices = game_names
    user_input = prompt.select("\n\nOK, so these are the games you have reviews for, which one would you like to update\n\n", choices)

    review_instance = user_reviews.find{|reviews|reviews.game.name==user_input}
    

    user_input2 = prompt.slider("\tyour rating for #{user_input} is #{review_instance.rating}. \n
      what would you like your new rating to be?", min: 1, max: 10)

    review_instance.update(rating: user_input2)

    choices2 = [
      {name:"update another review\n", value: 1},
      {name:"go to previous menu\n", value: 2},
      {name:"I'm done", value: 3}
    ]
    
    user_input3 = prompt.select("done and done, your new rating for #{user_input} is now #{review_instance.rating}", choices2)
    sleep 3

    case user_input3
    when 1
      update_reviews(user)
    when 2
      logged_in_user_options(user)
    when 3
      closing_sequence_logged_in
    end
  end

            # ending of update review (logged in) code block
  # ⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️



  # start of delete review(logged in) code block
  # ⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️

  def delete_review(user)

    logo
    prompt = TTY::Prompt.new(symbols: {marker: '🗡'})

    user_reviews = Review.where(gamer_id: user.id)
    if user_reviews == []
      puts "It seems you don't have any reviews to delete, you can create some in your Gamer menu\n
      then you can delete them..\n
      redirecting..."
      sleep 5
      logged_in_user_options(user)
    end
    system "clear"
    game_names = user_reviews.map{|g|g.game.name}
    system "clear"
     
    choices = game_names.uniq

    logo
    
    user_input = prompt.select("Ah, the path of destruction it seems, which review shall we perish, hm?\n\n", choices)

    sleep 2

    game_instance = Game.find{|game|game.name == user_input}
    system "clear"

    review_to_delete = user_reviews.find{|review|review.game_id == game_instance.id}
    system "clear"
    review_to_delete.destroy
    system "clear"

    puts "\n\nthe deed is done.."

    sleep 1

    choices2 = [
      {name: "\nYes, more shall perish", value: 1},
      {name: "\nNo, I've had quite my fill", value: 2},
      {name: "\nI think I'll be leaving now actually", value: 3}
    ]

    logo

    user_input2 = prompt.select("would you like anything else?\n", choices2)

    case user_input2
    when 1
      delete_review(user)
    when 2
      logged_in_user_options(user)
    when 3
      closing_sequence_logged_in
    end
  end
  # ending of delete review(logged in) code block
  # ⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️



  # start of new user code block
  # ⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️

  def new_user

    logo
    prompt = TTY::Prompt.new(symbols: {marker: '🛸'})

    puts "\nSo you are a new user, thats great lets start with your username"

    user_username = gets.chomp
    if user_username === ""
      puts "\tNothing is not a valid username, well technically it is,\n
      what I mean is you should type in something... anything just not nothing\n
      as in nothing nothing. got it?"
      sleep 8
      puts "good"
      new_user
    end

    puts "\nnice!\n"

    user_age = prompt.slider("\nAnd what is your age?", min: 12, max: 70)

    user = Gamer.create(username: user_username, age: user_age)
    # binding.pry

    choices = [
      {name: "\nshow me what a new user can do around here\n", value: 1},
      {name: "\nno I'm fine thanks, actually I'd like to leave", value: 2}]

      puts "\nGreat, your now a brand new honourary Gamer Initiate\n"
      sleep 2
      puts "\n..perhaps one day you may even become a GamesMaster, but for now,"
      sleep 2
      puts "\nwhat would you like to do next?"
      sleep 2

    user_input = prompt.select("", choices)

        case user_input
        when 1
          logged_in_user_options(user)
          system "clear"
        when 2
          closing_sequence_logged_in
          system "clear"
        end
      end

      def closing_sequence_logged_in
        puts "\n\n\n\t\t\t\t\tOk"
              sleep 1
              puts "\n\n\n\t\t\t\t\trunning shutdown sequence.."
              sleep 2
              puts "\n\n\n\t\t\t\t\tOk dokes, till next time Gamer\n\n\n\n\n\n\n\n\n\n\n"
              sleep 2
              main_logo
              sleep 3
        end
  # ending of new user code block
  # ⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️⬆️














