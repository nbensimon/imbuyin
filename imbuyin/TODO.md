# TODO

* [done] Replicate API endpoints (/date, /comments, /feedback)
* Create repo/schema to match the Django models
  CREATE TABLE user {
    email = email field -> charfield with validation?
    # Could this be exclusionary?
    gender = charfield (length=1, default='')
    age = smallintfield - originally default=18, but I have worries
    # Just one?
    profile_pic = image field
    about = textfield, default = ''
  END

  + date table
    - FK: userID - this needs rework - dates have two parties
    - location - where it happens - what kind of field?
    - time - UTC-based and we need to translate to local time for user or specify TZ
    - accepted - boolean field
    - category - default = 'General' ???
    # I don't get this yet
    - interested_users = charfield, max_length = 1000, default = ''

  + feedback table
    - FK: userID, cascade on delete
    - stars: smallint field

  + comments table
    - FK: userID, cascade on delete
    # This needs expansion/rework? Assumes only one comment per user
    - comments - textfield
