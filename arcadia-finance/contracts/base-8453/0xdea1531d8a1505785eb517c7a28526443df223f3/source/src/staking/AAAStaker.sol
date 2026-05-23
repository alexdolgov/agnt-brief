/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: BUSL-1.1
 */
pragma solidity ^0.8.27;

import { AbstractStaker } from "./AbstractStaker.sol";
import { EIP712 } from "../../lib/openzeppelin/contracts/utils/cryptography/EIP712.sol";
import { EnumerableSet } from "../../lib/openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import { ERC20, ERC20Votes } from "../../lib/openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";
import { FixedPointMathLib } from "../../lib/solmate/src/utils/FixedPointMathLib.sol";
import { Math } from "../../lib/openzeppelin/contracts/utils/math/Math.sol";
import { RequestLogic } from "./libraries/RequestLogic.sol";
import { SafeERC20 } from "../../lib/openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/**
 * @title Arcadia Staker
 * @author Pragma Labs
 * @notice This contract handles the the staking, unstaking, and multi-reward distribution for staked Arcadia tokens.
 */
contract AAAStaker is AbstractStaker, ERC20Votes {
    using EnumerableSet for EnumerableSet.Bytes32Set;
    using FixedPointMathLib for uint256;
    using RequestLogic for bytes32;
    using SafeERC20 for ERC20;

    /* //////////////////////////////////////////////////////////////
                                CONSTANTS
    ////////////////////////////////////////////////////////////// */

    // The maximum withdrawal period.
    uint256 public constant MAX_WITHDRAW_PERIOD = 120 days;

    /* //////////////////////////////////////////////////////////////
                                STORAGE
    ////////////////////////////////////////////////////////////// */

    // The address of the treasury.
    address internal treasury;
    // The maximum early withdrawal penalty, with 18 decimals precision.
    uint64 public maxWithdrawalPenalty;
    // The time after which there is no longer an early withdrawal penalty.
    uint32 public withdrawalPeriod;

    // The total amount of pending withdrawals for each user.
    mapping(address user => uint256 amount) public pendingWithdrawals;
    // The withdrawal requests for each user.
    mapping(address user => EnumerableSet.Bytes32Set request) internal withdrawalRequests;

    /* //////////////////////////////////////////////////////////////
                                EVENTS
    ////////////////////////////////////////////////////////////// */

    event WithdrawalInitiated(address indexed user, uint256 amount);

    /* //////////////////////////////////////////////////////////////
                                ERRORS
    ////////////////////////////////////////////////////////////// */

    error BalanceTooLow();
    error InvalidRequest();
    error MaxWithdrawalPenaltyNotValid();
    error MaxWithdrawalPeriod();
    error NonZeroPenalty();
    error NotImplemented();
    error RequestNotUnique();

    /* //////////////////////////////////////////////////////////////
                              CONSTRUCTOR
    ////////////////////////////////////////////////////////////// */

    /**
     * @param stakedAsset The ERC20 token staked in this contract.
     * @param maxRewards The maximum number of active rewards.
     * @param withdrawalPeriod_ The time after which there is no longer an early withdrawal penalty.
     * @param maxWithdrawalPenalty_ The maximum early withdrawal penalty, with 18 decimals precision.
     * @param treasury_ The address of the treasury.
     */
    constructor(
        ERC20 stakedAsset,
        uint256 maxRewards,
        uint32 withdrawalPeriod_,
        uint64 maxWithdrawalPenalty_,
        address treasury_
    ) AbstractStaker(stakedAsset, maxRewards) EIP712(string(abi.encodePacked("Staked ", stakedAsset.name())), "1.0") {
        if (withdrawalPeriod_ > MAX_WITHDRAW_PERIOD) revert MaxWithdrawalPeriod();
        if (maxWithdrawalPenalty_ > 1e18) revert MaxWithdrawalPenaltyNotValid();
        if (treasury_ == address(0)) revert ZeroAddress();
        withdrawalPeriod = withdrawalPeriod_;
        maxWithdrawalPenalty = maxWithdrawalPenalty_;
        treasury = treasury_;
    }

    /* //////////////////////////////////////////////////////////////
                       ERC20 MODIFICATIONS
    ////////////////////////////////////////////////////////////// */

    /**
     * @notice Updates the balances and voting power when a token transfer is initiated.
     * @param from The address transferring tokens.
     * @param to The address receiving tokens.
     * @param value The amount of tokens being transferred.
     * @dev Pending withdrawals are not transferable.
     * @dev Inheritance order: AAAStaker._update() -> ERC20Votes_update() -> AbstractStaker._update() -> ERC20._update()
     */
    function _update(address from, address to, uint256 value) internal override(ERC20Votes, AbstractStaker) {
        // On a token transfer (not on a mint or burn), check that the sender has enough available balance.
        if (from != address(0) && to != address(0)) {
            if (balanceOf(from) - pendingWithdrawals[from] < value) revert BalanceTooLow();
        }

        // Update the rewards.
        ERC20Votes._update(from, to, value);
    }

    /* //////////////////////////////////////////////////////////////
                              STAKING
    ////////////////////////////////////////////////////////////// */

    /**
     * @notice Withdraws an amount of staked asset, without claiming pending rewards.
     * @dev not implemented for this contract.
     */
    function withdraw(uint256) external pure override {
        revert NotImplemented();
    }

    /**
     * @notice Withdraws the full amount of staked asset and claims all active rewards.
     * @dev not implemented for this contract.
     */
    function maxWithdrawAndClaim() external pure override returns (uint256[] memory) {
        revert NotImplemented();
    }

    /**
     * @notice Initiates a withdrawal request for a user.
     * @param amount The amount of tokens the user wants to withdraw.
     * @dev Every withdrawal request must be unique, it is not possible to withdraw the same amount in the same block.
     */
    function initiateWithdrawal(uint128 amount) external nonReentrant {
        if (amount == 0) revert ZeroAmount();
        if (balanceOf(msg.sender) - pendingWithdrawals[msg.sender] < amount) revert BalanceTooLow();

        unchecked {
            pendingWithdrawals[msg.sender] += amount;
        }

        // Create the new withdrawal request.
        bool unique = withdrawalRequests[msg.sender].add(
            RequestLogic.packRequest(uint32(block.timestamp), withdrawalPeriod, maxWithdrawalPenalty, amount)
        );
        if (!unique) revert RequestNotUnique();

        emit WithdrawalInitiated(msg.sender, amount);
    }

    /**
     * @notice Processes a withdrawal request for a specific user.
     * @param user The address of the user.
     * @param request The withdrawal request.
     * @dev A withdrawal request that is processed before the withdrawal period has passed,
     * will be charged a penalty.
     * @dev If the caller is not the owner, then the penalty of the request must be zero.
     */
    function withdraw(address user, bytes32 request) external {
        bytes32[] memory requests = new bytes32[](1);
        requests[0] = request;
        withdraw(user, requests);
    }

    /**
     * @notice Processes multiple withdrawal requests for a specific user.
     * @param user The address of the user.
     * @param requests Array of the withdrawal requests.
     * @dev Withdrawal requests that are processed before the withdrawal period has passed,
     * will be charged a penalty.
     * @dev If the caller is not the owner, then the penalty of all requests must be zero.
     */
    function withdraw(address user, bytes32[] memory requests) public nonReentrant {
        if (requests.length == 0) revert ZeroAmount();

        // Process withdrawals.
        (uint256 total, uint256 penalty) = _processWithdrawals(user, requests);

        // If the caller is not the owner, check that the penalty of all requests is zero.
        if (msg.sender != user && penalty > 0) revert NonZeroPenalty();

        // Burn the full amount of tokens.
        _burn(user, total);

        // Remove pending withdrawals.
        unchecked {
            pendingWithdrawals[user] -= total;
        }

        // If early withdrawal penalty is applied, transfer it to the treasury.
        if (penalty > 0) STAKED_ASSET.safeTransfer(treasury, penalty);

        // Transfer assets.
        uint256 redeemable = total - penalty;
        if (redeemable > 0) {
            STAKED_ASSET.safeTransfer(user, redeemable);
            emit Withdrawn(user, redeemable);
        }
    }

    /**
     * @notice Processes multiple withdrawal requests for a specific user.
     * @param user The address of the user.
     * @param requests Array of the withdrawal requests.
     */
    function _processWithdrawals(address user, bytes32[] memory requests)
        internal
        returns (uint256 total, uint256 penalty)
    {
        bool valid;
        uint256 total_;
        uint256 penalty_;
        for (uint256 i; i < requests.length; ++i) {
            // Remove request, also validates that request exists and is indeed owned by the user.
            valid = withdrawalRequests[user].remove(requests[i]);
            if (!valid) revert InvalidRequest();

            (total_, penalty_) = getWithdrawalAmounts(requests[i]);
            total += total_;
            penalty += penalty_;
        }
    }

    /**
     * @notice Returns the withdrawal amounts for a specific withdrawal request.
     * @param request The withdrawal request.
     * @return total The total amount of staked asset to withdraw.
     * @return penalty The penalty amount for early withdrawal.
     * @dev A penalty is applied for requests that are withdrawn before the withdrawal period has passed.
     * The penalty starts at the maxWithdrawalPenalty for immediate withdrawals and decrease linearly over time.
     */
    function getWithdrawalAmounts(bytes32 request) public view returns (uint256 total, uint256 penalty) {
        // If the withdrawal period was changed while the withdrawal is pending,
        // we use the withdrawal most advantageous for the user (the shortest).
        uint256 endTime = request.initiationTime() + Math.min(request.withdrawalPeriod(), withdrawalPeriod);
        if (block.timestamp < endTime) {
            uint256 earlyWithdrawalPenalty = uint256(request.maxWithdrawalPenalty()).mulDivDown(
                endTime - block.timestamp, endTime - request.initiationTime()
            );
            penalty = earlyWithdrawalPenalty.mulDivDown(request.amount(), 1e18);
            return (request.amount(), penalty);
        } else {
            return (request.amount(), 0);
        }
    }

    /* //////////////////////////////////////////////////////////////
                          ADMIN FUNCTIONS
    ////////////////////////////////////////////////////////////// */

    /**
     * @notice Sets the withdraw period for new withdrawal requests.
     * @param withdrawalPeriod_ The new duration for the withdrawal period.
     */
    function setWithdrawalPeriod(uint32 withdrawalPeriod_) external onlyOwner {
        if (withdrawalPeriod_ > MAX_WITHDRAW_PERIOD) revert MaxWithdrawalPeriod();
        withdrawalPeriod = withdrawalPeriod_;
    }

    /**
     * @notice Sets the maximum early withdrawal penalty for new withdrawal requests.
     * @param maxWithdrawalPenalty_ The maximum early withdrawal penalty, with 18 decimals precision.
     */
    function setMaxWithdrawalPenalty(uint64 maxWithdrawalPenalty_) external onlyOwner {
        if (maxWithdrawalPenalty_ > 1e18) revert MaxWithdrawalPenaltyNotValid();
        maxWithdrawalPenalty = maxWithdrawalPenalty_;
    }

    /**
     * @notice Updates the address of the treasury.
     * @param treasury_ The new treasury address.
     */
    function setTreasury(address treasury_) external onlyOwner {
        if (treasury_ == address(0)) revert ZeroAddress();
        treasury = treasury_;
    }

    /* //////////////////////////////////////////////////////////////
                          VIEW FUNCTIONS
    ////////////////////////////////////////////////////////////// */

    /**
     * @notice Returns the number of pending withdrawal requests for a user.
     * @param user The address of the user.
     * @return length The number of pending withdrawal requests.
     */
    function getRequestsLength(address user) external view returns (uint256 length) {
        length = withdrawalRequests[user].length();
    }

    /**
     * @notice Returns the withdrawal request for a user at a specific index.
     * @param user The address of the user.
     * @param index The index of the withdrawal request.
     * @return request The withdrawal request.
     * @dev Reverts a for non-existing index.
     */
    function getRequest(address user, uint256 index) external view returns (bytes32 request) {
        request = withdrawalRequests[user].at(index);
    }

    /**
     * @notice Returns the withdrawal requests for a user at a specific indices.
     * @param user The address of the user.
     * @param indices Array of the indices of the withdrawal requests.
     * @return requests Array of the withdrawal requests.
     * @dev Reverts for non-existing indices.
     */
    function getRequests(address user, uint256[] memory indices) external view returns (bytes32[] memory requests) {
        requests = new bytes32[](indices.length);
        for (uint256 i; i < indices.length; ++i) {
            requests[i] = withdrawalRequests[user].at(indices[i]);
        }
    }

    /**
     * @notice Returns all withdrawal requests for a user.
     * @param user The address of the user.
     * @return requests Array of the withdrawal requests.
     */
    function getAllRequests(address user) external view returns (bytes32[] memory requests) {
        requests = withdrawalRequests[user].values();
    }
}
