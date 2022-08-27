import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;
import 'package:gql_example_cli_github/__generated__/add_star.data.gql.dart'
    show GAddStarData, GAddStarData_action, GAddStarData_action_starrable;
import 'package:gql_example_cli_github/__generated__/add_star.req.gql.dart'
    show GAddStar;
import 'package:gql_example_cli_github/__generated__/add_star.var.gql.dart'
    show GAddStarVars;
import 'package:gql_example_cli_github/__generated__/read_repos.data.gql.dart'
    show
        GReadRepositoriesData,
        GReadRepositoriesData_viewer,
        GReadRepositoriesData_viewer_repositories,
        GReadRepositoriesData_viewer_repositories_nodes;
import 'package:gql_example_cli_github/__generated__/read_repos.req.gql.dart'
    show GReadRepositories;
import 'package:gql_example_cli_github/__generated__/read_repos.var.gql.dart'
    show GReadRepositoriesVars;
import 'package:gql_example_cli_github/__generated__/remove_star.data.gql.dart'
    show
        GRemoveStarData,
        GRemoveStarData_action,
        GRemoveStarData_action_starrable;
import 'package:gql_example_cli_github/__generated__/remove_star.req.gql.dart'
    show GRemoveStar;
import 'package:gql_example_cli_github/__generated__/remove_star.var.gql.dart'
    show GRemoveStarVars;
