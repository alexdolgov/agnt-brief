// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import { ITargetStatus } from "./interfaces/ITargetStatus.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import { AccessControl } from "./utils/AccessControl.sol";
import { IEthosProfile } from "./interfaces/IEthosProfile.sol";
import { ETHOS_PROFILE, ETHOS_ATTESTATION } from "./utils/Constants.sol";
import { IEthosAttestation } from "./interfaces/IEthosAttestation.sol";
import { AttestationDetails } from "./utils/Structs.sol";

contract EthosSlash is ITargetStatus, AccessControl, UUPSUpgradeable {
  error InvalidSlashDetails(string reason);
  error SelfSlash(address subject);
  error SlashNotFound(uint256 slashId);
  error SlashIsCancelled(uint256 slashId);
  error SlashIsClosed(uint256 slashId);
  error InvalidDuration(uint256 slashId, uint256 newDuration);
  error NotSlashAuthor(uint256 slashId, address caller);
  error EditWindowExpired(uint256 slashId);
  error InvalidEditWindow(uint256 newEditWindow);
  error CancelWindowExpired(uint256 slashId);
  error InvalidCancelWindow(uint256 newCancelWindow);
  error InvalidDefaultDuration(uint256 newDefaultDuration);

  uint256 public defaultDuration;
  uint256 public editWindow;
  uint256 public cancelWindow;

  /**
   * @dev Constructor that disables initializers when the implementation contract is deployed.
   * This prevents the implementation contract from being initialized, which is important for
   * security since the implementation contract should never be used directly, only through
   * delegatecall from the proxy.
   */
  constructor() {
    _disableInitializers();
  }

  /**
   * @dev Type of slash penalty
   * SCORE: Affects credibility score only
   * FINANCIAL: Involves financial penalties
   * XP: Affects XP balance
   */
  enum SlashType {
    SCORE,
    FINANCIAL,
    XP
  }

  /**
   * @dev Structure containing all slash details
   * @param id Unique, incremental identifier for the slash (non-zero)
   * @param createdAt Timestamp when slash was created
   * @param duration How long the slash remains active
   * @param subject Address being slashed (if slashing by address)
   * @param authorProfileId Profile ID of the slash creator
   * @param cancelledAt Timestamp when slash was cancelled (if applicable)
   * @param amount Severity/amount of the slash
   * @param slashType Type of penalty (SCORE, FINANCIAL, or XP)
   * @param comment Description of why the slash was created
   * @param metadata Additional data about the slash
   * @param attestationDetails Details about attestation (if slashing by attestation)
   */
  struct Slash {
    uint256 id; // id may not be 0
    uint256 createdAt;
    uint256 duration;
    address subject;
    uint256 authorProfileId;
    uint256 cancelledAt;
    uint256 amount;
    SlashType slashType;
    string comment;
    string metadata;
    AttestationDetails attestationDetails;
  }

  event SlashCreated(
    uint256 id,
    uint256 createdAt,
    uint256 duration,
    address indexed subject,
    bytes32 indexed attestationHash,
    uint256 authorProfileId,
    uint256 cancelledAt,
    uint256 amount,
    SlashType slashType,
    string comment,
    string metadata
  );

  event SlashEdited(uint256 id, string newComment, string newMetadata);
  event SlashCancelled(uint256 id, address cancelledBy, uint256 cancelledAt);
  event SlashExtended(uint256 id, uint256 newDuration);
  event EditWindowUpdated(uint256 newEditWindow);
  event CancelWindowUpdated(uint256 newCancelWindow);
  event DefaultDurationUpdated(uint256 newDefaultDuration);

  uint256 public slashCount;
  mapping(uint256 => Slash) public slashes;
  // Add storage gap as the last storage variable
  // This allows us to add new storage variables in future upgrades
  // by reducing the size of this gap
  uint256[50] private __gap;

  /**
   * @dev Parameters used for creating a new slash
   * @param authorProfileId Profile ID of the slash creator
   * @param randValue Random value for signature uniqueness
   * @param subject Address being slashed
   * @param amount Severity/amount of the slash
   * @param comment Description of why the slash was created
   * @param metadata Additional data about the slash
   * @param attestationDetails Details about attestation
   * @param slashType Type of penalty (SCORE, FINANCIAL, or XP)
   */
  struct CreateSlashParams {
    uint256 authorProfileId;
    uint256 randValue;
    address subject;
    uint256 amount;
    string comment;
    string metadata;
    AttestationDetails attestationDetails;
    SlashType slashType;
  }

  /**
   * @dev Initializer function, called once when the contract is first deployed.
   * @param _owner Owner address.
   * @param _admin Admin address.
   * @param _expectedSigner ExpectedSigner address.
   * @param _signatureVerifier SignatureVerifier address.
   * @param _contractAddressManagerAddr ContractAddressManager address.
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
    slashCount = 1; // Initialize slashCount to 1 since 0 indicates non-existent slash
    defaultDuration = 48 hours;
    editWindow = 1 hours;
    cancelWindow = 1 hours;
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
   * @dev Checks if a slash is currently open (not cancelled and within duration)
   * @param slashId The ID of the slash to check
   * @return bool True if the slash exists and is open, false otherwise
   */
  function isOpen(uint256 slashId) public view returns (bool) {
    if (slashId == 0 || slashId > slashCount) return false;
    Slash memory slash = slashes[slashId];
    if (slash.cancelledAt > 0) return false;
    return slash.createdAt + slash.duration > block.timestamp;
  }

  /**
   * @dev Checks if a slash is closed (doesn't exist, cancelled, or past duration)
   * @param slashId The ID of the slash to check
   * @return bool True if the slash doesn't exist or is closed, false if it's open
   */
  function isClosed(uint256 slashId) public view returns (bool) {
    // a slash that doesn't exist is not open or closed
    if (slashId == 0 || slashId > slashCount) return false;
    Slash memory slash = slashes[slashId];
    if (slash.cancelledAt > 0) return true;
    if (slash.createdAt + slash.duration <= block.timestamp) return true;
    return false;
  }

  /**
   * @dev Checks if a slash can currently be edited by its author.
   * A slash is editable if:
   * - It exists
   * - It is not cancelled
   * - It is within the edit window from creation time
   * - It has not expired (is still open)
   * @param slashId The ID of the slash to check
   * @return bool True if the slash can be edited, false otherwise
   */
  function isEditable(uint256 slashId) public view returns (bool) {
    if (isClosed(slashId)) return false;
    Slash memory slash = slashes[slashId];
    return block.timestamp <= slash.createdAt + editWindow;
  }

  /**
   * @dev Checks if a slash can currently be cancelled by its author or an admin.
   * A slash is cancellable if:
   * - It exists
   * - It has not already been cancelled
   * - It has not expired (is still open)
   * - For non-admins: It is within the cancel window from creation time
   * Note: Admins can cancel any open slash regardless of the cancel window.
   * @param slashId The ID of the slash to check
   * @param isAdmin Whether the caller is an admin
   * @return bool True if the slash can be cancelled by the specified caller type
   */
  function isCancellable(uint256 slashId, bool isAdmin) public view returns (bool) {
    if (slashId == 0 || slashId > slashCount) return false;
    if (isClosed(slashId)) return false;
    if (isAdmin) return true;
    Slash memory slash = slashes[slashId];
    return block.timestamp <= slash.createdAt + cancelWindow;
  }

  /**
   * @dev Implementation of ITargetStatus interface to check if a slash exists and is allowed for voting and replies
   * @param _targetId The ID of the slash to check
   * @return exists True if the slash exists
   * @return allowed True if voting is allowed on the slash (currently only if open)
   */
  function targetExistsAndAllowedForId(
    uint256 _targetId
  ) external view override returns (bool exists, bool allowed) {
    Slash memory slash = slashes[_targetId];
    exists = slash.id != 0; // id 0 means non-existent slash
    // only allows voting on open slashes
    // TODO: allow voting on closed slashes?
    allowed = exists && isOpen(_targetId);
    return (exists, allowed);
  }

  /**
   * @dev Creates a new slash with signature verification
   * @param subject The address being slashed (if slashing by address)
   * @param amount The amount/severity of the slash
   * @param comment A description of why the slash was created
   * @param metadata Additional metadata about the slash
   * @param attestationDetails Details about the attestation (if slashing by attestation)
   * @param slashType Type of penalty (SCORE, FINANCIAL, or XP)
   * @param randValue Random value for signature uniqueness
   * @param signature Signature from authorized signer
   */
  function createSlash(
    address subject,
    uint256 amount,
    string memory comment,
    string memory metadata,
    AttestationDetails calldata attestationDetails,
    SlashType slashType,
    uint256 randValue,
    bytes calldata signature
  ) external whenNotPaused {
    uint256 authorProfileId = _ethosProfile().verifiedProfileIdForAddress(msg.sender);
    _validateSlashDetails(subject, attestationDetails);

    CreateSlashParams memory params = CreateSlashParams({
      authorProfileId: authorProfileId,
      randValue: randValue,
      subject: subject,
      amount: amount,
      comment: comment,
      metadata: metadata,
      attestationDetails: attestationDetails,
      slashType: slashType
    });

    validateAndSaveSignature(_keccakForCreateSlash(params), signature);

    _createSlashInternal(subject, amount, comment, metadata, attestationDetails, slashType, authorProfileId);
  }

  /**
   * @dev Allows admin to create a slash without signature verification
   * @param subject The address being slashed (if slashing by address)
   * @param amount The amount/severity of the slash
   * @param comment A description of why the slash was created
   * @param metadata Additional metadata about the slash
   * @param attestationDetails Details about the attestation (if slashing by attestation)
   * @param slashType Type of penalty (SCORE, FINANCIAL, or XP)
   * @param authorProfileId The profile ID of the slash author
   */
  function createSlashAdmin(
    address subject,
    uint256 amount,
    string memory comment,
    string memory metadata,
    AttestationDetails calldata attestationDetails,
    SlashType slashType,
    uint256 authorProfileId
  ) external whenNotPaused onlyAdmin {
    _validateSlashDetails(subject, attestationDetails);
    _createSlashInternal(subject, amount, comment, metadata, attestationDetails, slashType, authorProfileId);
  }

  /**
   * @dev Internal function to create a slash
   * @notice this function is used by both createSlash and createSlashAdmin
   * @param subject The address being slashed
   * @param amount The amount/severity of the slash
   * @param comment A description of why the slash was created
   * @param metadata Additional metadata about the slash
   * @param attestationDetails Details about the attestation
   * @param slashType Type of penalty (SCORE, FINANCIAL, or XP)
   * @param authorProfileId The profile ID of the slash author
   */
  function _createSlashInternal(
    address subject,
    uint256 amount,
    string memory comment,
    string memory metadata,
    AttestationDetails memory attestationDetails,
    SlashType slashType,
    uint256 authorProfileId
  ) private {
    bytes32 attestationHash = bytes32(0);
    if (subject == address(0)) {
      attestationHash = _ethosAttestation().getServiceAndAccountHash(
        attestationDetails.service,
        attestationDetails.account
      );
    }

    Slash memory slash = Slash({
      id: slashCount,
      createdAt: block.timestamp,
      duration: defaultDuration,
      subject: subject,
      authorProfileId: authorProfileId,
      cancelledAt: 0,
      amount: amount,
      slashType: slashType,
      comment: comment,
      metadata: metadata,
      attestationDetails: attestationDetails
    });
    slashes[slashCount] = slash;

    emit SlashCreated(
      slash.id,
      slash.createdAt,
      slash.duration,
      slash.subject,
      attestationHash,
      slash.authorProfileId,
      slash.cancelledAt,
      slash.amount,
      slash.slashType,
      slash.comment,
      slash.metadata
    );
    slashCount++;
  }

  /**
   * @dev Extends the duration of an existing slash
   * @param slashId The ID of the slash to extend
   * @param newDuration The new duration in seconds
   */
  function extendSlash(uint256 slashId, uint256 newDuration) external onlyAdmin whenNotPaused {
    // TODO allow non-admins to extend?
    // TODO maximum duration?
    Slash storage slash = slashes[slashId];
    if (slash.id == 0) revert SlashNotFound(slashId);
    if (slash.cancelledAt > 0) revert SlashIsCancelled(slashId);
    if (isClosed(slashId)) revert SlashIsClosed(slashId);
    if (newDuration <= slash.duration) revert InvalidDuration(slashId, newDuration);
    slash.duration = newDuration;
    emit SlashExtended(slashId, newDuration);
  }

  /**
   * @dev Allows the slash author to edit the comment and metadata
   * note: only within the first hour of the slash
   * @param slashId The ID of the slash to edit
   * @param newComment The new comment text
   * @param newMetadata The new metadata
   */
  function editSlash(
    uint256 slashId,
    string memory newComment,
    string memory newMetadata
  ) external whenNotPaused {
    Slash storage slash = slashes[slashId];
    if (slash.id == 0) revert SlashNotFound(slashId);
    if (!isEditable(slashId)) revert EditWindowExpired(slashId);
    _validateSlashAuthor(slash, slashId);

    slash.comment = newComment;
    slash.metadata = newMetadata;

    emit SlashEdited(slashId, newComment, newMetadata);
  }

  /**
   * @dev Allows admin to update the edit window duration
   * @param newEditWindow The new edit window duration in seconds
   */
  function setEditWindow(uint256 newEditWindow) external onlyAdmin whenNotPaused {
    if (newEditWindow == 0) revert InvalidEditWindow(newEditWindow);
    editWindow = newEditWindow;
    emit EditWindowUpdated(newEditWindow);
  }

  /**
   * @dev Cancels an existing slash. Can be called by the author or an admin
   * @param slashId The ID of the slash to cancel
   */
  function cancelSlash(uint256 slashId) external whenNotPaused {
    Slash storage slash = slashes[slashId];
    if (slash.id == 0) revert SlashNotFound(slashId);

    bool isAdmin = hasRole(ADMIN_ROLE, msg.sender);
    if (!isCancellable(slashId, isAdmin)) {
      if (slash.cancelledAt > 0) revert SlashIsCancelled(slashId);
      if (isClosed(slashId)) revert SlashIsClosed(slashId);
      revert CancelWindowExpired(slashId);
    }

    // Allow either the original author or an admin to cancel
    if (!isAdmin) {
      _validateSlashAuthor(slash, slashId);
    }

    slash.cancelledAt = block.timestamp;

    emit SlashCancelled(slashId, msg.sender, block.timestamp);
  }

  /**
   * @dev Allows admin to update the cancel window duration
   * @param newCancelWindow The new cancel window duration in seconds
   */
  function setCancelWindow(uint256 newCancelWindow) external onlyAdmin whenNotPaused {
    if (newCancelWindow == 0) revert InvalidCancelWindow(newCancelWindow);
    cancelWindow = newCancelWindow;
    emit CancelWindowUpdated(newCancelWindow);
  }

  /**
   * @dev Allows admin to update the default duration for new slashes
   * @param newDefaultDuration The new default duration in seconds
   */
  function setDefaultDuration(uint256 newDefaultDuration) external onlyAdmin whenNotPaused {
    if (newDefaultDuration == 0) revert InvalidDefaultDuration(newDefaultDuration);
    defaultDuration = newDefaultDuration;
    emit DefaultDurationUpdated(newDefaultDuration);
  }

  /**
   * @dev Internal function to get the EthosProfile contract
   * @return IEthosProfile The EthosProfile contract interface
   */
  function _ethosProfile() internal view returns (IEthosProfile) {
    return IEthosProfile(contractAddressManager.getContractAddressForName(ETHOS_PROFILE));
  }

  /**
   * @dev Internal function to get the EthosAttestation contract
   * @return IEthosAttestation The EthosAttestation contract interface
   */
  function _ethosAttestation() internal view returns (IEthosAttestation) {
    return IEthosAttestation(contractAddressManager.getContractAddressForName(ETHOS_ATTESTATION));
  }

  /**
   * @dev Validates that the caller is the author of the slash
   * @param slash The slash to validate
   * @param slashId The ID of the slash (for error reporting)
   */
  function _validateSlashAuthor(Slash storage slash, uint256 slashId) private view {
    uint256 callerProfileId = _ethosProfile().profileIdByAddress(msg.sender);
    if (callerProfileId != slash.authorProfileId) {
      revert NotSlashAuthor(slashId, msg.sender);
    }
  }

  /**
   * @dev Validates that either subject OR attestation is set, not both
   * @param subject Subject address
   * @param attestationDetails Attestation details
   */
  function _validateSlashDetails(
    address subject,
    AttestationDetails calldata attestationDetails
  ) private view {
    _validateSubjectOrAttestationSet(subject, attestationDetails);
    _validateNotSelfSlash(subject, attestationDetails);
  }

  /**
   * @dev Validates that exactly one of subject or attestation is set
   */
  function _validateSubjectOrAttestationSet(
    address subject,
    AttestationDetails calldata attestationDetails
  ) private pure {
    bool hasSubject = subject != address(0);
    bool hasAttestation = bytes(attestationDetails.account).length != 0 ||
      bytes(attestationDetails.service).length != 0;

    if (!hasSubject && !hasAttestation) {
      revert InvalidSlashDetails("None set");
    }

    if (hasSubject && hasAttestation) {
      revert InvalidSlashDetails("Both set");
    }
  }

  /**
   * @dev Validates that the slash author is not slashing themselves
   */
  function _validateNotSelfSlash(
    address subject,
    AttestationDetails calldata attestationDetails
  ) private view {
    // Direct address self-slash check
    if (subject == msg.sender) {
      revert SelfSlash(subject);
    }

    uint256 authorProfileId = _ethosProfile().profileIdByAddress(msg.sender);

    if (subject != address(0)) {
      _validateNotSameProfile(subject, authorProfileId);
    } else {
      _validateNotSameAttestationProfile(attestationDetails, authorProfileId);
    }
  }

  /**
   * @dev Validates that the subject's profile is not the same as the author's
   */
  function _validateNotSameProfile(address subject, uint256 authorProfileId) private view {
    uint256 subjectProfileId = _ethosProfile().profileIdByAddress(subject);
    if (authorProfileId == subjectProfileId) {
      revert SelfSlash(subject);
    }
  }

  /**
   * @dev Validates that the attestation's profile is not the same as the author's
   */
  function _validateNotSameAttestationProfile(
    AttestationDetails calldata attestationDetails,
    uint256 authorProfileId
  ) private view {
    bytes32 attestationHash = _ethosAttestation().getServiceAndAccountHash(
      attestationDetails.service,
      attestationDetails.account
    );
    uint256 subjectProfileId = _ethosProfile().profileIdByAttestation(attestationHash);
    if (authorProfileId == subjectProfileId) {
      revert SelfSlash(address(0));
    }
  }

  /**
   * @dev Computes the keccak256 hash for slash creation signature verification
   * @param params The parameters used to create the slash
   * @return bytes32 The computed hash
   */
  function _keccakForCreateSlash(CreateSlashParams memory params) private pure returns (bytes32) {
    return
      keccak256(
        abi.encode(
          params.authorProfileId,
          params.randValue,
          params.subject,
          params.amount,
          params.comment,
          params.metadata,
          params.attestationDetails,
          params.slashType
        )
      );
  }
}
