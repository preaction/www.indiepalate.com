
use feature qw( :5.20 );
use Rex -feature => ['1.3'];

group www => qw( preaction.me );

set 'nginx_conf_dir' => '/etc/nginx/sites';

desc 'Deploy the site';
task deploy => ( group => 'www' ), sub {

    sudo sub {
        file get( 'nginx_conf_dir' ) . '/indiepalate.com.conf',
            source => 'etc/nginx.conf',
            on_change => sub { run 'nginx -s reload' };
    };

    LOCAL {
        run 'statocles deploy';
    }
};

