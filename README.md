This is a [Vagrant](https://www.vagrantup.com) setup for testing out the
`fusefs` command of [`datalad-fuse`](https://github.com/datalad/datalad-fuse).

Create and enter the environment with:

```bash
vagrant up
vagrant ssh
```

Destroy the environment with:

```bash
vagrant destroy
```

Run FUSE tests inside the environment with:

```bash
cd datalad_fuse
tox -- --libfuse
```

As of commit a0bd825, observe that pytest exits abnormally as soon as the FUSE
tests start and that the temp directory for the first FUSE test is still
FUSE-mounted afterwards.

Test out FUSE directly inside the environment with:

```bash
cd datalad_fuse
tox --notest
source .tox/py3/bin/activate
cd ~/fuse-test/highspeed-bids
datalad fusefs ../mount
cat ../mount/participants.json
# This doesn't work correctly as of commit a0bd825:
ls -l ../mount
fusermount -u ../mount
```
