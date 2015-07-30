#!/usr/bin/perl
use HTTP::Server::Brick;
    
$s = HTTP::Server::Brick->new( port=>8080 );
$s->mount("/" => { path => "." });
$s->start;

