# Overview

These templates allow for checking if a Linux server must be rebooted and
if software updates are available.

The templates are distribution-independent. The UserParameter files contain
the distribution-specific commands.


# Setup

Import the templates into Zabbix.

Put the appropriate UserParameter file (one of the files ending in `.conf`) on
the monitored server in `/etc/zabbix/zabbix_agentd.d` (or `/etc/zabbix/zabbix_agent2.d`
if you're using Agent2) and restart the Zabbix agent to pick up the new
UserParameters.

Make sure `jq` (a command line JSON processing tool) is installed on the host;
this tool is used by the UserParameter commands.

Link the appropriate template to the host in the Zabbix frontend.


# Zabbix configuration

No tuning through macros is supported.


# Template links

No templates are linked to this template.


# Discovery rules

The templates have no discovery rules.


# Items collected

- Available software security updates: A list of packages that have pending security updates
- Available software updates: A list of packages that have pending updates (security or otherwise)
- Reboot required: Whether a reboot is required and why


# Triggers

- Software security updates available
- Software updates available
- System reboot required


# Feedback

Ideas, bug reports or praise? Open an issue on this Github project!


# Demo

TODO


# Known issues

None yet :)


# References

None.
