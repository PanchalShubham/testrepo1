for i in {1..100}
do
    cat > .github/workflows/pull-${i}.yml <<EOL
name: Pull-Image-${i}
on:
  push:
  pull_request:

jobs:
  job1:
    runs-on: ubuntu-18.04
    steps:
      - name: pull image
        run: docker pull ghcr.io/panchalshubham/busybox
EOL
done


