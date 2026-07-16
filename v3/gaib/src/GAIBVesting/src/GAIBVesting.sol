// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Ownable2StepUpgradeable} from "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

/**
 * @title GAIBVesting contract
 * @notice Vesting contract for GAIB token allocations with optional cliff and linear vesting cycles.
 */
contract GAIBVesting is Ownable2StepUpgradeable, PausableUpgradeable, ReentrancyGuardUpgradeable, UUPSUpgradeable {
    using SafeERC20 for IERC20;

    // ---------------------
    // Custom errors
    // ---------------------
    error InvalidZeroInput();
    error InvalidAllocationsInput();
    error UserAlreadyHasAllocation(address user);
    error InvalidStartTime();
    error InvalidVestingInterval();
    error InvalidVestingCycles();
    error NonZeroClaimAmount();
    error InvalidAllocationAmount();
    error NoUserAllocation();
    error NothingToClaim();

    // ---------------------
    // Types
    // ---------------------
    struct Allocation {
        // Timestamp when vesting starts
        uint64 startEpoch;
        // Seconds of cliff duration from startEpoch
        uint64 cliffDuration;
        // Seconds between vesting cycles after the cliff
        uint64 vestingInterval;
        // Number of vesting cycles after the cliff
        uint64 vestingCycles;
        // Total amount allocated
        uint256 amount;
        // Amount unlocked immediately after cliff ends
        uint256 cliffAmount;
        // Amount already claimed
        uint256 claimed;
    }

    // ---------------------
    // Storage
    // ---------------------
    /// @dev GAIB token address, which is vested
    IERC20 public GAIB;

    /// @dev user => allocation
    mapping(address => Allocation) public allocations;

    // ---------------------
    // Events
    // ---------------------
    event AllocationsSet(address[] users, Allocation[] allocations);
    event AllocationsReset(address[] users);
    event Claim(address indexed user, uint256 amount);
    event AllocationReceiverChanged(address indexed oldReceiver, address indexed newReceiver);
    event AllocationClawedBack(address indexed user, address indexed to, uint256 amount);

    function initialize(IERC20 _GAIB, address _initialOwner) public initializer {
        if (address(_GAIB) == address(0)) revert InvalidZeroInput();
        GAIB = _GAIB;
        __Ownable_init(_initialOwner);
        __Ownable2Step_init();
        __Pausable_init();
        __ReentrancyGuard_init();
        __UUPSUpgradeable_init();
    }

    // ---------------------
    // Admin
    // ---------------------
    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    /**
     * @notice  Set vesting allocations.
     * @dev     Permissioned call (onlyOwner)
     *          The total allocation amount must be pre-approved.
     * @param   _users  list of user addresses
     * @param   _allocations  list of allocations for each user
     */
    function setAllocations(address[] calldata _users, Allocation[] calldata _allocations) external onlyOwner {
        if (_users.length != _allocations.length || _allocations.length == 0) {
            revert InvalidAllocationsInput();
        }

        uint256 _totalAllocationAmount;

        for (uint256 i; i < _allocations.length;) {
            if (_users[i] == address(0)) revert InvalidZeroInput();

            // check if allocation already exists for the user
            if (allocations[_users[i]].startEpoch > 0) revert UserAlreadyHasAllocation(_users[i]);

            // validate allocation inputs
            if (_allocations[i].startEpoch == 0) revert InvalidStartTime();
            if (_allocations[i].vestingInterval == 0) revert InvalidVestingInterval();
            if (_allocations[i].vestingCycles == 0) revert InvalidVestingCycles();
            if (_allocations[i].claimed > 0) revert NonZeroClaimAmount();

            // check if cliff amount & amount are set correctly
            if (_allocations[i].amount == 0 || _allocations[i].cliffAmount > _allocations[i].amount) {
                revert InvalidAllocationAmount();
            }

            allocations[_users[i]] = _allocations[i];

            _totalAllocationAmount += _allocations[i].amount;

            unchecked {
                ++i;
            }
        }

        // Take custody of total allocation amount
        GAIB.safeTransferFrom(msg.sender, address(this), _totalAllocationAmount);

        emit AllocationsSet(_users, _allocations);
    }

    /**
     * @notice Clear existing vesting allocations and withdraw remaining tokens.
     * @dev     Permissioned call (onlyOwner)
     *          Clears allocation structs and transfers remaining unclaimed tokens to owner.
     * @param   _users  list of user addresses to clear allocations for
     */
    function clearAllocations(address[] calldata _users) external onlyOwner {
        if (_users.length == 0) {
            revert InvalidAllocationsInput();
        }

        uint256 _totalRemainingTokens;

        for (uint256 i; i < _users.length;) {
            if (_users[i] == address(0)) revert InvalidZeroInput();

            // check if allocation exists for the user
            if (allocations[_users[i]].startEpoch == 0) revert NoUserAllocation();

            Allocation memory existingAllocation = allocations[_users[i]];
            uint256 remainingAmount = existingAllocation.amount - existingAllocation.claimed;

            // Add to total remaining tokens to withdraw
            _totalRemainingTokens += remainingAmount;

            // Clear the allocation struct
            delete allocations[_users[i]];

            unchecked {
                ++i;
            }
        }

        // Transfer all remaining tokens to owner
        if (_totalRemainingTokens > 0) {
            GAIB.safeTransfer(owner(), _totalRemainingTokens);
        }

        emit AllocationsReset(_users);
    }

    /**
     * @notice Change the receiver address for an existing allocation.
     * @dev    Permissioned call (onlyOwner). New receiver must not already have an allocation.
     */
    function changeReceiver(address oldReceiver, address newReceiver) external onlyOwner {
        if (oldReceiver == address(0) || newReceiver == address(0)) revert InvalidZeroInput();
        Allocation memory existing = allocations[oldReceiver];
        if (existing.startEpoch == 0) revert NoUserAllocation();
        if (allocations[newReceiver].startEpoch != 0) revert UserAlreadyHasAllocation(newReceiver);

        allocations[newReceiver] = existing;
        delete allocations[oldReceiver];

        emit AllocationReceiverChanged(oldReceiver, newReceiver);
    }

    /**
     * @notice Claw back unclaimed GAIB for a user and delete their allocation.
     * @dev    Permissioned call (onlyOwner). Transfers unclaimed amount to `to`.
     */
    function clawback(address user, address to) external onlyOwner {
        if (user == address(0) || to == address(0)) revert InvalidZeroInput();
        Allocation memory existing = allocations[user];
        if (existing.startEpoch == 0) revert NoUserAllocation();

        uint256 unclaimedAmount = _unclaimed(user);
        delete allocations[user];

        if (unclaimedAmount > 0) {
            GAIB.safeTransfer(to, unclaimedAmount);
        }

        emit AllocationClawedBack(user, to, unclaimedAmount);
    }

    // ---------------------
    // Public
    // ---------------------
    function claim() external whenNotPaused {
        claimFor(msg.sender);
    }

    function claimFor(address user) public nonReentrant whenNotPaused {
        if (user == address(0)) revert InvalidZeroInput();

        Allocation storage allocation = allocations[user];
        if (allocation.startEpoch == 0) revert NoUserAllocation();

        uint256 _claimableAmount = _claimable(allocation);
        if (_claimableAmount == 0) revert NothingToClaim();

        // update claimed amount for the allocation
        allocation.claimed += _claimableAmount;

        // Transfer claimed GAIB tokens to the user
        GAIB.safeTransfer(user, _claimableAmount);

        emit Claim(user, _claimableAmount);
    }

    function vested(address _user) public view returns (uint256) {
        Allocation memory _allocation = allocations[_user];
        if (_allocation.startEpoch == 0) return 0;
        return _vested(_allocation);
    }

    function claimable(address _user) public view returns (uint256) {
        Allocation memory _allocation = allocations[_user];
        if (_allocation.startEpoch == 0) return 0;
        return _claimable(_allocation);
    }

    // ---------------------
    // Internal
    // ---------------------
    function _unclaimed(address _user) internal view returns (uint256) {
        Allocation memory _allocation = allocations[_user];
        return _allocation.amount - _allocation.claimed;
    }

    function _vested(Allocation memory _allocation) internal view returns (uint256) {
        uint256 _cliffEndEpoch = _allocation.startEpoch + _allocation.cliffDuration;
        if (block.timestamp < _cliffEndEpoch) {
            return 0;
        }

        uint256 _postCliffElapsedCycles = (block.timestamp - _cliffEndEpoch) / _allocation.vestingInterval;

        if (_postCliffElapsedCycles >= _allocation.vestingCycles) {
            return _allocation.amount;
        }

        uint256 _vestingAmountPerCycle = (_allocation.amount - _allocation.cliffAmount) / _allocation.vestingCycles;

        return _allocation.cliffAmount + (_vestingAmountPerCycle * _postCliffElapsedCycles);
    }

    function _claimable(Allocation memory _allocation) internal view returns (uint256) {
        return _vested(_allocation) - _allocation.claimed;
    }

    // ---------------------
    // UUPS authorization
    // ---------------------
    function _authorizeUpgrade(address) internal override onlyOwner {}
}
