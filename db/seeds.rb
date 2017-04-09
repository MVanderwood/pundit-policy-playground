["user", "admin"].each do |role|
  User.create(
    email: "#{role}@punfun.com",
    password: "password",
    role: role
  )
end
