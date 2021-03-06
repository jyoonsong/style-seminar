# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(name: 'Kooja', email: 'a@a.com', password: '123456')
u2 = User.create(name: 'Hyunwoo', email: 'b@b.com', password: '123456')
u3 = User.create(name: 'Jaeyoon', email: 'c@c.com', password: '123456')
u4 = User.create(name: 'hyunmin', email: 'd@d.com', password: '123456')
u5 = User.create(name: 'HyeongKeol', email: 'e@e.com', password: '123456')
u6 = User.create(name: 'aprilsblue', email: 'f@f.com', password: '123456')
u7 = User.create(name: 'miniddong', email: 'g@g.com', password: '123456')
u8 = User.create(name: 'jackthelee', email: 'h@h.com', password: '123456')
u9 = User.create(name: 'dongwook', email: 'i@i.com', password: '123456')

f1 = Feed.create(title: '첫 번째 Feed 입니다', content: '친구들과 공유하고 싶은 이야기를 남겨봅시다', user_id: u1.id)
f2 = Feed.create(title: '이번 겨울은 너무 추운 것 같아요', content: '겨울엔 태국이나 베트남에서 살고싶네요', user_id: u2.id)
f3 = Feed.create(title: '이번 겨울은 너무 추운 것 같아요', content: '겨울엔 태국이나 베트남에서 살고싶네요 겨울서 살고싶네요 겨울서 살고싶네요 겨울엔 태국이나 베트남에서 살고싶네요 겨울엔 태국이나 베트남에서 살고싶네요 겨울엔 태국이나 베트남에서 살고싶네요겨울엔 태국이나 베트남에서 살고싶네요 겨울엔 태국이나 베트남에서 살고싶네요 겨울엔 태국이나 베트남에서 살고싶네요', user_id: u2.id)
f4 = Feed.create(title: '이번 겨울은 너무 추운 것 같아요', content: '겨울엔 태국이나 베트남에서 살고싶네요 겨울엔 태국이트남에서 살고싶네요', user_id: u3.id)
f5 = Feed.create(title: '안녕하세요', content: '겨울엔 태국이나 베트남에서 살고싶네요 겨울엔 태국이나 베트남에서 살고싶네요 겨울엔 태국이나 베트남에서 살고 겨울엔 태국이나 베트남에서 살고 겨울엔 태국이나 베트남에서 살고싶네요', user_id: u4.id)
f6 = Feed.create(title: '안녕하세요', content: '겨울엔 태국이나 베트울엔 태국이나 베트남에서 살고싶네요 겨울엔 태국이나 베트남에서 살고싶네요', user_id: u5.id)
f7 = Feed.create(title: '안녕하세요', content: '겨울엔 태국이나 베트남에서 살고싶네요 겨울엔 태국이나 국이나 베트남에서 살고싶네요', user_id: u6.id)

FeedComment.create(content: '댓글도 남길 수 있네요', feed_id: f1.id, user_id: u7.id)
FeedComment.create(content: '댓글도 남길 수 있네요', feed_id: f1.id, user_id: u8.id)
FeedComment.create(content: '댓글도 남길 수 있네요', feed_id: f1.id, user_id: u9.id)
FeedComment.create(content: '댓글도 남길 수 있네요', feed_id: f2.id, user_id: u1.id)

FeedLike.create([
  {user: u1, feed: f1},
  {user: u1, feed: f2},
  {user: u2, feed: f2}
])
