// SPDX-License-Identifier: Business Source License 1.1
pragma solidity ^0.8.22;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {
    OwnableUpgradeable
} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {
    ReentrancyGuardUpgradeable
} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {
    PausableUpgradeable
} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import {ITreasury} from "./interfaces/ITreasury.sol";
import {ISwapPoolEvents} from "./interfaces/ISwapPoolEvents.sol";
import {SwapMath} from "./libraries/SwapMath.sol";
import {IPermit2} from "./interfaces/IPermit2.sol";
import {Hashing} from "./utils/Hashing.sol";
import {ValidationLib} from "./libraries/ValidationLib.sol";
import {AssertionLib} from "./libraries/AssertionLib.sol";
import {AuthorizationLib} from "./libraries/AuthorizationLib.sol";

/**
 * @title SwapPool
 */
contract SwapPool is
    Initializable,
    UUPSUpgradeable,
    OwnableUpgradeable,
    ReentrancyGuardUpgradeable,
    PausableUpgradeable,
    ISwapPoolEvents
{
    using SafeERC20 for IERC20;

    /* --------------------------------------- Constants ---------------------------------------- */

    uint8 public constant DECIMALS = 18; // volume tracking decimals
    uint8 public constant MAX_TOKEN_DECIMALS = 77; // maximum allowed decimals when registering tokens
    // Upper bound on list size for zero-balance assertions to avoid unbounded external calls in a loop
    // Upper bound for unrolled zero-balance assertions (must stay <= 8 to match unrolling)
    uint256 public constant MAX_ASSERT_TOKENS = 8;

    /* ------------------------------------- Data Structs --------------------------------------- */

    struct TokenData {
        bool isRegistered;
        uint8 decimals;
    }

    struct TokenPairData {
        bool isAuthorized;
        bool enforceTraderAuthorization;
    }

    struct DestinationOverrideData {
        uint256 deadline;
        uint256 remainingAmount;
    }

    /* ------------------------------------ State Variables ------------------------------------- */

    // Mapping of registered tokens
    mapping(address => TokenData) public registeredTokens;

    // Mapping of authorized token pairs
    mapping(bytes32 => TokenPairData) public authorizedTokenPairs;

    // Mapping of authorized traders by token pair
    mapping(bytes32 => mapping(address => bool)) public authorizedTraders;

    // Mapping of destination override approvals
    mapping(bytes32 => DestinationOverrideData) public destinationOverrideApprovals;

    // Mapping of minimum allowed amount for a given token pair
    mapping(bytes32 => uint256) public minAmountInByPair;

    // slot 5 — DEPRECATED: formerly allowNonStandardToken (removed per TOB-FT-SWAPDIFF-2 long-term recommendation).
    // Retained as private placeholder to preserve storage layout for UUPS upgrade compatibility.
    mapping(address => bool) private __deprecated_allowNonStandardToken;

    // Mapping of unsupported tokens
    mapping(address => bool) public unsupportedTokens;

    // Mutable treasury address
    address public treasury;

    // Two-step treasury rotation support
    address public pendingTreasury;

    // Flag to restrict withdrawals to when the contract is paused
    bool public withdrawOnlyWhenPaused;

    // Pool imbalance factor (0 = disabled)
    uint8 public poolImbalanceFactor;

    // When enabled, treasury must be a contract and all outbound transfers must go through ITreasury
    bool public requireContractTreasury;

    // When true, the SwapPool contract itself holds funds (treasury is the contract balance)
    // This allows the pool to directly custody FUND and stablecoins. When false, `treasury`
    // points to an external address (EOA or ITreasury contract) used for custody.
    bool public contractHeldTreasury;

    // Per-token custody override: when set to true for a token, that token is held in the contract
    // regardless of the global contractHeldTreasury flag. This enables hybrid custody models
    // (e.g., FUND in contract, stablecoins in external treasury).
    mapping(address => bool) public tokenHeldInContract;

    // EOA treasury safety controls
    // Optional hard-stop block height after which EOA mode is disallowed (0 = disabled)
    uint256 public eoaModeExpiryBlock;
    // Per-token maximum amount allowed per transaction when using an EOA treasury (0 = no cap)
    mapping(address => uint256) public eoaMaxPerTx;
    // Per-token maximum cumulative amount per block when using an EOA treasury (0 = no cap)
    mapping(address => uint256) public eoaMaxPerBlock;
    // Per-token cumulative amount sent in the current block (for EOA mode enforcement)
    mapping(address => uint256) private eoaSentThisBlock;
    // DEPRECATED: retained for storage layout compatibility; per-token block tracking now uses eoaSentBlockOf
    uint256 private eoaSentThisBlockNumber;

    // Optional Permit2 router to support EOA treasury without direct ERC20.transferFrom from this contract
    address public permit2;

    // Cumulative normalized swap volume (18-decimal canonical units)
    uint256 public cumulativeNormalizedVolume;

    // Per-token last-updated block for EOA per-block cap accounting (appended for upgrade-safety)
    mapping(address => uint256) private eoaSentBlockOf;

    // swapFrom authorization: sourceWallet => delegate => approvedDestination (address(0) = not authorized)
    mapping(address => mapping(address => address)) public swapFromAuthorizations;

    // slot — DEPRECATED: formerly depositFromAuthorized (removed: depositFrom deprecated per TOB-FT-SWAPDIFF-1).
    // Retained as private placeholder to preserve storage layout for UUPS upgrade compatibility.
    mapping(address => bool) private __deprecated_depositFromAuthorized;

    // TOB-FT-SWAPDIFF-3: per-direction minimum swap amounts
    // Uses direction-dependent hash: keccak256(abi.encodePacked(fromToken, toToken))
    mapping(bytes32 => uint256) public minAmountInByDirection;

    /* ---------------------------------------- Modifiers --------------------------------------- */

    modifier onlyIfAuthorized(address tokenA, address tokenB) {
        _onlyIfAuthorized(tokenA, tokenB);
        _;
    }

    function _onlyIfAuthorized(address tokenA, address tokenB) internal view {
        bytes32 tokenPairHash = _computeTokenPairHash(tokenA, tokenB);
        // Check token pair authorization
        if (!authorizedTokenPairs[tokenPairHash].isAuthorized) {
            revert("UNAUTHORIZED_TOKEN_PAIR");
        }
        // Check trader authorization if enforced for the token pair
        if (
            authorizedTokenPairs[tokenPairHash].enforceTraderAuthorization &&
            !authorizedTraders[tokenPairHash][msg.sender]
        ) {
            revert("UNAUTHORIZED_TRADER");
        }
    }

    /* ------------------------------------- Initialization ------------------------------------- */

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address treasury_) public initializer {
        __Ownable_init(msg.sender);
        __UUPSUpgradeable_init();
        __ReentrancyGuard_init();
        __Pausable_init();
        // Explicitly handle zero-address to indicate the pool contract should hold funds directly.
        // This makes intent clear to static analyzers and callers.
        if (treasury_ == address(0)) {
            contractHeldTreasury = true;
            treasury = address(0);
        } else {
            // Basic sanity check: treasury must not be this contract
            if (treasury_ == address(this)) revert("TREASURY_CANNOT_BE_SELF");
            contractHeldTreasury = false;
            treasury = treasury_;
        }
        pendingTreasury = address(0);

        cumulativeNormalizedVolume = 0;
        withdrawOnlyWhenPaused = false;
        poolImbalanceFactor = 0;
        // Default: allow EOA treasury (requireContractTreasury = false).
        // If a contract treasury is in place, governance can call setRequireContractTreasury(true)
        // to enforce contract-only outbound transfers and contract-only treasury rotations.
        requireContractTreasury = false;
        eoaSentThisBlockNumber = 0;

        emit SwapPoolInitialized(owner(), treasury, contractHeldTreasury);
    }

    /* ------------------------------------- Core Functions ------------------------------------- */

    /// @notice Swap tokens at 1:1 with decimal normalization.
    function swap(
        address fromToken,
        address toToken,
        uint256 amount
    ) external nonReentrant whenNotPaused onlyIfAuthorized(fromToken, toToken) {
        ValidationLib.validateTokenPair(fromToken, toToken);
        ValidationLib.validateAmount(amount);

        _executeSwap(fromToken, toToken, amount, msg.sender);
    }

    /// @notice Swap and optionally send to a destination.
    function swap(
        address fromToken,
        address toToken,
        uint256 amount,
        address destination
    ) external nonReentrant whenNotPaused onlyIfAuthorized(fromToken, toToken) {
        ValidationLib.validateTokenPair(fromToken, toToken);
        ValidationLib.validateAmount(amount);

        if (destination == address(0)) {
            destination = msg.sender;
        }

        // Validate destination not being the treasury before consuming any approvals
        ValidationLib.validateDestinationNotTreasury(
            destination,
            treasury,
            contractHeldTreasury,
            address(this)
        );

        if (destination != msg.sender) {
            bytes32 tokenPairHash = _computeTokenPairHash(fromToken, toToken);
            // Check destination authorization if enforced for the token pair
            if (
                authorizedTokenPairs[tokenPairHash].enforceTraderAuthorization &&
                !authorizedTraders[tokenPairHash][destination]
            ) {
                revert("UNAUTHORIZED_DESTINATION");
            }

            _consumeDestinationOverrideApproval(
                msg.sender,
                fromToken,
                toToken,
                amount,
                destination
            );
            emit SwapDestination(msg.sender, destination, fromToken, toToken, amount);
        }

        _executeSwap(fromToken, toToken, amount, destination);
    }

    /// @notice Swap from a source wallet. Destination is locked at authorization time.
    /// @dev Only the owner (FranklinValidator) can call this function. Delegates cannot choose
    ///      destination - it was set by admin in authorizeSwapFrom. This provides defense-in-depth:
    ///      both onlyOwner AND swapFromAuthorizations must be satisfied.
    /// @param sourceWallet The wallet whose tokens are being swapped (must have authorized msg.sender)
    /// @param fromToken The token being swapped from
    /// @param toToken The token being swapped to
    /// @param amount The amount of fromToken to swap
    // slither-disable-start arbitrary-send-erc20
    // slither-disable-start reentrancy-balance
    // Rationale: onlyOwner + nonReentrant + swapFromAuthorizations guard; sourceWallet must have authorized msg.sender via authorizeSwapFrom
    function swapFrom(
        address sourceWallet,
        address fromToken,
        address toToken,
        uint256 amount
    ) external onlyOwner nonReentrant whenNotPaused {
        address destination = swapFromAuthorizations[sourceWallet][msg.sender];
        if (destination == address(0)) revert("UNAUTHORIZED_SWAP_FROM");

        // TOB-FT-SWAPDIFF-6 fix: validateTokenPair (missing in original swapFrom)
        ValidationLib.validateTokenPair(fromToken, toToken);
        ValidationLib.validateAmount(amount);

        bytes32 pairHash = _computeTokenPairHash(fromToken, toToken);
        if (!authorizedTokenPairs[pairHash].isAuthorized) revert("UNAUTHORIZED_TOKEN_PAIR");

        // TOB-FT-SWAPDIFF-1 (refined): Source wallet consent check.
        // Verify sourceWallet has granted msg.sender (owner/multisig) an ERC-20
        // allowance on fromToken. This prevents a stale SwapPool approval from
        // being repurposed via swapFrom under owner compromise. The allowance is
        // a read-only consent signal — it is never consumed by safeTransferFrom
        // (which spends the sourceWallet→SwapPool allowance instead).
        require(
            IERC20(fromToken).allowance(sourceWallet, msg.sender) >= amount,
            "INSUFFICIENT_SOURCE_ALLOWANCE"
        );

        // TOB-FT-SWAPDIFF-6 fix: enforce trader authorization on destination (missing in original swapFrom)
        if (
            authorizedTokenPairs[pairHash].enforceTraderAuthorization &&
            !authorizedTraders[pairHash][destination]
        ) {
            revert("UNAUTHORIZED_DESTINATION");
        }

        // destination was already validated at authorization time
        ValidationLib.validateDestinationNotTreasury(
            destination,
            treasury,
            contractHeldTreasury,
            address(this)
        );

        // Security checks
        if (unsupportedTokens[fromToken] || unsupportedTokens[toToken]) revert("UNSUPPORTED_TOKEN");
        if (!registeredTokens[fromToken].isRegistered || !registeredTokens[toToken].isRegistered)
            revert("TOKEN_NOT_REGISTERED");

        // TOB-FT-SWAPDIFF-3: use direction-dependent minimum amount
        bytes32 dirHash = Hashing.directedPairHash(fromToken, toToken);
        uint256 minRequired = minAmountInByDirection[dirHash];
        // Fall back to legacy direction-independent minimum if no per-direction value set
        if (minRequired == 0) {
            minRequired = minAmountInByPair[pairHash];
        }
        if (minRequired > 0 && amount < minRequired) revert("MIN_AMOUNT_NOT_MET");

        uint8 fromDec = registeredTokens[fromToken].decimals;
        uint8 toDec = registeredTokens[toToken].decimals;

        // TOB-FT-SWAPDIFF-6 fix: inbound transfer first, then compute output (matching _executeSwap order)
        uint256 fromBalBefore = _treasuryTokenBalance(fromToken);
        uint256 toBalBefore = _treasuryTokenBalance(toToken);

        // Transfer in from sourceWallet
        // slither-disable-next-line arbitrary-send-erc20 -- onlyOwner + swapFromAuthorizations guard; sourceWallet must have authorized msg.sender
        if (contractHeldTreasury || tokenHeldInContract[fromToken]) {
            IERC20(fromToken).safeTransferFrom(sourceWallet, address(this), amount);
        } else {
            IERC20(fromToken).safeTransferFrom(sourceWallet, treasury, amount);
        }

        // Exact-delivery check: reject fee-on-transfer or rebasing tokens on inbound
        uint256 actualReceived = _treasuryTokenBalance(fromToken) - fromBalBefore;
        if (actualReceived != amount) revert("NON_STANDARD_TOKEN_NOT_ALLOWED");

        // Compute output AFTER adjusting inbound amount (TOB-FT-SWAPDIFF-6 fix: consistent with _executeSwap)
        uint256 toAmount = SwapMath.convertDecimals(amount, fromDec, toDec, true);
        if (toBalBefore < toAmount) revert("INSUFFICIENT_TREASURY_BALANCE");

        // Volume tracking
        uint256 normalizedAmount = SwapMath.convertDecimals(amount, fromDec, DECIMALS, false);
        // slither-disable-next-line incorrect-equality -- intentional: emit diagnostic when normalization truncates to zero
        if (amount > 0 && normalizedAmount == 0)
            emit NormalizationZero(fromToken, toToken, amount, fromDec);

        uint256 ratBefore = SwapMath.computeImbalanceRatio(
            fromBalBefore,
            toBalBefore,
            fromDec,
            toDec
        );
        uint256 ratAfter = SwapMath.computeImbalanceRatio(
            _treasuryTokenBalance(fromToken),
            toBalBefore - toAmount,
            fromDec,
            toDec
        );
        bool isMaker = (ratAfter > ratBefore);

        cumulativeNormalizedVolume += normalizedAmount;
        emit CumulativeVolumeUpdated(cumulativeNormalizedVolume);
        emit SwapExecuted(sourceWallet, fromToken, toToken, destination, normalizedAmount, isMaker);
        emit SwapExecutedExtended(
            sourceWallet,
            fromToken,
            toToken,
            destination,
            amount,
            toAmount,
            normalizedAmount,
            isMaker
        );
        emit SwapFromExecuted(sourceWallet, destination, fromToken, toToken, amount);
        if (
            poolImbalanceFactor > 0 && ratAfter < SwapMath.computeScaledRatio(poolImbalanceFactor)
        ) {
            emit PoolImbalanceLow(fromToken, toToken, ratAfter, poolImbalanceFactor);
        }

        // Transfer out to destination
        // slither-disable-next-line reentrancy-balance -- nonReentrant on swapFrom; destBefore/destAfter is exact-delivery check
        uint256 destBefore = IERC20(toToken).balanceOf(destination);
        _treasurySend(toToken, destination, toAmount);
        uint256 actualDelivered = IERC20(toToken).balanceOf(destination) - destBefore;
        if (actualDelivered != toAmount) revert("NON_STANDARD_TOKEN_OUTBOUND");
    }
    // slither-disable-end arbitrary-send-erc20
    // slither-disable-end reentrancy-balance

    /* ---------------------------------- Treasury Management ----------------------------------- */

    /// @notice DEPRECATED — TOB-FT-SWAPDIFF-1: function removed to eliminate the attack surface entirely.
    /// @dev deposit() allowed the owner to pull tokens via safeTransferFrom from any address that had
    ///      approved the SwapPool, enabling swap approvals to be repurposed as deposit vectors under
    ///      owner compromise. The function is no longer needed: treasury funding now occurs via direct
    ///      ERC-20 transfers to the treasury/contract address. Signature retained for ABI compatibility.
    function deposit(
        address /* token */,
        address /* from */,
        uint256 /* amount */
    ) external onlyOwner nonReentrant {
        revert("DEPRECATED");
    }

    /// @notice DEPRECATED — TOB-FT-SWAPDIFF-1: function removed to eliminate the attack surface entirely.
    /// @dev depositFrom allowed the owner to pull tokens from any address that had approved the SwapPool,
    ///      enabling swap approvals to be repurposed as deposit approvals under owner compromise.
    ///      The function is no longer needed: USDC arrives via direct external transfers,
    ///      and deposit() covers all remaining use cases. Signature retained for ABI compatibility.
    function depositFrom(
        address /* token */,
        address /* from */,
        uint256 /* amount */
    ) external onlyOwner nonReentrant {
        revert("DEPRECATED");
    }

    /// @notice Withdraw tokens from the treasury.
    function withdraw(address token, address to, uint256 amount) external onlyOwner nonReentrant {
        ValidationLib.validateAddress(token);
        ValidationLib.validateAddress(to);
        ValidationLib.validateAmount(amount);

        // Enforce token policy: withdrawals must use registered tokens and not be unsupported
        if (!registeredTokens[token].isRegistered) revert("TOKEN_NOT_REGISTERED");
        if (unsupportedTokens[token]) revert("UNSUPPORTED_TOKEN");

        if (withdrawOnlyWhenPaused && !paused()) revert("WITHDRAW_REQUIRES_PAUSE");

        uint256 balance = _treasuryTokenBalance(token);
        if (balance < amount) revert("INSUFFICIENT_CONTRACT_BALANCE");

        // Enforce exact-out semantics (reject fee-on-transfer on outbound)
        // slither-disable-next-line reentrancy-balance -- nonReentrant on withdraw; destBefore/destAfter is exact-delivery check
        uint256 destBefore = IERC20(token).balanceOf(to);
        _treasurySend(token, to, amount);
        uint256 destAfter = IERC20(token).balanceOf(to);
        if (destAfter - destBefore != amount) revert("FEE_ON_TRANSFER_OUT_NOT_SUPPORTED");

        uint256 newBalance = _treasuryTokenBalance(token);
        emit TokenWithdrawn(token, amount, newBalance);
    }

    /* ------------------------------------- Configuration -------------------------------------- */

    /// @notice Registers a token and caches its metadata (decimals)
    function registerToken(address token) external onlyOwner nonReentrant {
        ValidationLib.validateAddress(token);

        TokenData storage data = registeredTokens[token];
        if (data.isRegistered) revert("TOKEN_ALREADY_REGISTERED");

        uint8 decimals = 0;
        try IERC20Metadata(token).decimals() returns (uint8 dec) {
            if (dec > MAX_TOKEN_DECIMALS) revert("INVALID_DECIMALS_VALUE");
            decimals = dec;
        } catch {
            revert("ERC20_METADATA_NOT_SUPPORTED");
        }
        data.isRegistered = true;
        data.decimals = decimals;

        emit TokenRegistered(token, decimals);
    }

    /// @notice Unregisters a token and clears its metadata
    /// @dev F-4 fix: added nonReentrant for consistency with registerToken.
    function unregisterToken(address token) external onlyOwner nonReentrant {
        ValidationLib.validateAddress(token);

        TokenData storage data = registeredTokens[token];
        if (!data.isRegistered) revert("TOKEN_NOT_REGISTERED");

        data.isRegistered = false;
        data.decimals = 0;

        emit TokenUnregistered(token);
    }

    /// @notice Authorize a token pair
    function authorizeTokenPair(
        address tokenA,
        address tokenB,
        bool enforceTraderAuthorization
    ) external onlyOwner {
        ValidationLib.validateTokenPair(tokenA, tokenB);

        if (!registeredTokens[tokenA].isRegistered) revert("TOKEN_NOT_REGISTERED");
        if (!registeredTokens[tokenB].isRegistered) revert("TOKEN_NOT_REGISTERED");

        bytes32 tokenPairHash = _computeTokenPairHash(tokenA, tokenB);
        TokenPairData storage data = authorizedTokenPairs[tokenPairHash];
        if (data.isAuthorized) revert("TOKEN_PAIR_ALREADY_AUTHORIZED");

        data.isAuthorized = true;
        data.enforceTraderAuthorization = enforceTraderAuthorization;

        emit TokenPairAuthorized(tokenA, tokenB, tokenPairHash);
    }

    /// @notice Deauthorize a token pair
    function deauthorizeTokenPair(address tokenA, address tokenB) external onlyOwner {
        ValidationLib.validateTokenPair(tokenA, tokenB);

        bytes32 tokenPairHash = _computeTokenPairHash(tokenA, tokenB);
        TokenPairData storage data = authorizedTokenPairs[tokenPairHash];
        if (!data.isAuthorized) revert("TOKEN_PAIR_NOT_AUTHORIZED");

        data.isAuthorized = false;
        data.enforceTraderAuthorization = false;

        emit TokenPairDeauthorized(tokenA, tokenB, tokenPairHash);
    }

    /// @notice Authorize a trader for a token pair
    function authorizeTrader(address trader, address tokenA, address tokenB) external onlyOwner {
        ValidationLib.validateAddress(trader);
        ValidationLib.validateTokenPair(tokenA, tokenB);

        bytes32 tokenPairHash = _computeTokenPairHash(tokenA, tokenB);

        if (!authorizedTokenPairs[tokenPairHash].enforceTraderAuthorization)
            revert("AUTHORIZATION_NOT_ENFORCED");

        authorizedTraders[tokenPairHash][trader] = true;

        emit TraderAuthorized(trader, tokenPairHash);
    }

    /// @notice Deauthorize a trader for a token pair
    function deauthorizeTrader(address trader, address tokenA, address tokenB) external onlyOwner {
        ValidationLib.validateAddress(trader);
        ValidationLib.validateTokenPair(tokenA, tokenB);

        bytes32 tokenPairHash = _computeTokenPairHash(tokenA, tokenB);
        authorizedTraders[tokenPairHash][trader] = false;

        emit TraderDeauthorized(trader, tokenPairHash);
    }

    /// @notice Authorize a delegate to call swapFrom on behalf of a source wallet (admin-only)
    /// @dev Franklin admin authorizes which delegates can pull tokens from which source wallets.
    ///      The destination is locked at authorization time for security - delegates cannot redirect funds.
    ///
    /// ARCHITECTURAL NOTE (ToB refined recommendation — source wallet consent):
    /// Source wallet private keys are destroyed after MPC address generation, making
    /// msg.sender == sourceWallet checks or EIP-712 signatures from the source wallet
    /// physically impossible. Destination-locking bounds the blast radius: even under
    /// owner compromise, funds can only reach the pre-declared destination.
    /// See SWAPDIFF-1-SEVERITY-POSITION.md.
    /// @param sourceWallet The wallet holding tokens (institutional custody)
    /// @param delegate The address authorized to call swapFrom
    /// @param destination The ONLY address that can receive funds from this authorization (locked)
    function authorizeSwapFrom(
        address sourceWallet,
        address delegate,
        address destination
    ) external onlyOwner {
        ValidationLib.validateAddress(sourceWallet);
        ValidationLib.validateAddress(delegate);
        ValidationLib.validateAddress(destination);
        swapFromAuthorizations[sourceWallet][delegate] = destination;
        emit SwapFromAuthorized(sourceWallet, delegate, destination);
    }

    /// @notice Revoke swapFrom authorization (admin-only)
    /// @param sourceWallet The source wallet
    /// @param delegate The delegate to revoke
    function deauthorizeSwapFrom(address sourceWallet, address delegate) external onlyOwner {
        swapFromAuthorizations[sourceWallet][delegate] = address(0);
        emit SwapFromDeauthorized(sourceWallet, delegate);
    }

    // authorizeDepositFrom and deauthorizeDepositFrom REMOVED — depositFrom is deprecated (TOB-FT-SWAPDIFF-1).

    /// @notice Creates an approval for a destination override (self-service)
    /// @dev Traders can approve their own destination overrides without multisig approval.
    /// Security is enforced at consumption time via destination authorization checks.
    /// NOTE (TOB-FT-SWAPDIFF-7): The amount and deadline fields serve as a self-service intent signal
    /// for off-chain compliance monitoring, NOT as an on-chain spending limit. Because the approver
    /// and consumer are the same address (msg.sender), the trader can reset these values at any time.
    /// This is by design — the mechanism provides auditability, not restriction.
    function setDestinationOverrideApproval(
        address fromToken,
        address toToken,
        uint256 amount,
        address destination,
        uint256 deadline
    ) external {
        ValidationLib.validateTokenPair(fromToken, toToken);
        ValidationLib.validateAmount(amount);
        ValidationLib.validateAddress(destination);

        // Deadline must not be in the past (current block or future is accepted)
        if (deadline < block.number) revert("INVALID_DEADLINE_VALUE");

        // Compute key via tight fixed-layout hashing - trader is msg.sender
        bytes32 key = Hashing.hash4(msg.sender, fromToken, toToken, destination);
        destinationOverrideApprovals[key] = DestinationOverrideData({
            remainingAmount: amount,
            deadline: deadline
        });

        emit DestinationOverrideApprovalUpdated(
            msg.sender,
            fromToken,
            toToken,
            destination,
            amount,
            deadline
        );
    }

    /// @notice Propose a new treasury address (two-step rotation)
    /// @dev TOB-FT-SWAPDIFF-4: requires paused state for parity with setTreasury.
    function proposeTreasury(address newTreasury) external onlyOwner {
        if (!paused()) revert("MUST_BE_PAUSED");
        if (newTreasury == address(0)) revert("ZERO_ADDRESS");
        /// @dev V-1 fix: prevent setting treasury to the pool itself (consistent with setTreasury).
        if (newTreasury == address(this)) revert("TREASURY_CANNOT_BE_SELF");
        if (requireContractTreasury && !ValidationLib.isContract(newTreasury))
            revert("TREASURY_MUST_BE_CONTRACT");

        pendingTreasury = newTreasury;

        emit TreasuryProposed(treasury, newTreasury);
    }

    /// @notice Accept treasury (must be called by the pending treasury)
    /// @dev TOB-FT-SWAPDIFF-4: requires paused state for parity with setTreasury.
    /// @dev TOB-FT-SWAPDIFF-5 fix: revert when contractHeldTreasury is active to prevent inconsistent state.
    function acceptTreasury() external {
        if (!paused()) revert("MUST_BE_PAUSED");
        if (pendingTreasury == address(0)) revert("NO_PENDING_TREASURY");
        // TOB-FT-SWAPDIFF-5: prevent accepting an external treasury while in contract-held mode
        if (contractHeldTreasury) revert("CONTRACT_HELD_MODE_ACTIVE");
        if (requireContractTreasury && !ValidationLib.isContract(pendingTreasury))
            revert("TREASURY_MUST_BE_CONTRACT");
        if (msg.sender != pendingTreasury) revert("ONLY_PENDING_TREASURY");

        address old = treasury;
        treasury = pendingTreasury;
        pendingTreasury = address(0);

        emit TreasuryUpdated(old, treasury);
    }

    /// @notice Set withdraw-only-when-paused flag
    function setWithdrawOnlyWhenPaused(bool enabled) external onlyOwner {
        withdrawOnlyWhenPaused = enabled;

        emit WithdrawOnlyWhenPausedUpdated(enabled);
    }

    /// @notice Pause contract
    function pause() external onlyOwner {
        _pause();
    }

    /// @notice Unpause contract
    function unpause() external onlyOwner {
        _unpause();
    }

    /// @notice Mark or unmark a token as unsupported
    function setUnsupportedToken(address token, bool unsupported) external onlyOwner {
        ValidationLib.validateAddress(token);

        unsupportedTokens[token] = unsupported;

        emit UnsupportedTokenUpdated(token, unsupported);
    }

    /// @notice Set a minimum allowed amount for swaps from fromToken to toToken
    function setMinAmountIn(
        address fromToken,
        address toToken,
        uint256 minAmount
    ) external onlyOwner {
        ValidationLib.validateTokenPair(fromToken, toToken);

        bytes32 tokenPairHash = _computeTokenPairHash(fromToken, toToken);
        minAmountInByPair[tokenPairHash] = minAmount;

        emit MinAmountInUpdated(fromToken, toToken, minAmount);
    }

    /// @notice Set the minimum swap amount for a specific direction of a token pair
    /// @dev TOB-FT-SWAPDIFF-3 fix: uses direction-dependent hash so A→B and B→A can have different minimums.
    /// @param fromToken The inbound token
    /// @param toToken The outbound token
    /// @param minAmount The minimum amount in native fromToken decimals (0 to remove)
    function setMinAmountInByDirection(
        address fromToken,
        address toToken,
        uint256 minAmount
    ) external onlyOwner {
        ValidationLib.validateTokenPair(fromToken, toToken);

        bytes32 dirHash = Hashing.directedPairHash(fromToken, toToken);
        minAmountInByDirection[dirHash] = minAmount;

        emit MinAmountInByDirectionUpdated(fromToken, toToken, minAmount);
    }

    /// @notice Set the pool imbalance factor
    function setPoolImbalanceFactor(uint8 factor) external onlyOwner {
        poolImbalanceFactor = factor;
        emit PoolImbalanceFactorUpdated(factor);
    }

    /* ------------------------------------ View Functions -------------------------------------- */

    /// @notice Returns the contract version string for on-chain introspection.
    function getVersion() external pure virtual returns (string memory) {
        return "2";
    }

    /**
     * @notice Get token balance in treasury
     * @param token Token address
     * @return Token balance in treasury
     */
    function getTokenBalance(address token) external view returns (uint256) {
        return _treasuryTokenBalance(token);
    }

    /**
     * @notice Get the ERC20 balance of a token for an arbitrary wallet (trader) address
     * @dev Convenience view helper for off-chain UIs and services; does not require the token to be registered.
     * Reverts if `token` is the zero address.
     * @param token ERC20 token address
     * @param wallet Wallet (trader) address
     * @return balance The token balance held by the wallet
     */
    function getWalletTokenBalance(
        address token,
        address wallet
    ) external view returns (uint256 balance) {
        ValidationLib.validateAddress(token);
        ValidationLib.validateAddress(wallet);
        balance = IERC20(token).balanceOf(wallet);
    }

    /**
     * @notice Returns true if swaps are permitted for the trader on the given pair
     */
    function isTraderAllowed(
        address trader,
        address tokenA,
        address tokenB
    ) external view returns (bool) {
        bytes32 h = _computeTokenPairHash(tokenA, tokenB);
        TokenPairData storage pd = authorizedTokenPairs[h];
        return
            AuthorizationLib.isTraderAllowed(
                pd.isAuthorized,
                pd.enforceTraderAuthorization,
                authorizedTraders[h],
                trader
            );
    }

    /**
     * @notice Check if token pair is authorized for swapping
     * @param tokenA The address of the first token in the pair
     * @param tokenB The address of the second token in the pair
     * @return Whether the token pair is authorized
     */
    function isTokenPairAuthorized(address tokenA, address tokenB) external view returns (bool) {
        bytes32 tokenPairHash = _computeTokenPairHash(tokenA, tokenB);
        return
            AuthorizationLib.isTokenPairAuthorized(
                authorizedTokenPairs[tokenPairHash].isAuthorized
            );
    }

    /**
     * @notice Check if a trader is authorized for a specific token pair
     * @param trader Trader address
     * @param tokenA The address of the first token in the pair
     * @param tokenB The address of the second token in the pair
     * @return Whether the trader is authorized for the token pair
     */
    function isTraderAuthorized(
        address trader,
        address tokenA,
        address tokenB
    ) external view returns (bool) {
        bytes32 tokenPairHash = _computeTokenPairHash(tokenA, tokenB);
        return AuthorizationLib.isTraderAuthorized(authorizedTraders[tokenPairHash], trader);
    }

    /**
     * @notice Get the details of a destination override approval
     * @param trader Trader address
     * @param fromToken The address of the source token
     * @param toToken The address of the destination token
     * @param destination Destination address
     * @return deadline Approval deadline
     * @return remainingAmount Remaining approved amount
     */
    function getDestinationOverrideApproval(
        address trader,
        address fromToken,
        address toToken,
        address destination
    ) external view returns (uint256 deadline, uint256 remainingAmount) {
        bytes32 key = Hashing.hash4(trader, fromToken, toToken, destination);
        DestinationOverrideData storage approval = destinationOverrideApprovals[key];
        return (approval.deadline, approval.remainingAmount);
    }

    /**
     * @notice Compute the canonical hash for a token pair
     * @dev This hash is used as the storage key for pair-related mappings (authorizedTokenPairs, minAmountInByPair, etc.)
     * The hash is deterministic and order-independent: hash(A,B) == hash(B,A)
     * @param tokenA The address of the first token in the pair
     * @param tokenB The address of the second token in the pair
     * @return The bytes32 hash identifier for this pair (keccak256 of tightly packed addresses)
     */
    function getTokenPairHash(address tokenA, address tokenB) external pure returns (bytes32) {
        return Hashing.tokenPairHash(tokenA, tokenB);
    }

    /* ---------------------------------- Internal Functions ------------------------------------ */

    /// @dev F-1/V-2 fix: disable renounceOwnership to prevent bricking the UUPS proxy.
    function renounceOwnership() public pure override {
        revert("RENOUNCE_DISABLED");
    }

    function _authorizeUpgrade(address newImplementation) internal view override onlyOwner {
        require(newImplementation != address(0), "ZERO_ADDRESS");
        require(newImplementation.code.length > 0, "NOT_A_CONTRACT");
    }

    /// @dev Execute swap business logic with explicit trader and destination.
    // slither-disable-start reentrancy-balance
    // Rationale: all callers (swap, swap+dest) are nonReentrant; balance reads are for exact-delivery verification
    function _executeSwap(
        address fromToken,
        address toToken,
        uint256 amount,
        address destination
    ) internal {
        if (unsupportedTokens[fromToken]) revert("UNSUPPORTED_TOKEN");
        if (unsupportedTokens[toToken]) revert("UNSUPPORTED_TOKEN");
        if (!registeredTokens[fromToken].isRegistered) revert("TOKEN_NOT_REGISTERED");
        if (!registeredTokens[toToken].isRegistered) revert("TOKEN_NOT_REGISTERED");
        ValidationLib.validateDestinationNotTreasury(
            destination,
            treasury,
            contractHeldTreasury,
            address(this)
        );
        uint256 minRequired = minAmountInByPair[_computeTokenPairHash(fromToken, toToken)];
        // TOB-FT-SWAPDIFF-3: check direction-dependent minimum first, fall back to legacy pair minimum
        bytes32 dirHash = Hashing.directedPairHash(fromToken, toToken);
        uint256 dirMinRequired = minAmountInByDirection[dirHash];
        if (dirMinRequired > 0) {
            minRequired = dirMinRequired;
        }
        if (minRequired > 0 && amount < minRequired) revert("MIN_AMOUNT_NOT_MET");

        uint8 toTokenDecimals = registeredTokens[toToken].decimals;
        uint8 fromTokenDecimals = registeredTokens[fromToken].decimals;

        uint256 fromBalanceBefore = _treasuryTokenBalance(fromToken);
        uint256 toBalanceBefore = _treasuryTokenBalance(toToken);

        // Inbound transfer first so we can derive the actual received amount before computing outputs
        if (contractHeldTreasury || tokenHeldInContract[fromToken]) {
            IERC20(fromToken).safeTransferFrom(msg.sender, address(this), amount);
        } else {
            IERC20(fromToken).safeTransferFrom(msg.sender, treasury, amount);
        }
        // Exact-delivery check: reject fee-on-transfer or rebasing tokens on inbound
        uint256 actualReceived = _treasuryTokenBalance(fromToken) - fromBalanceBefore;
        if (actualReceived != amount) revert("NON_STANDARD_TOKEN_NOT_ALLOWED");

        // Compute output after adjusting inbound amount; check treasury balance sufficiency
        uint256 toTokenAmount = SwapMath.convertDecimals(
            amount,
            fromTokenDecimals,
            toTokenDecimals,
            true
        );
        if (toBalanceBefore < toTokenAmount) revert("INSUFFICIENT_TREASURY_BALANCE");

        uint256 normalizedAmount = SwapMath.convertDecimals(
            amount,
            fromTokenDecimals,
            DECIMALS,
            false
        );
        // slither-disable-next-line incorrect-equality
        if (amount > 0 && normalizedAmount == 0)
            emit NormalizationZero(fromToken, toToken, amount, fromTokenDecimals);

        uint256 imbalanceRatioBefore = SwapMath.computeImbalanceRatio(
            fromBalanceBefore,
            toBalanceBefore,
            fromTokenDecimals,
            toTokenDecimals
        );
        uint256 imbalanceRatioAfter = SwapMath.computeImbalanceRatio(
            _treasuryTokenBalance(fromToken),
            toBalanceBefore - toTokenAmount,
            fromTokenDecimals,
            toTokenDecimals
        );
        bool isMaker = (imbalanceRatioAfter > imbalanceRatioBefore);

        cumulativeNormalizedVolume += normalizedAmount;
        emit CumulativeVolumeUpdated(cumulativeNormalizedVolume);
        emit SwapExecuted(msg.sender, fromToken, toToken, destination, normalizedAmount, isMaker);
        emit SwapExecutedExtended(
            msg.sender,
            fromToken,
            toToken,
            destination,
            amount,
            toTokenAmount,
            normalizedAmount,
            isMaker
        );
        if (
            poolImbalanceFactor > 0 &&
            imbalanceRatioAfter < SwapMath.computeScaledRatio(poolImbalanceFactor)
        ) {
            emit PoolImbalanceLow(fromToken, toToken, imbalanceRatioAfter, poolImbalanceFactor);
        }

        // slither-disable-next-line reentrancy-balance -- nonReentrant on swap; destBefore/destAfter is exact-delivery check
        uint256 destBefore = IERC20(toToken).balanceOf(destination);
        _treasurySend(toToken, destination, toTokenAmount);
        uint256 actualDelivered = IERC20(toToken).balanceOf(destination) - destBefore;
        if (actualDelivered != toTokenAmount) revert("NON_STANDARD_TOKEN_OUTBOUND");
    }
    // slither-disable-end reentrancy-balance

    /// @dev Consume a destination override approval, reverting on any issues.
    function _consumeDestinationOverrideApproval(
        address trader,
        address fromToken,
        address toToken,
        uint256 amount,
        address destination
    ) internal {
        bytes32 key = Hashing.hash4(trader, fromToken, toToken, destination);
        DestinationOverrideData storage approval = destinationOverrideApprovals[key];

        if (approval.deadline == 0) revert("NO_DEST_OVERRIDE_APPROVAL");

        // Expiry is expressed in block numbers to avoid timestamp manipulation concerns.
        if (approval.deadline < block.number) revert("DEST_OVERRIDE_APPROVAL_EXPIRED");

        if (approval.remainingAmount < amount) revert("INSUFFICIENT_DEST_OVERRIDE_AMT");

        approval.remainingAmount -= amount;

        emit DestinationOverrideApprovalConsumed(
            trader,
            fromToken,
            toToken,
            destination,
            amount,
            approval.remainingAmount
        );
    }

    /// @dev Unified treasury send: routes via ITreasury when treasury is a contract; otherwise uses Permit2 for EOA
    function _treasurySend(address token, address to, uint256 amount) internal {
        // If contract holds funds (globally or per-token override), send from this contract's balance
        if (contractHeldTreasury || tokenHeldInContract[token]) {
            IERC20(token).safeTransfer(to, amount);
            return;
        }

        // Otherwise treasury is an external address. If it's a contract, route via ITreasury.
        if (ValidationLib.isContract(treasury)) {
            ITreasury(treasury).transferToken(token, to, amount);
            return;
        }

        // EOA path: require that contract-only mode is not enforced
        if (requireContractTreasury) revert("TREASURY_MUST_BE_CONTRACT");

        // EOA safety: optional expiry window and caps
        if (eoaModeExpiryBlock != 0 && block.number > eoaModeExpiryBlock)
            revert("EOA_MODE_EXPIRED");

        uint256 perTxCap = eoaMaxPerTx[token];
        if (perTxCap != 0) {
            // Aggregate across the whole transaction (multicall defense)
            bytes32 txKey = _eoaTxKey(token);
            uint256 newAgg = _eoaInTxSent[txKey] + amount;
            if (newAgg > perTxCap) revert("EOA_MAX_PER_TX");
            _eoaInTxSent[txKey] = newAgg;
            emit EOAInTxAggregate(token, newAgg, perTxCap);
        }

        uint256 perBlockCap = eoaMaxPerBlock[token];
        if (perBlockCap != 0) {
            // Reset per token if block changed
            if (eoaSentBlockOf[token] != block.number) {
                eoaSentBlockOf[token] = block.number;
                eoaSentThisBlock[token] = 0;
            }
            uint256 newCum = eoaSentThisBlock[token] + amount;
            if (newCum > perBlockCap) revert("EOA_MAX_PER_BLOCK");
            eoaSentThisBlock[token] = newCum;
        }

        // Use Permit2 to move funds from the EOA treasury without direct ERC20.transferFrom in this contract
        if (permit2 == address(0)) revert("PERMIT2_NOT_SET");
        // Explicit guard for uint160 casting to produce a deterministic revert reason
        if (amount > type(uint160).max) revert("AMOUNT_TOO_LARGE");
        IPermit2(permit2).transferFrom(treasury, to, SafeCast.toUint160(amount), token);
    }

    // setAllowNonStandardToken removed per TOB-FT-SWAPDIFF-2 long-term recommendation.
    // Fee-on-transfer tokens are now unconditionally rejected on all paths.

    /* ------------------------------ Admin Recovery Functions ---------------------------------- */

    /**
     * @notice Recover ERC20 tokens from the external treasury (admin only)
     * @dev Requires the current treasury to be a contract. This routes via ITreasury to avoid
     *      EOA-mode caps and Permit2 mechanics. For recovering tokens held by this SwapPool
     *      contract itself (not the external treasury), use {recoverContractTokens}.
     */
    function recoverTreasuryTokens(
        address token,
        address to,
        uint256 amount
    ) external onlyOwner nonReentrant {
        ValidationLib.validateAddress(token);
        ValidationLib.validateAddress(to);
        ValidationLib.validateAmount(amount);
        if (!ValidationLib.isContract(treasury)) revert("TREASURY_MUST_BE_CONTRACT");
        ITreasury(treasury).transferToken(token, to, amount);
    }

    /**
     * @notice Recover ERC20 tokens sent directly to this contract (admin only)
     * @dev Recovers tokens from the SwapPool contract's own balance (NOT the external treasury). Use
     *      {recoverERC20} for treasury token recovery routed via ITreasury. For migration safety you can
     *      assert that specific registered tokens have zero treasury balance by supplying them in
     *      `tokensMustBeZero`. Pass an empty array when no assertions are needed.
     * @param token The ERC20 token held by this contract to recover
     * @param to Destination address receiving recovered tokens
     * @param amount Amount of tokens to recover (in token's native decimals)
     * @param tokensMustBeZero Optional list of tokens whose treasury balance must be zero (safety assert)
     */
    function recoverContractTokens(
        address token,
        address to,
        uint256 amount,
        address[] calldata tokensMustBeZero
    ) external onlyOwner nonReentrant {
        _recoverContractTokensInternal(token, to, amount, tokensMustBeZero);
    }

    /// @dev Internal implementation for recoverContractTokens to eliminate duplication
    function _recoverContractTokensInternal(
        address token,
        address to,
        uint256 amount,
        address[] memory tokensMustBeZero
    ) internal {
        ValidationLib.validateAddress(token);
        ValidationLib.validateAddress(to);
        ValidationLib.validateAmount(amount);
        if (!paused()) revert("MUST_BE_PAUSED");
        if (tokensMustBeZero.length > 0) {
            _assertZeroBalancesFromArray(tokensMustBeZero);
        }
        if (
            registeredTokens[token].isRegistered &&
            (contractHeldTreasury || tokenHeldInContract[token])
        ) {
            revert("CANNOT_RECOVER_CUSTODIED_TOKEN");
        }
        IERC20(token).safeTransfer(to, amount);
    }

    /* --------------------------------- Governance Toggles ------------------------------------ */

    /// @notice Emitted when a per-transaction aggregated amount is updated for EOA treasury enforcement

    // ----------------------------------------------------------------------------------------
    // TOB-FT-SWAP-1 mitigation: enforce per-transaction cap across multicall by aggregating
    // EOA sends per token within a single transaction. Prevents routers from splitting one
    // logical amount into many subcalls below eoaMaxPerTx[token].
    // Keying: keccak256(token, tx.origin, block.number). This approximates tx scope and is
    // sufficient for aggregation without EIP-1153; consider migrating to transient storage
    // when broadly available. No external interface changes.
    mapping(bytes32 => uint256) private _eoaInTxSent; // key = keccak256(token, tx.origin, block.number)

    function _eoaTxKey(address token) private view returns (bytes32 out) {
        // Optimized tight-pack keccak256(address token, address origin, uint256 blockNumber)
        assembly ("memory-safe") {
            let ptr := mload(0x40)
            // 20 bytes: token
            mstore(ptr, shl(96, token))
            // 20 bytes: tx.origin
            mstore(add(ptr, 20), shl(96, origin()))
            // 32 bytes: block.number
            mstore(add(ptr, 40), number())
            out := keccak256(ptr, 72)
            // bump to next 32-byte slot beyond 72 (use 96 to maintain 32-byte alignment)
            mstore(0x40, add(ptr, 96))
        }
    }

    /// @notice Enable/disable the contract-only treasury requirement for external treasury mode.
    /// @dev If global contract-held mode (contractHeldTreasury) is active, the treasury address is
    ///      ignored (set to address(0)) and we skip the contract check to allow flipping this flag
    ///      after migrating from an EOA. When NOT in contractHeldTreasury mode and enabling this
    ///      flag, the current treasury must be a contract to avoid bricking outbound transfers.
    /// @dev TOB-FT-SWAPDIFF-4: requires paused state to prevent custody-mode changes during active swaps.
    function setRequireContractTreasury(bool enabled) external onlyOwner {
        if (!paused()) revert("MUST_BE_PAUSED");
        if (enabled && !contractHeldTreasury && !ValidationLib.isContract(treasury)) {
            revert("TREASURY_MUST_BE_CONTRACT");
        }
        requireContractTreasury = enabled;
        emit RequireContractTreasuryUpdated(enabled);
    }

    /// @notice Configure an optional expiry block after which EOA mode is disabled (0 to clear)
    /// @dev TOB-FT-SWAPDIFF-4: requires paused state — changing expiry can immediately alter custody routing.
    function setEoaModeExpiryBlock(uint256 expiryBlock) external onlyOwner {
        if (!paused()) revert("MUST_BE_PAUSED");
        eoaModeExpiryBlock = expiryBlock;
        emit EOAModeExpiryUpdated(expiryBlock);
    }

    /// @notice Configure per-token maximum per-transaction amount for EOA treasury mode (0 to remove cap)
    function setEoaMaxPerTx(address token, uint256 maxAmount) external onlyOwner {
        ValidationLib.validateAddress(token);
        eoaMaxPerTx[token] = maxAmount;
        emit EOAMaxPerTxUpdated(token, maxAmount);
    }

    /// @notice Configure per-token maximum cumulative per-block amount for EOA treasury mode (0 to remove cap)
    function setEoaMaxPerBlock(address token, uint256 maxAmount) external onlyOwner {
        ValidationLib.validateAddress(token);
        eoaMaxPerBlock[token] = maxAmount;
        emit EOAMaxPerBlockUpdated(token, maxAmount);
    }

    /// @notice Configure the Permit2 contract address (set to zero to disable Permit2 path)
    function setPermit2(address permit2_) external onlyOwner {
        if (permit2_ != address(0)) {
            if (!ValidationLib.isContract(permit2_)) revert("PERMIT2_MUST_BE_CONTRACT");
        }
        permit2 = permit2_;
        emit Permit2Updated(permit2_);
    }

    /// @dev Computes the canonical hash for a token pair using tight packing.
    function _computeTokenPairHash(address tokenA, address tokenB) internal pure returns (bytes32) {
        return Hashing.tokenPairHash(tokenA, tokenB);
    }

    // SC-M3: _validateDestinationNotTreasury removed — logic consolidated into
    // ValidationLib.validateDestinationNotTreasury with address(this) parameter.

    /// @dev Unified view for treasury token balance to avoid divergence between direct balanceOf and ITreasury abstraction.
    function _treasuryTokenBalance(address token) internal view returns (uint256) {
        if (contractHeldTreasury || tokenHeldInContract[token]) {
            return IERC20(token).balanceOf(address(this));
        }

        if (ValidationLib.isContract(treasury)) {
            return ITreasury(treasury).getTokenBalance(token);
        }
        return IERC20(token).balanceOf(treasury);
    }

    /// @notice Toggle whether the pool contract should hold funds directly.
    /// When enabling, treasury should be address(0). When disabling, caller must set a non-zero treasury first.
    /// @dev F-3 fix: added nonReentrant for consistency with setContractHeldTreasuryWithAssertions.
    function setContractHeldTreasury(bool enabled) external onlyOwner nonReentrant {
        // Safety: require paused to reduce operational risk during custody migrations
        if (!paused()) revert("MUST_BE_PAUSED");
        if (enabled) {
            // Enabling contract-held mode: clear treasury to indicate on-chain custody
            treasury = address(0);
            contractHeldTreasury = true;
            // TOB-FT-SWAPDIFF-5: clear stale pendingTreasury to prevent unilateral treasury injection
            pendingTreasury = address(0);
            emit ContractHeldTreasuryUpdated(true);
        } else {
            // Disabling: require a non-zero treasury to be set via setTreasury
            if (treasury == address(0)) revert("TREASURY_MUST_BE_SET");
            contractHeldTreasury = false;
            emit ContractHeldTreasuryUpdated(false);
        }
    }

    /// @notice Toggle contract-held treasury with zero-balance assertions on provided tokens
    /// @dev Requires paused; asserts zero treasury balance for each token in the list before toggling.
    function setContractHeldTreasuryWithAssertions(
        bool enabled,
        address[] calldata tokensMustBeZero
    ) external onlyOwner nonReentrant {
        if (!paused()) revert("MUST_BE_PAUSED");
        _assertZeroBalancesFromArray(tokensMustBeZero);
        if (enabled) {
            treasury = address(0);
            contractHeldTreasury = true;
            // TOB-FT-SWAPDIFF-5: clear stale pendingTreasury to prevent unilateral treasury injection
            pendingTreasury = address(0);
            emit ContractHeldTreasuryUpdated(true);
        } else {
            if (treasury == address(0)) revert("TREASURY_MUST_BE_SET");
            contractHeldTreasury = false;
            emit ContractHeldTreasuryUpdated(false);
        }
    }

    /// @notice Set a new treasury address when not using contract-held mode. Treasury may be EOA or contract.
    /// @dev TOB-FT-SWAPDIFF-4 fix: requires paused state to prevent custody routing conflicts during active swaps.
    function setTreasury(address newTreasury) external onlyOwner {
        // TOB-FT-SWAPDIFF-4: custody-altering functions must require paused state
        if (!paused()) revert("MUST_BE_PAUSED");
        if (newTreasury == address(0)) revert("ZERO_ADDRESS");
        if (newTreasury == address(this)) revert("TREASURY_CANNOT_BE_SELF");
        if (requireContractTreasury && !ValidationLib.isContract(newTreasury))
            revert("TREASURY_MUST_BE_CONTRACT");
        address old = treasury;
        treasury = newTreasury;
        contractHeldTreasury = false;
        // F-2 fix: clear stale pendingTreasury to prevent race condition where a
        // previously-proposed address could still call acceptTreasury() after the
        // owner bypasses the two-step flow via setTreasury().
        pendingTreasury = address(0);
        emit TreasuryUpdated(old, newTreasury);
    }

    /// @notice Configure per-token custody mode (enables hybrid custody)
    /// @dev TOB-FT-SWAPDIFF-4 fix: requires paused state to prevent custody routing conflicts during active swaps.
    /// @param token The token address to configure
    /// @param heldInContract True to hold this token in the contract, false to use external treasury
    function setTokenHeldInContract(address token, bool heldInContract) external onlyOwner {
        // TOB-FT-SWAPDIFF-4: custody-altering functions must require paused state
        if (!paused()) revert("MUST_BE_PAUSED");
        ValidationLib.validateAddress(token);
        // Prevent redundant overrides when global contract-held mode is enabled.
        if (contractHeldTreasury) revert("REDUNDANT_CUSTODY_OVERRIDE_GLOBAL");
        tokenHeldInContract[token] = heldInContract;
        emit TokenCustodyModeUpdated(token, heldInContract);
    }

    /* ----------------------------- Internal Validation Helpers -------------------------------- */

    /**
     * @dev Assert that each provided token has zero treasury balance.
     * Delegated to AssertionLib for reusability.
     */
    function _assertZeroBalancesFromArray(address[] memory tokens) internal view {
        AssertionLib.assertZeroBalancesFromArray(
            tokens,
            MAX_ASSERT_TOKENS,
            treasury,
            contractHeldTreasury,
            tokenHeldInContract,
            address(this)
        );
    }
}
