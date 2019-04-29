#!/bin/sh
if [ ! -d /etc/puppetlabs/puppet ]; then mkdir -p /etc/puppetlabs/puppet; fi
cat > /etc/puppetlabs/puppet/csr_attributes.yaml << YAML
extension_requests:
    pp_role: $PT_role
    pp_environment: $PT_environment
YAML