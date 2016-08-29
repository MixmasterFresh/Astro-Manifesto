# Versioning

As we all know, npm has had some issues in the past (see leftpad) and there are measures that can enforce explicit versioning in a way that npm did not support. When designing a package mangager, everything should be designed in such a way that even if someone wanted to sabotage the ecosystem, they couldn't.

## Auto-Incrementing Patch Version

Versions are given in the format of `MAJOR.MINOR.PATCH` where `MAJOR` and `MINOR` should be incremented based on criteria that the developers come up with, but the `PATCH` should increment with each change, and only reset when either `MAJOR` or `MINOR` change. If `PATCH` is auto-updated with each push to a specific `MAJOR.MINOR` pair, then explicit versioning is supported. This system has two positive side effects:

1. Every unique `MAJOR.MINOR.PATCH` is static, meaning that it cannot be updated, modified, or otherwise changed without generating a new, unique `MAJOR.MINOR.PATCH` identity
2. Old versions can be patched without forcing a person to update their version (e.g. if a change from version 4.1 is to be ported to 3.9, then a new patch for 3.9 would be generated, but all older patches would remain unchanged).

This then allows a developer to either trust the package developer to make reasonable updates and exercise good versioning judgement(e.g. specify latest, 4.X.X, or 4.1.X), or lock the version so that they receive no updates(e.g. specify 4.1.3).

## Latest and Latest-Stable

The concept of `get latest version` is not new and is relatively trivial to implement, but is incredibly essential to a package manager. Another equally important, but often overlooked feature in package managers is the `get latest stable version` which should not only be an option, but should be the default if no version is specified. This increases stability in the package ecosystem and allows developers to have peace of mind when developing new code, that they will not be disrupting people who are currently using their packages.

## Lockfiles

Rubygems has a lockfile that is generated that shows the versions of every gem that has been included. This is an incredibly good idea, because it prevents projects from unintentionally changing versions. If a version is updated, it will be updated in the lockfile, which when checked into version control will show up as changes to the lockfile which should be noticed. The practice should be: generate a lockfile if one doesn't exist, or if one does exist, use the versions stated in the lockfile. Only if explicitly stated should the version be updated.