// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {ReentrancyGuardUpgradeable} from "openzeppelin-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {EnumerableMap} from "openzeppelin/utils/structs/EnumerableMap.sol";
import {EnumerableSet} from "openzeppelin/utils/structs/EnumerableSet.sol";
import {Address} from "openzeppelin/utils/Address.sol";

import {ProtocolEvents} from "./interfaces/ProtocolEvents.sol";
import {BareVaultUpgradable} from "./BareVaultUpgradable.sol";
import {LockupUpgradable} from "./LockupUpgradable.sol";
import {IPauser} from "./interfaces/IPauser.sol";

contract StakingMNT is ProtocolEvents, BareVaultUpgradable, LockupUpgradable, ReentrancyGuardUpgradeable {
    // errors
    error AddressZeroNotExpected();
    error UnexpectedInitialize();
    error UnexpectedAmount();
    error InsufficientWithdrawableBalance();
    error DepositOverBond();
    error Cooldown();
    error Paused();
    error DepositAmountTooSmall(address receiver, uint256 amount, uint256 minStake);

    /// @dev Added in upgrade to support lock duration extension and auto-renewal.
    error LockRecordNotFound();
    error LockDurationMustBeExtended();
    /// @dev Added in upgrade to support max lockups per user
    error MaxLockUpsReached();
    // event

    event DepositWithDuration(address indexed owner, uint256 lockStart, uint256 amount, uint256 duration);

    /// @notice Add DepositWithDuration v2.
    /// @dev Added in upgrade to support lock duration extension and auto-renewal.
    event DepositWithDurationV2(
        address indexed owner, uint256 lockStart, uint256 amount, uint256 duration, bool autoRenew
    );

    using EnumerableSet for EnumerableSet.UintSet;
    using EnumerableMap for EnumerableMap.AddressToUintMap;

    // ------- LOGICS ------- //
    /// cooldown, minStake, maxStake
    bytes32 public constant STAKING_OPERATOR_ROLE = keccak256("STAKING_OPERATOR_ROLE");

    mapping(address => uint256) internal _userStakeCooldown;

    // The contract for indicating if staking is paused.
    IPauser public pauser;

    // the address of allocator register
    address public allocator;

    /// @notice Stake cooldown, not allowed to unstake when still in cool down duration
    /// This is to prevent high frequency reward sniping; or other borrow / flashloan to stake exploits.
    uint256 public cooldown;

    /// @notice stake min limit, limit on every staking
    uint256 public minStake;

    /// @notice stake max limit, limit on total supply
    uint256 public maxStakeSupply;

    /// @notice max lockups per user
    uint256 public maxUserLockUps;

    receive() external payable override {
        deposit(msg.value);
    }

    fallback() external payable {
        revert("Not Allowed");
    }

    // --------- Initialize ---------- //
    /// @notice Init params
    struct Init {
        address admin;
        address operator;
        address pauser;
        address asset;
        uint256 cooldown;
        uint256 minStake;
        uint256 maxStakeSupply;
        address allocator;
    }

    constructor() {
        _disableInitializers();
    }

    function initialize(Init calldata init) external initializer {
        if (init.asset != address(0)) {
            revert UnexpectedInitialize();
        }
        __BareVault_init(init.asset);
        __ReentrancyGuard_init();

        // set admin roles
        _setRoleAdmin(STAKING_OPERATOR_ROLE, DEFAULT_ADMIN_ROLE);

        // grant admin roles
        _grantRole(DEFAULT_ADMIN_ROLE, init.admin);

        // grant sub roles
        _grantRole(STAKING_OPERATOR_ROLE, init.operator);

        // set slot
        cooldown = init.cooldown;
        minStake = init.minStake;
        maxStakeSupply = init.maxStakeSupply;
        allocator = init.allocator;
        pauser = IPauser(init.pauser);
        // initial durations
        acceptedDurations.add(50 days);
        acceptedDurations.add(100 days);
        acceptedDurations.add(200 days);
        acceptedDurations.add(300 days);
    }

    function initializeV2() external reinitializer(2) {
        maxUserLockUps = 80;
    }

    function deposit(uint256 assets) public payable override nonReentrant returns (uint256) {
        // only for param checking
        if (assets != msg.value) {
            revert UnexpectedAmount();
        }
        if (pauser.isStakingPaused()) {
            revert Paused();
        }
        uint256 maxAssets = maxDeposit(_msgSender());
        if (msg.value > maxAssets) {
            revert ExceededMaxDeposit(_msgSender(), msg.value, maxAssets);
        }
        if (msg.value < minStake) {
            revert DepositAmountTooSmall(_msgSender(), msg.value, minStake);
        }
        if (maxStakeSupply != 0 && msg.value + totalDeposit() > maxStakeSupply) {
            revert DepositOverBond();
        }
        _userStakeCooldown[_msgSender()] = block.timestamp;
        _deposit(_msgSender(), msg.value);
        emit DepositWithDurationV2(_msgSender(), block.timestamp, msg.value, 0, false);

        return msg.value;
    }

    function depositWithLockup(uint256 assets, uint256 duration, bool autoRenew)
        public
        payable
        nonReentrant
        returns (uint256)
    {
        // only for param checking
        if (assets != msg.value) {
            revert UnexpectedAmount();
        }
        if (pauser.isStakingPaused()) {
            revert Paused();
        }
        uint256 maxAssets = maxDeposit(_msgSender());
        if (msg.value > maxAssets) {
            revert ExceededMaxDeposit(_msgSender(), msg.value, maxAssets);
        }
        if (msg.value < minStake) {
            revert DepositAmountTooSmall(_msgSender(), msg.value, minStake);
        }
        if (maxStakeSupply != 0 && msg.value + totalDeposit() > maxStakeSupply) {
            revert DepositOverBond();
        }

        _updateLockUp(_msgSender());

        if (getUserLockUpsCount(_msgSender()) >= maxUserLockUps) {
            revert MaxLockUpsReached();
        }

        _insertLockUp(_msgSender(), assets, duration * 1 days, autoRenew);

        _userStakeCooldown[_msgSender()] = block.timestamp;
        _deposit(_msgSender(), msg.value);
        emit DepositWithDurationV2(_msgSender(), block.timestamp, msg.value, duration * 1 days, autoRenew);

        return msg.value;
    }

    function withdraw(uint256 assets, address receiver) public override nonReentrant returns (uint256) {
        (bool inCooldown,) = this.userStakeCooldown(_msgSender());
        if (inCooldown) {
            revert Cooldown();
        }
        if (pauser.isStakingPaused()) {
            revert Paused();
        }
        _updateLockUp(_msgSender());
        UserLockStorage storage $ = _getUserLockStorage();
        (, uint256 userLocked) = $._userLocked.tryGet(_msgSender());
        uint256 deposited_ = deposited(_msgSender());
        if (deposited_ - userLocked < assets) {
            revert InsufficientWithdrawableBalance();
        }
        return super.withdraw(assets, receiver);
    }

    /// @notice Converts all flexible (unlocked) stake into a new lockup
    /// @dev Added in upgrade to support flexible to lockup conversion.
    function convertFlexibleToLockup(uint256 duration, bool autoRenew) external nonReentrant returns (bool) {
        address sender = _msgSender();
        _updateLockUp(sender);

        if (getUserLockUpsCount(sender) >= maxUserLockUps) {
            revert MaxLockUpsReached();
        }

        uint256 deposited_ = deposited(sender);
        (, uint256 locked) = _getUserLockStorage()._userLocked.tryGet(sender);
        uint256 flexible = deposited_ - locked;

        if (flexible == 0) revert InsufficientWithdrawableBalance();

        // insert lockup record
        _insertLockUp(sender, flexible, duration * 1 days, autoRenew);

        // emit: simulate withdraw + deposit
        emit Withdraw(sender, sender, flexible);
        emit DepositWithDurationV2(sender, block.timestamp, flexible, duration * 1 days, autoRenew);

        return true;
    }

    /// @notice Extends the duration of a specific lock
    /// @dev Added in upgrade to support lock duration extension.
    function extendLockupDuration(uint256 lockStart, uint256 amount, uint256 duration, uint256 newDuration)
        external
        nonReentrant
        returns (bool)
    {
        _updateLockUp(_msgSender());

        uint256 durationInSeconds = duration * 1 days;
        uint256 newDurationInSeconds = newDuration * 1 days;

        if (newDurationInSeconds <= durationInSeconds) revert LockDurationMustBeExtended();
        if (lockStart + durationInSeconds <= block.timestamp) revert LockExpired();

        int256 index = findLockupByProperties(_msgSender(), lockStart, amount, durationInSeconds);
        if (index < 0) revert LockRecordNotFound();

        return _extendLockupDuration(_msgSender(), uint256(index), newDurationInSeconds);
    }

    /// @notice Sets auto-renewal for a specific lock
    /// @dev Added in upgrade to support lock duration extension and auto-renewal.
    function setLockupAutoRenew(uint256 lockStart, uint256 amount, uint256 duration, bool autoRenew)
        external
        nonReentrant
        returns (bool)
    {
        _updateLockUp(_msgSender());

        uint256 durationInSeconds = duration * 1 days;

        if (lockStart + durationInSeconds <= block.timestamp) revert LockExpired();

        int256 index = findLockupToUpdateAutoRenew(_msgSender(), lockStart, amount, durationInSeconds, autoRenew);

        if (index < 0) revert LockRecordNotFound();

        return _setLockupAutoRenew(_msgSender(), uint256(index), autoRenew);
    }

    /// @notice Sets auto-renewal for all lockups
    /// @dev Added in upgrade to support batch auto-renewal setting
    function setAllLockupAutoRenew(bool autoRenew) external nonReentrant returns (uint256) {
        return _setAllLocksAutoRenew(_msgSender(), autoRenew);
    }

    /// @notice Returns the cooldown status and remaining cooldown time for a user
    function userStakeCooldown(address depositor) public view returns (bool, uint256) {
        if (depositor == address(0)) {
            revert AddressZeroNotExpected();
        }
        if (_userStakeCooldown[depositor] == 0) {
            return (false, 0);
        }

        if (block.timestamp < _userStakeCooldown[depositor]) {
            // unexpected time, won't happen
            return (true, 0);
        }
        if (block.timestamp >= _userStakeCooldown[depositor] + cooldown) {
            return (false, 0);
        }

        uint256 cooldown_ = cooldown - (block.timestamp - _userStakeCooldown[depositor]);
        return (true, cooldown_);
    }

    /// @dev set cooldown
    function setCooldown(uint256 newCooldown) external onlyRole(STAKING_OPERATOR_ROLE) {
        cooldown = newCooldown;
        emit ProtocolConfigChanged(this.setCooldown.selector, "setCooldown(uint256)", abi.encode(newCooldown));
    }

    /// @dev set min stake
    function setMinStake(uint256 newMinStake) external onlyRole(STAKING_OPERATOR_ROLE) {
        minStake = newMinStake;
        emit ProtocolConfigChanged(this.setMinStake.selector, "setMinStake(uint256)", abi.encode(newMinStake));
    }

    /// @dev set max stake supply
    function setMaxStakeSupply(uint256 newMaxStakeSupply) external onlyRole(STAKING_OPERATOR_ROLE) {
        maxStakeSupply = newMaxStakeSupply;
        emit ProtocolConfigChanged(
            this.setMaxStakeSupply.selector, "setMaxStakeSupply(uint256)", abi.encode(newMaxStakeSupply)
        );
    }

    /// @dev emergency unlock in advance
    /// @notice This function is used to unlock all lockups for a user in advance.
    function unlockLockups(address[] memory users) external onlyRole(STAKING_OPERATOR_ROLE) {
        for (uint256 i; i < users.length; i++) {
            _emergencyUnlockAll(users[i]);
        }
    }

    /// @dev add lock duration
    function addLockDuration(uint256 duration) external onlyRole(STAKING_OPERATOR_ROLE) returns (bool) {
        emit ProtocolConfigChanged(this.addLockDuration.selector, "addLockDuration(uint256)", abi.encode(duration));
        return _addLockDuration(duration);
    }

    /// @dev delete lock duration
    function removeLockDuration(uint256 duration) external onlyRole(STAKING_OPERATOR_ROLE) returns (bool) {
        emit ProtocolConfigChanged(
            this.removeLockDuration.selector, "removeLockDuration(uint256)", abi.encode(duration)
        );
        return _removeLockDuration(duration);
    }

    /// @dev Added in upgrade to support max lockups per user
    function setMaxUserLockUps(uint256 _maxUserLockUps) external onlyRole(STAKING_OPERATOR_ROLE) {
        maxUserLockUps = _maxUserLockUps;
        emit ProtocolConfigChanged(
            this.setMaxUserLockUps.selector, "setMaxUserLockUps(uint256)", abi.encode(_maxUserLockUps)
        );
    }

    /**
     * @dev Deposit/mint common workflow.
     */
    function _deposit(address caller, uint256 assets) internal override {
        BareVaultStorage storage $ = super._getBareVaultStorage();
        (, uint256 _amount) = $._deposit.tryGet(caller);
        $._deposit.set(caller, _amount + assets);
        $._totalDeposit += assets;
    }

    /**
     * @dev Withdraw/redeem common workflow.
     */
    function _withdraw(address caller, address receiver, uint256 assets) internal override {
        BareVaultStorage storage $ = super._getBareVaultStorage();

        $._deposit.set(caller, $._deposit.get(caller) - assets);
        $._totalDeposit -= assets;

        Address.sendValue(payable(receiver), assets);
        emit Withdraw(caller, receiver, assets);
    }
}
