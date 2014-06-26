# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140625151706) do

  create_table "articles", force: true do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "auth_group", force: true do |t|
    t.string "name", limit: 80, null: false
  end

  add_index "auth_group", ["name"], name: "name", unique: true, using: :btree

  create_table "auth_group_permissions", force: true do |t|
    t.integer "group_id",      null: false
    t.integer "permission_id", null: false
  end

  add_index "auth_group_permissions", ["group_id", "permission_id"], name: "group_id", unique: true, using: :btree
  add_index "auth_group_permissions", ["group_id"], name: "auth_group_permissions_bda51c3c", using: :btree
  add_index "auth_group_permissions", ["permission_id"], name: "auth_group_permissions_1e014c8f", using: :btree

  create_table "auth_permission", force: true do |t|
    t.string  "name",            limit: 50,  null: false
    t.integer "content_type_id",             null: false
    t.string  "codename",        limit: 100, null: false
  end

  add_index "auth_permission", ["content_type_id", "codename"], name: "content_type_id", unique: true, using: :btree
  add_index "auth_permission", ["content_type_id"], name: "auth_permission_e4470c6e", using: :btree

  create_table "auth_user", force: true do |t|
    t.string   "username",     limit: 30,  null: false
    t.string   "first_name",   limit: 30,  null: false
    t.string   "last_name",    limit: 30,  null: false
    t.string   "email",        limit: 75,  null: false
    t.string   "password",     limit: 128, null: false
    t.boolean  "is_staff",                 null: false
    t.boolean  "is_active",                null: false
    t.boolean  "is_superuser",             null: false
    t.datetime "last_login",               null: false
    t.datetime "date_joined",              null: false
  end

  add_index "auth_user", ["username"], name: "username", unique: true, using: :btree

  create_table "auth_user_groups", force: true do |t|
    t.integer "user_id",  null: false
    t.integer "group_id", null: false
  end

  add_index "auth_user_groups", ["group_id"], name: "auth_user_groups_bda51c3c", using: :btree
  add_index "auth_user_groups", ["user_id", "group_id"], name: "user_id", unique: true, using: :btree
  add_index "auth_user_groups", ["user_id"], name: "auth_user_groups_fbfc09f1", using: :btree

  create_table "auth_user_user_permissions", force: true do |t|
    t.integer "user_id",       null: false
    t.integer "permission_id", null: false
  end

  add_index "auth_user_user_permissions", ["permission_id"], name: "auth_user_user_permissions_1e014c8f", using: :btree
  add_index "auth_user_user_permissions", ["user_id", "permission_id"], name: "user_id", unique: true, using: :btree
  add_index "auth_user_user_permissions", ["user_id"], name: "auth_user_user_permissions_fbfc09f1", using: :btree

  create_table "classifications", force: true do |t|
    t.string   "ctag",          limit: 10,             null: false
    t.integer  "classTypeId",                          null: false
    t.text     "csplunksearch"
    t.datetime "startTime"
    t.datetime "endTime"
    t.string   "ruleInfo"
    t.integer  "ackTicket"
    t.string   "ackUser",       limit: 63
    t.string   "ackType",       limit: 8
    t.text     "ackComment"
    t.integer  "dryrun_result", limit: 1,  default: 0, null: false
  end

  create_table "cmsdev_app", force: true do |t|
    t.string  "app_name",   limit: 50, null: false
    t.integer "active_ind", limit: 1
  end

  add_index "cmsdev_app", ["app_name"], name: "app_name_uk", unique: true, using: :btree

  create_table "cmsdev_cla_group", force: true do |t|
    t.string  "name",            limit: 200, null: false
    t.string  "label",           limit: 200, null: false
    t.string  "customer_id",     limit: 10,  null: false
    t.boolean "operational_lvl",             null: false
    t.string  "size_id",         limit: 100, null: false
    t.string  "pod_id",          limit: 10,  null: false
  end

  add_index "cmsdev_cla_group", ["customer_id"], name: "customer_id", using: :btree
  add_index "cmsdev_cla_group", ["pod_id"], name: "pod_id", using: :btree
  add_index "cmsdev_cla_group", ["size_id"], name: "size_id", using: :btree

  create_table "cmsdev_cla_group_size", force: true do |t|
    t.string  "name",   limit: 12, null: false
    t.boolean "active",            null: false
  end

  create_table "cmsdev_devicetype", force: true do |t|
    t.string  "name",   limit: 64, null: false
    t.boolean "active",            null: false
  end

  add_index "cmsdev_devicetype", ["name"], name: "name", unique: true, using: :btree

  create_table "django_admin_log", force: true do |t|
    t.datetime "action_time",                        null: false
    t.integer  "user_id",                            null: false
    t.integer  "content_type_id"
    t.text     "object_id",       limit: 2147483647
    t.string   "object_repr",     limit: 200,        null: false
    t.integer  "action_flag",     limit: 2,          null: false
    t.text     "change_message",  limit: 2147483647, null: false
  end

  add_index "django_admin_log", ["content_type_id"], name: "django_admin_log_e4470c6e", using: :btree
  add_index "django_admin_log", ["user_id"], name: "django_admin_log_fbfc09f1", using: :btree

  create_table "django_comment_flags", force: true do |t|
    t.integer  "user_id",               null: false
    t.integer  "comment_id",            null: false
    t.string   "flag",       limit: 30, null: false
    t.datetime "flag_date",             null: false
  end

  add_index "django_comment_flags", ["comment_id"], name: "django_comment_flags_9b3dc754", using: :btree
  add_index "django_comment_flags", ["flag"], name: "django_comment_flags_111c90f9", using: :btree
  add_index "django_comment_flags", ["user_id", "comment_id", "flag"], name: "user_id", unique: true, using: :btree
  add_index "django_comment_flags", ["user_id"], name: "django_comment_flags_fbfc09f1", using: :btree

  create_table "django_comments", force: true do |t|
    t.integer  "content_type_id",                    null: false
    t.text     "object_pk",       limit: 2147483647, null: false
    t.integer  "site_id",                            null: false
    t.integer  "user_id"
    t.string   "user_name",       limit: 50,         null: false
    t.string   "user_email",      limit: 75,         null: false
    t.string   "user_url",        limit: 200,        null: false
    t.text     "comment",         limit: 2147483647, null: false
    t.datetime "submit_date",                        null: false
    t.string   "ip_address",      limit: 15
    t.boolean  "is_public",                          null: false
    t.boolean  "is_removed",                         null: false
  end

  add_index "django_comments", ["content_type_id"], name: "django_comments_e4470c6e", using: :btree
  add_index "django_comments", ["site_id"], name: "django_comments_6223029", using: :btree
  add_index "django_comments", ["user_id"], name: "django_comments_fbfc09f1", using: :btree

  create_table "django_content_type", force: true do |t|
    t.string "name",      limit: 100, null: false
    t.string "app_label", limit: 100, null: false
    t.string "model",     limit: 100, null: false
  end

  add_index "django_content_type", ["app_label", "model"], name: "app_label", unique: true, using: :btree

  create_table "django_flatpage", force: true do |t|
    t.string  "url",                   limit: 100,        null: false
    t.string  "title",                 limit: 200,        null: false
    t.text    "content",               limit: 2147483647, null: false
    t.boolean "enable_comments",                          null: false
    t.string  "template_name",         limit: 70,         null: false
    t.boolean "registration_required",                    null: false
  end

  add_index "django_flatpage", ["url"], name: "django_flatpage_a4b49ab", using: :btree

  create_table "django_flatpage_sites", force: true do |t|
    t.integer "flatpage_id", null: false
    t.integer "site_id",     null: false
  end

  add_index "django_flatpage_sites", ["flatpage_id", "site_id"], name: "flatpage_id", unique: true, using: :btree
  add_index "django_flatpage_sites", ["flatpage_id"], name: "django_flatpage_sites_dedefef8", using: :btree
  add_index "django_flatpage_sites", ["site_id"], name: "django_flatpage_sites_6223029", using: :btree

  create_table "django_session", primary_key: "session_key", force: true do |t|
    t.text     "session_data", limit: 2147483647, null: false
    t.datetime "expire_date",                     null: false
  end

  add_index "django_session", ["expire_date"], name: "django_session_c25c2c28", using: :btree

  create_table "django_site", force: true do |t|
    t.string "domain", limit: 100, null: false
    t.string "name",   limit: 50,  null: false
  end

  create_table "easy_thumbnails_source", force: true do |t|
    t.string   "storage_hash", limit: 40, null: false
    t.string   "name",                    null: false
    t.datetime "modified",                null: false
  end

  add_index "easy_thumbnails_source", ["name"], name: "easy_thumbnails_source_52094d6e", using: :btree
  add_index "easy_thumbnails_source", ["storage_hash", "name"], name: "storage_hash", unique: true, using: :btree
  add_index "easy_thumbnails_source", ["storage_hash"], name: "easy_thumbnails_source_3a997c55", using: :btree

  create_table "easy_thumbnails_thumbnail", force: true do |t|
    t.string   "storage_hash", limit: 40, null: false
    t.string   "name",                    null: false
    t.datetime "modified",                null: false
    t.integer  "source_id",               null: false
  end

  add_index "easy_thumbnails_thumbnail", ["name"], name: "easy_thumbnails_thumbnail_52094d6e", using: :btree
  add_index "easy_thumbnails_thumbnail", ["source_id"], name: "easy_thumbnails_thumbnail_89f89e85", using: :btree
  add_index "easy_thumbnails_thumbnail", ["storage_hash", "name", "source_id"], name: "storage_hash", unique: true, using: :btree
  add_index "easy_thumbnails_thumbnail", ["storage_hash"], name: "easy_thumbnails_thumbnail_3a997c55", using: :btree

  create_table "fiber_contentitem", force: true do |t|
    t.datetime "created",                               null: false
    t.datetime "updated",                               null: false
    t.string   "name",                                  null: false
    t.text     "content_markup",     limit: 2147483647, null: false
    t.text     "content_html",       limit: 2147483647, null: false
    t.boolean  "protected",                             null: false
    t.text     "metadata",           limit: 2147483647
    t.string   "template_name",      limit: 70,         null: false
    t.text     "used_on_pages_data", limit: 2147483647
  end

  create_table "fiber_file", force: true do |t|
    t.datetime "created", null: false
    t.datetime "updated", null: false
    t.string   "file",    null: false
    t.string   "title",   null: false
  end

  create_table "fiber_image", force: true do |t|
    t.datetime "created", null: false
    t.datetime "updated", null: false
    t.string   "image",   null: false
    t.string   "title",   null: false
    t.integer  "width"
    t.integer  "height"
  end

  create_table "fiber_page", force: true do |t|
    t.datetime "created",                                 null: false
    t.datetime "updated",                                 null: false
    t.integer  "parent_id"
    t.string   "meta_description",                        null: false
    t.string   "meta_keywords",                           null: false
    t.string   "title",                                   null: false
    t.string   "doc_title",                               null: false
    t.string   "url",                                     null: false
    t.integer  "redirect_page_id"
    t.text     "mark_current_regexes", limit: 2147483647, null: false
    t.string   "template_name",        limit: 70,         null: false
    t.boolean  "show_in_menu",                            null: false
    t.boolean  "is_public",                               null: false
    t.boolean  "protected",                               null: false
    t.text     "metadata",             limit: 2147483647
    t.integer  "lft",                                     null: false
    t.integer  "rght",                                    null: false
    t.integer  "tree_id",                                 null: false
    t.integer  "level",                                   null: false
  end

  add_index "fiber_page", ["level"], name: "fiber_page_2a8f42e8", using: :btree
  add_index "fiber_page", ["lft"], name: "fiber_page_42b06ff6", using: :btree
  add_index "fiber_page", ["parent_id"], name: "fiber_page_63f17a16", using: :btree
  add_index "fiber_page", ["redirect_page_id"], name: "fiber_page_5dea2a19", using: :btree
  add_index "fiber_page", ["rght"], name: "fiber_page_91543e5a", using: :btree
  add_index "fiber_page", ["tree_id"], name: "fiber_page_efd07f28", using: :btree

  create_table "fiber_pagecontentitem", force: true do |t|
    t.integer "content_item_id", null: false
    t.integer "page_id",         null: false
    t.string  "block_name",      null: false
    t.integer "sort"
  end

  add_index "fiber_pagecontentitem", ["content_item_id"], name: "fiber_pagecontentitem_ef5b5f4b", using: :btree
  add_index "fiber_pagecontentitem", ["page_id"], name: "fiber_pagecontentitem_32d04bc7", using: :btree

  create_table "posts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "test1", id: false, force: true do |t|
    t.integer "i"
    t.string  "n",     limit: 10
    t.integer "marks"
    t.integer "seq"
  end

  create_table "testing1", id: false, force: true do |t|
    t.string "t1", limit: 10
    t.string "t2", limit: 10
  end

  create_table "urlshorts", force: true do |t|
    t.string   "fullurl"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "urlstats", force: true do |t|
    t.string   "fullurlid"
    t.string   "ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "weblog_entry", force: true do |t|
    t.string   "title",     limit: 50,         null: false
    t.text     "content",   limit: 2147483647, null: false
    t.datetime "published",                    null: false
    t.boolean  "public",                       null: false
  end

end
