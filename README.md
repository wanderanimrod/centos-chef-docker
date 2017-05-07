# Steps
- cd into this directory
- `docker-compose up`

This will build a docker image based on CentoOS, install chef on it and run
the `example` recipe in the `sample-chef-repo` directory. If it runs successfully,
the `docker-compose` command will return 0 exit code and you will see a log in
the image build output saying _"Welcome to Chef ..."_

#### Force rebuild
If you have already run this before, you can force-build the images by running
`docker-compose build --no-cache`. This is helpful when you want to rebuild
images after modifying the chef recipes

## TODO:
- Replace the example already-made elasticsearch cookbook
- Add testing to that cookbook and figure out the chef testing workflow
- Add tests to CI build
- Add more services to docker-compose.yml
- Add entry script to install docker-compose on host machine
