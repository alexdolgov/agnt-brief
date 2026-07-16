// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import { ITargetStatus } from "./interfaces/ITargetStatus.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import { AccessControl } from "./utils/AccessControl.sol";
import { IEthosProfile } from "./interfaces/IEthosProfile.sol";
import { ETHOS_PROFILE } from "./utils/Constants.sol";
import { AttestationDetails } from "./utils/Structs.sol";

/**
 * @title EthosProject Contract
 * Used to allow voting, comments on team-based project launches
 * Inherits from ITargetStatus to integrate with voting/review systems.
 * Uses UUPSUpgradeable for upgradeability.
 */
contract EthosProject is ITargetStatus, AccessControl, UUPSUpgradeable {
  /**
   * @notice Represents a project
   * @param id Unique identifier for the project (starts from 1).
   * @param createdAt Timestamp when the project was created.
   * @param archived Flag indicating if the project is archived.
   * @param metadata JSON (not enforced) string containing project metadata.
   * @param attestationDetails Identifies the primary project social media account
   * @param managerProfileIds Array of Ethos Profile IDs authorized to manage the project.
   */
  struct Project {
    uint256 id; // id may not be 0
    uint256 createdAt;
    bool archived;
    string metadata;
    AttestationDetails attestationDetails;
    uint256[] managerProfileIds;
  }

  // Events
  /**
   * @notice Emitted when a new project is created.
   * @param id The ID of the newly created project.
   * @param createdAt Timestamp of creation.
   * @param archived Initial archived status (should be false).
   * @param metadata Project metadata URI/string.
   * @param attestationDetails Attestation details for the project.
   * @param managerProfileIds Initial list of manager profile IDs.
   */
  event ProjectCreated(
    uint256 id,
    uint256 createdAt,
    bool archived,
    string metadata,
    AttestationDetails attestationDetails,
    uint256[] managerProfileIds
  );

  /**
   * @notice Emitted when a project's archived status is updated.
   * @param id The ID of the project being updated.
   * @param archived The new archived status.
   */
  event ProjectArchived(uint256 id, bool archived);
  /**
   * @notice Emitted when a project's name, metadata, or attestation details are updated.
   * @param id The ID of the project being updated.
   * @param name The new name.
   * @param metadata The new metadata URI/string.
   * @param attestationDetails The new attestation details.
   */
  event ProjectDetailsUpdated(
    uint256 id,
    string name,
    string metadata,
    AttestationDetails attestationDetails
  );
  /**
   * @notice Emitted when a project's list of manager profile IDs is updated.
   * @param id The ID of the project being updated.
   * @param managerProfileIds The new list of manager profile IDs.
   */
  event ProjectManagerProfileIdsUpdated(uint256 id, uint256[] managerProfileIds);

  // Errors
  /**
   * @notice Reverts if the caller does not have the necessary manager permissions for the project.
   */
  error NotManager();

  /**
   * @notice Reverts if the requested project ID does not exist.
   */
  error ProjectNotFound(uint256 projectId);

  /**
   * @notice Reverts if a project with the given userkey already exists.
   */
  error ProjectAlreadyExists(string userkey);

  /**
   * @notice Counter for assigning unique project IDs. Starts at 1.
   */
  uint256 public projectCount;
  /**
   * @notice Mapping from project ID to the Project struct.
   */
  mapping(uint256 => Project) public projects;
  /**
   * @notice Mapping from userkey to project ID.
   * Userkey is defined as: `service:<service_name>:<account_id>`
   */
  mapping(string => uint256) public projectIdByUserkey;

  /**
   * @notice Constructor disables initializers for upgradeable contracts.
   */
  constructor() {
    _disableInitializers();
  }

  /**
   * @notice Initializes the contract, setting up access control and UUPS upgradeability.
   * @param _owner The initial owner address.
   * @param _admin The initial admin address.
   * @param _expectedSigner Address expected for signature verification.
   * @param _signatureVerifier Address of the signature verifier contract.
   * @param _contractAddressManagerAddr Address of the ContractAddressManager.
   */
  function initialize(
    address _owner,
    address _admin,
    address _expectedSigner,
    address _signatureVerifier,
    address _contractAddressManagerAddr
  ) external initializer {
    __accessControl_init(
      _owner,
      _admin,
      _expectedSigner,
      _signatureVerifier,
      _contractAddressManagerAddr
    );
    __UUPSUpgradeable_init();
    projectCount = 1;
  }

  /**
   * @notice restricts upgrading to owner
   * @param newImplementation address of new implementation contract
   */
  function _authorizeUpgrade(
    address newImplementation
  ) internal override onlyOwner onlyNonZeroAddress(newImplementation) {
    // Intentionally left blank to ensure onlyOwner and zeroCheck modifiers run
  }

  /**
   * @notice Creates a new project. Only callable by an address with the ADMIN_ROLE.
   * @dev Increments the projectCount after successful creation.
   * @param metadata URI or other string containing project metadata.
   * @param attestationDetails Details related to attestations required or associated with the project.
   * @param managerProfileIds Array of Ethos Profile IDs authorized to manage the project.
   */
  function createProject(
    string calldata metadata,
    AttestationDetails calldata attestationDetails,
    uint256[] calldata managerProfileIds
  ) external onlyAdmin whenNotPaused {
    string memory userkey = _checkProjectExists(attestationDetails);
    Project memory project = Project({
      id: projectCount,
      createdAt: block.timestamp,
      archived: false,
      metadata: metadata,
      attestationDetails: attestationDetails,
      managerProfileIds: managerProfileIds
    });
    projects[projectCount] = project;
    projectIdByUserkey[userkey] = projectCount;
    emit ProjectCreated(
      project.id,
      project.createdAt,
      project.archived,
      project.metadata,
      project.attestationDetails,
      project.managerProfileIds
    );
    projectCount++;
  }

  /**
   * @notice Modifier to restrict access to project management functions.
   * Allows access if the caller has the ADMIN_ROLE or if their verified Ethos Profile ID
   * (or profile ID 1 - Ethos) is in the project's manager list.
   * @param projectId The ID of the project being accessed.
   */
  modifier onlyProjectManager(uint256 projectId) {
    // Allow admins to manage any project
    if (hasRole(ADMIN_ROLE, msg.sender)) {
      _;
      return;
    }

    uint256 profileId = _ethosProfile().verifiedProfileIdForAddress(msg.sender);
    bool isManager = false;
    // ethos is always allowed to manage projects
    if (profileId == 1) {
      isManager = true;
    } else {
      for (uint256 i = 0; i < projects[projectId].managerProfileIds.length; i++) {
        if (projects[projectId].managerProfileIds[i] == profileId) {
          isManager = true;
          break;
        }
      }
    }

    if (!isManager) {
      revert NotManager();
    }
    _;
  }

  /**
   * @notice Updates the archived status of a specific project.
   * @dev Requires the caller to be a project manager or admin.
   * @param projectId The ID of the project to update.
   * @param archived The new archived status (true or false).
   */
  function updateProjectArchived(
    uint256 projectId,
    bool archived
  ) external whenNotPaused onlyProjectManager(projectId) {
    Project storage project = projects[projectId];
    project.archived = archived;
    emit ProjectArchived(projectId, archived);
  }

  /**
   * @notice Updates the name, metadata, and attestation details of a specific project.
   * @dev Requires the caller to be a project manager or admin.
   * @param projectId The ID of the project to update.
   * @param name The new name for the project.
   * @param metadata The new metadata URI/string for the project.
   * @param attestationDetails The new attestation details for the project.
   */
  function updateProjectDetails(
    uint256 projectId,
    string calldata name,
    string calldata metadata,
    AttestationDetails calldata attestationDetails
  ) external whenNotPaused onlyProjectManager(projectId) {
    Project storage project = projects[projectId];
    if (project.id == 0) {
      revert ProjectNotFound(projectId);
    }
    // if we're changing the service/account attestation details
    if (
      keccak256(bytes(project.attestationDetails.service)) !=
      keccak256(bytes(attestationDetails.service)) ||
      keccak256(bytes(project.attestationDetails.account)) !=
      keccak256(bytes(attestationDetails.account))
    ) {
      string memory oldUserkey = buildUserkey(project.attestationDetails);
      string memory newUserkey = _checkProjectExists(attestationDetails);
      project.attestationDetails = attestationDetails;
      projectIdByUserkey[oldUserkey] = 0;
      projectIdByUserkey[newUserkey] = projectId;
    }
    project.metadata = metadata;
    emit ProjectDetailsUpdated(projectId, name, metadata, attestationDetails);
  }

  /**
   * @notice Updates the list of manager profile IDs for a specific project.
   * @dev Requires the caller to be a project manager or admin. Replaces the existing list.
   * @param projectId The ID of the project to update.
   * @param managerProfileIds The new array of manager profile IDs.
   */
  function updateProjectManagerProfileIds(
    uint256 projectId,
    uint256[] calldata managerProfileIds
  ) external whenNotPaused onlyProjectManager(projectId) {
    Project storage project = projects[projectId];
    project.managerProfileIds = managerProfileIds;
    emit ProjectManagerProfileIdsUpdated(projectId, managerProfileIds);
  }

  /**
   * @notice Gets the manager profile IDs for a specific project.
   * @param projectId The ID of the project.
   * @return Array of manager profile IDs.
   */
  function getProjectManagerProfileIds(uint256 projectId) external view returns (uint256[] memory) {
    return projects[projectId].managerProfileIds;
  }

  function buildUserkey(
    AttestationDetails memory attestationDetails
  ) internal pure returns (string memory) {
    return string.concat("service:", attestationDetails.service, ":", attestationDetails.account);
  }

  function getUserkeyForProject(uint256 projectId) external view returns (string memory) {
    return buildUserkey(projects[projectId].attestationDetails);
  }

  function getProjectByUserkey(string memory userkey) external view returns (Project memory) {
    return projects[projectIdByUserkey[userkey]];
  }

  function _checkProjectExists(
    AttestationDetails memory attestationDetails
  ) internal view returns (string memory userkey) {
    userkey = buildUserkey(attestationDetails);
    uint256 projectId = projectIdByUserkey[userkey];
    if (projectId != 0) {
      revert ProjectAlreadyExists(userkey);
    }
  }

  /**
   * @notice Checks if a target (project) exists and is allowed for interaction (e.g., voting).
   * @dev Implements the ITargetStatus interface.
   * @param _targetId The ID of the project to check.
   * @return exists True if a project with the given ID exists, false otherwise.
   * @return allowed True if the project exists and meets the criteria for interaction, false otherwise.
   */
  function targetExistsAndAllowedForId(
    uint256 _targetId
  ) external view override returns (bool exists, bool allowed) {
    Project memory project = projects[_targetId];
    exists = project.id != 0;
    allowed = exists;
  }

  /**
   * @dev Internal function to get the EthosProfile contract
   * @return IEthosProfile The EthosProfile contract interface
   */
  function _ethosProfile() internal view returns (IEthosProfile) {
    return IEthosProfile(contractAddressManager.getContractAddressForName(ETHOS_PROFILE));
  }
}
