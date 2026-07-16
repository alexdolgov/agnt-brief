// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import {ERC721} from "solady/tokens/ERC721.sol";
import {Ownable} from "solady/auth/Ownable.sol";
import {ReentrancyGuard} from "solady/utils/ReentrancyGuard.sol";
import {SafeTransferLib} from "solady/utils/SafeTransferLib.sol";
import {LibString} from "solady/utils/LibString.sol";
import {Initializable} from "solady/utils/Initializable.sol";
import {UUPSUpgradeable} from "solady/utils/UUPSUpgradeable.sol";

/// @title HeftUpgradable - UUPS-upgradable crowdfunding NFT with gifts, hard-date vesting, caller-chosen id-reuse remint, paid-supply cap, post-vesting transfers, and mint-on-behalf.
/// @author TokenWorks (https://token.works/)
/// @dev Deploy behind an ERC1967 proxy and call `initialize(...)` exactly once.
///      New state added in upgrades MUST be appended after `burnedSlotAvailable` to preserve storage layout.
contract HeftUpgradable is ERC721, Ownable, ReentrancyGuard, Initializable, UUPSUpgradeable {
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                      CONSTANTS                      */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Maximum number of paid mints. Paid token ids occupy [1, MAX_PAID_SUPPLY].
    uint256 public constant MAX_PAID_SUPPLY = 600;
    /// @notice Token ids at or above this offset are gifts. Cleanly separates paid range from gifted range.
    uint256 public constant GIFT_ID_OFFSET = MAX_PAID_SUPPLY + 1;
    /// @notice Hard cap on the total number of live tokens across every mint path
    ///         (paid active + gifts + mintTraditional). Always binds before MAX_PAID_SUPPLY.
    uint256 public constant MAX_TOTAL_SUPPLY = 530;
    /// @notice Protocol fee percentage, sent to owner() on every paid mint.
    /// @dev Carved out of the upfront creator portion (not the locked/vesting portion). Requires
    ///      `initialPayoutPct >= PROTOCOL_FEE_PCT` so payoutAddress always receives a non-negative cut.
    uint256 public constant PROTOCOL_FEE_PCT = 3;

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                CONFIG (set in initialize)           */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Price in ETH required to mint one paid token
    uint256 public mintPrice;
    /// @notice Duration of the minting period in seconds
    uint256 public mintPeriod;
    /// @notice Initial payout percentage taken from mint price for owner (0-99)
    uint256 public initialPayoutPct;
    /// @notice Hard date when vesting ends (Unix timestamp)
    uint256 public vestingEndDate;

    /// @notice Name of the token
    string private tokenName;
    /// @notice Symbol of the token
    string private tokenSymbol;

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                   STATE VARIABLES                   */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Flag indicating if minting is enabled
    bool public mintEnabled;
    /// @notice Timestamp when minting started
    uint256 public mintStartTime;
    /// @notice Current paid token id counter (next id to mint)
    uint256 internal currentTokenId;
    /// @notice Flag indicating if vesting has started
    bool public vestingStarted;
    /// @notice Timestamp when vesting started
    uint256 public vestingStartTime;
    /// @notice Timestamp of the last owner payout
    uint256 public lastOwnerPayoutTime;
    /// @notice Count of burned tokens (total ever burned)
    uint256 public burnedTokenCount;
    /// @notice Count of reminted tokens (total ever reminted)
    uint256 public remintedCount;
    /// @notice Initial amount paid out per token in wei
    uint256 public initialPayoutPerToken;
    /// @notice Initial locked amount per token in wei
    uint256 public initialLockedPerToken;

    /// @notice Total amount paid to the owner (fees + vested funds), already transferred
    uint256 public ownerPaidAmount;

    /// @notice Flag to allow NFT transfers; transfers also auto-allow once vesting completes
    bool public allowTransfers;
    /// @notice Flag to pause minting
    bool public mintPaused;

    /// @notice Shared base URI; tokenURI returns `baseTokenURI + tokenId`
    string private _baseTokenURI;
    /// @notice Contract-level metadata URI
    string private _contractURI;

    /// @notice Next gift token id (starts at GIFT_ID_OFFSET, increments per gift)
    uint256 public nextGiftId;
    /// @notice Total gifts ever minted
    uint256 public giftedCount;
    /// @notice Token id => true if burned and available for caller-chosen remint
    mapping(uint256 => bool) public burnedSlotAvailable;

    /// @notice Operational role with admin privileges (parallel to owner). Set in initialize.
    /// @dev Owner retains exclusive control over upgrades; manager covers day-to-day admin.
    address public manager;
    /// @notice Address that receives the creator's share of mint fees, vested ETH, and remint proceeds.
    /// @dev Defaults to manager at initialize time. Owner-or-manager can rotate it via setPayoutAddress.
    address public payoutAddress;

    /// @notice Count of tokens minted via mintTraditional (paid, non-vesting, gift-range ids).
    uint256 public traditionalMintedCount;

    /// @dev Reserved storage slots for upgrade-safe layout extension. When adding new state in a
    ///      future implementation, append fields ABOVE this gap and decrement the array length by
    ///      the number of slots consumed (e.g. one `uint256` field => `__gap[49]`). Variable-length
    ///      types occupy a single slot (head); their tail storage is computed via keccak so they
    ///      don't disturb sequential layout, but each declared head still consumes one slot.
    uint256[49] private __gap;

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    CUSTOM ERRORS                    */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    error WrongAmount();
    error NotTokenOwner();
    error CannotBurn();
    error InsufficientContractBalance();
    error MintNotEnabled();
    error MintIsPaused();
    error MintPeriodEnded();
    error VestingAlreadyStarted();
    error MintNotComplete();
    error MintAlreadyEnabled();
    error CannotBeZero();
    error NotAllowed();
    error NoSlotsAvailable();
    error CannotRemint();
    error InvalidPayoutPercent();
    error InvalidMintPrice();
    error InvalidDeployer();
    error InvalidManager();
    error InvalidRecipient();
    error NotOwnerOrManager();
    error VestingEndInPast();
    error CannotBurnGift();
    error MintCapReached();

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    CUSTOM EVENTS                    */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    event MintStarted(uint256 startTime, uint256 endTime);
    event TokenMinted(address indexed userAddress, uint256 tokenId);
    event Finalized(uint256 vestingStartTime, uint256 vestingEndTime);
    event Burned(address indexed holder, uint256 tokenId, uint256 refundAmount);
    event TokenURISet(string uri);
    event ContractURISet(string uri);
    event Gifted(address indexed recipient, uint256 tokenId);
    event TraditionalMinted(address indexed buyer, uint256 tokenId);
    event RemintedFromBurnQueue(address indexed minter, uint256 tokenId, uint256 vestedToOwner);
    event PayoutAddressSet(address indexed previous, address indexed current);
    event ManagerSet(address indexed previous, address indexed current);

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                  CONSTRUCTOR / INIT                 */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @dev Locks the implementation contract so it cannot be initialized directly.
    constructor() {
        _disableInitializers();
    }

    /// @notice Initialize the proxy. Must be called exactly once.
    /// @param _mintPrice          Price in ETH required to mint one paid token
    /// @param _mintPeriod         Duration of the minting period in seconds
    /// @param _vestingEndDate     Unix timestamp at which vesting ends. Must be in the future.
    /// @param _initialPayoutPct   Initial payout percentage taken from mint price for owner (0-99)
    /// @param _deployer           Address that becomes the owner (upgrade authority)
    /// @param _manager            Address that gets manager privileges and is the default payout recipient
    /// @param _tokenName          Name of the token
    /// @param _tokenSymbol        Symbol of the token
    function initialize(
        uint256 _mintPrice,
        uint256 _mintPeriod,
        uint256 _vestingEndDate,
        uint256 _initialPayoutPct,
        address _deployer,
        address _manager,
        string memory _tokenName,
        string memory _tokenSymbol
    ) external initializer {
        // Lower bound ensures the protocol fee can be carved out of the upfront portion without underflow.
        if (_initialPayoutPct > 99 || _initialPayoutPct < PROTOCOL_FEE_PCT) revert InvalidPayoutPercent();
        if (_mintPrice == 0) revert InvalidMintPrice();
        if (_deployer == address(0)) revert InvalidDeployer();
        if (_manager == address(0)) revert InvalidManager();
        if (_vestingEndDate <= block.timestamp) revert VestingEndInPast();

        mintPrice = _mintPrice;
        mintPeriod = _mintPeriod;
        initialPayoutPct = _initialPayoutPct;
        vestingEndDate = _vestingEndDate;
        tokenName = _tokenName;
        tokenSymbol = _tokenSymbol;

        currentTokenId = 1;
        nextGiftId = GIFT_ID_OFFSET;

        manager = _manager;
        payoutAddress = _manager;

        _initializeOwner(_deployer);
    }

    /// @dev Required override for Solady's Ownable when used in upgradable contracts;
    ///      prevents accidental re-initialization of the owner slot.
    function _guardInitializeOwner() internal pure override returns (bool) {
        return true;
    }

    /// @dev UUPS authorization: only the owner can upgrade. Manager has no upgrade rights.
    function _authorizeUpgrade(address) internal override onlyOwner {}

    /// @dev Allows either the owner or the manager. Used for all operational admin functions
    ///      (mint lifecycle, metadata, payout config). Upgrades remain owner-only.
    modifier onlyOwnerOrManager() {
        if (msg.sender != owner() && msg.sender != manager) revert NotOwnerOrManager();
        _;
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                       METADATA                      */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    function name() public view override returns (string memory) {
        return tokenName;
    }

    function symbol() public view override returns (string memory) {
        return tokenSymbol;
    }

    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        if (!_exists(tokenId)) revert TokenDoesNotExist();
        if (bytes(_baseTokenURI).length == 0) return "";
        return string.concat(_baseTokenURI, LibString.toString(tokenId));
    }

    function baseTokenURI() external view returns (string memory) {
        return _baseTokenURI;
    }

    function contractURI() external view returns (string memory) {
        return _contractURI;
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    ADMIN FUNCTIONS                  */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Enable minting and start the mint period.
    function enableMint() external onlyOwnerOrManager {
        if (mintEnabled) revert MintAlreadyEnabled();

        mintEnabled = true;
        mintStartTime = block.timestamp;

        initialPayoutPerToken = (mintPrice * initialPayoutPct) / 100;
        initialLockedPerToken = mintPrice - initialPayoutPerToken;

        emit MintStarted(mintStartTime, mintStartTime + mintPeriod);
    }

    /// @notice Finalize the sale and start vesting that ends at vestingEndDate.
    /// @dev Three regimes:
    ///      - In the normal window (mintEnd < now < vestingEndDate): flips vesting flags so the
    ///        locked portion streams to payoutAddress over the remaining window.
    ///      - Late (now >= vestingEndDate): vesting is effectively complete already, so sweeps
    ///        all remaining contract balance (locked ETH + any pre-vesting deposits / dust) to
    ///        payoutAddress in one transfer. Without this, late-finalize would strand the funds.
    ///      The upfront creator portion has already been paid in real time during each mint.
    function finalize() external onlyOwnerOrManager nonReentrant {
        if (block.timestamp <= mintStartTime + mintPeriod) revert MintNotComplete();
        if (vestingStarted) revert VestingAlreadyStarted();
        if (currentTokenId == 1) revert CannotBeZero();

        vestingStarted = true;
        vestingStartTime = block.timestamp;
        lastOwnerPayoutTime = block.timestamp;

        // Late-finalize: vesting was supposed to end already, so sweep everything now.
        if (block.timestamp >= vestingEndDate) {
            uint256 remaining = address(this).balance;
            if (remaining > 0) {
                ownerPaidAmount += remaining;
                SafeTransferLib.forceSafeTransferETH(payoutAddress, remaining);
            }
        }

        emit Finalized(vestingStartTime, vestingEndDate);
    }

    /// @notice Owner-or-manager may trigger payment of newly-vested ETH to the configured payoutAddress.
    function claimOwnerShare() external onlyOwnerOrManager nonReentrant {
        _payOwnerShare();
    }

    /// @notice Update the recipient of the creator's share (initial payout, vested ETH, remint proceeds).
    /// @param newPayoutAddress The new recipient address. Must be non-zero.
    function setPayoutAddress(address newPayoutAddress) external onlyOwnerOrManager {
        if (newPayoutAddress == address(0)) revert InvalidRecipient();
        address previous = payoutAddress;
        payoutAddress = newPayoutAddress;
        emit PayoutAddressSet(previous, newPayoutAddress);
    }

    /// @notice Rotate the manager role. Owner-only — manager cannot self-rotate.
    /// @param newManager The new manager address. Must be non-zero.
    /// @dev Does NOT modify payoutAddress; rotate that separately if desired.
    function setManager(address newManager) external onlyOwner {
        if (newManager == address(0)) revert InvalidManager();
        address previous = manager;
        manager = newManager;
        emit ManagerSet(previous, newManager);
    }

    function setAllowTransfers(bool _allowTransfers) external onlyOwnerOrManager {
        allowTransfers = _allowTransfers;
    }

    function setTokenURI(string calldata uri) external onlyOwnerOrManager {
        _baseTokenURI = uri;
        emit TokenURISet(uri);
    }

    function setContractURI(string calldata uri) external onlyOwnerOrManager {
        _contractURI = uri;
        emit ContractURISet(uri);
    }

    function pauseMint(bool _paused) external onlyOwnerOrManager {
        mintPaused = _paused;
    }

    /// @notice Mint gift tokens to specified recipients (one token per address). Owner-or-manager only.
    /// @dev Gifts have ids >= GIFT_ID_OFFSET, are non-burnable, soulbound, and excluded from vesting math.
    function gift(address[] calldata recipients) external onlyOwnerOrManager {
        uint256 len = recipients.length;
        _requireTotalCap(len);
        for (uint256 i = 0; i < len; i++) {
            uint256 id = nextGiftId++;
            giftedCount++;
            _mint(recipients[i], id);
            emit Gifted(recipients[i], id);
        }
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    USER FUNCTIONS                   */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Public paid mint of gift-style tokens. No vesting, no time gates, ETH forwarded to payoutAddress.
    /// @dev Tokens land in the gift id range (>= GIFT_ID_OFFSET), inheriting gift semantics:
    ///      non-burnable, soulbound until vestingEndDate (or allowTransfers), excluded from vesting math.
    ///      Subject to MAX_TOTAL_SUPPLY across all mint paths.
    function mintTraditional(uint256 quantity)
        external
        payable
        nonReentrant
        returns (uint256[] memory tokenIds)
    {
        if (quantity == 0) revert CannotBeZero();
        if (msg.value != mintPrice * quantity) revert WrongAmount();
        _requireTotalCap(quantity);

        tokenIds = new uint256[](quantity);
        for (uint256 i = 0; i < quantity; i++) {
            uint256 id = nextGiftId++;
            traditionalMintedCount++;
            _mint(msg.sender, id);
            tokenIds[i] = id;
            emit TraditionalMinted(msg.sender, id);
        }

        SafeTransferLib.forceSafeTransferETH(payoutAddress, msg.value);
    }

    /// @notice Mint paid tokens to msg.sender during the mint phase.
    /// @dev Bundles the upfront creator payout into a single transfer after the mint loop.
    function mint(uint256 quantity) external payable nonReentrant returns (uint256[] memory tokenIds) {
        if (quantity == 0) revert CannotBeZero();
        _preMintChecks(msg.value, quantity);
        _requireTotalCap(quantity);

        tokenIds = new uint256[](quantity);
        for (uint256 i = 0; i < quantity; i++) {
            uint256 tokenId = _mintToken(msg.sender);
            tokenIds[i] = tokenId;
            emit TokenMinted(msg.sender, tokenId);
        }

        _payUpfrontFor(quantity);
    }

    /// @notice Mint `quantity` tokens to `recipient`, paid by msg.sender.
    /// @dev Bundles the upfront creator payout into a single transfer after the mint loop,
    ///      mirroring `mint`'s batching semantics.
    function mintOnBehalf(address recipient, uint256 quantity)
        external
        payable
        nonReentrant
        returns (uint256[] memory tokenIds)
    {
        if (recipient == address(0)) revert InvalidRecipient();
        if (quantity == 0) revert CannotBeZero();
        _preMintChecks(msg.value, quantity);
        _requireTotalCap(quantity);

        tokenIds = new uint256[](quantity);
        for (uint256 i = 0; i < quantity; i++) {
            uint256 tokenId = _mintToken(recipient);
            tokenIds[i] = tokenId;
            emit TokenMinted(recipient, tokenId);
        }

        _payUpfrontFor(quantity);
    }

    /// @notice Remint a specific previously-burned token id at mintPrice.
    function remint(uint256 tokenId) external payable nonReentrant returns (uint256) {
        if (!vestingStarted) revert CannotRemint();
        if (mintPaused) revert MintIsPaused();
        if (block.timestamp >= vestingEndDate) revert CannotRemint();
        if (!burnedSlotAvailable[tokenId]) revert NoSlotsAvailable();
        if (msg.value != mintPrice) revert WrongAmount();

        _payOwnerShare();

        remintedCount++;
        burnedSlotAvailable[tokenId] = false;

        uint256 dur = _vestingDuration();
        uint256 elapsed = block.timestamp - vestingStartTime;
        uint256 vestedAmount = dur == 0 ? 0 : (initialLockedPerToken * elapsed) / dur;

        _mint(msg.sender, tokenId);

        uint256 toOwner = initialPayoutPerToken + vestedAmount;
        ownerPaidAmount += toOwner;
        SafeTransferLib.forceSafeTransferETH(payoutAddress, toOwner);

        emit RemintedFromBurnQueue(msg.sender, tokenId, vestedAmount);
        return tokenId;
    }

    /// @notice Burn a paid token; gifted tokens are not burnable.
    /// @dev Marks the id as available for caller-chosen remint.
    function burn(uint256 tokenId) external nonReentrant {
        if (tokenId >= GIFT_ID_OFFSET) revert CannotBurnGift();
        if (!vestingStarted) revert CannotBurn();
        if (block.timestamp >= vestingEndDate) revert CannotBurn();
        if (ownerOf(tokenId) != msg.sender) revert NotTokenOwner();

        uint256 locked = getRemainingLockedEth(tokenId);
        _payOwnerShare();

        burnedTokenCount++;
        burnedSlotAvailable[tokenId] = true;
        _burn(tokenId);

        if (locked > 0) SafeTransferLib.forceSafeTransferETH(msg.sender, locked);
        emit Burned(msg.sender, tokenId, locked);
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                       VIEWS                         */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    function getVestingRatePerToken() public view returns (uint256) {
        uint256 dur = _vestingDuration();
        if (dur == 0) return 0;
        return initialLockedPerToken / dur;
    }

    function getRemainingLockedEth(uint256 tokenId) public view returns (uint256) {
        if (!_exists(tokenId)) revert TokenDoesNotExist();
        if (tokenId >= GIFT_ID_OFFSET) return 0;
        if (!vestingStarted) return initialLockedPerToken;
        if (block.timestamp >= vestingEndDate) return 0;
        uint256 dur = _vestingDuration();
        if (dur == 0) return 0;
        uint256 elapsed = block.timestamp - vestingStartTime;
        uint256 vested = (initialLockedPerToken * elapsed) / dur;
        return initialLockedPerToken - vested;
    }

    function getCurrentSupply() public view returns (uint256) {
        uint256 outstandingBurns = burnedTokenCount - remintedCount;
        uint256 paidActive = (currentTokenId - 1) - outstandingBurns;
        return paidActive + giftedCount + traditionalMintedCount;
    }

    function getRemainingTotalSupply() external view returns (uint256) {
        uint256 live = getCurrentSupply();
        if (live >= MAX_TOTAL_SUPPLY) return 0;
        return MAX_TOTAL_SUPPLY - live;
    }

    function getAvailableSlots() external view returns (uint256) {
        return burnedTokenCount - remintedCount;
    }

    function vestingComplete() external view returns (bool) {
        if (!vestingStarted) return false;
        return block.timestamp >= vestingEndDate;
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                  INTERNAL FUNCTIONS                 */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @dev Effective vesting duration (end date minus actual start time)
    function _vestingDuration() internal view returns (uint256) {
        if (!vestingStarted) return 0;
        if (vestingEndDate <= vestingStartTime) return 0;
        return vestingEndDate - vestingStartTime;
    }

    function _preMintChecks(uint256 amountSent, uint256 quantity) private view {
        if (!mintEnabled) revert MintNotEnabled();
        if (mintPaused) revert MintIsPaused();
        if (block.timestamp > mintStartTime + mintPeriod) revert MintPeriodEnded();
        if (amountSent != mintPrice * quantity) revert WrongAmount();
    }

    /// @dev Reverts `MintCapReached` if minting `quantity` more tokens would exceed MAX_TOTAL_SUPPLY.
    ///      Applied to every supply-increasing path (mint, mintOnBehalf, gift, mintTraditional).
    ///      remint() is exempt — it replaces a burned slot, leaving total supply unchanged.
    function _requireTotalCap(uint256 quantity) internal view {
        if (getCurrentSupply() + quantity > MAX_TOTAL_SUPPLY) revert MintCapReached();
    }

    /// @dev Caps total paid mints at MAX_PAID_SUPPLY so paid ids never collide with the gift range.
    ///      Does NOT pay the upfront — callers (mint / mintOnBehalf) bundle the upfront into a
    ///      single transfer via `_payUpfrontFor` so batched mints don't fan out into N sends.
    ///      Gifts go through `_mint` directly and never trigger the upfront payout.
    function _mintToken(address to) internal returns (uint256 id) {
        if (currentTokenId > MAX_PAID_SUPPLY) revert MintCapReached();
        id = currentTokenId++;
        _mint(to, id);
    }

    /// @dev Splits the bundled upfront for `quantity` paid mints between owner() (PROTOCOL_FEE_PCT)
    ///      and payoutAddress (the remainder of the upfront portion). The locked/vesting portion is
    ///      untouched. Single bundled transfer per recipient regardless of quantity.
    ///      Only paid mints (mint / mintOnBehalf) call this; gifts do not.
    function _payUpfrontFor(uint256 quantity) internal {
        uint256 totalUpfront = initialPayoutPerToken * quantity;
        if (totalUpfront == 0) return;

        uint256 ownerCut = (mintPrice * PROTOCOL_FEE_PCT * quantity) / 100;
        // Reverts on underflow if initialPayoutPct < PROTOCOL_FEE_PCT — the initialize guard rules this out.
        uint256 payoutCut = totalUpfront - ownerCut;

        ownerPaidAmount += totalUpfront;
        if (ownerCut > 0) SafeTransferLib.forceSafeTransferETH(owner(), ownerCut);
        if (payoutCut > 0) SafeTransferLib.forceSafeTransferETH(payoutAddress, payoutCut);
    }

    /// @dev Active count = paid mints minus outstanding (un-reminted) burns. Gifts excluded by id-range.
    function _calculateOwnerShare() internal view returns (uint256) {
        if (!vestingStarted) return 0;
        uint256 totalPaid = currentTokenId - 1;
        uint256 outstandingBurns = burnedTokenCount - remintedCount;
        if (totalPaid <= outstandingBurns) return 0;
        uint256 active = totalPaid - outstandingBurns;
        uint256 endTime = block.timestamp < vestingEndDate ? block.timestamp : vestingEndDate;
        if (endTime <= lastOwnerPayoutTime) return 0;
        uint256 dur = _vestingDuration();
        if (dur == 0) return 0;
        uint256 secondsElapsed = endTime - lastOwnerPayoutTime;
        return (initialLockedPerToken * secondsElapsed * active) / dur;
    }

    function _payOwnerShare() internal {
        uint256 share = _calculateOwnerShare();
        lastOwnerPayoutTime = block.timestamp;
        if (share == 0) return;
        if (address(this).balance < share) revert InsufficientContractBalance();
        ownerPaidAmount += share;
        SafeTransferLib.forceSafeTransferETH(payoutAddress, share);
    }

    /// @dev True when peer-to-peer transfers (and the approvals that enable them) are unlocked.
    ///      Either the owner has explicitly enabled transfers, OR vesting has fully completed.
    function _transfersUnlocked() internal view returns (bool) {
        if (allowTransfers) return true;
        if (vestingStarted && block.timestamp >= vestingEndDate) return true;
        return false;
    }

    /// @dev Gifts and paid tokens follow the same transfer rules: blocked until transfers unlock.
    ///      Mint and burn-by-system are always allowed. (Gifts are still non-burnable — that check
    ///      lives in `burn`.)
    function _beforeTokenTransfer(address from, address to, uint256 tokenId) internal override {
        // Allow mint and burn
        if (from == address(0) || to == address(0)) return;
        if (_transfersUnlocked()) return;
        revert NotAllowed();
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                   BLOCKED FUNCTIONS                 */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Block granting approvals while transfers are locked, but always allow revocation.
    /// @dev Same unlock rule as `_beforeTokenTransfer` — either `allowTransfers` was flipped on,
    ///      or vesting has fully completed.
    function setApprovalForAll(address operator, bool approved) public override {
        if (!_transfersUnlocked() && approved) revert NotAllowed();
        super.setApprovalForAll(operator, approved);
    }

    /// @notice Block granting approvals while transfers are locked, but always allow revocation.
    function approve(address to, uint256 tokenId) public payable override {
        if (!_transfersUnlocked() && to != address(0)) revert NotAllowed();
        super.approve(to, tokenId);
    }

    /// @notice Allows receiving ETH only before vesting starts.
    receive() external payable {
        if (vestingStarted) revert NotAllowed();
    }
}
