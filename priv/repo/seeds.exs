alias Rumblr.Repo
alias Rumblr.User
alias Rumblr.Video
alias Rumblr.Category

user = %User{
  name: "Hafiz",
  username: "hafizio",
  password_hash: "rootroot"
}

Repo.get_by!(User, username: user.username) || Repo.insert!(user)

video = %Video{
  user_id: Repo.get_by!(User, username: user.username).id,
  url: "www.youtube.com",
  title: "Oppa Gangnam Style",
  description: "This is a history about Korea"
}

Repo.insert!(video)

for category <- ~w(Action Drama Romance Comedy Sci-fi) do
  Repo.get_by!(Category, name: category) || Repo.insert!(%Category{name: category})
end
