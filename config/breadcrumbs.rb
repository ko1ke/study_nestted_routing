crumb :root do
  link "Home", root_path
end

crumb :group do |group|
  link group.name, group
  parent :root
end

crumb :group_users do |group|
  link 'Group Users', group_users_path(group)
  parent group
end

crumb :group_user do |group_user|
  link group_user.name, group_user_path(group_user)
  parent :group_users, group_user.group
end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file 