u:Gem::Specification�[I"1.8.11:ETiI"pg; TU:Gem::Version[I"0.13.2; TIu:	Time��    :@_zoneI"UTC; TI"SPg is the Ruby interface to the {PostgreSQL RDBMS}[http://www.postgresql.org/]; FU:Gem::Requirement[[[I">=; TU;[I"
1.8.7; TU;	[[[I">=; TU;[I"0; TI"x86-mingw32; T[
o:Gem::Dependency
:
@nameI"hoe-mercurial; T:@requirementU;	[[[I"~>; TU;[I"
1.3.1; T:
@type:development:@prereleaseF:@version_requirements@"o;

;I"rake-compiler; T;U;	[[[I"~>; TU;[I"0.7; T;;;F;@,o;

;I"
rspec; T;U;	[[[I"~>; TU;[I"2.6; T;;;F;@6o;

;I"hoe; T;U;	[[[I"~>; TU;[I"	2.12; T;;;F;@@o;

;I"	rdoc; T;U;	[[[I"~>; TU;[I"	3.10; T;;;F;@JI"pg; T[I"ged@FaerieMUD.org; T[I"Michael Granger; FI"Pg is the Ruby interface to the {PostgreSQL RDBMS}[http://www.postgresql.org/].

It works with {PostgreSQL 8.3 and later}[http://bit.ly/6AfPhm].

A small example usage:

  #!/usr/bin/env ruby
  
  require 'pg'
  
  # Output a table of current connections to the DB
  conn = PG.connect( dbname: 'sales' )
  conn.exec( "SELECT * FROM pg_stat_activity" ) do |result|
    puts "     PID | User             | Query"
	result.each do |row|
      puts " %7d | %-16s | %s " %
        row.values_at('procpid', 'usename', 'current_query')
    end
  end; FI"&https://bitbucket.org/ged/ruby-pg; TTo:Gem::Platform:	@cpuI"x86; T:@osI"mingw32; F:@version0[I"BSD; TI"	Ruby; TI"GPL; T