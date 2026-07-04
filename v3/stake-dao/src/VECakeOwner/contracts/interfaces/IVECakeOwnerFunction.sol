// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

interface IVECakeOwnerFunction {
    /// @notice Set breaker
    /// @param _breaker The new value of breaker 0 if off, 1 if on
    function setBreaker(uint256 _breaker) external;

    function setEarlyWithdrawConfig(
        uint64 _newEarlyWithdrawBpsPerWeek,
        uint64 _newRedistributeBps,
        address _newTreasuryAddr,
        address _newRedistributeAddr
    ) external;

    function setWhitelistedCallers(address[] calldata callers, bool ok) external;

    function setWhitelistedRedistributors(address[] calldata callers, bool ok) external;

    /// @notice Update delegator
    /// @param _delegator The delegator address
    /// @param _isDelegator Is delegator or not
    /// @param _limitTimestampForEarlyWithdraw Delegator can not call earlyWithdraw before limit time.
    function updateDelegator(
        address _delegator,
        bool _isDelegator,
        uint40 _limitTimestampForEarlyWithdraw
    ) external;

    /// @notice Set limitTimeOfConvert
    /// @param _limitTime The limit time
    function setLimitTimeOfConvert(uint256 _limitTime) external;

    /// @notice Set ealy withdraw switch
    /// @param _earlyWithdrawSwitch early withdraw switch
    function setEarlyWithdrawSwitch(bool _earlyWithdrawSwitch) external;

    /// @notice Set emergency withdraw switch
    /// @param _emergencyWithdrawSwitch early withdraw switch
    function setEmergencyWithdrawSwitch(bool _emergencyWithdrawSwitch) external;

    /// @notice Set no penalty early withdraw user
    /// @param _user no penalty early withdraw user
    /// @param _status no penalty or not
    function setNoPenaltyForEarlyWithdraw(address _user, bool _status) external;

    /// @notice Inject cake for delegator
    /// @param _delegator The delegator address
    /// @param _amount Cake amount
    function injectToDelegator(address _delegator, uint256 _amount) external;

    /// @notice Set farm booster Contract address
    /// @param _farmBooster The farm booster Contract address
    function setFarmBooster(address _farmBooster) external;

    function transferOwnership(address newOwner) external;

    /// @notice Set whitelist
    /// @dev Allow contract to set whitelist in VECake.
    /// @param _status Whitelist or not
    function setWhitelist(bool _status) external;
}
