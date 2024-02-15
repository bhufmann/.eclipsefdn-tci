local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-tracecompass-incubator') {
  settings+: {
    blog: "https://projects.eclipse.org/projects/tools.tracecompass.incubator",
    dependabot_security_updates_enabled_for_new_repositories: false,
    description: "Permanent incubator for the Eclipse Trace Compass Project.",
    email: "webmaster@eclipse-foundation.org",
    name: "Eclipse Trace Compass Incubator",
    readers_can_create_discussions: true,
    two_factor_requirement: false,
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
      default_workflow_permissions: "write",
    },
  },
  _repositories+:: [
    orgs.newRepo('org.eclipse.tracecompass.incubator') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "read",
      },
    },
  ],
}
