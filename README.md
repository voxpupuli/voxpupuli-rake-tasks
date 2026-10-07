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
