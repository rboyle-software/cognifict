const biasCategories = [
  {
    "id": 1,
    "category_name": "Too Much Information",
    "short_definition": "Biases that help filter overwhelming amounts of information to focus on what seems most relevant.",
    "long_definition":
        "The human brain is constantly bombarded with vast amounts of data and sensory inputs, far more than it can consciously process. To cope with this overload, we rely on cognitive biases that help us filter out most of this information and focus on what feels most important or relevant at the time. This filtering process, though efficient, can cause us to give disproportionate attention to certain types of information, such as things that are vivid, recent, or emotionally charged, while ignoring other crucial data that might be more important but less immediately noticeable."
  },
  {
    "id": 2,
    "category_name": "Not Enough Meaning",
    "short_definition": "Biases that lead us to fill in gaps in our understanding and create meaning from incomplete information.",
    "long_definition":
        "We often encounter situations where information is incomplete or ambiguous, leaving gaps in our understanding. Cognitive biases in this category help us make sense of the world by allowing us to fill in these gaps and create coherent narratives or patterns from limited data. However, in doing so, we can sometimes oversimplify complex situations, see patterns where none exist, or rely on assumptions and stereotypes that may not be accurate. These biases are essential for making decisions in the face of uncertainty, but they also increase the risk of misunderstanding or misinterpreting the available information."
  },
  {
    "id": 3,
    "category_name": "Need to Act Fast",
    "short_definition": "Biases that allow quick decision-making, often sacrificing accuracy for speed in urgent situations.",
    "long_definition":
        "In many situations, especially those that seem urgent or high-stakes, we don't have the luxury of carefully analyzing all available information before making a decision. Cognitive biases in this category help us act quickly by providing shortcuts, often based on heuristics or instincts, which allow for fast decision-making. While these shortcuts can be incredibly useful when time is limited, they can also lead to errors or poor judgment because they often bypass more rational, deliberate thought processes. These biases can cause us to focus on the most immediately noticeable aspects of a situation or rely on gut feelings rather than facts."
  },
  {
    "id": 4,
    "category_name": "What Should We Remember?",
    "short_definition": "Biases that determine which memories are retained and how they are recalled or distorted over time.",
    "long_definition":
        "Human memory is highly selective, and cognitive biases in this category shape not only what we remember but also how we recall and interpret past events. Our memories are not perfect recordings of reality; instead, they are influenced by emotions, recent experiences, and the way events are framed when they happen. These biases help us prioritize certain memories over others, often based on emotional significance or narrative coherence. However, they can also lead to distortions, such as remembering events as more positive or negative than they were, or believing that we predicted something after it happened (hindsight bias)."
  }
];

