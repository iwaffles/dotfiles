u:Gem::Specification![I"1.8.21:ETiI"redis-namespace; TU:Gem::Version[I"
1.2.0; TIu:	Time �    :@_zoneI"UTC; TI"Namespaces Redis commands.; TU:Gem::Requirement[[[I">=; TU;[I"0; TU;	[[[I">=; TU;[I"0; TI"	ruby; F[o:Gem::Dependency
:
@nameI"
redis; T:@requirementU;	[[[I"~>; TU;[I"
3.0.0; T:
@type:runtime:@prereleaseF:@version_requirements@"o;

;I"	rake; T;U;	[[[I">=; TU;[I"0; T;:development;F;@,o;

;I"
rspec; T;U;	[[[I">=; TU;[I"0; T;;;F;@60I"chris@ozmm.org; T[I"Chris Wanstrath; TI"Terence Lee; TI"�Adds a Redis::Namespace class which can be used to namespace calls
to Redis. This is useful when using a single instance of Redis with
multiple, different applications.
; TI".http://github.com/defunkt/redis-namespace; TT@[ 