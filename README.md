# ansible-role-zsh

Install `zsh`

# Requirements

None

# Role Variables

| Variable | Description | Default |
|----------|-------------|---------|
| `zsh_package` | | `{{ __zsh_package }}` |
| `zsh_additional_packages` | | `[]` |

## FreeBSD

| Variable | Default |
|----------|---------|
| `__zsh_package` | `zsh` |

# Dependencies

None

# Example Playbook

```yaml
- hosts: localhost
  roles:
    - ansible-role-zsh
  vars:
    os_zsh_additional_packages:
      OpenBSD: []
      FreeBSD:
        - zsh-navigation-tools
      Debian:
        - zsh-syntax-highlighting
      RedHat: zsh-html
    zsh_additional_packages: "{{ os_zsh_additional_packages }}"
```

# License

```
Copyright (c) 2020 Tomoyuki Sakurai <y@trombik.org>

Permission to use, copy, modify, and distribute this software for any
purpose with or without fee is hereby granted, provided that the above
copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
```

# Author Information

Tomoyuki Sakurai <y@trombik.org>
