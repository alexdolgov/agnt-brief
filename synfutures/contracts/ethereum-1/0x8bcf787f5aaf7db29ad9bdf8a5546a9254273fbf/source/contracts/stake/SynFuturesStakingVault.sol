// SPDX-License-Identifier: MIT
pragma solidity =0.8.19;
import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import { ReentrancyGuardUpgradeable } from "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

import { IERC20, SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { SafeCast } from "@openzeppelin/contracts/utils/math/SafeCast.sol";

struct PendingUnstake {
    uint128 amount;
    uint32 createTime;
}

contract SynFuturesStakingVault is Initializable, OwnableUpgradeable, ReentrancyGuardUpgradeable {
    IERC20 public token;
    uint public constant MAX_PENDING_WITHDRAWALS = 10;
    uint public constant MAX_PENDING_DURATION = 14 days;

    mapping(address => uint128) private stakes;
    mapping(address => PendingUnstake[]) private pendingUnstakes;

    uint128 public totalStaking;
    uint128 public totalPending;
    uint public pendingDuration;  // pending duration for withdraw

    error DurationExceedsLimit();
    error InsufficientStake();
    error PendingNumberExceedsLimit();
    error PendingNotExists();
    error PendingNotMature();
    error ZeroAddress();
    error ZeroAmount();
    error RenounceOwnershipDisabled();

    event Stake(address indexed account, uint amount);
    event Unstake(address indexed account, uint amount);
    event Release(address indexed account, uint pendingIndex, uint amount);

    event UpdateStakeGlobalStatus(uint128 totalStaking, uint128 totalPending);
    event UpdatePendingDuration(address operator, uint duration);

    using SafeERC20 for IERC20;
    using SafeCast for uint;

    constructor() {
        _disableInitializers();
    }

    function initialize(address _token, address admin) public initializer {
        __Ownable_init();
        __ReentrancyGuard_init();

        token = IERC20(_token);
        if (admin == address(0)) revert ZeroAddress();
        _transferOwnership(admin);

        pendingDuration = 7 days;
        emit UpdatePendingDuration(msg.sender, pendingDuration);
    }

    function setPendingDuration(uint _duration) external onlyOwner {
        if (_duration > MAX_PENDING_DURATION) revert DurationExceedsLimit();
        pendingDuration = _duration;
        emit UpdatePendingDuration(msg.sender, _duration);
    }

    function stake(uint amount) external nonReentrant {
        if (amount == 0) revert ZeroAmount();
        token.safeTransferFrom(msg.sender, address(this), amount);

        uint128 amount128 = amount.toUint128();
        stakes[msg.sender] += amount128;
        totalStaking += amount128;

        emit Stake(msg.sender, amount);
        emit UpdateStakeGlobalStatus(totalStaking, totalPending);
    }

    function unstake(uint amount) external nonReentrant {
        if (amount == 0) revert ZeroAmount();
        if (stakes[msg.sender] < amount) revert InsufficientStake();
        if (pendingUnstakes[msg.sender].length >= MAX_PENDING_WITHDRAWALS) revert PendingNumberExceedsLimit();

        uint128 amount128 = amount.toUint128();
        stakes[msg.sender] -= amount128;
        pendingUnstakes[msg.sender].push(PendingUnstake(amount128, uint32(block.timestamp)));

        totalPending += amount128;
        totalStaking -= amount128;

        emit Unstake(msg.sender, amount);
        emit UpdateStakeGlobalStatus(totalStaking, totalPending);
    }

    function release(uint index) external nonReentrant {
        if (pendingUnstakes[msg.sender].length == 0 || index > pendingUnstakes[msg.sender].length - 1) revert PendingNotExists();

        PendingUnstake memory pending = pendingUnstakes[msg.sender][index];
        if (block.timestamp < pending.createTime + pendingDuration) revert PendingNotMature();

        // replace the pending withdrawal with the last one
        uint length = pendingUnstakes[msg.sender].length;
        uint128 releasedAmount = pending.amount;
        pendingUnstakes[msg.sender][index] = pendingUnstakes[msg.sender][length - 1];
        pendingUnstakes[msg.sender].pop();

        token.safeTransfer(msg.sender, releasedAmount);
        totalPending -= releasedAmount;

        emit UpdateStakeGlobalStatus(totalStaking, totalPending);
        emit Release(msg.sender, index, releasedAmount);
    }

    function accountStakeInfo(address account) external view returns (uint128 staked, PendingUnstake[] memory) {
        return (stakes[account], pendingUnstakes[account]);
    }

    // disable renounceOwnership
    function renounceOwnership() public override onlyOwner {
        // execute super function to supress warning (2018): Function state mutability can be restricted to pure
        super.renounceOwnership();
        // revert to disable renounceOwnership
        revert RenounceOwnershipDisabled();
    }
}