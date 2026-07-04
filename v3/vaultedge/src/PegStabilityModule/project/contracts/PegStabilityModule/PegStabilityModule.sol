// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { AccessControlEnumerableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/AccessControlEnumerableUpgradeable.sol";
import { PausableUpgradeable } from "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import { ReentrancyGuardUpgradeable } from "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import { SafeERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import { IDebtToken } from "../Interfaces/IDebtToken.sol";
import { IPriceFeed } from "../Interfaces/IPriceFeed.sol";
import { IVersionable } from "../Interfaces/IVersionable.sol";
import { PegStabilityModulePriceProtection } from "./PegStabilityModulePriceProtection.sol";
import { LinearThrottleLib } from "./LinearThrottleLib.sol";
import { IPegStabilityModule, IPegStabilityModule_WithInit, IERC165 } from "../Interfaces/IPegStabilityModule.sol";

/**
 * @title PegStabilityModule
 * @notice Generic peg-stability module enabling swaps between a peg token (e.g. USDC) and the protocol debt token.
 * @dev Requires the peg token to be non-rebasing and fee-free. Incoming transfers are validated to reject
 * @dev fee-on-transfer tokens and prevent unexpected behaviors by ensuring exact amounts are received.
 */
contract PegStabilityModule is
    IPegStabilityModule_WithInit,
    IVersionable,
    PegStabilityModulePriceProtection,
    PausableUpgradeable,
    ReentrancyGuardUpgradeable
{
    using SafeERC20 for IERC20Metadata;
    using LinearThrottleLib for LinearThrottleLib.Throttle;

    // ------------------------------------------------------------------------
    // Roles
    // ------------------------------------------------------------------------

    bytes32 public constant CONFIG_ROLE = keccak256("CONFIG_ROLE");
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");

    // ------------------------------------------------------------------------
    // Constants
    // ------------------------------------------------------------------------

    /**
     * @notice Contract version following semantic versioning
     *
     * ## Changelog
     *
     * ### v1.0.1 (March 2026)
     * - Refacror: `previewRedeem` now returns net peg amount (after fee deduction), matching `previewMint` convention
     * - Clarity: renamed return values to `debtReceived`/`pegReceived` and `pegTokenFee` across preview and hook functions
     *
     * ### v1.0.0 (November 2025)
     * - Initial implementation of PegStabilityModule
     * - Bidirectional swap mechanism between peg token and debt token (mint/redeem)
     * - Configurable mint and redeem fees with fee exemption permissions
     * - Linear throttle mechanism for rate-limiting mint and redeem operations
     * - Mint cap and debt floor enforcement for exposure management
     * - Price protection via PegStabilityModulePriceProtection (max deviation checks)
     * - Pausable operations with granular bypass permissions
     * - Role-based access control (DEFAULT_ADMIN_ROLE, CONFIG_ROLE, PAUSER_ROLE)
     * - Configurable fee collateralization (retain peg tokens vs mint debt tokens)
     * - Transfer amount verification to reject fee-on-transfer tokens
     * - Upgradeable via OZ TransparentProxy pattern
     * - Lifecycle hooks for extensibility (_beforeMint, _afterMint, _beforeRedeem, _afterRedeem)
     */

    /// @inheritdoc IVersionable
    function VERSION() external view virtual override returns (string memory) {
        return "1.0.1_PegStabilityModule";
    }

    // ------------------------------------------------------------------------
    // Structs & Storage
    // ------------------------------------------------------------------------

    IDebtToken public debtToken;
    IERC20Metadata public pegToken;
    address public treasury;

    uint256 public mintFee; // precision 1e18 (100% = 1 ether)
    uint256 public redeemFee; // precision 1e18 (100% = 1 ether)
    uint256 public mintCap; // max outstanding debt token exposure (1e18 precision)
    uint256 public debtFloor; // minimum debt token exposure (native decimals)

    // Throttles managing mint/redeem flow
    LinearThrottleLib.Throttle internal mintThrottle;
    LinearThrottleLib.Throttle internal redeemThrottle;
    /// @notice Current amount of debt tokens minted
    uint256 public outstandingDebt;

    uint256 public lifetimeMinted; // lifetime debt token minted (1e18)
    uint256 public lifetimeRedeemed; // lifetime debt token redeemed (1e18)
    uint256 public lifetimeFeesCollected; // lifetime peg token fees (native decimals)

    uint8 public pegTokenDecimals;
    uint256 internal pegToDebtScale; // converts peg token units to 1e18 debt units

    mapping(address => Permissions) public permissionsForAccount;
    address[] public permissionsAccounts;

    /// @notice When true, fees earned are collateralized by retaining peg tokens and minting debt to the treasury
    bool public collateralizeFees;

    // Storage gap reserved for future upgrades (keep near other state vars for clarity).
    uint256[50] private __gap;

    // ------------------------------------------------------------------------
    // Events
    // ------------------------------------------------------------------------

    event TreasuryUpdated(address indexed previousTreasury, address indexed newTreasury);
    event PermissionsUpdated(address indexed account, bool isFeeExempt, bool bypassPause, bool bypassThrottle);
    event PermissionsRevoked(address indexed account);
    event MintFeeUpdated(uint256 previousFee, uint256 newFee);
    event RedeemFeeUpdated(uint256 previousFee, uint256 newFee);
    event MintCapUpdated(uint256 previousCap, uint256 newCap);
    event DebtFloorUpdated(uint256 previousFloor, uint256 newFloor);
    /// @notice Emitted when the mint throttle configuration changes (caps are in debt token units, 18 decimals)
    event MintThrottleUpdated(uint256 previousMaxCap, uint256 newMaxCap, uint48 previousCooldown, uint48 newCooldown);
    /// @notice Emitted when the redeem throttle configuration changes (caps are in debt token units, 18 decimals)
    event RedeemThrottleUpdated(uint256 previousMaxCap, uint256 newMaxCap, uint48 previousCooldown, uint48 newCooldown);
    event DebtMinted(address indexed caller, uint256 pegIn, uint256 feePaid, uint256 debtTokenMinted);
    event DebtRedeemed(address indexed caller, uint256 debtTokenBurned, uint256 pegOut, uint256 feePaid);
    event CollateralizeFeesUpdated(bool previousValue, bool newValue);
    event PegFeeCollected(uint256 pegAmount);
    event DebtFeeCollected(uint256 debtAmount);
    event FeeExceededMintCap(uint256 feeAmount, uint256 outstandingDebt, uint256 mintCap);

    // ------------------------------------------------------------------------
    // Errors
    // ------------------------------------------------------------------------

    error PSM_InvalidAddress(string field);
    error PSM_PegTokenDecimalsUnsupported(uint8 decimals);
    error PSM_DebtTokenDecimalsUnsupported(uint8 decimals);
    error PSM_RemainingDebtBelowFloor(uint256 remaining, uint256 floor);
    error PSM_ZeroAmount();
    error PSM_ZeroOutput();
    error PSM_MintCapExceeded(uint256 attempted, uint256 cap);
    error PSM_PegPrecisionMismatch(uint256 amount, uint256 scale);
    error PSM_ExceedsExposure(uint256 amount, uint256 exposure);
    error PSM_InsufficientPegBalance(uint256 balance, uint256 required);
    error PSM_UnauthorizedMint(address account);
    error PSM_UnauthorizedRedeem(address account);
    error PSM_Paused(address account);
    error PSM_FeeAboveMax();
    error PSM_CapZero();
    error PSM_CapBelowOutstanding(uint256 newCap, uint256 outstanding);
    error PSM_MintThrottleDepleted(uint256 requested, uint256 available);
    error PSM_RedeemThrottleDepleted(uint256 requested, uint256 available);
    error PSM_TransferImbalance(uint256 expected, uint256 actual);

    // ------------------------------------------------------------------------
    // Modifiers
    // ------------------------------------------------------------------------

    modifier whenOperational(address account) {
        _enforcePause(account);
        _;
    }

    // ------------------------------------------------------------------------
    // Initialization
    // ------------------------------------------------------------------------

    function initialize(IPegStabilityModule_WithInit.InitializeParams calldata params) external initializer {
        __PegStabilityModule_init(params);
    }

    function __PegStabilityModule_init(
        IPegStabilityModule_WithInit.InitializeParams calldata params
    ) internal onlyInitializing {
        if (params.admin == address(0)) revert PSM_InvalidAddress("ADMIN");
        if (params.pegToken == address(0)) revert PSM_InvalidAddress("PEG_TOKEN");
        if (params.debtToken == address(0)) revert PSM_InvalidAddress("DEBT_TOKEN");
        if (params.treasury == address(0)) revert PSM_InvalidAddress("TREASURY");
        if (params.priceFeed == address(0)) revert PSM_InvalidAddress("PRICE_FEED");

        __AccessControlEnumerable_init();
        __Pausable_init();
        __ReentrancyGuard_init();
        __PegStabilityModulePriceProtection_init(params.priceFeed, params.pegToken, params.maxPriceDeviation);

        /**
         * Configure Roles
         */
        _setRoleAdmin(CONFIG_ROLE, DEFAULT_ADMIN_ROLE);
        _setRoleAdmin(PAUSER_ROLE, DEFAULT_ADMIN_ROLE);

        _grantRole(DEFAULT_ADMIN_ROLE, params.admin);
        _grantRole(CONFIG_ROLE, params.admin);

        _configureRoleBatch(CONFIG_ROLE, params.configAdmins);
        _configureRoleBatch(PAUSER_ROLE, params.pausers);

        (bool feeExemptIsAllowed, bool bypassPauseNotAllowed, bool bypassThrottleNotAllowed) = (true, false, false);
        for (uint256 i = 0; i < params.initialBypass.length; i++) {
            address actor = params.initialBypass[i];
            if (actor == address(0)) continue;
            _setPermissions(actor, feeExemptIsAllowed, bypassPauseNotAllowed, bypassThrottleNotAllowed);
        }

        /**
         * Initialize State
         */
        pegToken = IERC20Metadata(params.pegToken);
        debtToken = IDebtToken(params.debtToken);
        treasury = params.treasury;

        // Handle differences in token decimals
        uint8 debtDecimals = IERC20Metadata(address(debtToken)).decimals();
        if (debtDecimals != 18) revert PSM_DebtTokenDecimalsUnsupported(debtDecimals);

        pegTokenDecimals = pegToken.decimals();
        if (pegTokenDecimals > 18) revert PSM_PegTokenDecimalsUnsupported(pegTokenDecimals);
        pegToDebtScale = 10 ** (18 - pegTokenDecimals);

        _setMintFee(params.mintFee);
        _setRedeemFee(params.redeemFee);
        collateralizeFees = false;

        _setMintCap(params.mintCap);
        _setDebtFloor(params.mintFloor);
        mintThrottle.initialize();
        redeemThrottle.initialize();
    }

    // ------------------------------------------------------------------------
    // Hooks
    // ------------------------------------------------------------------------

    /// @notice Hook that is called before minting debt tokens
    function _beforeMint(address account, uint256 pegIn, uint256 debtOut, uint256 pegTokenFee) internal virtual {}

    /// @notice Hook that is called after minting debt tokens
    function _afterMint(address account, uint256 pegIn, uint256 debtOut, uint256 pegTokenFee) internal virtual {}

    /// @notice Hook that is called before redeeming debt tokens
    /// @param grossPegOut Total peg tokens needed (user receives grossPegOut - pegTokenFee)
    function _beforeRedeem(address account, uint256 debtIn, uint256 grossPegOut, uint256 pegTokenFee) internal virtual {}

    /// @notice Hook that is called after redeeming debt tokens
    /// @param grossPegOut Total peg tokens needed (user receives grossPegOut - pegTokenFee)
    function _afterRedeem(address account, uint256 debtIn, uint256 grossPegOut, uint256 pegTokenFee) internal virtual {}

    // ------------------------------------------------------------------------
    // Minting
    // ------------------------------------------------------------------------

    /// @inheritdoc IPegStabilityModule
    function previewMint(
        uint256 pegAmount,
        address account
    ) external view override returns (uint256 debtReceived, uint256 pegTokenFee) {
        pegTokenFee = _calculateFee(pegAmount, mintFee, account);
        uint256 netPeg = pegTokenFee >= pegAmount ? 0 : pegAmount - pegTokenFee;
        debtReceived = _toDebtTokenAmount(netPeg);
    }

    /// @inheritdoc IPegStabilityModule
    function mint(uint256 pegAmount) external override nonReentrant whenOperational(msg.sender) {
        if (pegAmount == 0) revert PSM_ZeroAmount();

        // Validate peg token price before minting
        _validatePegPrice();

        uint256 pegTokenFee = _calculateFee(pegAmount, mintFee, msg.sender);
        uint256 netPeg = pegAmount - pegTokenFee;
        if (netPeg == 0) revert PSM_ZeroOutput();

        uint256 debtAmount = _toDebtTokenAmount(netPeg);
        // Apply throttle using debt token amount for consistency (always 18 decimals)
        _applyMintThrottle(msg.sender, debtAmount);

        if (outstandingDebt + debtAmount > mintCap) revert PSM_MintCapExceeded(outstandingDebt + debtAmount, mintCap);

        // Call before hook
        _beforeMint(msg.sender, pegAmount, debtAmount, pegTokenFee);

        uint256 balanceBefore = pegToken.balanceOf(address(this));
        pegToken.safeTransferFrom(msg.sender, address(this), pegAmount);
        _verifyTransferAmount(pegToken, pegAmount, balanceBefore);

        outstandingDebt += debtAmount;
        lifetimeMinted += debtAmount;

        debtToken.mintFromWhitelistedContract(debtAmount);
        IERC20Metadata(address(debtToken)).safeTransfer(msg.sender, debtAmount);

        _collectPegFees(pegTokenFee);

        emit DebtMinted(msg.sender, pegAmount, pegTokenFee, debtAmount);

        // Call after hook
        _afterMint(msg.sender, pegAmount, debtAmount, pegTokenFee);
    }

    // ------------------------------------------------------------------------
    // Redeeming
    // ------------------------------------------------------------------------

    /// @inheritdoc IPegStabilityModule
    function previewRedeem(
        uint256 debtAmount,
        address account
    ) public view override returns (uint256 pegReceived, uint256 pegTokenFee) {
        uint256 grossPeg = _toPegTokenAmount(debtAmount);
        pegTokenFee = _calculateFee(grossPeg, redeemFee, account);
        pegReceived = grossPeg - pegTokenFee;
    }

    /// @inheritdoc IPegStabilityModule
    function redeem(uint256 debtAmount) external override nonReentrant whenOperational(msg.sender) {
        if (debtAmount == 0) revert PSM_ZeroAmount();
        if (debtAmount % pegToDebtScale != 0) revert PSM_PegPrecisionMismatch(debtAmount, pegToDebtScale);
        if (debtAmount > outstandingDebt) revert PSM_ExceedsExposure(debtAmount, outstandingDebt);

        // Validate peg token price before redeeming
        _validatePegPrice();

        // Apply throttle using debt token amount for consistency (always 18 decimals)
        _applyRedeemThrottle(msg.sender, debtAmount);

        // Calculate remaining debt after this redemption
        uint256 remaining = outstandingDebt - debtAmount;

        // Enforce debt floor - remaining debt must be at least the floor
        if (remaining < debtFloor) {
            revert PSM_RemainingDebtBelowFloor(remaining, debtFloor);
        }

        (uint256 pegRedeemed, uint256 pegTokenFee) = previewRedeem(debtAmount, msg.sender);
        if (pegRedeemed == 0) revert PSM_ZeroOutput();

        uint256 grossPeg = pegRedeemed + pegTokenFee;

        // Allow derived contracts to prepare liquidity (e.g., pull from strategy) before enforcing balance check.
        // Pass grossPeg so strategy withdraws enough to cover user payout + fee retention.
        _beforeRedeem(msg.sender, debtAmount, grossPeg, pegTokenFee);

        uint256 balance = pegToken.balanceOf(address(this));
        if (grossPeg > balance) revert PSM_InsufficientPegBalance(balance, grossPeg);

        IERC20Metadata(address(debtToken)).safeTransferFrom(msg.sender, address(this), debtAmount);
        debtToken.burnFromWhitelistedContract(debtAmount);

        outstandingDebt -= debtAmount;
        lifetimeRedeemed += debtAmount;

        _collectPegFees(pegTokenFee);
        pegToken.safeTransfer(msg.sender, pegRedeemed);

        emit DebtRedeemed(msg.sender, debtAmount, pegRedeemed, pegTokenFee);

        // Call after hook
        _afterRedeem(msg.sender, debtAmount, grossPeg, pegTokenFee);
    }

    // ------------------------------------------------------------------------
    // Admin setters (DEFAULT_ADMIN_ROLE)
    // ------------------------------------------------------------------------

    /// @inheritdoc IPegStabilityModule
    function setTreasury(address newTreasury) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        if (newTreasury == address(0)) revert PSM_InvalidAddress("TREASURY");
        emit TreasuryUpdated(treasury, newTreasury);
        treasury = newTreasury;
    }

    /// @inheritdoc IPegStabilityModule
    function setPermissions(
        address account,
        bool isFeeExempt,
        bool canBypassPause,
        bool canBypassThrottle
    ) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        _setPermissions(account, isFeeExempt, canBypassPause, canBypassThrottle);
    }

    function _setPermissions(address account, bool isFeeExempt, bool canBypassPause, bool canBypassThrottle) internal {
        // Deactivate account
        if (!isFeeExempt && !canBypassPause && !canBypassThrottle) {
            // Remove account from permissionsAccounts array
            for (uint256 i = 0; i < permissionsAccounts.length; i++) {
                if (permissionsAccounts[i] == account) {
                    permissionsAccounts[i] = permissionsAccounts[permissionsAccounts.length - 1];
                    permissionsAccounts.pop();
                    break;
                }
            }
            delete permissionsForAccount[account];
            emit PermissionsRevoked(account);
            return;
        }

        if (!permissionsForAccount[account].registered) {
            permissionsAccounts.push(account);
        }
        permissionsForAccount[account] = Permissions({
            registered: true,
            isFeeExempt: isFeeExempt,
            canBypassPause: canBypassPause,
            canBypassThrottle: canBypassThrottle
        });
        emit PermissionsUpdated(account, isFeeExempt, canBypassPause, canBypassThrottle);
    }

    // ------------------------------------------------------------------------
    // Fee setters (CONFIG_ROLE)
    // ------------------------------------------------------------------------

    /// @inheritdoc IPegStabilityModule
    function setMintFee(uint256 newFee) external override onlyRole(CONFIG_ROLE) {
        _setMintFee(newFee);
    }

    function _setMintFee(uint256 newFee) internal {
        if (newFee > PRECISION) revert PSM_FeeAboveMax();
        emit MintFeeUpdated(mintFee, newFee);
        mintFee = newFee;
    }

    /// @inheritdoc IPegStabilityModule
    function setRedeemFee(uint256 newFee) external override onlyRole(CONFIG_ROLE) {
        _setRedeemFee(newFee);
    }

    function _setRedeemFee(uint256 newFee) internal {
        if (newFee > PRECISION) revert PSM_FeeAboveMax();
        emit RedeemFeeUpdated(redeemFee, newFee);
        redeemFee = newFee;
    }

    /// @notice Toggles whether fees sent as peg tokens or debt tokens.
    /// @param shouldCollateralize True to retain peg fees and mint debt to the treasury, false to transfer peg fees out
    function setCollateralizeFees(bool shouldCollateralize) external override onlyRole(CONFIG_ROLE) {
        if (collateralizeFees != shouldCollateralize) {
            emit CollateralizeFeesUpdated(collateralizeFees, shouldCollateralize);
            collateralizeFees = shouldCollateralize;
        }
    }

    // ------------------------------------------------------------------------
    // Cap setters (CONFIG_ROLE)
    // ------------------------------------------------------------------------

    /// @inheritdoc IPegStabilityModule
    function setMintCap(uint256 newCap) external override onlyRole(CONFIG_ROLE) {
        _setMintCap(newCap);
    }

    function _setMintCap(uint256 newCap) internal {
        if (newCap == 0) revert PSM_CapZero();
        if (newCap < outstandingDebt) revert PSM_CapBelowOutstanding(newCap, outstandingDebt);
        emit MintCapUpdated(mintCap, newCap);
        mintCap = newCap;
    }

    /// @inheritdoc IPegStabilityModule
    function setDebtFloor(uint256 newFloor) external override onlyRole(CONFIG_ROLE) {
        _setDebtFloor(newFloor);
    }

    function _setDebtFloor(uint256 newFloor) internal {
        emit DebtFloorUpdated(debtFloor, newFloor);
        debtFloor = newFloor;
    }

    // ------------------------------------------------------------------------
    // Throttle management Views
    // ------------------------------------------------------------------------

    /// @inheritdoc IPegStabilityModule
    function mintThrottleAvailable() external view override returns (uint256) {
        return mintThrottle.projectedAvailable();
    }

    /// @inheritdoc IPegStabilityModule
    function redeemThrottleAvailable() external view override returns (uint256) {
        return redeemThrottle.projectedAvailable();
    }

    /// @inheritdoc IPegStabilityModule
    function getMintThrottle() external view override returns (ThrottleState memory state) {
        state.maxAmount = mintThrottle.cap;
        state.refillDuration = mintThrottle.duration;
        state.available = mintThrottle.projectedAvailable();
        state.refillRate = mintThrottle.refillRate;
        state.lastUpdated = mintThrottle.lastUpdated;
    }

    /// @inheritdoc IPegStabilityModule
    function getRedeemThrottle() external view override returns (ThrottleState memory state) {
        state.maxAmount = redeemThrottle.cap;
        state.refillDuration = redeemThrottle.duration;
        state.available = redeemThrottle.projectedAvailable();
        state.refillRate = redeemThrottle.refillRate;
        state.lastUpdated = redeemThrottle.lastUpdated;
    }

    // ------------------------------------------------------------------------
    // Throttle management (CONFIG_ROLE)
    // ------------------------------------------------------------------------

    /// @inheritdoc IPegStabilityModule
    function setMintThrottle(
        uint256 newMaxDebtAmount,
        uint48 newRefillDuration
    ) external override onlyRole(CONFIG_ROLE) {
        uint256 previousCap = mintThrottle.cap;
        uint48 previousDuration = mintThrottle.duration;

        mintThrottle.configure(newMaxDebtAmount, newRefillDuration);

        emit MintThrottleUpdated(previousCap, newMaxDebtAmount, previousDuration, newRefillDuration);
    }

    /// @inheritdoc IPegStabilityModule
    function setRedeemThrottle(
        uint256 newMaxDebtAmount,
        uint48 newRefillDuration
    ) external override onlyRole(CONFIG_ROLE) {
        uint256 previousCap = redeemThrottle.cap;
        uint48 previousDuration = redeemThrottle.duration;

        redeemThrottle.configure(newMaxDebtAmount, newRefillDuration);

        emit RedeemThrottleUpdated(previousCap, newMaxDebtAmount, previousDuration, newRefillDuration);
    }

    /// @dev Applies the mint throttle using a linear refill model. Reverts when capacity is exhausted.
    /// @param account The account performing the mint operation
    /// @param debtAmount The amount of debt tokens being minted (18 decimals)
    function _applyMintThrottle(address account, uint256 debtAmount) internal {
        if (debtAmount == 0) {
            return;
        }

        Permissions memory perms = permissionsForAccount[account];
        if (perms.canBypassThrottle || !mintThrottle.isEnabled()) {
            return;
        }

        uint256 available = mintThrottle.refresh();
        if (debtAmount > available) {
            revert PSM_MintThrottleDepleted(debtAmount, available);
        }

        mintThrottle.consume(debtAmount);
    }

    /// @dev Applies the redeem throttle using a linear refill model. Reverts when capacity is exhausted.
    /// @param account The account performing the redeem operation
    /// @param debtAmount The amount of debt tokens being redeemed (18 decimals)
    function _applyRedeemThrottle(address account, uint256 debtAmount) internal {
        if (debtAmount == 0) {
            return;
        }

        Permissions memory perms = permissionsForAccount[account];
        if (perms.canBypassThrottle || !redeemThrottle.isEnabled()) {
            return;
        }

        uint256 available = redeemThrottle.refresh();
        if (debtAmount > available) {
            revert PSM_RedeemThrottleDepleted(debtAmount, available);
        }

        redeemThrottle.consume(debtAmount);
    }

    // ------------------------------------------------------------------------
    // Abstract Function Implementations (for PegStabilityModulePriceProtection)
    // ------------------------------------------------------------------------

    /// @dev Returns the peg token address for price protection functionality
    function _getPegToken() internal view override returns (IERC20Metadata) {
        return pegToken;
    }

    /// @dev Returns the CONFIG_ROLE for price protection functionality
    function _getConfigRole() internal pure override returns (bytes32) {
        return CONFIG_ROLE;
    }

    // ------------------------------------------------------------------------
    // Pause controls (PAUSER_ROLE)
    // ------------------------------------------------------------------------

    /// @inheritdoc IPegStabilityModule
    function pause() external override onlyRole(PAUSER_ROLE) {
        _pause();
    }

    /// @inheritdoc IPegStabilityModule
    function unpause() external override onlyRole(DEFAULT_ADMIN_ROLE) {
        _unpause();
    }

    function _enforcePause(address account) internal view {
        if (paused() && !permissionsForAccount[account].canBypassPause) revert PSM_Paused(account);
    }

    // ------------------------------------------------------------------------
    // Internal helpers
    // ------------------------------------------------------------------------

    function _configureRoleBatch(bytes32 role, address[] calldata members) internal {
        for (uint256 i = 0; i < members.length; i++) {
            address member = members[i];
            if (member == address(0)) continue;
            _grantRole(role, member);
        }
    }

    function _calculateFee(uint256 amount, uint256 feeRate, address payer) internal view returns (uint256) {
        if (amount == 0 || permissionsForAccount[payer].isFeeExempt) {
            return 0;
        }
        return (amount * feeRate) / PRECISION;
    }

    function _toDebtTokenAmount(uint256 pegAmount) internal view returns (uint256) {
        return pegAmount * pegToDebtScale;
    }

    function _toPegTokenAmount(uint256 debtAmount) internal view returns (uint256) {
        return debtAmount / pegToDebtScale;
    }

    /// @dev Verifies that the actual INCOMING token transfer matches expected amount
    /// @dev Protects against fee-on-transfer tokens and unexpected token behaviors on mints
    /// @dev Only used for incoming transfers; outgoing transfers are not checked to avoid bricking redemptions
    /// @param token The ERC20 token being verified
    /// @param expectedAmount The amount expected to be received
    /// @param balanceBefore The balance before the transfer
    function _verifyTransferAmount(IERC20Metadata token, uint256 expectedAmount, uint256 balanceBefore) internal view {
        uint256 balanceAfter = token.balanceOf(address(this));
        uint256 actualReceived = balanceAfter - balanceBefore;

        if (actualReceived != expectedAmount) {
            revert PSM_TransferImbalance(expectedAmount, actualReceived);
        }
    }

    /// @notice Collects peg fees by either transferring to treasury directly or collateralizing them as debt tokens
    /// @dev This function handles multiple fee collection scenarios based on configuration and constraints:
    /// 1. Early exit if no fees to collect
    /// 2. Direct peg token transfer when fee collateralization is disabled
    /// 3. Fallback to direct transfer if debt minting would exceed the mint cap
    /// 4. Normal path: convert fee to debt equivalent, mint debt tokens, and transfer to treasury
    /// @param fee The amount of peg tokens collected as fees to be processed
    function _collectPegFees(uint256 fee) internal {
        // Early return path: no fees collected, nothing to process
        if (fee == 0) {
            return;
        }

        lifetimeFeesCollected += fee;

        // Path 1: Fee collateralization disabled - transfer peg tokens directly to treasury
        if (!collateralizeFees) {
            pegToken.safeTransfer(treasury, fee);
            emit PegFeeCollected(fee);
            return;
        }

        uint256 debtForFee = _toDebtTokenAmount(fee);
        // Path 2: Mint cap constraint - would exceed limit if collateralized, so transfer peg tokens directly
        if (outstandingDebt + debtForFee > mintCap) {
            emit FeeExceededMintCap(debtForFee, outstandingDebt, mintCap);
            pegToken.safeTransfer(treasury, fee);
            emit PegFeeCollected(fee);
            return;
        }

        // Path 3: Normal collateralization - mint debt tokens equivalent to peg fee value and transfer to treasury
        // Throttle check for fee debt — fall back to direct transfer if throttle exceeded
        if (mintThrottle.isEnabled()) {
            uint256 available = mintThrottle.refresh();
            if (debtForFee > available) {
                pegToken.safeTransfer(treasury, fee);
                emit PegFeeCollected(fee);
                return;
            }
            mintThrottle.consume(debtForFee);
        }

        outstandingDebt += debtForFee;
        lifetimeMinted += debtForFee;
        debtToken.mintFromWhitelistedContract(debtForFee);
        IERC20Metadata(address(debtToken)).safeTransfer(treasury, debtForFee);
        emit DebtFeeCollected(debtForFee);
    }

    // ------------------------------------------------------------------------
    // ERC165
    // ------------------------------------------------------------------------

    function supportsInterface(
        bytes4 interfaceId
    ) public view virtual override(IERC165, AccessControlEnumerableUpgradeable) returns (bool) {
        return interfaceId == type(IPegStabilityModule).interfaceId || super.supportsInterface(interfaceId);
    }
}
