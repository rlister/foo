description 'Foo codepipeline'

## import from app stack
# parameter :app, type: :String

## branch name as used in cloudformation
# parameter :branch, type: :String

## prod/stg/etc
# parameter :ssmenv, type: :String

# parameter :ghowner,  type: :String, default: 'ArcadiaPower'
# parameter :ghrepo,   type: :String, default: 'parakeet'
# parameter :ghbranch, type: :String
# parameter :ghtoken,  type: 'AWS::SSM::Parameter::Value<String>', default: '/github/arcadia-access/codepipeline'

include_template(
  'build/s3_bucket.rb',
)
