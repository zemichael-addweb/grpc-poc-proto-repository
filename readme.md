This is a PoC project to demo use of gPRC with laravel.

## Installation

### update the protos
`git subtree pull --prefix=protos https://github.com/zemichael-addweb/grpc-poc-proto-repository master --squash`

### generate the protos
`./protos/generate.sh`

### update the composer.json

```json
"repositories": [
    {
        "type": "git",
        "url": "https://github.com/zemichael-addweb/grpc-poc-proto-repository"
    }
],