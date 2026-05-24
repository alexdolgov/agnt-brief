// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import { AccessControl } from "./utils/AccessControl.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { Address } from "@openzeppelin/contracts/utils/Address.sol";
import { IAccessControl } from "@openzeppelin/contracts/access/IAccessControl.sol";

/**
 * @title ReverseAuction
 * @notice Implements reverse Dutch auctions for NFTs where price decreases over time
 * @dev Supports both one-time and recurring auctions with lazy execution pattern
 *
 * Key Features:
 * - Price starts high and decreases linearly to reserve price
 * - Mints new NFTs to buyers instead of transferring existing ones
 * - Stores multiple individual auctions but only one can be active at a time
 * - Scheduled and recurring auctions without upfront gas costs
 * - Direct payment transfers (contract holds no ETH)
 * - ERC-20 token payments supported via allowlist
 * - Admin controls for auction management
 *
 * Design Philosophy:
 * - Auction: Contains all auction configuration and is updated when NFTs are purchased
 * - Each occurrence gets its own pre-created Auction instance
 * - NFTs are minted on-demand when purchases occur
 * - Buyers trigger auction execution when participating
 * - Supports both one-time and recurring auctions through same config structure
 *
 * Access Control Roles:
 * - Owner: Can upgrade contract, set default payment address
 * - Admin: Can create and cancel auctions, update auction settings
 * - Public: Can buy NFTs from active auctions
 * Note: Pause/unpause is controlled externally via InteractionControl contract
 */
