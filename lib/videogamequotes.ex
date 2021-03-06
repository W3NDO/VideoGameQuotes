defmodule Videogamequotes do
  @moduledoc """
  Documentation for `Videogamequotes`.
  """

  @quotes %{
    :bioshock => [
      "We all make choices in life, but in the end our choices make us.",
      "Andrew Ryan, Bioshock"
    ],
    :mortal_kombat => ["Get over here!", "Scorpion, Mortal Kombat"],
    :skyrim => [
      "What is better? To be born good or to overcome your evil nature through great effort?",
      "Elder Scrolls V: Skyrim"
    ],
    :haf_life => [
      "How many are there in you? Whose hopes and dreams do you encompass? Could you but see the eyes in your own, the minds in your mind, you would see how much we share.",
      "Half-Life 2"
    ],
    :mass_effect => [
      "Stand in the ashes of a trillion dead souls, and asks the ghosts if honor matters. The silence is your answer.",
      "Javik, Mass Effect"
    ],
    :borderlands => [
      "NOTHING IS MORE BADASS THAN TREATING A WOMAN WITH RESPECT!",
      "Mr. Torgue, Borderlands 2"
    ],
    :assassins_creed => [
      "Wanting something does not give you the right to have it.",
      "Ezio, Assassin’s Creed 2"
    ],
    :metro_2033 => [
      "Even in dark times, we cannot relinquish the things that make us human.",
      "Metro 2033"
    ],
    :call_of_duty => [
      "The healthy human mind doesn't wake up in the morning thinking this is its last day on Earth. But I think that's a luxury, not a curse. To know you're close to the end is a kind of freedom. Good time to take... inventory.",
      "Call of Duty: Modern Warfare 2"
    ],
    :dishonoured => [
      "It’s a funny thing, ambition. It can take one to sublime heights or harrowing depths. And sometimes they are one and the same.",
      "Dishonored"
    ],
    :halo => ["A hero need not speak. When he is gone, the world will speak for him.", "Halo"],
    :red_dead_redemption => [
      "Some trees flourish, others die. Some cattle grow strong, others are taken by wolves. Some men are born rich enough and dumb enough to enjoy their lives. Ain’t nothing fair.",
      "Red Dead Redemption"
    ],
    :far_cry => [
      "You can’t break a man the way you break a dog, or a horse. The harder you beat a man, the taller he stands.",
      "Far Cry 2"
    ],
    :duke_nukem => [
      "It's time to kick ass and chew bubblegum... and I'm all outta gum.",
      "Duke Nukem 3D"
    ],
    :gears_of_war => [
      "Life is cruel. Of this I have no doubt. One can only hope that one leaves behind a lasting legacy. But so often, the legacies we leave behind...are not the ones we intended.",
      "Gears of War 2"
    ],
    :alan_wake => [
      "If our lives are already written, it would take a courageous man to change the script.",
      "Alan Wake"
    ],
    :metal_gear_solid => [
      "It's easy to forget what a sin is in the middle of a battlefield.",
      "Metal Gear Solid"
    ],
    :max_payne => ["Without Passion, you are already dead", "Max Payne"],
    :fallout => ["Who are you, that do not know your history?", "Ulysses, Fallout New Vegas"],
    :animal_crossing => [
      "Don't wish it were easier, wish you were better.",
      "Chief, Animal Crossing"
    ],
    :god_of_war => ["Do not be sorry, be better", "Kratos, God Of War 2018"],
    :dragon_age => [
      "The world fears the inevitable plummet into the abyss. Watch for that moment and when it comes, do not hesitate to leap. It is only when you fall that you learn whether you can fly.",
      "Flemeth, Dragon Age Origins"
    ],
    :portal => [
      "The best solution to a problem is usually the easiest one. And I'll be honest - killing you is hard. You know what my days used to be like? I just tested. Nobody murdered me, or put me in a potato, or fed me to birds. I had a pretty good life. And then you showed up. You dangerous, mute lunatic. So you know what? You win. Just go. [chuckles] It's been fun. Don't come back.",
      "GLaDOS, Portal 2"
    ],
    :battlefield => [
      "If history only remembers one in a thousands of us, then the future will be filled with stories of who we were and what we did.",
      "Battlefield 1"
    ],
    :dead_space => [
      "Good men mean well. We just don't always end up doing well.",
      "Isaac Clarke, Dead Space 3"
    ],
    :legend_of_zelda => ["It’s dangerous to go alone, take this!", "Old Man, The Legend of Zelda"],
    :last_of_us => ["Endure and survive.", "Ellie, The Last of Us"]
  }

  @doc """
  random_quote/0

  ## Examples

      iex> Videogamequotes.random_quote
      >> What is better? To be born good or to overcome your evil nature through great effort? ~ Elder Scrolls V: Skyrim

  """
  def random_quote() do
    # annonymous function
    show = fn q -> IO.puts(">> #{hd(Map.get(@quotes, q))} ~ #{tl(Map.get(@quotes, q))} ") end

    @quotes
    |> Map.keys()
    |> Enum.random()
    |> show.()
  end

  @doc """
  random_quote/1

  Takes in an argument for the number of quotes you want. Quotes may be repeated.

  ## Examples

      iex> Videogamequotes.random_quote(2)
      >> What is better? To be born good or to overcome your evil nature through great effort? ~ Elder Scrolls V: Skyrim
      >> It’s dangerous to go alone, take this! ~ Old Man, The Legend of Zelda

  """
  def random_quote(count) do
    Enum.each(1..count, fn _ -> random_quote() end)
  end
end
