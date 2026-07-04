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

    // event
    event DepositWithDuration(address indexed owner, uint256 lockStart, uint256 amount, uint256 duration);

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

    receive() external payable override { deposit(msg.value); }
    fallback() external payable { revert("Not Allowed"); }

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
        emit DepositWithDuration(_msgSender(), block.timestamp, msg.value, 0);

        return msg.value;
    }

    function depositWithLockup(uint256 assets, uint256 duration) public payable nonReentrant returns (uint256) {
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

        _insertLockUp(_msgSender(), assets, duration * 24 * 3600);
        _updateLockUp(_msgSender());

        _userStakeCooldown[_msgSender()] = block.timestamp;
        _deposit(_msgSender(), msg.value);
        emit DepositWithDuration(_msgSender(), block.timestamp, msg.value, duration * 24 * 3600);

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
        (,uint256 userLocked) = $._userLocked.tryGet(_msgSender());
        uint256 deposited_ = deposited(_msgSender());
        if (deposited_ - userLocked < assets) {
            revert InsufficientWithdrawableBalance();
        }
        return super.withdraw(assets, receiver);
    }

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

    function setCooldown(uint256 newCooldown) external onlyRole(STAKING_OPERATOR_ROLE) {
        cooldown = newCooldown;
        emit ProtocolConfigChanged(this.setCooldown.selector, "setCooldown(uint256)", abi.encode(newCooldown));
    }

    function setMinStake(uint256 newMinStake) external onlyRole(STAKING_OPERATOR_ROLE) {
        minStake = newMinStake;
        emit ProtocolConfigChanged(this.setMinStake.selector, "setMinStake(uint256)", abi.encode(newMinStake));
    }

    function setMaxStakeSupply(uint256 newMaxStakeSupply) external onlyRole(STAKING_OPERATOR_ROLE) {
        maxStakeSupply = newMaxStakeSupply;
        emit ProtocolConfigChanged(this.setMaxStakeSupply.selector, "setMaxStakeSupply(uint256)", abi.encode(newMaxStakeSupply));
    }

    // emergency unlock in advance
    function unlockLockups(address[] memory users, uint256[] memory amounts) external onlyRole(STAKING_OPERATOR_ROLE) {
        require(users.length == amounts.length, "length must be equal");
        uint256 unlockAmount;
        for (uint256 i; i < users.length; i++) {
            _updateLockUp(users[i]);
            uint256 lockAmount = getUserLockUps(users[i]);
            if (lockAmount >= amounts[i]) {
                unlockAmount = _unlock(users[i], amounts[i]);
            }
        }
    }

    function addLockDuration(uint256 duration) external onlyRole(STAKING_OPERATOR_ROLE) returns (bool) {
        emit ProtocolConfigChanged(this.addLockDuration.selector, "addLockDuration(uint256)", abi.encode(duration));
        return _addLockDuration(duration);
    }

    function removeLockDuration(uint256 duration) external onlyRole(STAKING_OPERATOR_ROLE) returns (bool) {
        emit ProtocolConfigChanged(this.removeLockDuration.selector, "removeLockDuration(uint256)", abi.encode(duration));
        return _removeLockDuration(duration);
    }

    /**
     * @dev Deposit/mint common workflow.
     */
    function _deposit(address caller, uint256 assets) internal override {
        BareVaultStorage storage $ = super._getBareVaultStorage();
        (,uint256 _amount) = $._deposit.tryGet(caller);
        $._deposit.set(caller, _amount + assets);
        $._totalDeposit += assets;
    }

    /**
     * @dev Withdraw/redeem common workflow.
     */
    function _withdraw(
        address caller,
        address receiver,
        uint256 assets
    ) internal override {
        BareVaultStorage storage $ = super._getBareVaultStorage();

        $._deposit.set(caller, $._deposit.get(caller) - assets);
        $._totalDeposit -= assets;

        Address.sendValue(payable(receiver), assets);
        emit Withdraw(caller, receiver, assets);
    }
}
