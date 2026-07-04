// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.17;

import "../../../interfaces/IRewardsHubLight.sol";

interface IIncentiveEmissionHub {
    event RewardWithdraw(address account, uint256 amount);
    event RewardGranted(address recipient, uint256 amount);
    event RewardAssigned(address recipient, uint256 amount);
    event SupplyCoefficientUpdated(IMToken market, uint256 newSupplyCoefficient);
    event BorrowCoefficientUpdated(IMToken market, uint256 newBorrowCoefficient);

    /**
     * @notice Gets the address of incentive token contract
     */
    function token() external view returns (IERC20);

    /**
     * @notice Gets the address of rewardsHub contract
     */
    function rewardsHub() external view returns (IRewardsHubLight);

    /**
     * @notice Gets the reward coefficient for exact market and supply operation
     */
    function rewardSupplyCoefficient(IMToken market) external view returns (uint256);

    /**
     * @notice Gets the reward coefficient for exact market and borrow operation
     */
    function rewardBorrowCoefficient(IMToken market) external view returns (uint256);

    /**
     * @notice Gets keccak-256 hash of gatekeeper
     */
    function GATEKEEPER() external view returns (bytes32);

    /**
     * @notice Converts base rewards to incentive rewards using rewardCoefficient wrt market and operation type
     */
    function calculateIncentiveRewards(
        IMToken market,
        uint256 accruedBaseReward,
        bool isSupply
    ) external view returns (uint256);

    /**
     * @notice Accumulates accrued rewards to user balance
     * @dev RESTRICTION: rewardsHub only
     */
    function assignRewards(address account, uint256 rewardsAmount) external;

    /**
     * @notice Sets a new coefficient to convert supplier basic rewards from exact market
     * @dev RESTRICTION: Admin only
     */
    function setRewardSupplyCoefficient(IMToken market, uint256 newSupplyCoefficient) external;

    /**
     * @notice Sets a new coefficient to convert borrower basic rewards from exact market
     * @dev RESTRICTION: Admin only
     */
    function setRewardBorrowCoefficient(IMToken market, uint256 newBorrowCoefficient) external;

    /**
     * @notice Transfers available part of rewards to the sender.
     * This will decrease accounts buyback and voting weights.
     */
    function withdraw(uint256 amount) external;

    /**
     * @notice Grants specific amount of tokens to the recipient address
     * @dev RESTRICTION: Admin only
     */
    function grant(address recipient, uint256 amount) external;
}
