BEGIN { plan tests => 3 };
package TestPkg;
use Exporter::Dispatch;
ok(1);

sub sub_a { print "Works!" }
package main;
my $table = create_dptable TestPkg;
ok(1);

$table->{sub_a}->("Hello!");
ok(1);
