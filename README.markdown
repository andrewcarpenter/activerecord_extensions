# activerecord_extensions

Description goes here.

# Features (existing & planned)

* get raw datastuctures, rather an AR object back, but still use AR query generation
   - add to chained named_scopes
* convert hash-based condition named_scopes into boolean methods
* use preload_associations outside of AR subclasses (the method is now private)
* add data to a set of results by using a new custom query (@results.add_data(:select => "COUNT(participants.*) AS participant_count", :joins => :participants))

## Note on Patches/Pull Requests
 
* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Commit, do not mess with rakefile, version, or history.
  (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

## Copyright

Copyright (c) 2010 Andrew Carpenter. See LICENSE for details.
