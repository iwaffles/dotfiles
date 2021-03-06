u:Gem::Specification ["1.8.10i"diff-lcsU:Gem::Version["
1.1.3u:	Time���    "�Diff::LCS is a port of Perl's Algorithm::Diff that uses the McIlroy-Hunt longest common subsequence (LCS) algorithm to compute intelligent differences between two sequenced enumerable containersU:Gem::Requirement[[[">=U; ["0U;[[[">=U; ["0"	ruby[o:Gem::Dependency
:@requirementU;[[["~>U; ["2.0:@prereleaseF:@version_requirements@ :
@name"
rspec:
@type:developmento;
;	U;[[["~>U; ["	2.12;
F;@*;"hoe;;"ruwiki["austin@rubyforge.org["Austin Ziegler"�Diff::LCS is a port of Perl's Algorithm::Diff that uses the McIlroy-Hunt
longest common subsequence (LCS) algorithm to compute intelligent differences
between two sequenced enumerable containers. The implementation is based on
Mario I. Wolczko's {Smalltalk version 1.2}[ftp://st.cs.uiuc.edu/pub/Smalltalk/MANCHESTER/manchester/4.0/diff.st]
(1993) and Ned Konz's Perl version
{Algorithm::Diff 1.15}[http://search.cpan.org/~nedkonz/Algorithm-Diff-1.15/].

This is release 1.1.3, fixing several small bugs found over the years. Version
1.1.0 added new features, including the ability to #patch and #unpatch changes
as well as a new contextual diff callback, Diff::LCS::ContextDiffCallbacks,
that should improve the context sensitivity of patching.

This library is called Diff::LCS because of an early version of Algorithm::Diff
which was restrictively licensed. This version has seen a minor license change:
instead of being under Ruby's license as an option, the third optional license
is the MIT license.00@[ 