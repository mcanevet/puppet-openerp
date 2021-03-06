class openerp($groups=['dialout','postgres']) {
  if $::lsbdistcodename !~ /^(squeeze|wheezy)$/ {
    fail "Unsupported system ${::lsbdistcodename}"
  }

  class {
    'openerp::base': groups => $groups;
  }
  include openerp::server
}
