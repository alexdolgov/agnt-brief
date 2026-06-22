// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;
import {ERC4626} from "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";
import {IHook} from "./interfaces/IHook.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/// @title Based ERC4626 vault with timelocked governance, optional hook, and external treasury
/// @notice ERC4626 vault that can delegate portfolio operations and fee logic to an external hook, with timelocked config changes.
/// @dev
/// - If a hook is set (hook != address(0)):
///   - Deposits, withdrawals, and transfers call the hook's callbacks and emit ERC4626/ERC20 events but do not perform the base state transitions.
///   - totalAssets() defers to hook.portfolioValue().
///   - Fees are managed via the hook (setFee/claimFee).
/// - If no hook is set:
///   - Standard ERC4626 behavior, except assets may be moved to an external treasury after deposit and pulled back before withdraw.
/// - A global deposit cap is enforced on deposits.
/// - Governance parameters (cap, timelock, fee) are staged and applied after the current timelock has elapsed.
/// - Roles:
///   - admin: full control (including setting hook, guardians, curators, transferring admin).
///   - guardian: can veto staged changes.
///   - curator: operational role for higher-level vaults/markets using this vault.
contract BasedVault is ERC4626 {
    /// @notice Pending deposit cap proposal subject to timelock.
    struct PendingCap {
        /// @notice Proposed cap in asset units.
        uint256 cap;
        /// @notice Timestamp when the cap was proposed.
        uint256 timestamp;
    }

    /// @notice Pending timelock proposal subject to current timelock.
    struct PendingTimelock {
        /// @notice Proposed timelock (seconds).
        uint256 timelock;
        /// @notice Timestamp when the timelock was proposed.
        uint256 timestamp;
    }

    /// @notice Pending fee proposal for the hook, subject to timelock.
    struct PendingFee {
        /// @notice Proposed fee value; semantics are defined by the hook.
        uint256 fee;
        /// @notice Timestamp when the fee was proposed.
        uint256 timestamp;
    }

    /// @notice Maximum total assets allowed in the vault.
    /// @dev Checked on deposit. Initialized to uint256 max.
    uint256 public cap = type(uint256).max;

    /// @notice Global timelock used for accepting staged updates.
    /// @dev Timelock itself is also timelocked when changed.
    uint256 public timelock = 0;

    /// @notice Address with admin permissions.
    address public admin;

    /// @notice Address with guardian permissions (can veto staged updates).
    address public guardian;

    /// @notice Treasury that holds underlying assets when no hook is set.
    /// @dev If zero address is passed to the constructor, treasury defaults to this contract.
    address public immutable treasury;

    /// @notice Optional hook contract that implements portfolio and fee logic.
    IHook public hook;

    /// @notice Currently staged cap update.
    PendingCap public pendingCap;

    /// @notice Currently staged timelock update.
    PendingTimelock public pendingTimelock;

    /// @notice Currently staged fee update for the hook.
    PendingFee public pendingFee;

    /// @notice Curator role registry.
    mapping(address => bool) public isCurator;

    /// @notice Initialize the vault with metadata, asset, and treasury.
    /// @param _name ERC20 name of the share token.
    /// @param _symbol ERC20 symbol of the share token.
    /// @param _asset Address of the underlying ERC20 asset (ERC4626 asset()).
    /// @param _treasury Treasury address; if zero, defaults to this contract.
    constructor(
        string memory _name,
        string memory _symbol,
        address _asset,
        address _treasury
    ) ERC4626(IERC20(_asset)) ERC20(_name, _symbol) {
        admin = msg.sender;
        if (_treasury != address(0)) {
            treasury = _treasury;
        } else {
            treasury = address(this);
        }
    }

    /// @notice Emitted when the hook address is updated.
    /// @param newHook Address of the new hook contract (may be zero to disable).
    event HookUpdated(address indexed newHook);

    /// @notice Reverts when a deposit would exceed the configured cap.
    error CapExceeded();

    /// @notice Reverts when attempting to accept a staged update before the timelock expires.
    error TimelockNotExpired();

    /// @notice Restricts functions to admin only.
    modifier onlyAdmin() {
        require(msg.sender == admin, "Not admin");
        _;
    }

    /// @notice Restricts functions to curator only.
    modifier onlyCurator() {
        require(isCurator[msg.sender], "Not a Curator");
        _;
    }

    /// @notice Restricts functions to guardian only.
    modifier onlyGuardian() {
        require(msg.sender == guardian, "Not guardian");
        _;
    }

    /// @notice Restricts functions to curator or admin.
    modifier onlyCuratorOrAdmin() {
        require(
            isCurator[msg.sender] || msg.sender == admin,
            "Not a Curator or Admin"
        );
        _;
    }

    /// @notice Stage a new deposit cap subject to timelock.
    /// @dev Accept with acceptCap() after timelock has elapsed.
    /// @param _cap Proposed cap in asset units.
    function setCap(uint256 _cap) external onlyCuratorOrAdmin {
        pendingCap = PendingCap({cap: _cap, timestamp: block.timestamp});
    }

    /// @notice Veto a pending cap change.
    /// @dev Only guardian can veto.
    function vetoPendingCap() external onlyGuardian {
        delete pendingCap;
    }

    /// @notice Accept a staged deposit cap after timelock expiry.
    /// @dev Reverts with TimelockNotExpired if not enough time has passed.
    function acceptCap() external {
        if (pendingCap.timestamp + timelock >= block.timestamp)
            revert TimelockNotExpired();
        cap = pendingCap.cap;
        delete pendingCap;
    }

    /// @notice Stage a new timelock value subject to the current timelock.
    /// @dev Accept with acceptTimelock() after the current timelock has elapsed.
    /// @param _timelock Proposed timelock in seconds.
    function setTimelock(uint256 _timelock) external onlyCuratorOrAdmin {
        pendingTimelock = PendingTimelock({
            timelock: _timelock,
            timestamp: block.timestamp
        });
    }

    /// @notice Veto a pending timelock change.
    /// @dev Only guardian can veto.
    function vetoPendingTimelock() external onlyGuardian {
        delete pendingTimelock;
    }

    /// @notice Accept a staged timelock after the current timelock expires.
    /// @dev Reverts with TimelockNotExpired if not enough time has passed.
    function acceptTimelock() external {
        if (pendingTimelock.timestamp + timelock >= block.timestamp)
            revert TimelockNotExpired();
        timelock = pendingTimelock.timelock;
        delete pendingTimelock;
    }

    /// @notice Stage a new fee for the hook subject to timelock.
    /// @dev Fee semantics are defined by the hook implementation.
    /// @param _fee Proposed fee value to be set on the hook.
    function setFee(uint256 _fee) external onlyCuratorOrAdmin {
        pendingFee = PendingFee({fee: _fee, timestamp: block.timestamp});
    }

    /// @notice Veto a pending fee change.
    /// @dev Only guardian can veto.
    function vetoPendingFee() external onlyGuardian {
        delete pendingFee;
    }

    /// @notice Accept a staged fee after timelock expiry and apply it to the hook.
    /// @dev No-op if hook is unset. Reverts with TimelockNotExpired if not enough time has passed.
    function acceptFee() external {
        if (pendingFee.timestamp + timelock >= block.timestamp)
            revert TimelockNotExpired();
        if (address(hook) != address(0)) {
            hook.setFee(pendingFee.fee);
        }
        delete pendingFee;
    }

    /// @notice Set or replace the hook contract.
    /// @dev Access: onlyAdmin.
    /// @param _hook Address of the new hook (set to zero to disable).
    function setHook(address _hook) external onlyAdmin {
        hook = IHook(_hook);
        emit HookUpdated(_hook);
    }

    /// @notice Grant or revoke curator status.
    /// @dev Access: onlyAdmin.
    /// @param curator Address to update.
    /// @param status True to grant, false to revoke.
    function setCurator(address curator, bool status) external onlyAdmin {
        isCurator[curator] = status;
    }

    /// @notice Set the guardian address.
    /// @dev Access: onlyAdmin.
    /// @param _guardian New guardian.
    function setGuardian(address _guardian) external onlyAdmin {
        guardian = _guardian;
    }

    /// @notice Transfer admin role to a new address.
    /// @dev Access: onlyAdmin.
    /// @param newAdmin New admin address.
    function transferAdmin(address newAdmin) external onlyAdmin {
        admin = newAdmin;
    }

    /// @notice ERC20 transfer override to invoke hook callback when set.
    /// @dev Calls hook.onTransfer(sender, to, shares) before performing the transfer.
    /// @param to Recipient address.
    /// @param shares Amount of shares to transfer.
    /// @return success True if the transfer succeeded.
    function transfer(
        address to,
        uint256 shares
    ) public override(ERC20, IERC20) returns (bool) {
        if (address(hook) != address(0)) {
            hook.onTransfer(msg.sender, to, shares);
        }
        return super.transfer(to, shares);
    }

    /// @notice ERC20 transferFrom override to invoke hook callback when set.
    /// @dev Calls hook.onTransfer(from, to, shares) before performing the transferFrom.
    /// @param from Owner address.
    /// @param to Recipient address.
    /// @param shares Amount of shares to transfer.
    /// @return success True if the transfer succeeded.
    function transferFrom(
        address from,
        address to,
        uint256 shares
    ) public override(ERC20, IERC20) returns (bool) {
        if (address(hook) != address(0)) {
            hook.onTransfer(from, to, shares);
        }
        return super.transferFrom(from, to, shares);
    }

    /// @notice Internal deposit hook enforcing cap and delegating to hook or base behavior.
    /// @dev
    /// - Reverts with CapExceeded if assets + totalAssets() > cap.
    /// - If hook is set and caller != hook: calls hook.onDeposit(...) and emits Deposit without executing base deposit.
    /// - Otherwise performs base deposit and, if treasury != this, transfers assets to treasury.
    /// @param caller Initiator of the deposit.
    /// @param receiver Receiver of shares.
    /// @param assets Amount of underlying assets to deposit.
    /// @param shares Amount of shares to mint.
    function _deposit(
        address caller,
        address receiver,
        uint256 assets,
        uint256 shares
    ) internal override {
        if (assets + totalAssets() > cap) revert CapExceeded();
        if (address(hook) != address(0) && caller != address(hook)) {
            hook.onDeposit(caller, receiver, assets, shares);
            emit Deposit(caller, receiver, assets, shares);
        } else {
            super._deposit(caller, receiver, assets, shares);
            if (treasury != address(this)) {
                IERC20(asset()).transfer(treasury, assets);
            }
        }
    }

    /// @notice Internal withdraw hook delegating to hook or base behavior.
    /// @dev
    /// - If hook is set and caller != hook: calls hook.onWithdraw(...) and emits Withdraw without executing base withdraw.
    /// - Otherwise, if treasury != this, pulls assets from treasury, then performs base withdraw.
    /// @param caller Initiator of the withdrawal.
    /// @param receiver Receiver of assets.
    /// @param owner Owner of shares to burn.
    /// @param assets Amount of underlying assets to withdraw.
    /// @param shares Amount of shares to burn.
    function _withdraw(
        address caller,
        address receiver,
        address owner,
        uint256 assets,
        uint256 shares
    ) internal override {
        if (address(hook) != address(0) && caller != address(hook)) {
            hook.onWithdraw(caller, receiver, owner, assets, shares);
            emit Withdraw(caller, receiver, owner, assets, shares);
        } else {
            if (treasury != address(this)) {
                IERC20(asset()).transferFrom(treasury, address(this), assets);
            }
            super._withdraw(caller, receiver, owner, assets, shares);
        }
    }

    /// @notice Total managed assets in the vault.
    /// @dev If a hook is set, defers to hook.portfolioValue(); otherwise uses ERC4626 accounting.
    /// @return total Total asset amount managed by the vault.
    function totalAssets() public view virtual override returns (uint256) {
        if (address(hook) != address(0)) {
            return hook.portfolioValue();
        }
        return super.totalAssets();
    }

    /// @notice Claim accrued fees from the hook and forward to the recipient.
    /// @dev
    /// - No-op if hook is unset or amount is zero.
    /// - If treasury == this, pays directly from this contract; else pulls from treasury via transferFrom.
    function claimFee() external {
        if (address(hook) != address(0)) {
            (address recipient, uint256 amount) = hook.claimFee();
            if (amount > 0 && treasury == address(this)) {
                IERC20(asset()).transfer(recipient, amount);
            } else if (amount > 0 && treasury != address(this)) {
                IERC20(asset()).transferFrom(treasury, recipient, amount);
            }
        }
    }
}
