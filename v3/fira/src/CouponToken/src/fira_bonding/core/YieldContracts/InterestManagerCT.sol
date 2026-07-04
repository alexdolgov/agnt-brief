// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "../../../interfaces/IBCContractFactory.sol";
import "../../../interfaces/IBCToken.sol";
import "../../../interfaces/IBondToken.sol";
import "../../../interfaces/IPInterestManagerCT.sol";

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "../../StandardizedYield/FWUtils.sol";
import "../../libraries/TokenHelper.sol";
import "../../libraries/math/PMath.sol";

/**
 * @title InterestManagerCT
 * @notice Abstract contract managing interest distribution for Coupon Token holders
 * @dev With CT yielding more FWs overtime, which is allowed to be redeemed by users, the reward
 *      distribution should be based on the amount of FWs that their CT currently represent,
 *      plus with their dueInterest.
 */
abstract contract InterestManagerCT is TokenHelper, IPInterestManagerCT {
    using PMath for uint256;

    /**
     * @notice Stores interest accrual data for each user
     * @dev index: The interest index at the user's last interaction
     *      accrued: The amount of interest accrued but not yet claimed
     */
    struct UserInterest {
        uint128 index;
        uint128 accrued;
    }

    /// @notice Mapping from user address to their interest accrual data
    mapping(address => UserInterest) public userInterest;

    /**
     * @notice Distributes interest to a single user
     * @dev Internal function that updates interest for one user before any balance change
     * @param user Address of the user to distribute interest to
     */
    function _distributeInterest(address user) internal {
        _distributeInterestForTwo(user, address(0));
    }

    /**
     * @notice Distributes interest to two users simultaneously
     * @dev Used during token transfers to update both sender and receiver
     *      Skips address(0) and address(this) as they should never have interest accounting
     * @param user1 First user address (can be address(0) to skip)
     * @param user2 Second user address (can be address(0) to skip)
     */
    function _distributeInterestForTwo(address user1, address user2) internal {
        uint256 index = _getInterestIndex();
        if (user1 != address(0) && user1 != address(this)) _distributeInterestPrivate(user1, index);
        if (user2 != address(0) && user2 != address(this)) _distributeInterestPrivate(user2, index);
    }

    /**
     * @notice Transfers accrued interest to a user, deducting protocol fees
     * @dev Clears the user's accrued interest and transfers FW tokens to user and treasury
     * @param user Address of the user claiming interest
     * @param FW Address of the Fira Wrapped token
     * @param factory Address of the YieldContractFactory (for fee configuration)
     * @return interestAmount The net interest amount transferred to the user (after fees)
     */
    function _doTransferOutInterest(address user, address FW, address factory)
        internal
        returns (uint256 interestAmount)
    {
        address treasury = IBCContractFactory(factory).treasury();
        uint256 feeRate = IBCContractFactory(factory).interestFeeRate();

        uint256 interestPreFee = userInterest[user].accrued;
        userInterest[user].accrued = 0;

        uint256 feeAmount = interestPreFee.mulDown(feeRate);
        interestAmount = interestPreFee - feeAmount;

        _transferOut(FW, treasury, feeAmount);
        _transferOut(FW, user, interestAmount);

        emit CollectInterestFee(feeAmount);
    }

    /**
     * @notice Private function to calculate and accrue interest for a single user
     * @dev Should only be called from `_distributeInterestForTwo` after validating user address.
     *      Uses the interest index formula: interest = principal * (currentIndex - prevIndex) / (prevIndex *
     * currentIndex)
     * @param user Address of the user (must not be address(0) or address(this))
     * @param currentIndex The current global interest index
     */
    function _distributeInterestPrivate(address user, uint256 currentIndex) private {
        assert(user != address(0) && user != address(this));

        uint256 prevIndex = userInterest[user].index;

        if (prevIndex == currentIndex) return;
        if (prevIndex == 0) {
            userInterest[user].index = currentIndex.Uint128();
            return;
        }

        uint256 principal = _CTbalance(user);

        uint256 interestFromCT = (principal * (currentIndex - prevIndex)).divDown(prevIndex * currentIndex);

        userInterest[user].accrued += interestFromCT.Uint128();
        userInterest[user].index = currentIndex.Uint128();
    }

    /**
     * @notice Returns the current global interest index
     * @dev Must be implemented by inheriting contracts to provide the FW exchange rate
     * @return index The current interest index used for interest calculations
     */
    function _getInterestIndex() internal virtual returns (uint256 index);

    /**
     * @notice Returns the Coupon Token balance for a user
     * @dev Must be implemented by inheriting contracts
     * @param user Address to query balance for
     * @return The user's CT balance
     */
    function _CTbalance(address user) internal view virtual returns (uint256);
}
