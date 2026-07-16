// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.9;

/**
 * @dev AntToken for EarlyStage needs.
 */
interface ICollateralTokenV2 {
    /* ========== MUTATIVE ========== */

    /**
     * @notice Unblocks account tokens previously used as collateral withour penalty.
     */
    function releaseCollateral(address account, uint256 amount) external;

    /**
     * @notice Unblocks and penalize account tokens, previously used as collateral.
     */
    function penalizeCollateral(address account, uint256 amount) external;

    /* ===== Privileged */

    /**
     * @notice Allows privileged address to block some address tokens as collater for another address.
     */
    function setCollateralFor(address sender, address receiver, uint256 amount) external;

    /* ========== VIEW ========== */

    /**
     * @return Collateral distribution penalty as 1e18 mantissa, which can be applied by collateral receiver.
     */
    function penaltyRedistributionShareMantissa() external view returns(uint256);

    /**
     * @return Time in seconds used when notifying staking contract with tokens distribution, possible to be changed by owner.
     */
    function penaltyRedistributionPeriod() external view returns(uint256);

    /**
     * @return Total collateral which was set for given account.
     */
    function totalCollateral(address account) external view returns(uint256);

    /**
     * @return Collateral amount locked from account for sepender address.
     */
    function collateralAmount(address from, address to) external view returns (uint256);

    /**
     * @return Penalty redistribution mantissa saved for given collateral
     */
    function collateralPenaltyMantissa(address from, address to) external view returns (uint256);
}
