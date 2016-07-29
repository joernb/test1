# test1

## Setup

(GitHub || Contentful) > CircleCI (with Jekyll) > ftp server

FTP-Server:
* create ftp user

CircleCI:
* add FTP_URL, FTP_USER, FTP_PASSWORD as environment vars
* add api token to enable build triggering from outside

Contentful
* add a content delivery api key to make content accessible from outside
* add webhook: https://circleci.com/api/v1/project/joernb/test1/tree/master?circle-token=123456789
  * where 123456789 is the CircleCI api token
  * trigger webhook for: (content, asset) x (publish, unpublish)
  * can be tested via curl -X POST https://circleci.com/...

GitHub/code
* adjust jekyll configuration in _config.yml
  * space is the contentful space id
  * access_token is the "content delivery api" production key of the contentful space
