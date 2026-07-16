// SPDX-License-Identifier: BUSL-1.1
pragma solidity >=0.8.0;

/// @title IFundingProtocol interface
/// @author Daniel D. Alcarraz (https://github.com/0xDanr)
/// @dev Interface used for Funding contracts used in VaultFactory
interface IFundingProtocol {

    /// @dev Emitted when funding contract is created
    event CreatePeriod(uint256 indexed period, address indexed gammaVault, uint256 periodLength, uint256 periodExpiration, bool isDeposit);

    /// @dev Emitted whenever the periodLength or periodExpiration is updated
    event UpdatePeriod(uint256 indexed period, uint256 periodLength, uint256 periodExpiration, bool isDeposit);

    /// @dev Initialize funding protocol
    /// @param _gammaVault - address of vault contract funding protocol contract belongs to
    /// @param _asset - address of asset token in vault contract
    /// @param _isDeposit - true if funding contract is for deposits into vault, false if it's for withdrawals
    function initialize(address _gammaVault, address _asset, bool _isDeposit) external;

    /// @dev Get GammaVault address
    function gammaVault() external view returns (address);

    /// @dev Get asset token address
    function asset() external view returns (address);

    /// @dev Get claim token address
    function claimToken() external view returns (address);

    /// @dev True if it's a funding contract for deposits. False if it's for withdrawals
    function isDeposit() external view returns (bool);

    /// @dev Get GammaVault factory contract
    function gvFactory() external view returns (address);

    /// @dev Get current period number
    function period() external view returns (uint256);

    /// @dev Get time length of next period in seconds
    function periodLength() external view returns(uint256);

    /// @dev Update period length for next period
    /// @param _periodLength - length of period in seconds
    function setPeriodLength(uint256 _periodLength) external;

    /// @dev Get period expiration timestamp
    function periodExpiration() external view returns (uint256);

    /// @dev Update period expiration timestamp
    /// @param _periodExpiration - period expiration timestamp in terms of network's timestamp
    function setPeriodExpiration(uint256 _periodExpiration) external;

    /// @dev Get current period information
    /// @return _period - current period number
    /// @return _periodLength - period length in seconds (current if not updated since last updated, otherwise next length after period update)
    /// @return _periodExpiration - current network timestamp at which period will expire
    function getPeriodInfo() external view returns(uint256 _period, uint256 _periodLength, uint256 _periodExpiration);

}
