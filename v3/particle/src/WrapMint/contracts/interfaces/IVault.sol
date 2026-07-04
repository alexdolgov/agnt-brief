// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

interface IVault {
    /*==============================================================
                               Event Logs
    ==============================================================*/

    event MintFixedRate(address owner, uint256 id, uint256 mintAmount, uint256 lockedAmount);
    event BurnFixedRate(address owner, uint256 id, uint256 burnAmount, uint256 yield);
    event MintVariableRate(address owner, uint256 mintAmount);
    event BurnVariableRate(address owner, uint256 burnAmount, uint256 yield, uint256 positionFee);
    event EstimateYield(uint256 currentRate, bool updated);
    event UpdateYieldManager(address newYieldManager);
    event UpdateYieldEstimateWindow(uint256 window);
    event UpdateCurve(uint256 s1, uint256 s2, uint256 s3, uint256 r1, uint256 r2);
    event UpdatePositionFeeRate(uint256 fee);

    /*==============================================================
                         Fixed rate LP deposit
    ==============================================================*/

    /**
     * @notice Deposit a principal amount to lock a fixed yield rate until maturity
     * @param amount the deposit amount
     * @param minLockedYield the minimum amount to lock, for slippage protection
     * @param recipient the address to receive the fixedRate contract
     * @return owner the address to the fixedRate contract
     * @return lockedYield the amount locked, which over time releases the yield at fixed rate
     * @return maturityTimestamp the maturity timestamp
     */
    function mintFixedRate(
        uint256 amount,
        uint256 minLockedYield,
        address recipient
    ) external returns (address owner, uint256 lockedYield, uint256 maturityTimestamp);

    /*==============================================================
                        Fixed rate LP withdraw
    ==============================================================*/

    /**
     * @notice Withdraw a principal amount from a fixed yield rate deposit
     * @param id the deposit id
     * @param amount the amount of principal to withdraw
     * @return yieldToUnlock the yield to unlock from the locked amount
     * @return yieldToRelease the yield to release to the owner
     */
    function burnFixedRate(uint256 id, uint256 amount) external returns (uint256 yieldToUnlock, uint256 yieldToRelease);

    /*==============================================================
                       Variable rate LP deposit
    ==============================================================*/

    /**
     * @notice Deposit a principal amount for variable yield rate
     * @param amount the deposit amount
     * @param recipient the address to receive the variableRate contract
     * @return owner the address to the variableRate contract
     */
    function mintVariableRate(uint256 amount, address recipient) external returns (address owner);

    /*==============================================================
                      Variable rate LP withdraw
    ==============================================================*/

    /**
     * @notice Withdraw a principal amount from a variable yield rate deposit
     * @param amount the amount of principal to withdraw
     * @param minYield the minimum yield to receive, for slippage protection
     * @return yield the yield amount
     * @return fee the position fee
     */
    function burnVariableRate(uint256 amount, uint256 minYield) external returns (uint256 yield, uint256 fee);

    /*==============================================================
                            Helper Functions
    ==============================================================*/

    /**
     * @notice get the amount to lock based on the current fixed term rate and the deposit amount
     * @param amount the deposit amount
     * @return yieldToLock the amount to lock
     */
    function getYieldToLock(uint256 amount) external view returns (uint256 yieldToLock);

    /**
     * @notice get the maximum amount of principal for a fixed term rate
     * @return amount the maximum amount of principal
     */
    function getMaxFixedRateAmount() external view returns (uint256 amount);

    /**
     * @notice get the current fixed term rate from idle yield / total yield
     * @return rate the current fixed term rate
     */
    function getFixedRate() external view returns (uint256 rate);

    /**
     * @notice get the total yield from the protocol
     * @return totalYield the total yield
     */
    function getTotalYield() external view returns (uint256 totalYield);

    /**
     * @notice get the current yield and position fee accrued to a variable rate LP
     * @param owner the address of the LP
     * @return yield the current yield
     * @return fee the current position fee
     */
    function getCurrentVariableRate(address owner) external view returns (uint256 yield, uint256 fee);

    /*==============================================================
                              Admin Logic
    ==============================================================*/

    /**
     * @notice Update the yield manager
     * @param newYieldManager the new yield manager
     */
    function updateYieldManager(address newYieldManager) external;

    /**
     * @notice Update the fixed term rate curve
     * @param s1 the slope of chunk 1
     * @param s2 the slope of chunk 2
     * @param s3 the slope of chunk 3
     * @param r1 the ratio cutoff between chunk 1 and 2
     * @param r2 the ratio cutoff between chunk 2 and 3
     */
    function updateCurve(uint256 s1, uint256 s2, uint256 s3, uint256 r1, uint256 r2) external;

    /**
     * @notice Update the position fee
     * @param fee the new position fee
     */
    function updatePositionFeeRate(uint256 fee) external;
}
