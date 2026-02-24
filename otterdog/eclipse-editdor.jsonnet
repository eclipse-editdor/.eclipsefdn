local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('iot.editdor', 'eclipse-editdor') {
  settings+: {
    blog: "https://eclipse-editdor.github.io/editdor/",
    description: "",
    members_can_change_project_visibility: false,
    members_can_change_repo_visibility: false,
    members_can_create_teams: false,
    members_can_delete_repositories: false,
    name: "Eclipse Editdor",
    packages_containers_internal: false,
    packages_containers_public: false,
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
      default_workflow_permissions: "write",
    },
  },
  _repositories+:: [
    orgs.newRepo('editdor') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      description: "Eclipse ediTDor - A tool for simply designing W3C Thing Descriptions",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      homepage: "https://eclipse-editdor.github.io/editdor/",
      topics+: [
        "iot",
        "jsonld",
        "web",
        "webofthings"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      environments: [
        orgs.newEnvironment('github-pages'),
      ],
    },
  ],
}