import 'package:gql_example_cli_github/__generated__/schema.schema.gql.dart'
    show
        GAcceptEnterpriseAdministratorInvitationInput,
        GAcceptTopicSuggestionInput,
        GActionExecutionCapabilitySetting,
        GAddAssigneesToAssignableInput,
        GAddCommentInput,
        GAddLabelsToLabelableInput,
        GAddProjectCardInput,
        GAddProjectColumnInput,
        GAddPullRequestReviewCommentInput,
        GAddPullRequestReviewInput,
        GAddReactionInput,
        GAddStarInput,
        GArchiveRepositoryInput,
        GAuditLogOrder,
        GAuditLogOrderField,
        GCancelEnterpriseAdminInvitationInput,
        GChangeUserStatusInput,
        GClearLabelsFromLabelableInput,
        GCloneProjectInput,
        GCloneTemplateRepositoryInput,
        GCloseIssueInput,
        GClosePullRequestInput,
        GCollaboratorAffiliation,
        GCommentAuthorAssociation,
        GCommentCannotUpdateReason,
        GCommitAuthor,
        GCommitContributionOrder,
        GCommitContributionOrderField,
        GContributionOrder,
        GContributionOrderField,
        GConvertProjectCardNoteToIssueInput,
        GCreateBranchProtectionRuleInput,
        GCreateEnterpriseOrganizationInput,
        GCreateIssueInput,
        GCreateProjectInput,
        GCreatePullRequestInput,
        GCreateRefInput,
        GCreateRepositoryInput,
        GCreateTeamDiscussionCommentInput,
        GCreateTeamDiscussionInput,
        GDate,
        GDateTime,
        GDeclineTopicSuggestionInput,
        GDefaultRepositoryPermissionField,
        GDeleteBranchProtectionRuleInput,
        GDeleteDeploymentInput,
        GDeleteIssueCommentInput,
        GDeleteIssueInput,
        GDeleteProjectCardInput,
        GDeleteProjectColumnInput,
        GDeleteProjectInput,
        GDeletePullRequestReviewCommentInput,
        GDeletePullRequestReviewInput,
        GDeleteRefInput,
        GDeleteTeamDiscussionCommentInput,
        GDeleteTeamDiscussionInput,
        GDeploymentOrder,
        GDeploymentOrderField,
        GDeploymentState,
        GDeploymentStatusState,
        GDismissPullRequestReviewInput,
        GDraftPullRequestReviewComment,
        GEnterpriseAdministratorInvitationOrder,
        GEnterpriseAdministratorInvitationOrderField,
        GEnterpriseAdministratorRole,
        GEnterpriseDefaultRepositoryPermissionSettingValue,
        GEnterpriseEnabledDisabledSettingValue,
        GEnterpriseEnabledSettingValue,
        GEnterpriseMemberOrder,
        GEnterpriseMemberOrderField,
        GEnterpriseMembersCanCreateRepositoriesSettingValue,
        GEnterpriseMembersCanMakePurchasesSettingValue,
        GEnterpriseServerInstallationOrder,
        GEnterpriseServerInstallationOrderField,
        GEnterpriseServerUserAccountEmailOrder,
        GEnterpriseServerUserAccountEmailOrderField,
        GEnterpriseServerUserAccountOrder,
        GEnterpriseServerUserAccountOrderField,
        GEnterpriseServerUserAccountsUploadOrder,
        GEnterpriseServerUserAccountsUploadOrderField,
        GEnterpriseServerUserAccountsUploadSyncState,
        GEnterpriseUserAccountMembershipRole,
        GEnterpriseUserDeployment,
        GFollowUserInput,
        GFundingPlatform,
        GGistOrder,
        GGistOrderField,
        GGistPrivacy,
        GGitObjectID,
        GGitSSHRemote,
        GGitSignatureState,
        GGitTimestamp,
        GHTML,
        GIdentityProviderConfigurationState,
        GInviteEnterpriseAdminInput,
        GIssueFilters,
        GIssueOrder,
        GIssueOrderField,
        GIssueState,
        GIssueTimelineItemsItemType,
        GLabelOrder,
        GLabelOrderField,
        GLanguageOrder,
        GLanguageOrderField,
        GLinkRepositoryToProjectInput,
        GLockLockableInput,
        GLockReason,
        GMergeBranchInput,
        GMergePullRequestInput,
        GMergeableState,
        GMilestoneOrder,
        GMilestoneOrderField,
        GMilestoneState,
        GMoveProjectCardInput,
        GMoveProjectColumnInput,
        GOauthApplicationCreateAuditEntryState,
        GOperationType,
        GOrderDirection,
        GOrgAddMemberAuditEntryPermission,
        GOrgCreateAuditEntryBillingPlan,
        GOrgRemoveBillingManagerAuditEntryReason,
        GOrgRemoveMemberAuditEntryMembershipType,
        GOrgRemoveMemberAuditEntryReason,
        GOrgRemoveOutsideCollaboratorAuditEntryMembershipType,
        GOrgRemoveOutsideCollaboratorAuditEntryReason,
        GOrgUpdateDefaultRepositoryPermissionAuditEntryPermission,
        GOrgUpdateMemberAuditEntryPermission,
        GOrgUpdateMemberRepositoryCreationPermissionAuditEntryVisibility,
        GOrganizationInvitationRole,
        GOrganizationInvitationType,
        GOrganizationMemberRole,
        GOrganizationMembersCanCreateRepositoriesSettingValue,
        GOrganizationOrder,
        GOrganizationOrderField,
        GPinnableItemType,
        GPreciseDateTime,
        GProjectCardArchivedState,
        GProjectCardState,
        GProjectColumnPurpose,
        GProjectOrder,
        GProjectOrderField,
        GProjectState,
        GProjectTemplate,
        GPullRequestMergeMethod,
        GPullRequestOrder,
        GPullRequestOrderField,
        GPullRequestReviewCommentState,
        GPullRequestReviewEvent,
        GPullRequestReviewState,
        GPullRequestState,
        GPullRequestTimelineItemsItemType,
        GPullRequestUpdateState,
        GReactionContent,
        GReactionOrder,
        GReactionOrderField,
        GRefOrder,
        GRefOrderField,
        GRegenerateEnterpriseIdentityProviderRecoveryCodesInput,
        GRegistryPackageDependencyType,
        GRegistryPackageMetadatum,
        GRegistryPackageType,
        GReleaseOrder,
        GReleaseOrderField,
        GRemoveAssigneesFromAssignableInput,
        GRemoveEnterpriseAdminInput,
        GRemoveEnterpriseOrganizationInput,
        GRemoveLabelsFromLabelableInput,
        GRemoveOutsideCollaboratorInput,
        GRemoveReactionInput,
        GRemoveStarInput,
        GReopenIssueInput,
        GReopenPullRequestInput,
        GRepoAccessAuditEntryVisibility,
        GRepoAddMemberAuditEntryVisibility,
        GRepoArchivedAuditEntryVisibility,
        GRepoChangeMergeSettingAuditEntryMergeType,
        GRepoCreateAuditEntryVisibility,
        GRepoDestroyAuditEntryVisibility,
        GRepoRemoveMemberAuditEntryVisibility,
        GRepositoryAffiliation,
        GRepositoryContributionType,
        GRepositoryInvitationOrder,
        GRepositoryInvitationOrderField,
        GRepositoryLockReason,
        GRepositoryOrder,
        GRepositoryOrderField,
        GRepositoryPermission,
        GRepositoryPrivacy,
        GRepositoryVisibility,
        GRequestReviewsInput,
        GResolveReviewThreadInput,
        GSamlDigestAlgorithm,
        GSamlSignatureAlgorithm,
        GSavedReplyOrder,
        GSavedReplyOrderField,
        GSearchType,
        GSecurityAdvisoryEcosystem,
        GSecurityAdvisoryIdentifierFilter,
        GSecurityAdvisoryIdentifierType,
        GSecurityAdvisoryOrder,
        GSecurityAdvisoryOrderField,
        GSecurityAdvisorySeverity,
        GSecurityVulnerabilityOrder,
        GSecurityVulnerabilityOrderField,
        GSponsorsTierOrder,
        GSponsorsTierOrderField,
        GSponsorshipOrder,
        GSponsorshipOrderField,
        GSponsorshipPrivacy,
        GStarOrder,
        GStarOrderField,
        GStatusState,
        GSubmitPullRequestReviewInput,
        GSubscriptionState,
        GTeamDiscussionCommentOrder,
        GTeamDiscussionCommentOrderField,
        GTeamDiscussionOrder,
        GTeamDiscussionOrderField,
        GTeamMemberOrder,
        GTeamMemberOrderField,
        GTeamMemberRole,
        GTeamMembershipType,
        GTeamOrder,
        GTeamOrderField,
        GTeamPrivacy,
        GTeamRepositoryOrder,
        GTeamRepositoryOrderField,
        GTeamRole,
        GTopicSuggestionDeclineReason,
        GTransferIssueInput,
        GURI,
        GUnarchiveRepositoryInput,
        GUnfollowUserInput,
        GUnlinkRepositoryFromProjectInput,
        GUnlockLockableInput,
        GUnmarkIssueAsDuplicateInput,
        GUnresolveReviewThreadInput,
        GUpdateBranchProtectionRuleInput,
        GUpdateEnterpriseActionExecutionCapabilitySettingInput,
        GUpdateEnterpriseAdministratorRoleInput,
        GUpdateEnterpriseAllowPrivateRepositoryForkingSettingInput,
        GUpdateEnterpriseDefaultRepositoryPermissionSettingInput,
        GUpdateEnterpriseMembersCanChangeRepositoryVisibilitySettingInput,
        GUpdateEnterpriseMembersCanCreateRepositoriesSettingInput,
        GUpdateEnterpriseMembersCanDeleteIssuesSettingInput,
        GUpdateEnterpriseMembersCanDeleteRepositoriesSettingInput,
        GUpdateEnterpriseMembersCanInviteCollaboratorsSettingInput,
        GUpdateEnterpriseMembersCanMakePurchasesSettingInput,
        GUpdateEnterpriseMembersCanUpdateProtectedBranchesSettingInput,
        GUpdateEnterpriseMembersCanViewDependencyInsightsSettingInput,
        GUpdateEnterpriseOrganizationProjectsSettingInput,
        GUpdateEnterpriseProfileInput,
        GUpdateEnterpriseRepositoryProjectsSettingInput,
        GUpdateEnterpriseTeamDiscussionsSettingInput,
        GUpdateEnterpriseTwoFactorAuthenticationRequiredSettingInput,
        GUpdateIssueCommentInput,
        GUpdateIssueInput,
        GUpdateProjectCardInput,
        GUpdateProjectColumnInput,
        GUpdateProjectInput,
        GUpdatePullRequestInput,
        GUpdatePullRequestReviewCommentInput,
        GUpdatePullRequestReviewInput,
        GUpdateRefInput,
        GUpdateRepositoryInput,
        GUpdateSubscriptionInput,
        GUpdateTeamDiscussionCommentInput,
        GUpdateTeamDiscussionInput,
        GUpdateTopicsInput,
        GUserBlockDuration,
        GUserStatusOrder,
        GUserStatusOrderField,
        GX509Certificate;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GAcceptEnterpriseAdministratorInvitationInput,
  GAcceptTopicSuggestionInput,
  GActionExecutionCapabilitySetting,
  GAddAssigneesToAssignableInput,
  GAddCommentInput,
  GAddLabelsToLabelableInput,
  GAddProjectCardInput,
  GAddProjectColumnInput,
  GAddPullRequestReviewCommentInput,
  GAddPullRequestReviewInput,
  GAddReactionInput,
  GAddStar,
  GAddStarData,
  GAddStarData_action,
  GAddStarData_action_starrable,
  GAddStarInput,
  GAddStarVars,
  GArchiveRepositoryInput,
  GAuditLogOrder,
  GAuditLogOrderField,
  GCancelEnterpriseAdminInvitationInput,
  GChangeUserStatusInput,
  GClearLabelsFromLabelableInput,
  GCloneProjectInput,
  GCloneTemplateRepositoryInput,
  GCloseIssueInput,
  GClosePullRequestInput,
  GCollaboratorAffiliation,
  GCommentAuthorAssociation,
  GCommentCannotUpdateReason,
  GCommitAuthor,
  GCommitContributionOrder,
  GCommitContributionOrderField,
  GContributionOrder,
  GContributionOrderField,
  GConvertProjectCardNoteToIssueInput,
  GCreateBranchProtectionRuleInput,
  GCreateEnterpriseOrganizationInput,
  GCreateIssueInput,
  GCreateProjectInput,
  GCreatePullRequestInput,
  GCreateRefInput,
  GCreateRepositoryInput,
  GCreateTeamDiscussionCommentInput,
  GCreateTeamDiscussionInput,
  GDate,
  GDateTime,
  GDeclineTopicSuggestionInput,
  GDefaultRepositoryPermissionField,
  GDeleteBranchProtectionRuleInput,
  GDeleteDeploymentInput,
  GDeleteIssueCommentInput,
  GDeleteIssueInput,
  GDeleteProjectCardInput,
  GDeleteProjectColumnInput,
  GDeleteProjectInput,
  GDeletePullRequestReviewCommentInput,
  GDeletePullRequestReviewInput,
  GDeleteRefInput,
  GDeleteTeamDiscussionCommentInput,
  GDeleteTeamDiscussionInput,
  GDeploymentOrder,
  GDeploymentOrderField,
  GDeploymentState,
  GDeploymentStatusState,
  GDismissPullRequestReviewInput,
  GDraftPullRequestReviewComment,
  GEnterpriseAdministratorInvitationOrder,
  GEnterpriseAdministratorInvitationOrderField,
  GEnterpriseAdministratorRole,
  GEnterpriseDefaultRepositoryPermissionSettingValue,
  GEnterpriseEnabledDisabledSettingValue,
  GEnterpriseEnabledSettingValue,
  GEnterpriseMemberOrder,
  GEnterpriseMemberOrderField,
  GEnterpriseMembersCanCreateRepositoriesSettingValue,
  GEnterpriseMembersCanMakePurchasesSettingValue,
  GEnterpriseServerInstallationOrder,
  GEnterpriseServerInstallationOrderField,
  GEnterpriseServerUserAccountEmailOrder,
  GEnterpriseServerUserAccountEmailOrderField,
  GEnterpriseServerUserAccountOrder,
  GEnterpriseServerUserAccountOrderField,
  GEnterpriseServerUserAccountsUploadOrder,
  GEnterpriseServerUserAccountsUploadOrderField,
  GEnterpriseServerUserAccountsUploadSyncState,
  GEnterpriseUserAccountMembershipRole,
  GEnterpriseUserDeployment,
  GFollowUserInput,
  GFundingPlatform,
  GGistOrder,
  GGistOrderField,
  GGistPrivacy,
  GGitObjectID,
  GGitSSHRemote,
  GGitSignatureState,
  GGitTimestamp,
  GHTML,
  GIdentityProviderConfigurationState,
  GInviteEnterpriseAdminInput,
  GIssueFilters,
  GIssueOrder,
  GIssueOrderField,
  GIssueState,
  GIssueTimelineItemsItemType,
  GLabelOrder,
  GLabelOrderField,
  GLanguageOrder,
  GLanguageOrderField,
  GLinkRepositoryToProjectInput,
  GLockLockableInput,
  GLockReason,
  GMergeBranchInput,
  GMergePullRequestInput,
  GMergeableState,
  GMilestoneOrder,
  GMilestoneOrderField,
  GMilestoneState,
  GMoveProjectCardInput,
  GMoveProjectColumnInput,
  GOauthApplicationCreateAuditEntryState,
  GOperationType,
  GOrderDirection,
  GOrgAddMemberAuditEntryPermission,
  GOrgCreateAuditEntryBillingPlan,
  GOrgRemoveBillingManagerAuditEntryReason,
  GOrgRemoveMemberAuditEntryMembershipType,
  GOrgRemoveMemberAuditEntryReason,
  GOrgRemoveOutsideCollaboratorAuditEntryMembershipType,
  GOrgRemoveOutsideCollaboratorAuditEntryReason,
  GOrgUpdateDefaultRepositoryPermissionAuditEntryPermission,
  GOrgUpdateMemberAuditEntryPermission,
  GOrgUpdateMemberRepositoryCreationPermissionAuditEntryVisibility,
  GOrganizationInvitationRole,
  GOrganizationInvitationType,
  GOrganizationMemberRole,
  GOrganizationMembersCanCreateRepositoriesSettingValue,
  GOrganizationOrder,
  GOrganizationOrderField,
  GPinnableItemType,
  GPreciseDateTime,
  GProjectCardArchivedState,
  GProjectCardState,
  GProjectColumnPurpose,
  GProjectOrder,
  GProjectOrderField,
  GProjectState,
  GProjectTemplate,
  GPullRequestMergeMethod,
  GPullRequestOrder,
  GPullRequestOrderField,
  GPullRequestReviewCommentState,
  GPullRequestReviewEvent,
  GPullRequestReviewState,
  GPullRequestState,
  GPullRequestTimelineItemsItemType,
  GPullRequestUpdateState,
  GReactionContent,
  GReactionOrder,
  GReactionOrderField,
  GReadRepositories,
  GReadRepositoriesData,
  GReadRepositoriesData_viewer,
  GReadRepositoriesData_viewer_repositories,
  GReadRepositoriesData_viewer_repositories_nodes,
  GReadRepositoriesVars,
  GRefOrder,
  GRefOrderField,
  GRegenerateEnterpriseIdentityProviderRecoveryCodesInput,
  GRegistryPackageDependencyType,
  GRegistryPackageMetadatum,
  GRegistryPackageType,
  GReleaseOrder,
  GReleaseOrderField,
  GRemoveAssigneesFromAssignableInput,
  GRemoveEnterpriseAdminInput,
  GRemoveEnterpriseOrganizationInput,
  GRemoveLabelsFromLabelableInput,
  GRemoveOutsideCollaboratorInput,
  GRemoveReactionInput,
  GRemoveStar,
  GRemoveStarData,
  GRemoveStarData_action,
  GRemoveStarData_action_starrable,
  GRemoveStarInput,
  GRemoveStarVars,
  GReopenIssueInput,
  GReopenPullRequestInput,
  GRepoAccessAuditEntryVisibility,
  GRepoAddMemberAuditEntryVisibility,
  GRepoArchivedAuditEntryVisibility,
  GRepoChangeMergeSettingAuditEntryMergeType,
  GRepoCreateAuditEntryVisibility,
  GRepoDestroyAuditEntryVisibility,
  GRepoRemoveMemberAuditEntryVisibility,
  GRepositoryAffiliation,
  GRepositoryContributionType,
  GRepositoryInvitationOrder,
  GRepositoryInvitationOrderField,
  GRepositoryLockReason,
  GRepositoryOrder,
  GRepositoryOrderField,
  GRepositoryPermission,
  GRepositoryPrivacy,
  GRepositoryVisibility,
  GRequestReviewsInput,
  GResolveReviewThreadInput,
  GSamlDigestAlgorithm,
  GSamlSignatureAlgorithm,
  GSavedReplyOrder,
  GSavedReplyOrderField,
  GSearchType,
  GSecurityAdvisoryEcosystem,
  GSecurityAdvisoryIdentifierFilter,
  GSecurityAdvisoryIdentifierType,
  GSecurityAdvisoryOrder,
  GSecurityAdvisoryOrderField,
  GSecurityAdvisorySeverity,
  GSecurityVulnerabilityOrder,
  GSecurityVulnerabilityOrderField,
  GSponsorsTierOrder,
  GSponsorsTierOrderField,
  GSponsorshipOrder,
  GSponsorshipOrderField,
  GSponsorshipPrivacy,
  GStarOrder,
  GStarOrderField,
  GStatusState,
  GSubmitPullRequestReviewInput,
  GSubscriptionState,
  GTeamDiscussionCommentOrder,
  GTeamDiscussionCommentOrderField,
  GTeamDiscussionOrder,
  GTeamDiscussionOrderField,
  GTeamMemberOrder,
  GTeamMemberOrderField,
  GTeamMemberRole,
  GTeamMembershipType,
  GTeamOrder,
  GTeamOrderField,
  GTeamPrivacy,
  GTeamRepositoryOrder,
  GTeamRepositoryOrderField,
  GTeamRole,
  GTopicSuggestionDeclineReason,
  GTransferIssueInput,
  GURI,
  GUnarchiveRepositoryInput,
  GUnfollowUserInput,
  GUnlinkRepositoryFromProjectInput,
  GUnlockLockableInput,
  GUnmarkIssueAsDuplicateInput,
  GUnresolveReviewThreadInput,
  GUpdateBranchProtectionRuleInput,
  GUpdateEnterpriseActionExecutionCapabilitySettingInput,
  GUpdateEnterpriseAdministratorRoleInput,
  GUpdateEnterpriseAllowPrivateRepositoryForkingSettingInput,
  GUpdateEnterpriseDefaultRepositoryPermissionSettingInput,
  GUpdateEnterpriseMembersCanChangeRepositoryVisibilitySettingInput,
  GUpdateEnterpriseMembersCanCreateRepositoriesSettingInput,
  GUpdateEnterpriseMembersCanDeleteIssuesSettingInput,
  GUpdateEnterpriseMembersCanDeleteRepositoriesSettingInput,
  GUpdateEnterpriseMembersCanInviteCollaboratorsSettingInput,
  GUpdateEnterpriseMembersCanMakePurchasesSettingInput,
  GUpdateEnterpriseMembersCanUpdateProtectedBranchesSettingInput,
  GUpdateEnterpriseMembersCanViewDependencyInsightsSettingInput,
  GUpdateEnterpriseOrganizationProjectsSettingInput,
  GUpdateEnterpriseProfileInput,
  GUpdateEnterpriseRepositoryProjectsSettingInput,
  GUpdateEnterpriseTeamDiscussionsSettingInput,
  GUpdateEnterpriseTwoFactorAuthenticationRequiredSettingInput,
  GUpdateIssueCommentInput,
  GUpdateIssueInput,
  GUpdateProjectCardInput,
  GUpdateProjectColumnInput,
  GUpdateProjectInput,
  GUpdatePullRequestInput,
  GUpdatePullRequestReviewCommentInput,
  GUpdatePullRequestReviewInput,
  GUpdateRefInput,
  GUpdateRepositoryInput,
  GUpdateSubscriptionInput,
  GUpdateTeamDiscussionCommentInput,
  GUpdateTeamDiscussionInput,
  GUpdateTopicsInput,
  GUserBlockDuration,
  GUserStatusOrder,
  GUserStatusOrderField,
  GX509Certificate
])
final Serializers serializers = _serializersBuilder.build();