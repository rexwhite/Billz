to create a new model:
- "rails g(enerate) Account name:string description:string"
- model name should be singular
- string is limited to 255 character, text to 30,000
- creates app/models/account.rb and db/migrate/xxx_create_account.rb

to modify a model:
- "rails g migration Add"