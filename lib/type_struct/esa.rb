require "type_struct/ext"
require "type_struct/esa/version"

# type_struct collection of esa api response
# see also https://docs.esa.io/posts/102
# Usage
#
# require 'type_struct/esa'
#
# TypeStruct::Esa::Posts.from_hash(Esa::Client.new.posts.body)
# #=> #<TypeStruct::Esa::Posts ...>
class TypeStruct
  module Esa
    using TypeStruct::Union::Ext
    User = TypeStruct.new(
      name:        String,
      screen_name: String,
      icon:        String,
    )
    Team = TypeStruct.new(
      name:        String,
      privacy:     String,
      description: String,
      icon:        String,
      url:         String,
    )
    Teams = TypeStruct.new(
      teams:        ArrayOf(Team),
      prev_page:    Integer | NilClass,
      next_page:    Integer | NilClass,
      total_count:  Integer,
      page:         Integer,
      per_page:     Integer,
      max_per_page: Integer,
    )
    Stats = TypeStruct.new(
      members:              Integer,
      posts:                Integer,
      comments:             Integer,
      stars:                Integer,
      daily_active_users:   Integer,
      weekly_active_users:  Integer,
      monthly_active_users: Integer,
    )
    FullUser = TypeStruct.new(
      id:          Integer,
      name:        String,
      screen_name: String,
      created_at:  String,
      updated_at:  String,
      icon:        String,
      email:       String,
    )
    Member = TypeStruct.new(
      name:        String,
      screen_name: String,
      icon:        String,
      email:       String,
      posts_count: Integer,
    )
    Members = TypeStruct.new(
      members:     ArrayOf(Member),
      prev_page:   Integer | NilClass,
      next_page:   Integer | NilClass,
      total_count: Integer,
    )
    Post = TypeStruct.new(
      number:           Integer,
      name:             String,
      full_name:        String,
      wip:              TrueClass | FalseClass,
      body_md:          String,
      body_html:        String,
      created_at:       String,
      message:          String,
      kind:             String,
      comments_count:   Integer,
      tasks_count:      Integer,
      done_tasks_count: Integer,
      url:              String,
      updated_at:       String,
      tags:             Array,
      category:         String,
      revision_number:  Integer,
      created_by:       User,
      updated_by:       User,
      stargazers_count: Integer,
      watchers_count:   Integer,
      star:             TrueClass | FalseClass,
      watch:            TrueClass | FalseClass,
      sharing_urls:     ArrayOf(String) | NilClass,
    )
    Posts = TypeStruct.new(
      posts:        ArrayOf(Post),
      prev_page:    Integer | NilClass,
      next_page:    Integer | NilClass,
      total_count:  Integer,
      page:         Integer,
      per_page:     Integer,
      max_per_page: Integer,
    )
    Comment = TypeStruct.new(
      id:               Integer,
      body_md:          String,
      body_html:        String,
      created_at:       String,
      updated_at:       String,
      url:              String,
      created_by:       User,
      stargazers_count: Integer,
      star:             TrueClass | FalseClass,
    )
    Comments = TypeStruct.new(
      comments:     ArrayOf(Comment),
      prev_page:    Integer | NilClass,
      next_page:    Integer | NilClass,
      total_count:  Integer,
      page:         Integer,
      per_page:     Integer,
      max_per_page: Integer,
    )
    Star = TypeStruct.new(
      body: String,
    )
    Stargazer = TypeStruct.new(
      created_at: String,
      body:       String | NilClass,
      user:       User,
    )
    CommentStargazers = TypeStruct.new(
      stargazers:   ArrayOf(Stargazer),
      prev_page:    Integer | NilClass,
      next_page:    Integer | NilClass,
      total_count:  Integer,
      page:         Integer,
      per_page:     Integer,
      max_per_page: Integer,
    )
    PostStargazers = TypeStruct.new(
      stargazers:  ArrayOf(Stargazer),
      prev_page:   Integer | NilClass,
      next_page:   Integer | NilClass,
      total_count: Integer,
    )
    Watcher = TypeStruct.new(
      created_at: String,
      user:       User,
    )
    Watchers = TypeStruct.new(
      watchers:    ArrayOf(Watcher),
      prev_page:   Integer | NilClass,
      next_page:   Integer | NilClass,
      total_count: Integer,
    )
  end
end
