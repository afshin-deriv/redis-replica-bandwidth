use DataDog::DogStatsd::Helper qw(stats_gauge stats_count);
use RedisDB;

binmode STDOUT, ':encoding(UTF-8)';
binmode STDERR, ':encoding(UTF-8)';
STDOUT->autoflush(1);

my $redis = RedisDB->new(
	host => 'redis',
	port => 6381
);

my $statsd = DataDog::DogStatsd->new(
	host  => 'datadog',
	port  => 8125
);

while(1){
       sleep(3);
       my $total_net_input_bytes = $redis->info->{'total_net_input_bytes'};
       $statsd->gauge('redis.total_net_input_bytes', $total_net_input_bytes);
       # print STDOUT "$total_net_input_bytes\n";
}
