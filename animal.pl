#!/usr/bin/perl -w
my %heavy = ( #キログラム単位
	"みゆぷりあんぬ" => 50, #みゆぷりあんぬの体重不明なのでざっくりとした重さで
	"おでんくん" => 0.1, #おでんくんの体重不明なため餅巾着の平均的重さで
	"アザラシ" => 628, #二見シーパラダイス、ミナミゾウアザラシの体重
	"そらやん" => 183000, #ジャンボ機（ボーイング747-400）の重量
	"すあま" => 0.2 #面倒なので大体200gということで
	); 
my @animal = sort by_heaby_and_species keys %heavy;

sub by_heaby_and_species {
	$heavy{$b} <=> $heavy{$a}
	    or
	$a cmp $b
}
print "@animal\n";
