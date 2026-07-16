// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import { ITargetStatus } from "./interfaces/ITargetStatus.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import { AccessControl } from "./utils/AccessControl.sol";
import { IEthosProfile } from "./interfaces/IEthosProfile.sol";
import { ETHOS_PROFILE } from "./utils/Constants.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { IERC20Permit } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/**
 * @title EthosBroker Contract
 * @author Ethos Network
 * @notice Used to create posts on-chain for Ethos Broker while maintaining status management off-chain.
 * Inherits from ITargetStatus to integrate with voting/review systems.
 * Uses UUPSUpgradeable for upgradeability.
 */
contract EthosBroker is ITargetStatus, AccessControl, UUPSUpgradeable, ReentrancyGuard {
  /**
   * @notice Enum representing broker post levels
   */
  enum BrokerPostLevel {
    BASIC,
    PREMIUM
  }

  /**
   * @notice Represents a broker post
   * @param id Unique identifier for the post (starts from 1).
   * @param authorProfileId Ethos Profile ID of the creator.
   * @param createdAt Block timestamp when the post was created (uint32 sufficient until year 2106).
   * @param level Level of post (BASIC, PREMIUM).
   * @param title Post title.
   * @param description Post description.
   * @param price Price as plain text.
   * @param metadata Additional metadata associated with the post (includes post type).
   */
  struct BrokerPost {
    uint256 id; // id may not be 0
    uint256 authorProfileId;
    uint32 createdAt;
    BrokerPostLevel level;
    string title;
    string description;
    string price;
    string metadata;
  }

  /**
   * @notice Configuration for supported ERC20 tokens
   * @param premiumFee Fee amount in token's native units (e.g., 2000000 for 2 USDC)
   * @param addedAt Block timestamp when token was added
   * @param decimals Cached token decimals for gas optimization
   * @param isActive Whether token is currently accepted for payments
   * @param emergencyPaused Whether token is paused due to emergency
   * @param supportsPermit Whether token supports EIP-2612 permit functionality
   */
  struct TokenConfig {
    uint256 premiumFee; // Fee in token's native units
    uint32 addedAt;
    uint8 decimals; // Cached decimals (6 for USDC, 18 for WETH)
    bool isActive; // Whether token is currently accepted
    bool emergencyPaused; // Per-token emergency pause
    bool supportsPermit; // Whether token supports EIP-2612 permit
  }

  // Constants

  // State Variables
  /**
   * @notice Counter for assigning unique post IDs. Starts at 1.
   */
  uint256 public postCount;

  /**
   * @notice Mapping from post ID to the BrokerPost struct.
   */
  mapping(uint256 => BrokerPost) public posts;

  /**
   * @notice Mapping from profile ID to array of post IDs authored by that profile.
   */
  mapping(uint256 => uint256[]) public postIdsByAuthor;

  /**
   * @notice Address that receives premium post fees.
   */
  address public feeRecipient;

  // Multi-token support storage
  /**
   * @notice Mapping from token address to token configuration.
   */
  mapping(address => TokenConfig) public allowedTokens;

  /**
   * @notice Mapping from index to token address for enumeration.
   */
  mapping(uint256 => address) public tokenByIndex;

  /**
   * @notice Total number of allowed tokens.
   */
  uint256 public tokenCount;

  /**
   * @notice Mapping from profile ID and token address to credit balance in token's native units.
   */
  mapping(uint256 => mapping(address => uint256)) public profileTokenCreditBalance;

  /// @dev Storage gap for future upgrades. Uses 50 slots to maintain storage layout compatibility.
  uint256[50] private __gap;

  // Events
  /**
   * @notice Emitted when a new broker post is created.
   * @param id The ID of the newly created post.
   * @param authorProfileId The profile ID of the post author.
   * @param level The level of post (BASIC, PREMIUM).
   * @param title The title of the post.
   * @param description The description of the post.
   * @param price The price specified in the post.
   * @param metadata The metadata of the post.
   * @param createdAt Timestamp of creation.
   */
  event PostCreated(
    uint256 indexed id,
    uint256 indexed authorProfileId,
    BrokerPostLevel level,
    string title,
    string description,
    string price,
    string metadata,
    uint256 createdAt
  );

  /**
   * @notice Emitted when a broker post is updated.
   * @param id The ID of the updated post.
   * @param authorProfileId The profile ID of the post author.
   * @param title The new title of the post.
   * @param description The new description of the post.
   * @param price The new price of the post.
   * @param metadata The new metadata of the post.
   * @param updatedAt Timestamp of the update.
   */
  event PostUpdated(
    uint256 indexed id,
    uint256 indexed authorProfileId,
    string title,
    string description,
    string price,
    string metadata,
    uint256 indexed updatedAt
  );

  /**
   * @notice Emitted when the premium post fee is updated.
   * @param token The token contract address (address(0) for ETH).
   * @param oldFee The previous fee amount.
   * @param newFee The new fee amount.
   */
  event PremiumPostFeeUpdated(
    address indexed token,
    uint256 indexed oldFee,
    uint256 indexed newFee
  );

  /**
   * @notice Emitted when the fee recipient address is updated.
   * @param oldRecipient The previous recipient address.
   * @param newRecipient The new recipient address.
   */
  event FeeRecipientUpdated(address indexed oldRecipient, address indexed newRecipient);

  /**
   * @notice Emitted when a premium post fee is paid.
   * @param postId The ID of the post for which the fee was paid.
   * @param token The ERC20 token contract address used for payment.
   * @param fee The amount of fee paid.
   * @param recipient The address that received the fee.
   */
  event PremiumPostFeePaid(
    uint256 indexed postId,
    address indexed token,
    uint256 indexed fee,
    address recipient
  );

  /**
   * @notice Emitted when an admin updates a user's credit balance.
   * @param profileId The profile ID whose credit balance was updated.
   * @param token The ERC20 token contract address.
   * @param oldBalance The previous credit balance.
   * @param newBalance The new credit balance.
   */
  event CreditBalanceUpdated(
    uint256 indexed profileId,
    address indexed token,
    uint256 indexed oldBalance,
    uint256 newBalance
  );

  // Token-specific events
  /**
   * @notice Emitted when a new token is added for premium payments.
   * @param token The token contract address.
   * @param premiumFee The fee amount in token's native units.
   * @param decimals The token's decimal places.
   */
  event TokenAdded(address indexed token, uint256 indexed premiumFee, uint8 indexed decimals);

  /**
   * @notice Emitted when a token is removed from allowed payments.
   * @param token The token contract address.
   */
  event TokenRemoved(address indexed token);

  /**
   * @notice Emitted when a token's emergency pause status changes.
   * @param token The token contract address.
   * @param paused Whether the token is now paused.
   */
  event TokenEmergencyPaused(address indexed token, bool indexed paused);

  /**
   * @notice Emitted when credit is used to pay for a premium post.
   * @param profileId The profile ID that used credit.
   * @param token The ERC20 token contract address.
   * @param postId The ID of the post for which credit was used.
   * @param amount The amount of credit used.
   * @param remainingBalance The remaining credit balance after deduction.
   */
  event CreditUsed(
    uint256 indexed profileId,
    address indexed token,
    uint256 postId,
    uint256 indexed amount,
    uint256 remainingBalance
  );

  // Errors
  /**
   * @notice Reverts if the requested post ID does not exist.
   */
  error PostNotFound(uint256 postId);

  /**
   * @notice Reverts if the caller does not have a verified Ethos profile.
   */
  error NoEthosProfile();

  /**
   * @notice Reverts if an invalid fee amount is provided.
   */
  error InvalidFeeAmount();

  /**
   * @notice Reverts if a fee transfer fails.
   */
  error FeeTransferFailed();

  /**
   * @notice Reverts if insufficient payment is provided for a premium post.
   */
  error InsufficientPayment(uint256 required, uint256 provided);

  /**
   * @notice Reverts if caller is not authorized to edit the post.
   */
  error UnauthorizedPostEdit(uint256 postId, uint256 authorProfileId);

  /**
   * @notice Reverts if an invalid profile ID is provided.
   */
  error InvalidProfileId();

  // Token validation errors
  /**
   * @notice Reverts if token contract validation fails.
   */
  error InvalidTokenContract(address token);

  /**
   * @notice Reverts if token decimals are invalid.
   */
  error InvalidTokenDecimals(uint8 decimals);

  /**
   * @notice Reverts if token is not allowed for payments.
   */
  error TokenNotAllowed(address token);

  /**
   * @notice Reverts if token is emergency paused.
   */
  error TokenIsEmergencyPaused(address token, bool isPaused);

  /**
   * @notice Reverts if token function call fails during validation.
   */
  error TokenValidationFailed(address token, string reason);

  // Token payment errors
  /**
   * @notice Reverts if ETH is sent with token payment method.
   */
  error EthNotAllowedWithTokenPayment();

  /**
   * @notice Reverts if zero amount is provided where positive amount is required.
   */
  error ZeroAmountNotAllowed();

  /**
   * @notice Reverts if an empty array is provided where at least one element is required.
   */
  error EmptyArrayNotAllowed();

  /**
   * @notice Reverts if array access is out of bounds.
   */
  error IndexOutOfBounds(uint256 index, uint256 length);

  // Permit-specific errors
  /**
   * @notice Reverts if permit has expired.
   */
  error PermitExpired(uint256 deadline);

  /**
   * @notice Reverts if permit signature is invalid.
   */
  error InvalidPermitSignature();

  /**
   * @notice Reverts if permit operation fails.
   */
  error PermitFailed(address token, string reason);

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
   * @param _feeRecipient Address that will receive premium post fees.
   * @param _initialToken The initial ERC20 token contract address for premium payments.
   * @param _initialTokenPremiumFee The premium fee amount for the initial token in its native units.
   */
  function initialize(
    address _owner,
    address _admin,
    address _expectedSigner,
    address _signatureVerifier,
    address _contractAddressManagerAddr,
    address _feeRecipient,
    address _initialToken,
    uint256 _initialTokenPremiumFee
  ) external initializer {
    __accessControl_init(
      _owner,
      _admin,
      _expectedSigner,
      _signatureVerifier,
      _contractAddressManagerAddr
    );
    __UUPSUpgradeable_init();
    postCount = 1; // No posts with id 0
    feeRecipient = _feeRecipient;

    // Validate and add initial token
    _validateTokenContract(_initialToken);
    _validateFeeAmount(_initialTokenPremiumFee);

    // Get token decimals and check permit support for the initial token
    uint8 initialTokenDecimals = IERC20Metadata(_initialToken).decimals();
    bool initialTokenSupportsPermit = _checkPermitSupport(_initialToken);

    // Add initial token to storage
    allowedTokens[_initialToken] = TokenConfig({
      premiumFee: _initialTokenPremiumFee,
      addedAt: uint32(block.timestamp),
      decimals: initialTokenDecimals,
      isActive: true,
      emergencyPaused: false,
      supportsPermit: initialTokenSupportsPermit
    });

    // Add to enumeration
    tokenByIndex[0] = _initialToken;
    tokenCount = 1;

    emit TokenAdded(_initialToken, _initialTokenPremiumFee, initialTokenDecimals);
  }

  /**
   * @notice Creates a new basic broker post (no payment required).
   * @param title The title of the post.
   * @param description The description of the post.
   * @param price The price specified in the post (as plain text).
   * @param metadata Additional metadata associated with the post (includes post type).
   */
  function createBasicPost(
    string calldata title,
    string calldata description,
    string calldata price,
    string calldata metadata
  ) external whenNotPaused nonReentrant {
    // 1. Profile Validation
    uint256 authorProfileId = _getAndValidateProfileId();

    // 2. Create and store the post
    _createAndStorePost(
      authorProfileId,
      BrokerPostLevel.BASIC,
      title,
      description,
      price,
      metadata
    );
  }

  /**
   * @notice Creates a new premium broker post with ERC20 token payment.
   * @param title The title of the post.
   * @param description The description of the post.
   * @param price The price specified in the post (as plain text).
   * @param metadata Additional metadata associated with the post (includes post type).
   * @param paymentToken The ERC20 token contract address for payment.
   */
  function createPremiumPost(
    string calldata title,
    string calldata description,
    string calldata price,
    string calldata metadata,
    address paymentToken
  ) external whenNotPaused nonReentrant {
    // 1. Profile Validation - cache profile contract call
    uint256 authorProfileId = _getAndValidateProfileId();

    // 2. Handle token payment
    _handleTokenPayment(authorProfileId, paymentToken, postCount);

    // 3. Create and store the post
    _createAndStorePost(
      authorProfileId,
      BrokerPostLevel.PREMIUM,
      title,
      description,
      price,
      metadata
    );
  }

  /**
   * @notice Internal function to create and store a broker post
   * @param authorProfileId The profile ID of the post author
   * @param level The level of the post (BASIC, PREMIUM)
   * @param title The post title
   * @param description The post description
   * @param price The post price
   * @param metadata Additional post metadata
   */
  function _createAndStorePost(
    uint256 authorProfileId,
    BrokerPostLevel level,
    string calldata title,
    string calldata description,
    string calldata price,
    string calldata metadata
  ) internal {
    // Post Creation - Use memory struct for gas efficiency
    uint256 currentPostId = postCount;
    uint256 timestamp = block.timestamp;

    // Create post in memory first, then assign to storage
    BrokerPost memory newPost = BrokerPost({
      id: currentPostId,
      authorProfileId: authorProfileId,
      createdAt: uint32(timestamp),
      level: level,
      title: title,
      description: description,
      price: price,
      metadata: metadata
    });

    posts[currentPostId] = newPost;
    postIdsByAuthor[authorProfileId].push(currentPostId);

    emit PostCreated(
      currentPostId,
      authorProfileId,
      level,
      title,
      description,
      price,
      metadata,
      timestamp
    );

    // Use unchecked arithmetic as postCount overflow is practically impossible
    // (would require 2^256-1 posts, which is infeasible)
    unchecked {
      ++postCount;
    }
  }

  /**
   * @notice Creates a new premium broker post using EIP-2612 permit for token approval.
   * @param title The title of the post.
   * @param description The description of the post.
   * @param price The price specified in the post (as plain text).
   * @param metadata Additional metadata associated with the post (includes post type).
   * @param paymentToken The ERC20 token contract address for payment.
   * @param deadline The permit deadline timestamp.
   * @param v The recovery byte of the permit signature.
   * @param r Half of the ECDSA signature pair.
   * @param s Half of the ECDSA signature pair.
   */
  function createPremiumPostWithPermit(
    string calldata title,
    string calldata description,
    string calldata price,
    string calldata metadata,
    address paymentToken,
    uint256 deadline,
    uint8 v,
    bytes32 r,
    bytes32 s
  ) external whenNotPaused nonReentrant {
    // 1. Profile Validation - cache profile contract call
    uint256 authorProfileId = _getAndValidateProfileId();

    // 2. Handle permit payment
    _handlePremiumPaymentWithPermit(authorProfileId, paymentToken, postCount, deadline, v, r, s);

    // 3. Create and store the post
    _createAndStorePost(
      authorProfileId,
      BrokerPostLevel.PREMIUM,
      title,
      description,
      price,
      metadata
    );
  }

  /**
   * @notice Updates an existing broker post. Only callable by the post author.
   * @param postId The ID of the post to update.
   * @param title The new title of the post. Pass empty string to leave unchanged.
   * @param description The new description of the post. Pass empty string to leave unchanged.
   * @param price The new price of the post (as plain text). Pass empty string to leave unchanged.
   * @param metadata The new metadata of the post. Pass empty string to leave unchanged.
   */
  function updatePost(
    uint256 postId,
    string calldata title,
    string calldata description,
    string calldata price,
    string calldata metadata
  ) external whenNotPaused {
    // 1. Post Existence Validation
    BrokerPost storage post = posts[postId];
    if (post.id == 0) {
      revert PostNotFound(postId);
    }

    // 2. Author Authorization - cache profile contract call
    uint256 callerProfileId = _getAndValidateProfileId();
    if (callerProfileId != post.authorProfileId) {
      revert UnauthorizedPostEdit(postId, post.authorProfileId);
    }

    // 3. Update Post Data (cache string lengths for gas efficiency)
    bool updateTitle = bytes(title).length > 0;
    bool updateDescription = bytes(description).length > 0;
    bool updatePrice = bytes(price).length > 0;
    bool updateMetadata = bytes(metadata).length > 0;

    if (updateTitle) {
      post.title = title;
    }
    if (updateDescription) {
      post.description = description;
    }
    if (updatePrice) {
      post.price = price;
    }
    if (updateMetadata) {
      post.metadata = metadata;
    }

    emit PostUpdated(
      postId,
      post.authorProfileId,
      post.title,
      post.description,
      post.price,
      post.metadata,
      block.timestamp
    );
  }

  /**
   * @notice Updates the fee recipient address. Only callable by owner.
   * @param newRecipient The new fee recipient address.
   */
  function setFeeRecipient(
    address newRecipient
  ) external onlyOwner onlyNonZeroAddress(newRecipient) {
    address oldRecipient = feeRecipient;
    feeRecipient = newRecipient;
    emit FeeRecipientUpdated(oldRecipient, newRecipient);
  }

  /**
   * @notice Sets the credit balance for a profile ID and token. Only callable by admin.
   * @param profileId The profile ID to set credit balance for.
   * @param token The ERC20 token contract address.
   * @param amount The new credit balance in token's native units.
   */
  function setCreditBalance(uint256 profileId, address token, uint256 amount) public onlyAdmin {
    _validateProfileId(profileId);

    // Validate token is allowed and not emergency paused (consistent with payment semantics)
    TokenConfig storage cfg = allowedTokens[token];
    if (!cfg.isActive) revert TokenNotAllowed(token);
    if (cfg.emergencyPaused) revert TokenIsEmergencyPaused(token, true);

    uint256 oldBalance = profileTokenCreditBalance[profileId][token];
    profileTokenCreditBalance[profileId][token] = amount;

    emit CreditBalanceUpdated(profileId, token, oldBalance, amount);
  }

  // Token management functions (admin only)
  /**
   * @notice Adds a new token for premium payments. Only callable by admin.
   * @param token The ERC20 token contract address.
   * @param premiumFee The fee amount in token's native units.
   * @dev Validates token contract and fee amount before adding.
   */
  function addAllowedToken(address token, uint256 premiumFee) external onlyAdmin {
    // Validate token contract
    _validateTokenContract(token);

    // Validate fee amount
    _validateFeeAmount(premiumFee);

    // Check if token was previously added (even if inactive)
    if (allowedTokens[token].addedAt > 0) {
      if (allowedTokens[token].isActive) {
        revert TokenNotAllowed(token);
      }
      // Reactivate existing token
      allowedTokens[token].isActive = true;
      allowedTokens[token].premiumFee = premiumFee;
      allowedTokens[token].emergencyPaused = false;
      emit TokenAdded(token, premiumFee, allowedTokens[token].decimals);
      return;
    }

    // Get token decimals and check permit support
    uint8 tokenDecimals = IERC20Metadata(token).decimals();
    bool tokenSupportsPermit = _checkPermitSupport(token);

    // Add to storage
    allowedTokens[token] = TokenConfig({
      premiumFee: premiumFee,
      addedAt: uint32(block.timestamp),
      decimals: tokenDecimals,
      isActive: true,
      emergencyPaused: false,
      supportsPermit: tokenSupportsPermit
    });

    // Add to enumeration
    tokenByIndex[tokenCount] = token;
    ++tokenCount;

    emit TokenAdded(token, premiumFee, tokenDecimals);
  }

  /**
   * @notice Removes a token from allowed payments. Only callable by admin.
   * @param token The token contract address to remove.
   */
  function removeAllowedToken(address token) external onlyAdmin {
    if (!allowedTokens[token].isActive) {
      revert TokenNotAllowed(token);
    }

    // Mark as inactive
    allowedTokens[token].isActive = false;

    // Note: We don't remove from tokenByIndex for gas efficiency
    // The enumeration will include inactive tokens, but they're filtered out

    emit TokenRemoved(token);
  }

  /**
   * @notice Emergency pause/unpause a specific token. Only callable by admin.
   * @param token The token contract address.
   * @param shouldPause Whether to pause (true) or unpause (false) the token.
   */
  function emergencyPauseToken(address token, bool shouldPause) external onlyAdmin {
    if (!allowedTokens[token].isActive) {
      revert TokenNotAllowed(token);
    }

    allowedTokens[token].emergencyPaused = shouldPause;
    emit TokenEmergencyPaused(token, shouldPause);
  }

  /**
   * @notice Updates the premium fee for a token. Only callable by admin.
   * @param token The token contract address.
   * @param newFee The new fee amount in token's native units.
   */
  function updateTokenFee(address token, uint256 newFee) external onlyAdmin {
    if (!allowedTokens[token].isActive) {
      revert TokenNotAllowed(token);
    }

    _validateFeeAmount(newFee);

    uint256 oldFee = allowedTokens[token].premiumFee;
    allowedTokens[token].premiumFee = newFee;

    emit PremiumPostFeeUpdated(token, oldFee, newFee);
  }

  /**
   * @notice Sets the credit balance for a profile ID and token. Only callable by admin.
   * @dev This function is a convenience wrapper around setCreditBalance for backward compatibility.
   * @param profileId The profile ID to set credit balance for.
   * @param token The token contract address.
   * @param amount The new credit balance in token's native units.
   */
  function setTokenCreditBalance(
    uint256 profileId,
    address token,
    uint256 amount
  ) public onlyAdmin {
    setCreditBalance(profileId, token, amount);
  }

  /**
   * @notice Batch sets credit balances for multiple profile-token pairs. Only callable by admin.
   * @param profileIds Array of profile IDs.
   * @param tokens Array of token addresses.
   * @param amounts Array of credit amounts.
   * @dev All arrays must have the same length. Gas optimized for multiple updates.
   */
  function batchSetTokenCreditBalances(
    uint256[] calldata profileIds,
    address[] calldata tokens,
    uint256[] calldata amounts
  ) external onlyAdmin {
    uint256 length = profileIds.length;

    // Validate array lengths match
    if (length != tokens.length || length != amounts.length) {
      revert IndexOutOfBounds(length, tokens.length);
    }

    // Process all updates in a single transaction
    for (uint256 i = 0; i < length; ) {
      setTokenCreditBalance(profileIds[i], tokens[i], amounts[i]);

      unchecked {
        ++i;
      }
    }
  }

  /**
   * @notice Batch sets the same credit balance for multiple profile IDs with a single token. Only callable by admin.
   * @param profileIds Array of profile IDs to set credit balance for.
   * @param token The ERC20 token contract address.
   * @param amount The credit balance amount in token's native units to set for all profiles. Can be zero to clear balances.
   * @dev Gas optimized for setting the same token/amount for multiple profiles.
   *      Validates token once and reuses validation for all profiles.
   *
   *      GAS ANALYSIS (observed on Base Sepolia):
   *      - 50 profiles:  ~1.36M gas (~27k per profile)
   *      - 100 profiles: ~2.68M gas (~26.8k per profile)
   *      - 200 profiles: ~3.33M gas (~16.7k per profile)
   *
   *      NOTE: Maximum batch size depends on network gas limits and other
   *      transaction parameters. Figures above are indicative, not guarantees.
   *
   *      Gas efficiency improves with larger batches due to fixed overhead costs.
   *      Recommended batch size: 200-500 profiles where network limits allow.
   */
  function batchSetCreditBalance(
    uint256[] calldata profileIds,
    address token,
    uint256 amount
  ) external onlyAdmin {
    uint256 length = profileIds.length;

    // Validate array is not empty
    if (length == 0) {
      revert EmptyArrayNotAllowed();
    }

    // Validate token once for gas efficiency (and ensure not emergency paused)
    TokenConfig storage cfg = allowedTokens[token];
    if (!cfg.isActive) revert TokenNotAllowed(token);
    if (cfg.emergencyPaused) revert TokenIsEmergencyPaused(token, true);

    // Process all profile updates in a single transaction
    for (uint256 i = 0; i < length; ) {
      uint256 profileId = profileIds[i];

      // Validate profile ID
      _validateProfileId(profileId);

      // Get old balance and update
      uint256 oldBalance = profileTokenCreditBalance[profileId][token];
      profileTokenCreditBalance[profileId][token] = amount;

      // Emit event for each update
      emit CreditBalanceUpdated(profileId, token, oldBalance, amount);

      unchecked {
        ++i;
      }
    }
  }

  // Public view functions for fee and balance retrieval
  /**
   * @notice Gets the premium fee for a specific token
   * @param token The token contract address
   * @return The fee amount in token's native units
   */
  function getTokenFee(address token) external view returns (uint256) {
    if (!allowedTokens[token].isActive) {
      revert TokenNotAllowed(token);
    }
    return allowedTokens[token].premiumFee;
  }

  /**
   * @notice Gets the token credit balance for a profile and token
   * @param profileId The profile ID
   * @param token The token contract address
   * @return The credit balance in token's native units
   */
  function getTokenCreditBalance(uint256 profileId, address token) external view returns (uint256) {
    return profileTokenCreditBalance[profileId][token];
  }

  /**
   * @notice Gets the token configuration for a specific token
   * @param token The token contract address
   * @return premiumFee The fee amount in token's native units
   * @return addedAt Block timestamp when token was added
   * @return decimals Token decimals
   * @return isActive Whether token is active
   * @return emergencyPaused Whether token is emergency paused
   * @return hasPermitSupport Whether token supports EIP-2612 permit
   */
  function getTokenConfig(
    address token
  )
    external
    view
    returns (
      uint256 premiumFee,
      uint32 addedAt,
      uint8 decimals,
      bool isActive,
      bool emergencyPaused,
      bool hasPermitSupport
    )
  {
    TokenConfig memory config = allowedTokens[token];
    return (
      config.premiumFee,
      config.addedAt,
      config.decimals,
      config.isActive,
      config.emergencyPaused,
      config.supportsPermit
    );
  }

  /**
   * @notice Validates if a token address is safe for use
   * @param token The token address to check
   * @return isSafe Whether the token is safe for use
   * @return reason If not safe, the reason why
   * @dev Gas optimized with cached interface and batched validation
   */
  function validateTokenSafety(
    address token
  ) external view returns (bool isSafe, string memory reason) {
    if (token == address(0)) {
      return (false, "Zero address");
    }

    if (token.code.length == 0) {
      return (false, "No contract code");
    }

    // Cache token interface to reduce external calls
    IERC20Metadata tokenContract = IERC20Metadata(token);

    // Validate decimals (most critical)
    try tokenContract.decimals() returns (uint8 decimals) {
      if (decimals == 0 || decimals > 18) {
        return (false, "Invalid decimals");
      }
    } catch {
      return (false, "Decimals function failed");
    }

    // Batch remaining validations for gas optimization
    bool hasSymbol;
    bool hasName;
    bool hasBalanceOf;

    try tokenContract.symbol() returns (string memory) {
      hasSymbol = true;
    } catch {
      hasSymbol = false;
    }

    try tokenContract.name() returns (string memory) {
      hasName = true;
    } catch {
      hasName = false;
    }

    try tokenContract.balanceOf(address(this)) returns (uint256) {
      hasBalanceOf = true;
    } catch {
      hasBalanceOf = false;
    }

    if (!hasSymbol) return (false, "Symbol function failed");
    if (!hasName) return (false, "Name function failed");
    if (!hasBalanceOf) return (false, "BalanceOf function failed");

    return (true, "Token is safe");
  }

  /**
   * @notice Gets all active token addresses and their configurations
   * @return tokens Array of active token addresses
   * @return premiumFees Array of premium fees
   * @return decimals Array of token decimals
   * @return emergencyPaused Array of emergency pause statuses
   * @dev Gas optimized - returns only active tokens, no enumeration issues
   */
  function getActiveTokens()
    external
    view
    returns (
      address[] memory tokens,
      uint256[] memory premiumFees,
      uint8[] memory decimals,
      bool[] memory emergencyPaused
    )
  {
    // Cache token count to avoid repeated storage reads
    uint256 totalTokens = tokenCount;

    // Count and populate token arrays
    (tokens, premiumFees, decimals, emergencyPaused) = _getActiveTokenArrays(totalTokens);
  }

  /**
   * @notice Internal function to count and populate active token arrays
   * @param totalTokens Total number of tokens in the enumeration
   * @return tokens Array of active token addresses
   * @return premiumFees Array of premium fees
   * @return decimals Array of token decimals
   * @return emergencyPaused Array of emergency pause statuses
   */
  function _getActiveTokenArrays(
    uint256 totalTokens
  )
    internal
    view
    returns (
      address[] memory tokens,
      uint256[] memory premiumFees,
      uint8[] memory decimals,
      bool[] memory emergencyPaused
    )
  {
    // Count active tokens and initialize arrays
    uint256 activeCount = _countActiveTokens(totalTokens);
    (tokens, premiumFees, decimals, emergencyPaused) = _initializeTokenArrays(activeCount);

    // Populate arrays with active token data
    _populateTokenArrays(totalTokens, tokens, premiumFees, decimals, emergencyPaused);
  }

  /**
   * @notice Counts the number of active tokens
   * @param totalTokens Total number of tokens to check
   * @return activeCount Number of active tokens
   */
  function _countActiveTokens(uint256 totalTokens) internal view returns (uint256 activeCount) {
    for (uint256 i = 0; i < totalTokens; ) {
      address token = tokenByIndex[i];
      if (token != address(0) && allowedTokens[token].isActive) {
        unchecked {
          ++activeCount;
        }
      }
      unchecked {
        ++i;
      }
    }
  }

  /**
   * @notice Initializes token arrays with the correct size
   * @param activeCount Number of active tokens
   * @return tokens Empty array for token addresses
   * @return premiumFees Empty array for premium fees
   * @return decimals Empty array for token decimals
   * @return emergencyPaused Empty array for emergency pause status
   */
  function _initializeTokenArrays(
    uint256 activeCount
  )
    internal
    pure
    returns (
      address[] memory tokens,
      uint256[] memory premiumFees,
      uint8[] memory decimals,
      bool[] memory emergencyPaused
    )
  {
    tokens = new address[](activeCount);
    premiumFees = new uint256[](activeCount);
    decimals = new uint8[](activeCount);
    emergencyPaused = new bool[](activeCount);
  }

  /**
   * @notice Populates token arrays with active token data
   * @param totalTokens Total number of tokens to check
   * @param tokens Array to populate with token addresses
   * @param premiumFees Array to populate with premium fees
   * @param decimals Array to populate with token decimals
   * @param emergencyPaused Array to populate with emergency pause status
   */
  function _populateTokenArrays(
    uint256 totalTokens,
    address[] memory tokens,
    uint256[] memory premiumFees,
    uint8[] memory decimals,
    bool[] memory emergencyPaused
  ) internal view {
    uint256 activeIndex = 0;
    for (uint256 i = 0; i < totalTokens; ) {
      address token = tokenByIndex[i];
      if (token != address(0) && allowedTokens[token].isActive) {
        TokenConfig memory config = allowedTokens[token];
        tokens[activeIndex] = token;
        premiumFees[activeIndex] = config.premiumFee;
        decimals[activeIndex] = config.decimals;
        emergencyPaused[activeIndex] = config.emergencyPaused;

        unchecked {
          ++activeIndex;
        }
      }
      unchecked {
        ++i;
      }
    }
  }

  /**
   * @notice Gets all post IDs authored by a specific profile.
   * @param profileId The profile ID of the author.
   * @return Array of post IDs.
   */
  function getPostIdsByAuthor(uint256 profileId) external view returns (uint256[] memory) {
    return postIdsByAuthor[profileId];
  }

  /**
   * @notice Gets the total number of posts created.
   * @return The total post count.
   */
  function getTotalPostCount() external view returns (uint256) {
    return postCount - 1; // Subtract 1 because postCount starts at 1
  }

  /**
   * @notice Restricts upgrading to owner
   * @param newImplementation Address of new implementation contract
   */
  function _authorizeUpgrade(
    address newImplementation
  ) internal override onlyOwner onlyNonZeroAddress(newImplementation) {
    // Intentionally left blank to ensure onlyOwner and zeroCheck modifiers run
  }

  /**
   * @notice Internal function to get the EthosProfile contract
   * @dev Internal function to get the EthosProfile contract
   * @return IEthosProfile The EthosProfile contract interface
   */
  function _ethosProfile() internal view returns (IEthosProfile) {
    return IEthosProfile(contractAddressManager.getContractAddressForName(ETHOS_PROFILE));
  }

  /**
   * @notice Gets and validates the profile ID for the current sender
   * @return The validated profile ID
   */
  function _getAndValidateProfileId() internal view returns (uint256) {
    uint256 profileId = _ethosProfile().verifiedProfileIdForAddress(msg.sender);
    if (profileId == 0) {
      revert NoEthosProfile();
    }
    return profileId;
  }

  // Token validation functions
  /**
   * @notice Validates an ERC20 token contract for use in premium payments
   * @param token The token contract address to validate
   * @dev Performs comprehensive ERC20 compliance and security checks with optimized external calls
   */
  function _validateTokenContract(address token) internal view {
    // Basic validations
    _validateTokenAddress(token);
    _validateTokenInterface(token);
  }

  /**
   * @notice Validates token address is not zero and has code
   * @param token The token address to validate
   */
  function _validateTokenAddress(address token) internal view {
    if (token == address(0)) {
      revert InvalidTokenContract(token);
    }
    if (token.code.length == 0) {
      revert InvalidTokenContract(token);
    }
  }

  /**
   * @notice Validates token implements required ERC20 interfaces
   * @param token The token address to validate
   */
  function _validateTokenInterface(address token) internal view {
    // Cache token interface to reduce external calls
    IERC20Metadata tokenContract = IERC20Metadata(token);

    // Validate ERC20 compliance - decimals (most critical for fee calculations)
    uint8 decimals;
    try tokenContract.decimals() returns (uint8 _decimals) {
      decimals = _decimals;
      if (decimals == 0 || decimals > 18) {
        revert InvalidTokenDecimals(decimals);
      }
    } catch {
      revert TokenValidationFailed(token, "decimals");
    }

    // Batch validation of ERC20 functions to reduce external calls
    // Use try-catch for safer validation instead of assembly
    try tokenContract.symbol() returns (string memory) {
      // Symbol call succeeded
    } catch {
      revert TokenValidationFailed(token, "symbol");
    }

    try tokenContract.name() returns (string memory) {
      // Name call succeeded
    } catch {
      revert TokenValidationFailed(token, "name");
    }

    try tokenContract.balanceOf(address(this)) returns (uint256) {
      // BalanceOf call succeeded
    } catch {
      revert TokenValidationFailed(token, "balanceOf");
    }
  }

  /**
   * @notice Checks if a token is allowed and not emergency paused
   * @param token The token address to check
   * @return True if token is allowed and active
   */
  function _isTokenAllowedAndActive(address token) internal view returns (bool) {
    TokenConfig memory config = allowedTokens[token];
    return config.isActive && !config.emergencyPaused;
  }

  /**
   * @notice Validates token for payment and returns configuration
   * @param token The token address to validate
   * @return Token configuration if valid
   */
  function _validateTokenForPayment(address token) internal view returns (TokenConfig memory) {
    if (!_isTokenAllowedAndActive(token)) {
      if (!allowedTokens[token].isActive) {
        revert TokenNotAllowed(token);
      } else {
        revert TokenIsEmergencyPaused(token, true);
      }
    }

    return allowedTokens[token];
  }

  /**
   * @notice Checks if a token supports EIP-2612 permit functionality
   * @param token The token address to check
   * @return True if token supports permit
   */
  function supportsPermit(address token) external view returns (bool) {
    return _checkPermitSupport(token);
  }

  /**
   * @notice Internal function to check permit support during token validation
   * @param token The token address to check
   * @return True if token supports permit
   */
  function _checkPermitSupport(address token) internal view returns (bool) {
    try IERC20Permit(token).DOMAIN_SEPARATOR() returns (bytes32) {
      return true;
    } catch {
      return false;
    }
  }

  // Security validation functions
  /**
   * @notice Validates that an amount is not zero
   * @param amount The amount to validate
   */
  function _validateNonZeroAmount(uint256 amount) internal pure {
    if (amount == 0) {
      revert ZeroAmountNotAllowed();
    }
  }

  /**
   * @notice Validates that a fee amount is acceptable
   * @param fee The fee amount to validate
   */
  function _validateFeeAmount(uint256 fee) internal pure {
    _validateNonZeroAmount(fee);
  }

  /**
   * @notice Validates array index bounds
   * @param index The index to validate
   * @param length The array length
   */
  function _validateArrayIndex(uint256 index, uint256 length) internal pure {
    // solhint-disable-next-line gas-strict-inequalities
    if (index >= length) {
      revert IndexOutOfBounds(index, length);
    }
  }

  /**
   * @notice Validates profile ID
   * @param profileId The profile ID to validate
   */
  function _validateProfileId(uint256 profileId) internal pure {
    if (profileId == 0) {
      revert InvalidProfileId();
    }
  }

  /**
   * @notice Handles ERC20 token payment for premium posts
   * @param authorProfileId The profile ID of the post author
   * @param paymentToken The ERC20 token contract address
   * @param postId The post ID being created
   */
  function _handleTokenPayment(
    uint256 authorProfileId,
    address paymentToken,
    uint256 postId
  ) internal {
    // Validate token and get configuration
    TokenConfig memory tokenConfig = _validateTokenForPayment(paymentToken);
    uint256 fee = tokenConfig.premiumFee;

    // Check for ETH being sent with token payment
    if (msg.value > 0) {
      revert EthNotAllowedWithTokenPayment();
    }

    mapping(address => uint256) storage userTokenCredits = profileTokenCreditBalance[
      authorProfileId
    ];
    uint256 userCreditBalance = userTokenCredits[paymentToken];

    if (userCreditBalance > 0) {
      // Use available credit (partial or full)
      // solhint-disable-next-line gas-strict-inequalities
      uint256 creditToUse = userCreditBalance >= fee ? fee : userCreditBalance;

      // Safe arithmetic: creditToUse <= fee
      uint256 requiredPayment;
      unchecked {
        requiredPayment = fee - creditToUse;
      }

      // Transfer required payment from user to recipient
      if (requiredPayment > 0) {
        _transferTokenFromUser(paymentToken, requiredPayment);
        _payTokenFeeToRecipient(paymentToken, requiredPayment, postId);
      }

      // Safe arithmetic: creditToUse <= userCreditBalance
      uint256 newCreditBalance;
      unchecked {
        newCreditBalance = userCreditBalance - creditToUse;
      }
      userTokenCredits[paymentToken] = newCreditBalance; // Use cached reference

      // Emit credit used event
      emit CreditUsed(authorProfileId, paymentToken, postId, creditToUse, newCreditBalance);
    } else {
      // No credit available - require full payment
      _transferTokenFromUser(paymentToken, fee);
      _payTokenFeeToRecipient(paymentToken, fee, postId);
    }
  }

  /**
   * @notice Handles premium payment for post creation using EIP-2612 permit
   * @param authorProfileId The profile ID of the post author
   * @param paymentToken The ERC20 token contract address
   * @param postId The post ID being created
   * @param deadline The permit deadline timestamp
   * @param v The recovery byte of the permit signature
   * @param r Half of the ECDSA signature pair
   * @param s Half of the ECDSA signature pair
   */
  function _handlePremiumPaymentWithPermit(
    uint256 authorProfileId,
    address paymentToken,
    uint256 postId,
    uint256 deadline,
    uint8 v,
    bytes32 r,
    bytes32 s
  ) internal {
    // Validate token and get configuration
    TokenConfig memory tokenConfig = _validateTokenForPayment(paymentToken);
    _validatePermitPayment(paymentToken, deadline, tokenConfig);

    uint256 fee = tokenConfig.premiumFee;
    uint256 userCreditBalance = profileTokenCreditBalance[authorProfileId][paymentToken];

    if (userCreditBalance > 0) {
      _handleTokenPaymentWithCreditAndPermit(
        authorProfileId,
        paymentToken,
        postId,
        fee,
        userCreditBalance,
        deadline,
        v,
        r,
        s
      );
    } else {
      // No credit available - require full payment using permit
      _transferTokenFromUserWithPermit(paymentToken, fee, deadline, v, r, s);
      _payTokenFeeToRecipient(paymentToken, fee, postId);
    }
  }

  /**
   * @notice Validates permit payment prerequisites
   * @param paymentToken The token address
   * @param deadline The permit deadline
   * @param tokenConfig The token configuration
   */
  function _validatePermitPayment(
    address paymentToken,
    uint256 deadline,
    TokenConfig memory tokenConfig
  ) internal view {
    // Check for ETH being sent with token payment
    if (msg.value > 0) {
      revert EthNotAllowedWithTokenPayment();
    }

    // Validate permit deadline
    if (deadline < block.timestamp) {
      revert PermitExpired(deadline);
    }

    // Check if token supports permit
    if (!tokenConfig.supportsPermit) {
      revert PermitFailed(paymentToken, "Token does not support permit");
    }
  }

  /**
   * @notice Handles token payment with credit and permit
   * @param authorProfileId The profile ID of the post author
   * @param paymentToken The token address
   * @param postId The post ID
   * @param fee The fee amount
   * @param userCreditBalance The user's credit balance
   * @param deadline The permit deadline
   * @param v The permit signature v
   * @param r The permit signature r
   * @param s The permit signature s
   */
  function _handleTokenPaymentWithCreditAndPermit(
    uint256 authorProfileId,
    address paymentToken,
    uint256 postId,
    uint256 fee,
    uint256 userCreditBalance,
    uint256 deadline,
    uint8 v,
    bytes32 r,
    bytes32 s
  ) internal {
    // Use available credit (partial or full)
    // solhint-disable-next-line gas-strict-inequalities
    uint256 creditToUse = userCreditBalance >= fee ? fee : userCreditBalance;

    // Safe arithmetic: creditToUse <= fee
    uint256 requiredPayment;
    unchecked {
      requiredPayment = fee - creditToUse;
    }

    // Transfer required payment from user to recipient using permit
    if (requiredPayment > 0) {
      _transferTokenFromUserWithPermit(paymentToken, requiredPayment, deadline, v, r, s);
      _payTokenFeeToRecipient(paymentToken, requiredPayment, postId);
    }

    // Safe arithmetic: creditToUse <= userCreditBalance
    uint256 newCreditBalance;
    unchecked {
      newCreditBalance = userCreditBalance - creditToUse;
    }
    profileTokenCreditBalance[authorProfileId][paymentToken] = newCreditBalance;

    // Emit credit used event
    emit CreditUsed(authorProfileId, paymentToken, postId, creditToUse, newCreditBalance);
  }

  /**
   * @notice Transfers tokens from user to contract using EIP-2612 permit
   * @param token The ERC20 token contract address
   * @param amount The amount to transfer
   * @param deadline The permit deadline timestamp
   * @param v The recovery byte of the permit signature
   * @param r Half of the ECDSA signature pair
   * @param s Half of the ECDSA signature pair
   */
  function _transferTokenFromUserWithPermit(
    address token,
    uint256 amount,
    uint256 deadline,
    uint8 v,
    bytes32 r,
    bytes32 s
  ) internal {
    // Execute permit to approve tokens
    try IERC20Permit(token).permit(msg.sender, address(this), amount, deadline, v, r, s) {
      // Permit successful, now transfer tokens using SafeERC20
      _safeTransferFrom(token, msg.sender, address(this), amount);
    } catch {
      // Handle permit failure gracefully - try transferFrom anyway
      // This handles cases where permit was already used or frontrun
      _safeTransferFrom(token, msg.sender, address(this), amount);
    }
  }

  /**
   * @notice Safely transfers tokens from sender to recipient
   * @param token The ERC20 token contract address
   * @param from The sender address
   * @param to The recipient address
   * @param amount The amount to transfer
   */
  function _safeTransferFrom(address token, address from, address to, uint256 amount) internal {
    SafeERC20.safeTransferFrom(IERC20(token), from, to, amount);
  }

  /**
   * @notice Safely transfers tokens to recipient
   * @param token The ERC20 token contract address
   * @param to The recipient address
   * @param amount The amount to transfer
   */
  function _safeTransfer(address token, address to, uint256 amount) internal {
    SafeERC20.safeTransfer(IERC20(token), to, amount);
  }

  /**
   * @notice Transfers tokens from user to contract using safe transfer
   * @param token The ERC20 token contract address
   * @param amount The amount to transfer
   */
  function _transferTokenFromUser(address token, uint256 amount) internal {
    _safeTransferFrom(token, msg.sender, address(this), amount);
  }

  /**
   * @notice Pays token fee to the fee recipient
   * @param token The ERC20 token contract address
   * @param amount The amount to pay
   * @param postId The post ID for event emission
   */
  function _payTokenFeeToRecipient(address token, uint256 amount, uint256 postId) internal {
    _safeTransfer(token, feeRecipient, amount);

    emit PremiumPostFeePaid(postId, token, amount, feeRecipient);
  }

  // ITargetStatus implementation
  /**
   * @notice Checks if a target (broker post) exists and is allowed for interaction.
   * @dev Implements the ITargetStatus interface.
   * @param _targetId The ID of the post to check.
   * @return exists True if a post with the given ID exists, false otherwise.
   * @return allowed True if the post exists and meets the criteria for interaction, false otherwise.
   */
  function targetExistsAndAllowedForId(
    uint256 _targetId
  ) external view override returns (bool exists, bool allowed) {
    exists = posts[_targetId].id != 0;
    allowed = exists;
  }
}
