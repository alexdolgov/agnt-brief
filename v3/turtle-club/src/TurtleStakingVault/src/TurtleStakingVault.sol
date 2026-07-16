// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import { ERC4626Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC4626Upgradeable.sol";
import { ERC20PermitUpgradeable } from
    "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PermitUpgradeable.sol";
import { ERC20VotesUpgradeable } from
    "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20VotesUpgradeable.sol";
import { AccessManagedUpgradeable } from
    "@openzeppelin/contracts-upgradeable/access/manager/AccessManagedUpgradeable.sol";
import { PausableUpgradeable } from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import { ERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import { NoncesUpgradeable } from "@openzeppelin/contracts-upgradeable/utils/NoncesUpgradeable.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/**
 * @title TurtleStakingVault
 * @notice ERC4626 vault for TURTLE staking. Mints sTURTLE as a governance voting token.
 * The sTURTLE/TURTLE exchange rate is dynamic: it can appreciate as TURTLE accrues in the vault.
 * Redemptions are asynchronous: requestRedeem burns sTURTLE at the current rate and locks the
 * corresponding TURTLE; claimRedeem delivers it after `redeemDelay` seconds.
 * Access control is delegated to an external OpenZeppelin AccessManager.
 */
contract TurtleStakingVault is
    Initializable,
    ERC4626Upgradeable,
    ERC20PermitUpgradeable,
    ERC20VotesUpgradeable,
    AccessManagedUpgradeable,
    PausableUpgradeable,
    UUPSUpgradeable
{
    using SafeERC20 for IERC20;

    struct RedeemRequest {
        uint shares;               // 32 bytes — slot 0
        uint assets;               // 32 bytes — slot 1
        address controller;        // 20 bytes ─┐
        uint64 unlockTimestamp;    //  8 bytes  │ slot 2
        bool claimed;              //  1 byte  ─┘
    }

    /// @custom:storage-location erc7201:turtle.storage.TurtleStakingVault
    struct VaultStorage {
        uint nextRequestId;
        mapping(uint => RedeemRequest) redeemRequests;
        mapping(address => uint[]) controllerRequestIds;
        uint pendingAssets; // TURTLE earmarked for pending claimRedeem calls, excluded from totalAssets
        uint32 redeemDelay; // delay in seconds between requestRedeem and claimRedeem
    }

    /// keccak256(abi.encode(uint(keccak256("turtle.storage.TurtleStakingVault")) - 1)) & ~bytes32(uint(0xff))
    bytes32 private constant STORAGE_LOCATION = 0x4412bf5a483bc201bdbc2d977dea21904a23d52a2e138084f658973185229000;

    /// Minimum time after a request's unlockTimestamp before an admin can rescue it.
    uint public constant RESCUE_DELAY = 365 days;

    /// Initial deposit sent to DEAD_ADDRESS at deployment to mitigate the ERC-4626 inflation attack.
    uint public constant INFLATION_ATTACK_SEED = 1e6;

    /// Recipient of the seed shares — cannot redeem, permanently locking the initial deposit.
    address private constant DEAD_ADDRESS = 0x000000000000000000000000000000000000dEaD;

    // --- Errors ---

    error SyncExitDisabled();
    error ZeroAddress();
    error ZeroShares();
    error ZeroAssets();
    error EmptyIds();
    error AssetDecimalsReverted();
    error NotRequestController(uint requestId, address caller);
    error AlreadyClaimed(uint requestId);
    error RedeemStillLocked(uint requestId, uint unlockTimestamp);
    error RescueDelayNotMet(uint requestId, uint rescueTimestamp);
    error RequestNotFound(uint requestId);

    // --- Events ---

    event RedeemRequested(
        uint indexed requestId,
        address indexed controller, // Address authorised to claim this redeem request after the delay.
        address indexed owner, // Address whose sTURTLE shares were burned.
        address operator, // Address that initiated the call (msg.sender — may differ from owner when acting via allowance).
        uint shares,
        uint assets,
        uint unlockTimestamp
    );
    event RedeemClaimed(uint indexed requestId, address indexed controller, address receiver, uint shares, uint assets);
    event RedeemRescued(uint indexed requestId, address indexed rescuer, address receiver, uint shares, uint assets);
    event RedeemDelayUpdated(uint oldDelay, uint newDelay);

    // --- Constructor & Initializer ---

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initializes the vault.
     * @param _turtle        The TURTLE ERC-20 token (underlying asset).
     * @param _initialDelay  Initial redeem delay in seconds.
     * @param _accessManager Address of the deployed OpenZeppelin AccessManager.
     * @dev Caller must have approved at least INFLATION_ATTACK_SEED of _turtle to this contract
     *      before calling, as initialize mints dead shares to permanently seed the vault.
     */
    function initialize(IERC20 _turtle, uint32 _initialDelay, address _accessManager) external initializer {
        if (address(_turtle) == address(0)) revert ZeroAddress();
        if (_accessManager == address(0)) revert ZeroAddress();

        // ERC4626 silently falls back to 18 decimals if the asset's decimals() reverts.
        // We validate explicitly so a misconfigured asset address fails loudly at deploy time.
        try IERC20Metadata(address(_turtle)).decimals() returns (uint8) { }
        catch { revert AssetDecimalsReverted(); }

        __ERC20_init("Staked TURTLE", "sTURTLE");
        __ERC20Permit_init("Staked TURTLE");
        __ERC20Votes_init();
        __ERC4626_init(_turtle);
        __AccessManaged_init(_accessManager);
        __Pausable_init();
        __UUPSUpgradeable_init();

        _setRedeemDelay(_initialDelay);

        // Permanently seed the vault with dead shares so totalSupply is never zero,
        // eliminating the economic incentive for a first-depositor inflation attack.
        _deposit(msg.sender, DEAD_ADDRESS, INFLATION_ATTACK_SEED, INFLATION_ATTACK_SEED);
    }

    // --- ERC4626: totalAssets excludes TURTLE locked in pending redemptions ---

    /**
     * @notice Returns the TURTLE balance backing active sTURTLE holders.
     * @dev TURTLE earmarked for pending claimRedeem calls is excluded so the exchange
     *      rate for remaining stakers is unaffected by outstanding redemption requests.
     */
    function totalAssets() public view override returns (uint) {
        return super.totalAssets() - _getStorage().pendingAssets;
    }

    // --- ERC4626: disable synchronous exit ---

    /// @dev Returns 0: sync withdraw is disabled; use requestRedeem + claimRedeem.
    function maxWithdraw(address) public pure override returns (uint) {
        return 0;
    }

    /// @dev Returns 0: sync redeem is disabled; use requestRedeem + claimRedeem.
    function maxRedeem(address) public pure override returns (uint) {
        return 0;
    }

    function withdraw(uint, address, address) public pure override returns (uint) {
        revert SyncExitDisabled();
    }

    function redeem(uint, address, address) public pure override returns (uint) {
        revert SyncExitDisabled();
    }

    // --- ERC4626: deposits are pausable; redemptions are not ---

    /// @dev Returns 0 while paused so ERC4626 integrators see deposits are disabled.
    function maxDeposit(
        address receiver
    ) public view override returns (uint) {
        return paused() ? 0 : super.maxDeposit(receiver);
    }

    /// @dev Returns 0 while paused so ERC4626 integrators see deposits are disabled.
    function maxMint(
        address receiver
    ) public view override returns (uint) {
        return paused() ? 0 : super.maxMint(receiver);
    }

    // --- Async redeem ---

    /**
     * @notice Burns sTURTLE from `owner` at the current exchange rate and registers a redeem
     *         request claimable by `controller` after `redeemDelay` seconds.
     * @param shares     Amount of sTURTLE to redeem.
     * @param controller Address that will be authorised to call `claimRedeem` for this request.
     * @param owner      Holder of the sTURTLE shares. Must be `msg.sender`, or `msg.sender` must
     *                   have sufficient ERC-20 allowance over `owner`'s shares (same as ERC4626).
     * @return requestId Unique ID for this request.
     */
    function requestRedeem(
        uint shares,
        address controller,
        address owner
    ) external returns (uint requestId) {
        address sender = _msgSender();
        if (owner != sender) {
            _spendAllowance(owner, sender, shares);
        }
        uint assets = previewRedeem(shares);
        return _requestWithdraw(sender, controller, owner, assets, shares);
    }

    /**
     * @notice Assets-denominated variant of `requestRedeem`. Computes the shares required to
     *         deliver `assets` TURTLE (ceiling-rounded) and registers an async redeem request.
     * @param assets     Amount of TURTLE the caller expects to receive upon claiming.
     * @param controller Address authorised to call `claimRedeem` for this request.
     * @param owner      Holder of the sTURTLE shares. Must be `_msgSender()` or have granted allowance.
     * @return requestId Unique ID for this request.
     */
    function requestWithdraw(
        uint assets,
        address controller,
        address owner
    ) external returns (uint requestId) {
        uint shares = previewWithdraw(assets);
        address sender = _msgSender();
        if (owner != sender) {
            _spendAllowance(owner, sender, shares);
        }
        return _requestWithdraw(sender, controller, owner, assets, shares);
    }

    function _requestWithdraw(
        address caller,
        address controller,
        address owner,
        uint assets,
        uint shares
    ) private returns (uint requestId) {
        if (controller == address(0)) revert ZeroAddress();
        if (shares == 0) revert ZeroShares();
        if (assets == 0) revert ZeroAssets();
        _burn(owner, shares);

        VaultStorage storage $ = _getStorage();
        $.pendingAssets += assets;

        uint64 unlockTimestamp = uint64(block.timestamp + $.redeemDelay);
        requestId = $.nextRequestId++;

        $.redeemRequests[requestId] = RedeemRequest({
            shares: shares,
            assets: assets,
            controller: controller,
            unlockTimestamp: unlockTimestamp,
            claimed: false
        });
        $.controllerRequestIds[controller].push(requestId);

        emit RedeemRequested(requestId, controller, owner, caller, shares, assets, unlockTimestamp);
    }

    /**
     * @notice Claims TURTLE for a matured redeem request.
     *         Caller must be the `controller` registered at request time.
     * @param requestId The ID returned by `requestRedeem`.
     * @param receiver  Address that will receive the TURTLE.
     * @return assets   Amount of TURTLE transferred to `receiver`.
     */
    function claimRedeem(uint requestId, address receiver) external returns (uint assets) {
        if (receiver == address(0)) revert ZeroAddress();
        assets = _processRequest(_getStorage(), requestId, _msgSender(), receiver);
        IERC20(asset()).safeTransfer(receiver, assets);
    }

    /**
     * @notice Claims TURTLE for multiple matured redeem requests in one transaction.
     *         All requests must have `_msgSender()` as controller.
     *         TURTLE is sent to `receiver` in a single transfer.
     * @param ids        Array of request IDs returned by `requestRedeem`.
     * @param receiver   Address that will receive the aggregated TURTLE.
     * @return total     Total amount of TURTLE transferred to `receiver`.
     */
    function claimRedeem(uint[] calldata ids, address receiver) external returns (uint total) {
        if (receiver == address(0)) revert ZeroAddress();
        if (ids.length == 0) revert EmptyIds();
        address sender = _msgSender();
        VaultStorage storage $ = _getStorage();

        for (uint i; i < ids.length; ++i) {
            total += _processRequest($, ids[i], sender, receiver);
        }

        IERC20(asset()).safeTransfer(receiver, total);
    }

    /// @dev Validates a redeem request, marks it claimed, decrements pendingAssets, and
    ///      emits `RedeemClaimed`. Re-entrancy safe: state is mutated before any external
    ///      call in the caller.
    function _processRequest(
        VaultStorage storage $,
        uint requestId,
        address sender,
        address receiver
    ) private returns (uint assets) {
        RedeemRequest storage req = $.redeemRequests[requestId];
        if (req.controller != sender) revert NotRequestController(requestId, sender);
        if (req.claimed) revert AlreadyClaimed(requestId);
        if (block.timestamp < req.unlockTimestamp) revert RedeemStillLocked(requestId, req.unlockTimestamp);

        assets = req.assets;
        req.claimed = true; // re-entrancy guard: mark before transfer
        $.pendingAssets -= assets;
        emit RedeemClaimed(requestId, sender, receiver, req.shares, assets);
    }

    // --- View helpers ---

    /// @notice Returns all requestIds registered under a controller address.
    function requestIds(
        address controller
    ) external view returns (uint[] memory) {
        return _getStorage().controllerRequestIds[controller];
    }

    function totalRequests() external view returns (uint) {
        return _getStorage().nextRequestId;
    }

    function redeemDelay() external view returns (uint) {
        return _getStorage().redeemDelay;
    }

    function pendingAssets() external view returns (uint) {
        return _getStorage().pendingAssets;
    }

    function redeemRequest(
        uint requestId
    ) external view returns (RedeemRequest memory) {
        return _getStorage().redeemRequests[requestId];
    }

    // --- Admin functions ---

    /// @notice Updates the redeem delay. Requires the appropriate role in the AccessManager.
    function setRedeemDelay(
        uint32 newDelay
    ) external restricted {
        _setRedeemDelay(newDelay);
    }

    /**
     * @notice Rescues assets from a redeem request that has remained unclaimed for more than
     *         RESCUE_DELAY (365 days) past its unlockTimestamp. Sends assets to `receiver`.
     * @dev Intended for requests whose controller address is permanently inaccessible.
     *      Requires the appropriate role in the AccessManager.
     */
    function rescueRedeemRequest(uint requestId, address receiver) external restricted {
        if (receiver == address(0)) revert ZeroAddress();
        uint assets = _rescueRequest(_getStorage(), requestId, receiver);
        IERC20(asset()).safeTransfer(receiver, assets);
    }

    /**
     * @notice Batch variant of `rescueRedeemRequest`. Rescues multiple unclaimed requests in one
     *         transaction, sending the aggregated assets to `receiver`.
     * @param ids      Array of request IDs to rescue. All must satisfy the RESCUE_DELAY condition.
     * @param receiver Address that will receive the aggregated TURTLE.
     */
    function rescueRedeemRequests(uint[] calldata ids, address receiver) external restricted {
        if (receiver == address(0)) revert ZeroAddress();
        if (ids.length == 0) revert EmptyIds();
        VaultStorage storage $ = _getStorage();
        uint total;
        for (uint i; i < ids.length; ++i) {
            total += _rescueRequest($, ids[i], receiver);
        }
        IERC20(asset()).safeTransfer(receiver, total);
    }

    /// @dev Validates and processes a single rescue: checks delay, marks claimed, decrements pendingAssets.
    function _rescueRequest(
        VaultStorage storage $,
        uint requestId,
        address receiver
    ) private returns (uint assets) {
        RedeemRequest storage req = $.redeemRequests[requestId];
        if (req.unlockTimestamp == 0) revert RequestNotFound(requestId);
        if (req.claimed) revert AlreadyClaimed(requestId);
        uint rescueTimestamp = req.unlockTimestamp + RESCUE_DELAY;
        if (block.timestamp < rescueTimestamp) revert RescueDelayNotMet(requestId, rescueTimestamp);

        assets = req.assets;
        req.claimed = true;
        $.pendingAssets -= assets;
        emit RedeemRescued(requestId, msg.sender, receiver, req.shares, assets);
    }

    /// @notice Pauses deposits and mints. Redeems and claims remain enabled so users can always exit.
    /// @dev Requires the appropriate role in the AccessManager.
    function pause() external restricted {
        _pause();
    }

    /// @notice Resumes deposits and mints. Requires the appropriate role in the AccessManager.
    function unpause() external restricted {
        _unpause();
    }

    function _setRedeemDelay(
        uint32 newDelay
    ) private {
        VaultStorage storage $ = _getStorage();
        uint oldDelay = $.redeemDelay;
        $.redeemDelay = newDelay;
        emit RedeemDelayUpdated(oldDelay, newDelay);
    }

    /// @notice Authorizes an upgrade. Requires the appropriate role in the AccessManager.
    /// @dev WARNING: configure the upgrade role in the AccessManager before calling upgradeToAndCall,
    ///      otherwise the upgrade will be permanently blocked.
    function _authorizeUpgrade(
        address
    ) internal override restricted { }

    // --- ERC7201 storage accessor ---

    function _getStorage() private pure returns (VaultStorage storage $) {
        assembly {
            $.slot := STORAGE_LOCATION
        }
    }

    // --- Required Solidity overrides ---

    function _update(address from, address to, uint value) internal override(ERC20Upgradeable, ERC20VotesUpgradeable) {
        super._update(from, to, value);
    }

    function nonces(
        address owner
    ) public view override(ERC20PermitUpgradeable, NoncesUpgradeable) returns (uint) {
        return super.nonces(owner);
    }

    function decimals() public view override(ERC20Upgradeable, ERC4626Upgradeable) returns (uint8) {
        return super.decimals();
    }

    function clock() public view override returns (uint48) {
        return uint48(block.timestamp);
    }

    function CLOCK_MODE() public pure override returns (string memory) {
        return "mode=timestamp";
    }
}
