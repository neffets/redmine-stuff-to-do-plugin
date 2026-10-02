
# require_dependency was removed in Rails 7; models are autoloaded by Zeitwerk.
StuffToDoDispatch = 'done'

#Project.send(:include, StuffToDoProjectPatch)
#Issue.send(:include, StuffToDoIssuePatch)
User.send(:include, StuffToDoUserPatch)
UserPreference.send(:include, StuffToDoUserPreferencePatch)
