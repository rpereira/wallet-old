use Mix.Config
alias Dogma.Rule

config :dogma,

  # Select a set of rules as a base
  rule_set: Dogma.RuleSet.All,

  # Pick paths not to lint
  exclude: [
    ~r(\Aconfig/),
    ~r(test/support/model_case.ex),
    ~r(test/test_helper.exs),
    ~r(web/views/error_helpers.ex)
  ],

  override: [
    %Rule.ModuleDoc{ enabled: false },
    %Rule.LineLength{ max_length: 90 },
  ]
