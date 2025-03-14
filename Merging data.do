//// Merging datasets

/// Loading productivity dataset
 use "/Users/ayamga/Library/CloudStorage/OneDrive-TexasTechUniversity/International
>  Trade/Replication 1/2017 data/data/productivity.dta"

/// Merging exports data with the productivity data
 merge m:m countrycode sector using exports, keep(match)

//// Dropping merge 
 drop _merge
 
/// merging imports
 merge m:m countrycode sector using imports, keep(match)

/// dropping merge
 drop _merge
 
/// Adding gross output and RnD datasets
merge m:m countrycode sector using gross_output, keep(match)
drop _merge
merge m:m countrycode sector using RnD, keep(match)


/// Save it as a new dataset 
 save "/Users/ayamga/Library/CloudStorage/OneDrive-TexasTechUniversity/International Trade/Replication 1/2017 data/data/Complete_data.dta"
file /Users/ayamga/Library/CloudStorage/OneDrive-TexasTechUniversity/International
    Trade/Replication 1/2017 data/data/Complete_data.dta saved


	
	
	