# mandrill-elixir

a Mandrill wrapper for Elixir

## Usage

> ##### Note
> mandrill requires the `MANDRILL_KEY` environment variable set to a 
> valid API key associated with your Mandrill account.

```elixir
iex> Mandrill.start
:ok

iex> Mandrill.key
"your_key"

iex> Mandrill.Users.info
[username: "your_username", created_at: "2013-12-05 00:24:19.47554",
 public_id: "your_public_id", reputation: 0, hourly_quota: 25,
 backlog: 0,
 stats: [today: [sent: 0, hard_bounces: 0, soft_bounces: 0, rejects: 0,
   complaints: 0, unsubs: 0, opens: 0, unique_opens: 0, clicks: 0,
   unique_clicks: 0],
  last_7_days: [sent: 0, hard_bounces: 0, soft_bounces: 0, rejects: 0,
   complaints: 0, unsubs: 0, opens: 0, unique_opens: 0, clicks: 0,
   unique_clicks: 0],
  last_30_days: [sent: 0, hard_bounces: 0, soft_bounces: 0, rejects: 0,
   complaints: 0, unsubs: 0, opens: 0, unique_opens: 0, clicks: 0,
   unique_clicks: 0],
  last_60_days: [sent: 0, hard_bounces: 0, soft_bounces: 0, rejects: 0,
   complaints: 0, unsubs: 0, opens: 0, unique_opens: 0, clicks: 0,
   unique_clicks: 0],
  last_90_days: [sent: 0, hard_bounces: 0, soft_bounces: 0, rejects: 0,
   complaints: 0, unsubs: 0, opens: 0, unique_opens: 0, clicks: 0,
   unique_clicks: 0],
  all_time: [sent: 0, hard_bounces: 0, soft_bounces: 0, rejects: 0,
   complaints: 0, unsubs: 0, opens: 0, unique_opens: 0, clicks: 0,
   unique_clicks: 0]]]

iex> Mandrill.Users.info[:username]
"your_username"
```

## Reference

See [Mandrill's API docs](https://mandrillapp.com/api/docs/).

## Dependencies

- [HTTPoison](https://github.com/edgurgel/httpoison)
- [JSEX](https://github.com/talentdeficit/jsex)

## License

See [LICENSE](https://github.com/slogsdon/mandrill/blob/master/LICENSE)

[![githalytics.com alpha](https://cruel-carlota.pagodabox.com/949f7db1a2574d19a36cf9a21a760a6a "githalytics.com")](http://githalytics.com/slogsdon/mandrill)
