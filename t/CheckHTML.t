use Test::More tests => 2;

BEGIN { use_ok('WWW::CheckHTML') }

SKIP: {
    skip 'no sendmail.yaml present', 1 unless -e 'sendmail.yaml';
    ok(checkPage('http://www.google.com', '<title>', 'sillymoos@cpan.org'), 'checkPage google.com');
}

