pragma solidity ^0.8.19;

// SPDX-License-Identifier: MIT

/// @title Planet Strategy Interface
interface IStrategy {
    /// @notice Retrieves the total number of shares held by all users
    /// @return _sharesTotal The total number of shares across all users
    function sharesTotal() external view returns (uint256 _sharesTotal);

    /// @notice Gets the total locked want tokens and total shares in the strategy
    /// @return _wantLockedTotal The total amount of want tokens locked in the strategy
    /// @return _sharesTotal Total shares issued by the strategy
    function getShares() external view returns (uint256 _wantLockedTotal, uint256 _sharesTotal);

    /// @notice Deposits want tokens from gammaFarm to strategy
    /// @param _wantAmt The amount of want tokens to deposit
    /// @return _sharesAdded The number of shares issued for the deposited amount
    function deposit(uint256 _wantAmt) external returns (uint256 _sharesAdded);

    /// @notice Deposits locked want tokens from gammaFarm to strategy with a specified lock time
    /// @param _wantAmt The amount of want tokens to deposit
    /// @param _mintAddress The address of the user on whose behalf the deposit is made
    /// @param _lockTimeIndex The index representing the lock time period
    /// @return sharesAdded The number of shares issued for the deposited amount
    /// @return sharesAddedWithMultiplier The number of shares issued for the deposited amount multiplied by the lockTimeMultiplier for the selected lock time
    function deposit(uint256 _wantAmt, address _mintAddress, uint256 _lockTimeIndex) external returns (uint256 sharesAdded, uint256 sharesAddedWithMultiplier);
    /// @notice Deposits users rewards into farm and vesting strategy with a specified lock time
    /// @param _wantAmt The amount of want tokens to deposit
    /// @param _mintAddress The address of the user on whose behalf the deposit is made
    /// @param _vestingVaultDefaultLockTimeIndex The index representing the lock time period

    function depositVesting(uint256 _wantAmt, address _mintAddress, uint256 _vestingVaultDefaultLockTimeIndex) external;

    /// @notice Withdraws vested want tokens from strategy to gammaFarm
    /// @param _wantAmt The amount of want tokens to withdraw
    /// @param _user The address of the user making the withdrawal
    function withdrawVesting(uint256 _wantAmt, address _user) external;

    /// @notice Withdraws want tokens from strategy to gammaFarm
    /// @param _wantAmt The amount of want tokens to withdraw
    /// @return sharesRemoved The number of shares removed
    /// @return toBeSentToUser The number of want tokens to be sent to the user after charging fees if applicable
    function withdraw(uint256 _wantAmt) external returns (uint256 sharesRemoved, uint256 toBeSentToUser);

    /// @notice Withdraws locked want tokens from strategy to gammaFarm for a specific user
    /// @param _wantAmt The amount of want tokens to withdraw
    /// @param _user The address of the user making the withdrawal
    /// @return sharesRemoved The number of shares removed
    /// @return toBeSentToUser The number of want tokens to be sent to the user after charging fees if applicable
    /// @return earningSharesRemoved The sum of the shares removed multiplied by the lock time multipliers for each of the shares removed
    function withdraw(uint256 _wantAmt, address _user) external returns (uint256 sharesRemoved, uint256 toBeSentToUser, uint256 earningSharesRemoved);

    /// @notice Performs an emergency withdrawal of want tokens from strategy to gammaFarm
    /// @param _wantAmt The amount of want tokens for emergency withdrawal
    /// @return sharesRemoved The number of shares removed
    /// @return toBeSentToUser The number of want tokens to be sent to the user after charging fees if applicable
    function emergencyWithdraw(uint256 _wantAmt) external returns (uint256 sharesRemoved, uint256 toBeSentToUser);

    /// @notice Performs an emergency withdrawal of locked want tokens from strategy to gammaFarm for a specific user
    /// @param _wantAmt The amount of want tokens for emergency withdrawal
    /// @param _user The address of the user making the emergency withdrawal
    /// @return sharesRemoved The number of shares removed
    /// @return toBeSentToUser The number of want tokens to be sent to the user after charging fees if applicable
    /// @return earningSharesRemoved The sum of the shares removed multiplied by the lock time multipliers for each of the shares removed
    function emergencyWithdraw(uint256 _wantAmt, address _user) external returns (uint256 sharesRemoved, uint256 toBeSentToUser, uint256 earningSharesRemoved);

    /// @notice Retrieves the current exchange rate between base tokens and pTokens
    /// @return _pTokenExchangeRate The current pToken exchange rate
    function pTokenExchangeRate() external view returns (uint256 _pTokenExchangeRate);

    /// @notice Claims parent farm rewards, converts them to gamma and sends them from strategy to gammaFarm for distribution
    /// @return gammaRewardsEarned The amount of gamma rewards transferred
    function earnGammaProfits() external returns (uint256 gammaRewardsEarned);

    /// @notice Gets the pending rewards generated by the strategy
    /// @return pendingRewards The amount of pending rewards
    function getStratPendingRewards() external view returns (uint256 pendingRewards);

    /// @notice Retrieves the earning shares of a specific user
    /// @param _user The address of the user
    /// @return earningShares The number of earning shares of the user
    function getEarningShares(address _user) external view returns (uint256 earningShares);

    /// @notice Gets the lock period associated with a specific type
    /// @param _typeIndex The index representing the type
    /// @return lockPeriod The lock period in blocks or time
    function getLockPeriod(uint256 _typeIndex) external view returns (uint256 lockPeriod);

}
