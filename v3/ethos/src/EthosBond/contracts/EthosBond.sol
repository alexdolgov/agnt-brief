// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import { ITargetStatus } from "./interfaces/ITargetStatus.sol";
import { IEthosProfile } from "./interfaces/IEthosProfile.sol";
import { ETHOS_PROFILE } from "./utils/Constants.sol";
import { AccessControl } from "./utils/AccessControl.sol";

/**
 * @title EthosBond
 * @author Ethos Network
 * @notice Allows profiled Ethos users to record bonded statements on chain.
 * A bond represents a commitment or attestation that the author stakes their reputation on.
 *
 * Key Properties:
 * - Only the author's profile can modify or archive their bonds
 * - Most fields are immutable after creation; only expiration, archivedAt,
 *   and archiveReason can be modified
 * - Bonds do not hold ETH; the amount field represents a commitment value
 * - Archived bonds cannot be restored; create a new bond instead
 *
 * Access Control:
 * - Only verified Ethos profiles can create bonds
 * - Only the bond author (any address in their profile) can modify or archive
 */
contract EthosBond is AccessControl, ITargetStatus, UUPSUpgradeable {
  /**
   * @notice Constructor disables initializers for upgradeable contracts.
   */
  constructor() {
    _disableInitializers();
  }

  /**
   * @dev Represents a bonded statement by an Ethos profile
   * @param archived Whether the bond has been archived
   * @param authorProfileId Profile ID of the bond author
   * @param bondId Unique identifier for this bond
   * @param createdAt Timestamp when the bond was created
   * @param archivedAt Timestamp when archived (0 if not archived)
   * @param amount Commitment value of the bond (immutable)
   * @param statement The statement the author is bonding (immutable)
   * @param bondType Type of bond being created (immutable)
   * @param expiration Expiration timestamp as string for flexibility (mutable)
   * @param amountType Type of the commitment value (immutable)
   * @param archiveReason Reason for archiving (mutable, empty if not archived)
   * @param metadata Additional structured JSON data (immutable)
   */
  struct Bond {
    bool archived;
    uint256 authorProfileId;
    uint256 bondId;
    uint256 createdAt;
    uint256 archivedAt;
    string amount;
    string statement;
    string bondType;
    string expiration;
    string amountType;
    string archiveReason;
    string metadata;
  }

  // --- Constants ---
  /// @notice Maximum length for statement string (10KB)
  uint256 public constant MAX_STATEMENT_LENGTH = 10000;
  /// @notice Maximum length for bondType string (256 chars)
  uint256 public constant MAX_BONDTYPE_LENGTH = 256;
  /// @notice Maximum length for expiration string (256 chars)
  uint256 public constant MAX_EXPIRATION_LENGTH = 256;
  /// @notice Maximum length for amountType string (256 chars)
  uint256 public constant MAX_AMOUNTTYPE_LENGTH = 256;
  /// @notice Maximum length for amount string (256 chars)
  uint256 public constant MAX_AMOUNT_LENGTH = 256;

  // --- State Variables ---
  /// @notice Total number of bonds ever created plus one (starts at 1, ID 0 means "not found")
  uint256 public bondCount;

  // --- Mappings ---
  /// @notice Maps bond IDs to their full bond data
  mapping(uint256 => Bond) public bonds;

  /// @notice Maps author profile IDs to their list of bond IDs (includes both active and archived)
  mapping(uint256 => uint256[]) public bondIdsByAuthor;

  // Storage gap for upgrades
  uint256[50] private __gap;

  // --- Errors ---
  error BondNotFound(uint256 bondId);
  error BondAlreadyArchived(uint256 bondId);
  error NotAuthorForBond(uint256 bondId, uint256 callerProfileId);
  error InvalidBondDetails(string reason);
  error InvalidProfile(uint256 profileId, string reason);

  /**
   * @dev Parameters used for creating a new bond (used for signature verification)
   * @param authorProfileId Profile ID of the bond creator
   * @param randValue Random value for signature uniqueness
   * @param amount Commitment value of the bond
   * @param statement The statement the author is bonding
   * @param bondType Type of bond being created
   * @param expiration Expiration timestamp as string
   * @param amountType Type of the commitment value
   * @param metadata Additional structured JSON data
   */
  struct CreateBondParams {
    uint256 authorProfileId;
    uint256 randValue;
    string amount;
    string statement;
    string bondType;
    string expiration;
    string amountType;
    string metadata;
  }

  // --- Events ---
  /**
   * @notice Emitted when a new bond is created
   * @param bondId The ID of the newly created bond
   * @param authorProfileId The profile ID of the bond author
   * @param bondType The type of bond being created
   * @param amount The commitment value of the bond
   * @param amountType The type of the commitment value
   */
  event BondCreated(
    uint256 indexed bondId,
    uint256 indexed authorProfileId,
    string bondType,
    string amount,
    string amountType
  );

  /**
   * @notice Emitted when a bond is archived
   * @param bondId The ID of the archived bond
   * @param authorProfileId The profile ID of the bond author
   * @param archivedBy The address that archived the bond
   * @param archiveReason The reason for archiving the bond
   */
  event BondArchived(
    uint256 indexed bondId,
    uint256 indexed authorProfileId,
    address indexed archivedBy,
    string archiveReason
  );

  /**
   * @notice Emitted when a bond expiration is updated
   * @param bondId The ID of the bond whose expiration is updated
   * @param authorProfileId The profile ID of the bond author
   * @param updatedBy The address that updated the expiration
   * @param expiration The new expiration value
   */
  event BondExpirationUpdated(
    uint256 indexed bondId,
    uint256 indexed authorProfileId,
    address indexed updatedBy,
    string expiration
  );

  /**
   * @notice Initializes the contract
   * @param _owner The owner of the contract
   * @param _admin The admin of the contract
   * @param _expectedSigner The expected signer of the contract
   * @param _signatureVerifier The signature verifier of the contract
   * @param _contractAddressManagerAddr The contract address manager address
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
    bondCount = 1; // Start at 1 so ID 0 indicates "not found"
  }

  /**
   * @notice Restricts upgrading to owner
   * @param newImplementation The new implementation address
   */
  function _authorizeUpgrade(
    address newImplementation
  ) internal override onlyOwner onlyNonZeroAddress(newImplementation) {
    // Intentionally left blank to ensure modifiers run
  }

  // --- Bond Functions ---

  /**
   * @notice Creates a new bond with signature verification
   * @dev Echo service must sign off on bond creation. Author cannot have another active bond
   * with the same statement and type.
   * @param statement The statement the author is bonding
   * @param bondType Type of bond being created
   * @param expiration Expiration timestamp as string
   * @param amount Commitment value of the bond
   * @param amountType Type of the commitment value
   * @param metadata Additional structured JSON data
   * @param randValue Random value for signature uniqueness
   * @param signature Signature from authorized signer (Echo service)
   * @return bondId The ID of the newly created bond
   */
  function createBond(
    string calldata statement,
    string calldata bondType,
    string calldata expiration,
    string calldata amount,
    string calldata amountType,
    string calldata metadata,
    uint256 randValue,
    bytes calldata signature
  ) external whenNotPaused returns (uint256 bondId) {
    // Verify caller has a valid profile
    uint256 authorProfileId = _ethosProfile().verifiedProfileIdForAddress(msg.sender);

    // Validate and consume signature
    CreateBondParams memory params = CreateBondParams({
      authorProfileId: authorProfileId,
      randValue: randValue,
      amount: amount,
      statement: statement,
      bondType: bondType,
      expiration: expiration,
      amountType: amountType,
      metadata: metadata
    });

    validateAndSaveSignature(_keccakForCreateBond(params), signature);

    bondId = _createBondInternal(
      authorProfileId,
      amount,
      statement,
      bondType,
      expiration,
      amountType,
      metadata
    );
  }

  /**
   * @notice Creates a new bond internally
   * @param authorProfileId Profile ID of the bond author
   * @param amount Commitment value of the bond
   * @param statement The statement the author is bonding
   * @param bondType Type of bond being created
   * @param expiration Expiration timestamp as string
   * @param amountType Type of the commitment value
   * @param metadata Additional structured JSON data
   * @return bondId The ID of the newly created bond
   */
  function _createBondInternal(
    uint256 authorProfileId,
    string calldata amount,
    string calldata statement,
    string calldata bondType,
    string calldata expiration,
    string calldata amountType,
    string calldata metadata
  ) private returns (uint256 bondId) {
    _validateBondParams(statement, bondType, expiration, amount, amountType);

    bondId = bondCount;

    bonds[bondId] = Bond({
      archived: false,
      authorProfileId: authorProfileId,
      bondId: bondId,
      // solhint-disable-next-line not-rely-on-time
      createdAt: block.timestamp,
      archivedAt: 0,
      amount: amount,
      statement: statement,
      bondType: bondType,
      expiration: expiration,
      amountType: amountType,
      archiveReason: "",
      metadata: metadata
    });

    bondIdsByAuthor[authorProfileId].push(bondId);

    emit BondCreated(bondId, authorProfileId, bondType, amount, amountType);

    ++bondCount;
  }

  /**
   * @notice Archives a bond with a reason
   * @dev Only the bond author can archive their bond. Archived bonds cannot be restored.
   * @param bondId The ID of the bond to archive
   * @param archiveReason Reason for archiving
   */
  function archiveBond(uint256 bondId, string calldata archiveReason) external whenNotPaused {
    Bond storage bond = bonds[bondId];

    // Validate bond exists
    if (bond.createdAt == 0) {
      revert BondNotFound(bondId);
    }
    if (bond.archived) {
      revert BondAlreadyArchived(bondId);
    }

    // Validate caller is bond author
    uint256 callerProfileId = _ethosProfile().verifiedProfileIdForAddress(msg.sender);
    if (bond.authorProfileId != callerProfileId) {
      revert NotAuthorForBond(bondId, callerProfileId);
    }

    bond.archived = true;
    // solhint-disable-next-line not-rely-on-time
    bond.archivedAt = block.timestamp;
    bond.archiveReason = archiveReason;

    emit BondArchived(bondId, bond.authorProfileId, msg.sender, archiveReason);
  }

  /**
   * @notice Updates the expiration of a bond
   * @dev Only the bond author can update. Cannot update archived bonds.
   * @param bondId The ID of the bond to update
   * @param expiration New expiration value
   */
  function updateExpiration(uint256 bondId, string calldata expiration) external whenNotPaused {
    // Validate expiration length
    if (bytes(expiration).length > MAX_EXPIRATION_LENGTH) {
      revert InvalidBondDetails("Expiration too long");
    }

    Bond storage bond = bonds[bondId];

    // Validate bond exists and is not archived
    if (bond.createdAt == 0) {
      revert BondNotFound(bondId);
    }
    if (bond.archived) {
      revert BondAlreadyArchived(bondId);
    }

    // Validate caller is bond author
    uint256 callerProfileId = _ethosProfile().verifiedProfileIdForAddress(msg.sender);
    if (bond.authorProfileId != callerProfileId) {
      revert NotAuthorForBond(bondId, callerProfileId);
    }

    bond.expiration = expiration;

    emit BondExpirationUpdated(bondId, bond.authorProfileId, msg.sender, expiration);
  }

  // --- View Functions ---

  /**
   * @notice ITargetStatus implementation - checks if bond exists and is allowed
   * @dev For bonds, allowed = exists (archived bonds can still be interacted with)
   * @param targetId Bond ID
   * @return exists Whether the bond exists
   * @return allowed Whether the bond is allowed (same as exists for bonds)
   */
  function targetExistsAndAllowedForId(
    uint256 targetId
  ) external view returns (bool exists, bool allowed) {
    Bond storage bond = bonds[targetId];
    exists = bond.createdAt > 0;
    allowed = exists;
  }

  /**
   * @notice Returns all bond IDs created by a specific author profile
   * @param authorProfileId The profile ID of the author
   * @return bondIds Array of bond IDs (includes both active and archived)
   */
  function getBondIdsByAuthor(
    uint256 authorProfileId
  ) external view returns (uint256[] memory bondIds) {
    return bondIdsByAuthor[authorProfileId];
  }

  // --- Internal Functions ---

  /**
   * @notice Validates bond creation parameters
   * @param statement The bond statement
   * @param bondType The type of bond
   * @param expiration The expiration string
   * @param amount The amount string
   * @param amountType The amount type string
   */
  function _validateBondParams(
    string calldata statement,
    string calldata bondType,
    string calldata expiration,
    string calldata amount,
    string calldata amountType
  ) private pure {
    uint256 statementLength = bytes(statement).length;
    if (statementLength == 0) {
      revert InvalidBondDetails("Statement required");
    }
    if (statementLength > MAX_STATEMENT_LENGTH) {
      revert InvalidBondDetails("Statement too long");
    }
    if (bytes(bondType).length == 0) {
      revert InvalidBondDetails("Bond type required");
    }
    if (bytes(bondType).length > MAX_BONDTYPE_LENGTH) {
      revert InvalidBondDetails("Bond type too long");
    }
    if (bytes(expiration).length > MAX_EXPIRATION_LENGTH) {
      revert InvalidBondDetails("Bond expiration string too long");
    }
    if (bytes(amount).length > MAX_AMOUNT_LENGTH) {
      revert InvalidBondDetails("Amount string too long");
    }
    if (bytes(amountType).length > MAX_AMOUNTTYPE_LENGTH) {
      revert InvalidBondDetails("Amount type too long");
    }
  }

  /**
   * @notice Gets the EthosProfile contract
   * @return IEthosProfile The EthosProfile contract interface
   */
  function _ethosProfile() internal view returns (IEthosProfile) {
    return IEthosProfile(contractAddressManager.getContractAddressForName(ETHOS_PROFILE));
  }

  /**
   * @notice Computes the keccak256 hash for bond creation signature verification
   * @param params The parameters used to create the bond
   * @return bytes32 The computed hash
   */
  function _keccakForCreateBond(CreateBondParams memory params) private pure returns (bytes32) {
    return
      keccak256(
        abi.encode(
          params.authorProfileId,
          params.randValue,
          params.amount,
          params.statement,
          params.bondType,
          params.expiration,
          params.amountType,
          params.metadata
        )
      );
  }
}
