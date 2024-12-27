use v6;

unit module Dormitory:ver<0.0.1>;

our sub sparky-dist-path () is export {
  return "{%?RESOURCES{"sparky/dist.tar.gz"}}";
}