module DashboardHelper
  def llama_sample
    quote_array = ["Llama pregnancies last almost a year or longer.", "Llama poop is sellable.", "Some llamas are used as guards.", "Llamas can carry 50 pounds for 20 miles in one day.", "If you put too much weight on a llama, it will refuse to move.", "A female llama with a male camel can sometimes crossbreed to form a hybrid creature called a Cama.", "Llamas have three stomachs!", "Someone designed an entire font made out of llamas.", "When one llama has an issue with another llama, it will stick its tongue out to express its displeasure. They’ll also spit on other llamas.", "Llama dung makes great fuel and fertilizer. In fact, it may have helped the Incans grow corn and survive in the Andes.", "Llamas can reach speeds up to 35mph.", "Llamas are native to the South American Andes. They were first imported into the United States in the late 1800s for display in zoos.", "Our greatest weakness lies in giving up. The most certain way to succeed is always to try just one more time.",
    "Always do your best. What you plant now, you will harvest later.",
    "Become the person who would attract the results you seek.",
    "Don't watch the clock; do what it does. Keep going.",
    "Everything you’ve ever wanted is on the other side of fear.",
    "The secret of getting ahead is getting started.",
    "Quality performance starts with a positive attitude.",
    "Do you want to know who you are? Don't ask. Act! Action will delineate and define you.",
    "Setting goals is the first step in turning the invisible into the visible.",
    "The harder the conflict, the more glorious the triumph.",
    "We herd sheep, we drive cattle, we lead people. Lead me, follow me, or get out of my way.",
    "Motivation will almost always beat mere talent.",
    "Change before you have to.",
    "Human beings have an innate inner drive to be autonomous, self-determined, and connected to one another. And when that drive is liberated, people achieve more and live richer lives.",
    "I attribute my success to this: I never gave or took any excuse.",
    "Your attitude, not your aptitude, will determine your altitude.",
    "Well done is better than well said.",
    "You miss 100% of the shots you don’t take.",
    "I got lucky because I never gave up the search. Are you quitting too soon? Or are you willing to pursue luck with a vengeance?",
    "There is always room at the top.",
    "It ain't over 'til it's over.",
    "It’s not about having the right opportunities. It’s about handling the opportunities right.",
    "A goal is a dream with a deadline.",
    "Winning isn’t everything, but wanting to win is.",
    "Big shots are only little shots who keep shooting.",
    "If you’re offered a seat on a rocket ship, don’t ask what seat! Just get on.",
    "Outstanding people have one thing in common: An absolute sense of mission.",
    "You can't build a reputation on what you are going to do.",
    "Trying is winning in the moment.",
    "Fall down seven times and stand up eight.",
    "If you aren’t going all the way, why go at all?",
    "Act as if what you do makes a difference. It does.",
    "You just can't beat the person who never gives up.",
    "Lean in, speak out, have a voice in your organization, and never use the word sorry.",
    "Whatever you are, be a good one.",
    "The road to Easy Street goes through the sewer.",
    "Fortune favors the bold.",
    "Success is never final. Failure is never fatal. It is courage that counts.",
    "Don't be afraid to give up the good to go for the great.",
    "High expectations are the key to everything.",
    "No one can make you feel inferior without your consent.",
    "Don't let what you cannot do interfere with what you can do.",
    "There is little success where there is little laughter.",
    "We cannot solve our problems with the same thinking we used when we created them.",
    "What we dwell on is who we become.",
    "It is not necessary to do extraordinary things to get extraordinary results.",
    "Nothing is impossible; the word itself says I'm possible!",
    "Innovation distinguishes between a leader and a follower.",
    "The successful warrior is the average man, with laser-like focus.",
     "Be miserable. Or motivate yourself. Whatever has to be done, it's always your choice."].sample
  end

  def total_word_count
    interactions = Interaction.all
    words_array = []
    interactions.each do |interaction|
      interaction = interaction.details.split
      words_array.push(interaction)
    end
    words_array.flatten.count
  end

end