contract ReverseAuction is AccessControl, UUPSUpgradeable, ReentrancyGuard {
  /**
   * @dev Constructor that disables initializers for security
   */
  constructor() {
    _disableInitializers();
  }

  // --- Structs ---

  /**
   * @notice NFT configuration for auction creation
   */
  struct NFTConfig {
    address nftContract;
    uint256 nftTokenId;
    string tokenURI;
  }

  /**
   * @notice Pricing configuration for auction creation
   */
  struct PricingConfig {
    uint256 startPrice;
    uint256 reservePrice;
    uint256 duration;
  }

  /**
   * @notice Timing configuration for auction creation
   */
  struct TimingConfig {
    uint256 startTime;
    uint256 interval;
    uint256 occurrences;
  }

  /**
   * @notice Payment configuration for auction creation
   */
  struct PaymentConfig {
    address paymentRecipient;
    address paymentToken;
  }

  /**
   * @notice NFT details for an auction
   */
  struct NFTDetails {
    /// @notice NFT collection contract
    address nftContract;
    /// @notice Token ID that will be minted for this auction occurrence
    uint256 nftTokenId;
    /// @notice Metadata URI that will be stored for the minted token
    string tokenURI;
  }

  enum AuctionStatus {
    Disabled,
    Enabled,
    Sold
  }

  /**
   * @notice Auction instance with configuration and sale data
   * @dev Pre-created with all config data, updated when NFT is purchased
   */
  struct Auction {
    // Auction identity
    uint256 auctionId;
    AuctionStatus status;
    // NFT details
    NFTDetails nftDetails;
    // Pricing configuration
    uint256 startPrice;
    uint256 reservePrice;
    uint256 duration;
    uint256 startTime;
    // Payment configuration
    address paymentRecipient;
    address paymentToken;
    // Sale data (updated when sold)
    address buyer;
    uint256 pricePaid;
    uint256 soldTime;
  }

  // --- State Variables ---

  /// @notice Counter for auction instances
  uint256 public auctionCount;

  /// @notice Default payment address if not specified in config
  address public defaultPaymentAddress;

  /// @notice Minimum price allowed for any auction
  uint256 public constant MINIMUM_RESERVE_PRICE = 0.001 ether;

  /// @notice Minimum duration for price decrease
  uint256 public constant MINIMUM_DURATION = 1 minutes;

  bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

  // --- Mappings ---

  /// @notice Tracks allowed payment tokens
  mapping(address => bool) public allowedPaymentTokens;

  /// @notice All auction instances
  mapping(uint256 => Auction) public auctions;

  /// @notice Tracks reserved token IDs per NFT contract to prevent duplicate mints
  /// @dev nftContract => tokenId => reserved
  mapping(address => mapping(uint256 => bool)) private tokenIdReserved;

  /// @notice IDs of auctions that are enabled and unsold (pending)
  uint256[] private pendingAuctions;

  /// @notice Mapping of auction ID to its index in `pendingAuctions` plus 1 (0 means not present)
  mapping(uint256 => uint256) private pendingAuctionIndex;

  /// @dev Storage gap for future upgrades. Uses 50 slots to maintain storage layout compatibility.
  uint256[50] private __gap;

  // --- Events ---

  event AuctionCreated(
    uint256 indexed auctionId,
    address indexed creator,
    address indexed nftContract,
    uint256 nftTokenId,
    uint256 startPrice,
    uint256 reservePrice
  );

  event AuctionUpdated(uint256 indexed auctionId, address indexed updatedBy, bool enabled);

  event NFTSold(
    uint256 indexed auctionId,
    address indexed buyer,
    address paymentToken,
    uint256 price,
    uint256 nftTokenId
  );

  event DefaultPaymentAddressUpdated(address indexed oldAddress, address indexed newAddress);

  event PaymentTokenStatusUpdated(address indexed token, bool allowed);

  event ExcessPaymentReturned(address indexed buyer, uint256 amount);

  // --- Errors ---

  error InvalidConfiguration();
  error InvalidPrice();
  error InvalidDuration();
  error InvalidInterval();
  error InvalidOccurrences();
  error AuctionNotEnabled();
  error NotInAuctionWindow();
  error AlreadySold();
  error InsufficientPayment();
  error InvalidNFTContract();
  error InvalidPaymentAddress();
  error NotAuthorizedToMint();
  error NotAllowedToReceive();
  error TokenNotAllowed();
  error NoETHForTokenPayment();
  error TokenIdRangeOverlap();
  error MintFailed();
  error AuctionAlreadyActive();

  /**
   * @notice Initialize the contract
   * @param owner Owner address
   * @param admin Admin address
   * @param expectedSigner Expected signer for signatures
   * @param signatureVerifier Signature verifier contract
   * @param contractAddressManagerAddr Contract address manager
   * @param _defaultPaymentAddress Default payment recipient
   */
  function initialize(
    address owner,
    address admin,
    address expectedSigner,
    address signatureVerifier,
    address contractAddressManagerAddr,
    address _defaultPaymentAddress
  ) external initializer {
    __accessControl_init(
      owner,
      admin,
      expectedSigner,
      signatureVerifier,
      contractAddressManagerAddr
    );
    __UUPSUpgradeable_init();

    if (_defaultPaymentAddress == address(0)) revert InvalidPaymentAddress();
    defaultPaymentAddress = _defaultPaymentAddress;

    // Allow ETH payments by default
    allowedPaymentTokens[address(0)] = true;
  }

  /**
   * @notice Required override for UUPS proxy upgrade authorization
   */
  function _authorizeUpgrade(
    address newImplementation
  ) internal override onlyOwner onlyNonZeroAddress(newImplementation) {
    // Intentionally left blank
  }

  /**
   * @notice Role Permissions Summary:
   *
   * OWNER:
   * - Upgrade the contract implementation (_authorizeUpgrade)
   * - Set the default payment address (setDefaultPaymentAddress)
   * - Recover NFTs from cancelled auctions (recoverNFT)
   * - Grant/revoke any role (inherited from AccessControl)
   *
   * ADMIN:
   * - Create auctions (createAuction)
   * - Toggle auction status enable / disable (setAuctionEnabled, setAuctionsEnabled)
   * - Update contract settings (inherited from AccessControl)
   * - Grant/revoke admin role (via owner)
   *
   * INTERACTION_CONTROL:
   * - Pause/unpause the contract (via InteractionControl contract)
   */

  // --- Auction Creation ---

  /**
   * @notice Create auction instances
   * @param nftConfig NFT configuration
   * @param pricingConfig Pricing configuration
   * @param timingConfig Timing configuration
   * @param paymentConfig Payment configuration
   */
  function createAuction(
    NFTConfig calldata nftConfig,
    PricingConfig calldata pricingConfig,
    TimingConfig calldata timingConfig,
    PaymentConfig calldata paymentConfig
  ) public onlyAdmin whenNotPaused {
    _validateCreationParams(nftConfig, pricingConfig, timingConfig, paymentConfig);
    _ensureNoTimeConflicts(nftConfig, timingConfig, pricingConfig);

    address paymentAddress = paymentConfig.paymentRecipient == address(0)
      ? defaultPaymentAddress
      : paymentConfig.paymentRecipient;

    _validateMintingAndPayment(nftConfig, paymentConfig);
    _reserveTokenIds(nftConfig, timingConfig);
    _createAuctionInstances(
      nftConfig,
      pricingConfig,
      timingConfig,
      paymentAddress,
      paymentConfig.paymentToken
    );
  }

  /**
   * @dev Validate the auction creation parameters and revert on invalid input.
   * @param nftConfig NFT configuration for the auctioned asset
   * @param pricingConfig Pricing configuration (start price, reserve price, duration)
   * @param timingConfig Timing configuration (start time, interval, occurrences)
   * @custom:error InvalidNFTContract If `nftContract` is the zero address
   * @custom:error InvalidPrice If price constraints are violated
   * @custom:error InvalidDuration If `duration` is below `MINIMUM_DURATION`
   * @custom:error InvalidConfiguration If `startTime` is in the past
   * @custom:error InvalidOccurrences If `occurrences` equals zero
   * @custom:error InvalidInterval If `interval` is shorter than `duration` for recurring auctions
   */
  function _validateCreationParams(
    NFTConfig calldata nftConfig,
    PricingConfig calldata pricingConfig,
    TimingConfig calldata timingConfig,
    PaymentConfig calldata /* paymentConfig */
  ) private view {
    if (nftConfig.nftContract == address(0)) revert InvalidNFTContract();
    if (pricingConfig.startPrice <= pricingConfig.reservePrice) revert InvalidPrice();
    if (pricingConfig.reservePrice < MINIMUM_RESERVE_PRICE) revert InvalidPrice();
    if (pricingConfig.duration < MINIMUM_DURATION) revert InvalidDuration();
    if (timingConfig.startTime < block.timestamp) revert InvalidConfiguration();
    if (timingConfig.occurrences == 0) revert InvalidOccurrences();

    // For recurring auctions, validate interval
    if (timingConfig.occurrences > 1 && timingConfig.interval < pricingConfig.duration) {
      revert InvalidInterval();
    }
  }

  /**
   * @dev Ensure the contract has minting rights and the selected payment token is allowed.
   * @param nftConfig NFT configuration struct
   * @param paymentConfig Payment configuration struct
   * @custom:error NotAuthorizedToMint If this contract lacks `MINTER_ROLE` on the NFT collection
   * @custom:error TokenNotAllowed If `paymentToken` is not enabled via `setPaymentTokenAllowed`
   */
  function _validateMintingAndPayment(
    NFTConfig calldata nftConfig,
    PaymentConfig calldata paymentConfig
  ) private view {
    if (!IAccessControl(nftConfig.nftContract).hasRole(MINTER_ROLE, address(this))) {
      revert NotAuthorizedToMint();
    }

    if (!allowedPaymentTokens[paymentConfig.paymentToken]) {
      revert TokenNotAllowed();
    }
  }

  /**
   * @dev Reserve consecutive token IDs to prevent duplicate mints across auction occurrences.
   * @param nftConfig NFT configuration struct
   * @param timingConfig Timing configuration that defines `occurrences`
   * @custom:error TokenIdRangeOverlap If any token ID in the planned range is already reserved
   */
  function _reserveTokenIds(
    NFTConfig calldata nftConfig,
    TimingConfig calldata timingConfig
  ) private {
    mapping(uint256 => bool) storage nftTokenReservations = tokenIdReserved[nftConfig.nftContract];
    for (uint256 i = 0; i < timingConfig.occurrences; ) {
      uint256 tokenIdToReserve = nftConfig.nftTokenId + i;
      if (nftTokenReservations[tokenIdToReserve]) {
        revert TokenIdRangeOverlap();
      }
      nftTokenReservations[tokenIdToReserve] = true;
      unchecked {
        ++i;
      }
    }
  }

  /**
   * @dev Adds an auction to the pending list if it is not already present.
   * @param auctionId The ID of the auction to add to the in-memory pending queue.
   */
  function _addPendingAuction(uint256 auctionId) internal {
    if (pendingAuctionIndex[auctionId] == 0) {
      pendingAuctions.push(auctionId);
      pendingAuctionIndex[auctionId] = pendingAuctions.length; // index + 1
    }
  }

  /**
   * @dev Removes an auction from the pending list.
   *      No-op if the auction is not currently tracked as pending.
   * @param auctionId The ID of the auction to remove.
   */
  function _removePendingAuction(uint256 auctionId) internal {
    uint256 indexPlusOne = pendingAuctionIndex[auctionId];
    if (indexPlusOne == 0) {
      return; // Not present
    }
    uint256 index = indexPlusOne - 1;
    uint256 lastId = pendingAuctions[pendingAuctions.length - 1];

    // Swap and pop
    pendingAuctions[index] = lastId;
    pendingAuctionIndex[lastId] = index + 1;

    pendingAuctions.pop();
    delete pendingAuctionIndex[auctionId];
  }

  /**
   * @dev Create auction instances and emit events
   */
  function _createAuctionInstances(
    NFTConfig calldata nftConfig,
    PricingConfig calldata pricingConfig,
    TimingConfig calldata timingConfig,
    address paymentAddress,
    address paymentToken
  ) private {
    for (uint256 i = 0; i < timingConfig.occurrences; ) {
      uint256 newAuctionId = ++auctionCount;
      uint256 tokenIdForOccurrence = nftConfig.nftTokenId + i;
      uint256 startTimeForOccurrence = timingConfig.startTime + (i * timingConfig.interval);

      _createSingleAuction(
        newAuctionId,
        nftConfig,
        pricingConfig,
        paymentAddress,
        paymentToken,
        tokenIdForOccurrence,
        startTimeForOccurrence
      );

      unchecked {
        ++i;
      }
    }
  }

  /**
   * @dev Create a single auction instance
   */
  function _createSingleAuction(
    uint256 auctionId,
    NFTConfig calldata nftConfig,
    PricingConfig calldata pricingConfig,
    address paymentAddress,
    address paymentToken,
    uint256 tokenId,
    uint256 startTime
  ) private {
    // Create NFT details first
    NFTDetails memory nftDetails = NFTDetails({
      nftContract: nftConfig.nftContract,
      nftTokenId: tokenId,
      tokenURI: nftConfig.tokenURI
    });

    // Create auction
    auctions[auctionId] = Auction({
      auctionId: auctionId,
      status: AuctionStatus.Enabled,
      nftDetails: nftDetails,
      startPrice: pricingConfig.startPrice,
      reservePrice: pricingConfig.reservePrice,
      duration: pricingConfig.duration,
      startTime: startTime,
      paymentRecipient: paymentAddress,
      paymentToken: paymentToken,
      buyer: address(0),
      pricePaid: 0,
      soldTime: 0
    });

    emit AuctionCreated(
      auctionId,
      msg.sender,
      nftConfig.nftContract,
      tokenId,
      pricingConfig.startPrice,
      pricingConfig.reservePrice
    );

    // Track as pending (enabled & unsold)
    _addPendingAuction(auctionId);
  }

  /**
   * @dev Validate that each occurrence of the new auction does not overlap with any existing enabled (unsold) auction.
   * @param timingConfig Timing configuration for the new auction
   * @param pricingConfig Pricing configuration providing `duration`
   * @custom:error AuctionAlreadyActive If any time window overlaps with an existing enabled auction
   */
  function _ensureNoTimeConflicts(
    NFTConfig calldata /* nftConfig */,
    TimingConfig calldata timingConfig,
    PricingConfig calldata pricingConfig
  ) private view {
    // Check each occurrence of the new auction against all existing enabled & unsold auctions
    for (uint256 newOccurrence = 0; newOccurrence < timingConfig.occurrences; newOccurrence++) {
      uint256 newStartTime = timingConfig.startTime + (newOccurrence * timingConfig.interval);
      uint256 newEndTime = newStartTime + pricingConfig.duration;

      // Check against all current pending auctions
      for (uint256 i = 0; i < pendingAuctions.length; i++) {
        uint256 existingId = pendingAuctions[i];
        Auction memory existing = auctions[existingId];

        uint256 existingStartTime = existing.startTime;
        uint256 existingEndTime = existingStartTime + existing.duration;

        // Overlap occurs if: newStartTime < existingEndTime AND newEndTime > existingStartTime
        if (newStartTime < existingEndTime && newEndTime > existingStartTime) {
          revert AuctionAlreadyActive();
        }
      }
    }
  }

  /**
   * @dev Validate that a specific auction's time window doesn't conflict with other enabled auctions.
   * @param auctionId Auction ID to validate
   * @custom:error AuctionAlreadyActive If the auction overlaps with another enabled auction
   */
  function _validateAuctionTimeConflicts(uint256 auctionId) private view {
    Auction memory targetAuction = auctions[auctionId];

    // Skip validation if auction is already sold
    if (targetAuction.status == AuctionStatus.Sold) {
      return;
    }

    uint256 targetStartTime = targetAuction.startTime;
    uint256 targetEndTime = targetStartTime + targetAuction.duration;

    // Check against all other pending auctions
    for (uint256 i = 0; i < pendingAuctions.length; i++) {
      uint256 existingId = pendingAuctions[i];
      if (existingId == auctionId) {
        continue; // Skip self
      }

      Auction memory existing = auctions[existingId];

      uint256 existingStartTime = existing.startTime;
      uint256 existingEndTime = existingStartTime + existing.duration;

      // Check for time window overlap
      if (targetStartTime < existingEndTime && targetEndTime > existingStartTime) {
        revert AuctionAlreadyActive();
      }
    }
  }

  // --- Core Purchase Function ---

  /**
   * @notice Purchase an NFT from an active auction
   * @param auctionId The auction to buy from
   */
  function buy(uint256 auctionId) external payable whenNotPaused nonReentrant {
    Auction storage auction = auctions[auctionId];
    if (auction.status != AuctionStatus.Enabled) revert AuctionNotEnabled();
    if (auction.status == AuctionStatus.Sold) revert AlreadySold();

    // Check if we're in the auction window
    // Allow purchases to continue after the configured duration has elapsed. The price will
    // stay at the reserve price once the duration window is passed.
    if (block.timestamp < auction.startTime) revert NotInAuctionWindow();

    // Calculate current price and update auction record
    uint256 currentPrice = _calculateCurrentPrice(auction);

    // Mark as sold and update auction record
    auction.status = AuctionStatus.Sold;
    auction.buyer = msg.sender;
    auction.pricePaid = currentPrice;
    auction.soldTime = block.timestamp;

    // Remove from pending list now that it is sold
    _removePendingAuction(auctionId);

    // Handle payment and mint NFT
    _processPaymentAndMint(auction, currentPrice);

    emit NFTSold(
      auctionId,
      msg.sender,
      auction.paymentToken,
      currentPrice,
      auction.nftDetails.nftTokenId
    );
  }

  /**
   * @notice Revert on direct ETH transfers to prevent accidental sends
   */
  receive() external payable {
    revert NotAllowedToReceive();
  }

  // --- View Helper Functions ---

  /**
   * @dev Calculate the current price for an auction
   * @param auction The auction to calculate price for
   * @return currentPrice The current price
   */
  function _calculateCurrentPrice(Auction storage auction) internal view returns (uint256) {
    uint256 elapsed = block.timestamp - auction.startTime;
    if (elapsed >= auction.duration) {
      return auction.reservePrice;
    }

    uint256 priceRange = auction.startPrice - auction.reservePrice;
    uint256 priceDrop = (priceRange * elapsed) / auction.duration;
    return auction.startPrice - priceDrop;
  }

  /**
   * @notice Check if an auction is active at a specific timestamp
   * @param auctionId The auction to check
   * @param timestamp Timestamp to check at (0 for current timestamp)
   * @return inWindow Whether the auction is active at the specified timestamp
   */
  function isAuctionActiveAt(
    uint256 auctionId,
    uint256 timestamp
  ) public view returns (bool inWindow) {
    Auction memory auction = auctions[auctionId];
    uint256 currentTime = timestamp == 0 ? block.timestamp : timestamp;

    if (auction.status != AuctionStatus.Enabled) {
      return false;
    }

    // Auction is considered active indefinitely after it starts, until it is sold or
    // explicitly disabled/cancelled. This allows buyers to purchase at the reserve price
    // even after the original duration window has passed.
    return currentTime >= auction.startTime;
  }

  /**
   * @notice Get price for an auction at a specific timestamp
   * @param auctionId The auction to check
   * @param timestamp Timestamp to check at (0 for current timestamp)
   * @return Price at the specified timestamp (0 if not active)
   */
  function getPriceAt(uint256 auctionId, uint256 timestamp) public view returns (uint256) {
    Auction memory auction = auctions[auctionId];
    uint256 currentTime = timestamp == 0 ? block.timestamp : timestamp;

    if (!isAuctionActiveAt(auctionId, timestamp)) {
      return 0;
    }

    uint256 elapsed = currentTime - auction.startTime;
    if (elapsed >= auction.duration) {
      return auction.reservePrice;
    }

    uint256 priceRange = auction.startPrice - auction.reservePrice;
    uint256 priceDrop = (priceRange * elapsed) / auction.duration;

    return auction.startPrice - priceDrop;
  }

  /**
   * @dev Process the buyer's payment (ETH or ERC-20) and mint the NFT. Excess ETH is automatically refunded.
   * @param auction The auction being purchased
   * @param currentPrice The current price calculated for the auction
   * @custom:error InsufficientPayment If `msg.value` is less than `currentPrice` for ETH payments
   * @custom:error NoETHForTokenPayment If ETH is sent alongside an ERC-20 payment
   * @custom:error MintFailed If the NFT mint call reverts
   */
  function _processPaymentAndMint(Auction storage auction, uint256 currentPrice) private {
    if (auction.paymentToken == address(0)) {
      // ETH payment
      if (msg.value < currentPrice) revert InsufficientPayment();

      // Handle excess payment refund
      if (msg.value > currentPrice) {
        uint256 refundAmount = msg.value - currentPrice;
        Address.sendValue(payable(msg.sender), refundAmount);
        emit ExcessPaymentReturned(msg.sender, refundAmount);
      }

      // Mint NFT and transfer payment
      _mintNFT(auction);
      Address.sendValue(payable(auction.paymentRecipient), currentPrice);
    } else {
      // ERC-20 payment
      if (msg.value > 0) revert NoETHForTokenPayment();

      // Transfer tokens and mint NFT
      IERC20(auction.paymentToken).transferFrom(msg.sender, auction.paymentRecipient, currentPrice);
      _mintNFT(auction);
    }
  }

  /**
   * @dev Mint the NFT to the caller using the collection's `safeMint(address,uint256,string)` function.
   *      The target collection MUST implement this exact interface or the call will revert.
   * @param auction The auction being purchased
   * @custom:error MintFailed If the underlying mint transaction fails
   */
  function _mintNFT(Auction storage auction) internal {
    (bool success, bytes memory returnData) = auction.nftDetails.nftContract.call(
      abi.encodeWithSignature(
        "safeMint(address,uint256,string)",
        msg.sender,
        auction.nftDetails.nftTokenId,
        auction.nftDetails.tokenURI
      )
    );

    if (!success) {
      // Forward the revert reason from the NFT contract if provided
      if (returnData.length > 0) {
        assembly {
          let returnDataSize := mload(returnData)
          revert(add(returnData, 32), returnDataSize)
        }
      }
      revert MintFailed();
    }
  }

  // --- Admin Functions ---

  /**
   * @notice Set whether a payment token is allowed
   * @param token The token address (address(0) for ETH)
   * @param allowed Whether the token should be allowed
   */
  function setPaymentTokenAllowed(address token, bool allowed) external onlyAdmin {
    allowedPaymentTokens[token] = allowed;
    emit PaymentTokenStatusUpdated(token, allowed);
  }

  /**
   * @notice Update auction enabled status
   * @param auctionId The auction to update
   * @param enabled New enabled status
   */
  function setAuctionEnabled(uint256 auctionId, bool enabled) external onlyAdmin whenNotPaused {
    uint256[] memory auctionIds = new uint256[](1);
    auctionIds[0] = auctionId;
    setAuctionsEnabled(auctionIds, enabled);
  }

  /**
   * @notice Update enabled status for multiple auctions at once
   * @param auctionIds Array of auction IDs to update
   * @param enabled New enabled status for all auctions
   */
  function setAuctionsEnabled(
    uint256[] memory auctionIds,
    bool enabled
  ) public onlyAdmin whenNotPaused {
    // If enabling auctions, check for time conflicts first
    if (enabled) {
      for (uint256 i = 0; i < auctionIds.length; ) {
        _validateAuctionTimeConflicts(auctionIds[i]);
        unchecked {
          ++i;
        }
      }
    }

    for (uint256 i = 0; i < auctionIds.length; ) {
      if (auctions[auctionIds[i]].status == AuctionStatus.Sold) revert AlreadySold();
      auctions[auctionIds[i]].status = enabled ? AuctionStatus.Enabled : AuctionStatus.Disabled;
      emit AuctionUpdated(auctionIds[i], msg.sender, enabled);

      if (enabled) {
        _addPendingAuction(auctionIds[i]);
      } else {
        _removePendingAuction(auctionIds[i]);
      }

      unchecked {
        ++i;
      }
    }
  }

  /**
   * @notice Update default payment address
   * @param newDefaultPaymentAddress New default recipient
   */
  function setDefaultPaymentAddress(address newDefaultPaymentAddress) external onlyOwner {
    if (newDefaultPaymentAddress == address(0)) revert InvalidPaymentAddress();

    address oldAddress = defaultPaymentAddress;
    defaultPaymentAddress = newDefaultPaymentAddress;

    emit DefaultPaymentAddressUpdated(oldAddress, newDefaultPaymentAddress);
  }
}