const cognitiveBiases = [
  {
    "id": 1,
    "type": "Anchoring Bias",
    "definition": "Relying too heavily on the first piece of information encountered.",
    "category": "Need to Act Fast"
  },
  {
    "id": 2,
    "type": "Availability Heuristic",
    "definition": "Overestimating the importance of information that comes to mind easily.",
    "category": "Too Much Information"
  },
  {
    "id": 3,
    "type": "Bandwagon Effect",
    "definition": "Believing something is true or valuable because many others believe it.",
    "category": "Need to Act Fast"
  },
  {
    "id": 4,
    "type": "Confirmation Bias",
    "definition": "Focusing on information that confirms existing beliefs and ignoring contradicting information.",
    "category": "Too Much Information"
  },
  {
    "id": 5,
    "type": "Dunning-Kruger Effect",
    "definition": "People with low ability overestimate their competence, while experts may underestimate theirs.",
    "category": "Not Enough Meaning"
  },
  {"id": 6, "type": "Endowment Effect", "definition": "Placing more value on things simply because you own them.", "category": "Not Enough Meaning"},
  {
    "id": 7,
    "type": "Framing Effect",
    "definition": "Making decisions based on how information is presented, rather than facts themselves.",
    "category": "Not Enough Meaning"
  },
  {
    "id": 8,
    "type": "Hindsight Bias",
    "definition": "Believing after an event that you predicted it all along.",
    "category": "What Should We Remember?"
  },
  {
    "id": 9,
    "type": "In-group Bias",
    "definition": "Favoring people within your own group over those outside of it.",
    "category": "Not Enough Meaning"
  },
  {
    "id": 10,
    "type": "Loss Aversion",
    "definition": "Preferring to avoid losses rather than acquire equivalent gains.",
    "category": "Need to Act Fast"
  },
  {
    "id": 11,
    "type": "Negativity Bias",
    "definition": "Giving more weight to negative experiences or information than positive ones.",
    "category": "What Should We Remember?"
  },
  {
    "id": 12,
    "type": "Optimism Bias",
    "definition": "Overestimating the likelihood of positive outcomes and underestimating negative ones.",
    "category": "Not Enough Meaning"
  },
  {
    "id": 13,
    "type": "Outcome Bias",
    "definition": "Judging a decision based on its outcome rather than the quality of the process.",
    "category": "Not Enough Meaning"
  },
  {
    "id": 14,
    "type": "Overconfidence Effect",
    "definition": "Having excessive confidence in one's answers or abilities.",
    "category": "Need to Act Fast"
  },
  {
    "id": 15,
    "type": "Placebo Effect",
    "definition": "Experiencing real improvement due to belief in treatment, even if it is inactive.",
    "category": "Need to Act Fast"
  },
  {"id": 16, "type": "Recency Bias", "definition": "Giving more weight to recent events than earlier ones.", "category": "What Should We Remember?"},
  {
    "id": 17,
    "type": "Sunk Cost Fallacy",
    "definition": "Continuing a behavior due to previously invested resources rather than a rational decision.",
    "category": "Need to Act Fast"
  },
  {
    "id": 18,
    "type": "Status Quo Bias",
    "definition": "Preferring things to stay the same even when change is beneficial.",
    "category": "Need to Act Fast"
  },
  {
    "id": 19,
    "type": "Survivorship Bias",
    "definition": "Focusing only on successful cases and ignoring failures.",
    "category": "Too Much Information"
  },
  {
    "id": 20,
    "type": "Self-serving Bias",
    "definition": "Attributing positive outcomes to oneself and negative outcomes to external factors.",
    "category": "What Should We Remember?"
  },
  {"id": 21, "type": "Halo Effect", "definition": "Letting one positive attribute influence overall judgment.", "category": "Not Enough Meaning"},
  {"id": 22, "type": "Horn Effect", "definition": "Letting one negative attribute influence overall judgment.", "category": "Not Enough Meaning"},
  {
    "id": 23,
    "type": "Base Rate Fallacy",
    "definition": "Ignoring statistical information in favor of specific anecdotes.",
    "category": "Not Enough Meaning"
  },
  {
    "id": 24,
    "type": "Just-world Hypothesis",
    "definition": "Believing that people get what they deserve and deserve what they get.",
    "category": "Not Enough Meaning"
  },
  {
    "id": 25,
    "type": "Authority Bias",
    "definition": "Overvaluing the opinion of an authority figure regardless of the argument.",
    "category": "Not Enough Meaning"
  },
  {
    "id": 26,
    "type": "Pro-innovation Bias",
    "definition": "Assuming that new ideas or innovations are always better than existing methods.",
    "category": "Need to Act Fast"
  },
  {
    "id": 27,
    "type": "Belief Bias",
    "definition": "Judging an argument based on the believability of its conclusion, not the logic.",
    "category": "Not Enough Meaning"
  },
  {"id": 28, "type": "Clustering Illusion", "definition": "Seeing patterns in random data.", "category": "Not Enough Meaning"},
  {"id": 29, "type": "Cognitive Dissonance", "definition": "Discomfort from holding two conflicting beliefs.", "category": "Not Enough Meaning"},
  {"id": 30, "type": "False Consensus Effect", "definition": "Overestimating how much others agree with you.", "category": "Too Much Information"},
  {
    "id": 31,
    "type": "Fundamental Attribution Error",
    "definition": "Attributing others’ behavior to personality while ignoring situational factors.",
    "category": "Not Enough Meaning"
  },
  {
    "id": 32,
    "type": "Gambler’s Fallacy",
    "definition": "Believing that past events influence future outcomes in random processes.",
    "category": "Not Enough Meaning"
  },
  {
    "id": 33,
    "type": "Hot-hand Fallacy",
    "definition": "Believing that a successful streak will continue in random events.",
    "category": "Not Enough Meaning"
  },
  {
    "id": 34,
    "type": "Illusory Correlation",
    "definition": "Perceiving a relationship between variables when none exists.",
    "category": "Not Enough Meaning"
  },
  {
    "id": 35,
    "type": "Mere Exposure Effect",
    "definition": "Developing a preference for things merely because they are familiar.",
    "category": "Not Enough Meaning"
  },
  {
    "id": 36,
    "type": "Backfire Effect",
    "definition": "Holding on to beliefs even more strongly when confronted with contradictory evidence.",
    "category": "What Should We Remember?"
  },
  {
    "id": 37,
    "type": "Bystander Effect",
    "definition": "The more people present, the less likely someone is to help in an emergency.",
    "category": "Need to Act Fast"
  },
  {
    "id": 38,
    "type": "Cheerleader Effect",
    "definition": "People appear more attractive in groups than individually.",
    "category": "Not Enough Meaning"
  },
  {
    "id": 39,
    "type": "Decoy Effect",
    "definition": "When an additional choice changes the preference between two original choices.",
    "category": "Too Much Information"
  },
  {
    "id": 40,
    "type": "Egocentric Bias",
    "definition": "Overestimating the importance of one's own perspective in social situations.",
    "category": "Not Enough Meaning"
  },
  {
    "id": 41,
    "type": "Fading Affect Bias",
    "definition": "Emotions associated with unpleasant memories fade faster than those associated with positive events.",
    "category": "What Should We Remember?"
  },
  {
    "id": 42,
    "type": "False Memory",
    "definition": "Remembering something that did not happen or remembering it differently.",
    "category": "What Should We Remember?"
  },
  {
    "id": 43,
    "type": "Frequency Illusion",
    "definition": "After noticing something new, you start seeing it everywhere.",
    "category": "Too Much Information"
  },
  {
    "id": 44,
    "type": "Forer Effect",
    "definition": "Believing vague, general statements apply specifically to you.",
    "category": "Not Enough Meaning"
  },
  {"id": 45, "type": "Groupthink", "definition": "Prioritizing group harmony over rational decision-making.", "category": "Need to Act Fast"},
  {
    "id": 46,
    "type": "Illusion of Transparency",
    "definition": "Overestimating how much others know your thoughts and feelings.",
    "category": "Not Enough Meaning"
  },
  {"id": 47, "type": "IKEA Effect", "definition": "Placing higher value on things you partially create.", "category": "Not Enough Meaning"},
  {
    "id": 48,
    "type": "Introspection Illusion",
    "definition": "Believing you understand your own mental processes better than others do.",
    "category": "Not Enough Meaning"
  },
  {
    "id": 49,
    "type": "Licensing Effect",
    "definition": "Being more likely to make a bad decision after doing something good.",
    "category": "Not Enough Meaning"
  },
  {
    "id": 50,
    "type": "Moral Luck",
    "definition": "Attributing moral blame or praise based on outcomes rather than actions.",
    "category": "Not Enough Meaning"
  },
  {
    "id": 51,
    "type": "Naive Realism",
    "definition": "Believing you see the world exactly as it is, and those who disagree are uninformed.",
    "category": "Not Enough Meaning"
  },
  {"id": 52, "type": "Not Invented Here", "definition": "Avoiding using ideas or products created by others.", "category": "Not Enough Meaning"},
  {
    "id": 53,
    "type": "Omission Bias",
    "definition": "Judging harmful actions more harshly than equally harmful omissions.",
    "category": "Not Enough Meaning"
  },
  {
    "id": 54,
    "type": "Outcome Bias",
    "definition": "Judging a decision based on the outcome rather than how it was made.",
    "category": "Not Enough Meaning"
  },
  {
    "id": 55,
    "type": "Parkinson's Law of Triviality",
    "definition": "Spending excessive time on trivial matters while ignoring important ones.",
    "category": "Too Much Information"
  },
  {"id": 56, "type": "Planning Fallacy", "definition": "Underestimating how long it will take to complete tasks.", "category": "Not Enough Meaning"},
  {
    "id": 57,
    "type": "Post-purchase Rationalization",
    "definition": "Justifying a purchase after the fact to reduce buyer's remorse.",
    "category": "Not Enough Meaning"
  },
  {
    "id": 58,
    "type": "Projection Bias",
    "definition": "Overestimating how much others share your beliefs and preferences.",
    "category": "Not Enough Meaning"
  },
  {"id": 59, "type": "Restraint Bias", "definition": "Overestimating your ability to control impulsive behavior.", "category": "Not Enough Meaning"},
  {"id": 60, "type": "Risk Compensation", "definition": "Taking greater risks when safety measures are in place.", "category": "Need to Act Fast"},
  {
    "id": 61,
    "type": "Selective Perception",
    "definition": "Allowing expectations to influence how we perceive the world.",
    "category": "Too Much Information"
  },
  {
    "id": 62,
    "type": "Semmelweis Reflex",
    "definition": "Rejecting new information because it contradicts established norms.",
    "category": "Too Much Information"
  },
  {
    "id": 63,
    "type": "Stereotyping",
    "definition": "Expecting someone to have characteristics based on group membership.",
    "category": "Not Enough Meaning"
  },
  {
    "id": 64,
    "type": "Subadditivity Effect",
    "definition": "Judging the probability of events as less than the sum of their parts.",
    "category": "Not Enough Meaning"
  },
  {"id": 65, "type": "Survivorship Bias", "definition": "Focusing only on successes while ignoring failures.", "category": "Too Much Information"},
  {
    "id": 66,
    "type": "Time-saving Bias",
    "definition": "Underestimating the time saved when increasing speed over short durations.",
    "category": "Need to Act Fast"
  },
  {"id": 67, "type": "Triviality Bias", "definition": "Giving disproportionate weight to trivial details.", "category": "Too Much Information"},
  {
    "id": 68,
    "type": "Unit Bias",
    "definition": "Assuming the amount of something presented is the correct portion size.",
    "category": "Need to Act Fast"
  },
  {
    "id": 69,
    "type": "Von Restorff Effect",
    "definition": "The tendency to remember unique or unusual items better than common ones.",
    "category": "What Should We Remember?"
  },
  {
    "id": 70,
    "type": "Well-traveled Road Effect",
    "definition": "Underestimating travel time on familiar routes and overestimating it on unfamiliar ones.",
    "category": "Not Enough Meaning"
  },
  {
    "id": 71,
    "type": "Zeigarnik Effect",
    "definition": "Remembering uncompleted tasks better than completed ones.",
    "category": "What Should We Remember?"
  },
  {
    "id": 72,
    "type": "Expectation Bias",
    "definition": "Allowing expectations to affect how we perceive outcomes.",
    "category": "Too Much Information"
  },
  {
    "id": 73,
    "type": "Spotlight Effect",
    "definition": "Overestimating how much others notice or remember about us.",
    "category": "Too Much Information"
  },
  {"id": 74, "type": "Social Comparison Bias", "definition": "Judging ourselves based on comparisons with others.", "category": "Not Enough Meaning"},
  {
    "id": 75,
    "type": "Optimism Bias",
    "definition": "Expecting positive outcomes more frequently than negative ones.",
    "category": "Not Enough Meaning"
  },
  {
    "id": 76,
    "type": "Neglect of Probability",
    "definition": "Ignoring probability when making decisions under uncertainty.",
    "category": "Not Enough Meaning"
  },
  {
    "id": 77,
    "type": "Conservatism Bias",
    "definition": "Focusing on prior beliefs and ignoring new information.",
    "category": "Too Much Information"
  },
  {
    "id": 78,
    "type": "Attribute Substitution",
    "definition": "Substituting a complex decision with a simpler one when under stress.",
    "category": "Need to Act Fast"
  },
  {
    "id": 79,
    "type": "Anchoring and Adjustment",
    "definition": "Basing estimates on an initial anchor and adjusting from there.",
    "category": "Need to Act Fast"
  },
  {
    "id": 80,
    "type": "Authority Bias",
    "definition": "Overvaluing the opinion of an authority figure, regardless of actual expertise.",
    "category": "Not Enough Meaning"
  },
  {
    "id": 81,
    "type": "Zero-risk Bias",
    "definition": "Preferring the elimination of risk entirely over reducing risk, even if the latter is more efficient.",
    "category": "Need to Act Fast"
  },
  {
    "id": 82,
    "type": "Action Bias",
    "definition": "Preferring to take action rather than doing nothing, even if no action is required.",
    "category": "Need to Act Fast"
  },
  {
    "id": 83,
    "type": "Belief Bias",
    "definition": "Judging the strength of an argument based on how much we believe in the conclusion.",
    "category": "Not Enough Meaning"
  },
  {
    "id": 84,
    "type": "Hot Hand Fallacy",
    "definition": "Believing that a successful outcome increases the likelihood of future success.",
    "category": "Not Enough Meaning"
  },
  {"id": 85, "type": "Endowment Effect", "definition": "Valuing an item more once ownership is established.", "category": "Not Enough Meaning"},
  {
    "id": 86,
    "type": "Framing Effect",
    "definition": "Making different decisions based on how information is presented.",
    "category": "Not Enough Meaning"
  },
  {
    "id": 87,
    "type": "Outcome Bias",
    "definition": "Judging a decision based on its outcome rather than the logic behind it.",
    "category": "Not Enough Meaning"
  },
  {
    "id": 88,
    "type": "Loss Aversion",
    "definition": "The tendency to prefer avoiding losses rather than acquiring equivalent gains.",
    "category": "Need to Act Fast"
  },
  {
    "id": 89,
    "type": "Ambiguity Effect",
    "definition": "Avoiding options where the probability of outcomes is unclear.",
    "category": "Need to Act Fast"
  },
  {
    "id": 90,
    "type": "Availability Cascade",
    "definition": "A self-reinforcing process in which a collective belief gains more plausibility through repetition.",
    "category": "Too Much Information"
  },
  {"id": 91, "type": "Pessimism Bias", "definition": "Overestimating the likelihood of negative outcomes.", "category": "Not Enough Meaning"},
  {
    "id": 92,
    "type": "Survivorship Bias",
    "definition": "Concentrating on the successes and ignoring the failures.",
    "category": "Too Much Information"
  },
  {
    "id": 93,
    "type": "Neglect of Probability",
    "definition": "Disregarding the actual likelihood of an event in favor of an emotional response.",
    "category": "Not Enough Meaning"
  },
  {"id": 94, "type": "Rhyme-as-Reason Effect", "definition": "Judging a statement as more truthful if it rhymes.", "category": "Not Enough Meaning"},
  {
    "id": 95,
    "type": "Availability Heuristic",
    "definition": "Overestimating the importance of information that is readily available.",
    "category": "Too Much Information"
  },
  {
    "id": 96,
    "type": "Choice-supportive Bias",
    "definition": "Remembering your choices as better than they were.",
    "category": "What Should We Remember?"
  },
  {
    "id": 97,
    "type": "Hindsight Bias",
    "definition": "The tendency to see events as having been predictable after they have occurred.",
    "category": "What Should We Remember?"
  },
  {
    "id": 98,
    "type": "Confirmation Bias",
    "definition": "Focusing on information that supports your existing beliefs.",
    "category": "Too Much Information"
  },
  {"id": 99, "type": "Forgetting Curve", "definition": "The decline of memory retention over time.", "category": "What Should We Remember?"},
  {
    "id": 100,
    "type": "Pseudocertainty Effect",
    "definition": "Preferring certain outcomes over probable ones, even if the probable ones offer higher value.",
    "category": "Need to Act Fast"
  }
];
