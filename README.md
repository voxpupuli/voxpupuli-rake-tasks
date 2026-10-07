# Vox Pupuli Rake Tasks

## What?

A collection of rake tasks for building and releasing various Vox Pupuli & OpenVoxProject tools.

## Why?

We had lots of Ruby code copy and pasted across various repositories.
This gem aims to centralize the code and provide rake tasks for bumping versions, building changelogs and uploading packages.

### differences to other tools

Within the Vox Pupuli tooling landscape, similar tools already exist.
Most promiment one is [voxpupuli-release](https://github.com/voxpupuli/voxpupuli-release#vox-pupuli-release-gem).
It's focussed on releasing modules and we didn't want to widen the scope.
voxpupuli-release is also used by other organisations, whereas voxpupuli-rake-tasks is only designed for the `voxpupuli` & `OpenVoxProject` GitHub orgs.

## Design principles

This gem provides rake tasks and their dependencies.
All tasks are in the `voxpupuli` namespace.

## Tasks

### `voxpupuli::upload`

uploads artifacts into an S3 bucket

This task requires the aws CLI tool.
You can install it like this: `python -m pip install --upgrade awscli`.
It's not installed by default in GitHub runners, but you can install it via a single step:

```yaml
jobs:
  release:
  ...
      steps:
      - name: Update awscli
        run: |
          python -m pip install --upgrade awscli
```

The task requires some environment variables:

* `ENDPOINT_URL` - the S3 URL, like s3://foo.local
* `BUCKET_NAME` - the bucket name

The aws CLI command requires som environment variables as well:

* `AWS_ACCESS_KEY_ID` - S3 ID
* `AWS_SECRET_ACCESS_KEY` - S3 Key

As a workaround for https://github.com/boto/boto3/issues/4398#issuecomment-2619946229, the task sets the following environment variables:

* `AWS_REQUEST_CHECKSUM_CALCULATION` - `WHEN_REQUIRED`
* `AWS_RESPONSE_CHECKSUM_VALIDATION` - `WHEN_REQUIRED`
