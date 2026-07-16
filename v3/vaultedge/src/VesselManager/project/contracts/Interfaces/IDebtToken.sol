// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

/**
 * @title IDebtToken
 * @notice Protocol interface for the debt token (USDVE).
 * @dev Does NOT extend IERC20 to avoid diamond inheritance conflicts between
 * IERC20 and IERC20Upgradeable when used with OZ upgradeable contracts.
 * The concrete contract inherits ERC20 behavior through ERC20Upgradeable.
 */
interface IDebtToken {
    // --- Events ---

    event TokenBalanceUpdated(address _user, uint256 _amount);
    event EmergencyStopMintingCollateral(address _asset, bool state);
    event WhitelistChanged(address _whitelisted, bool whitelisted);
    event AddressesSet(address borrowerOperations, address stabilityPool, address vesselManager);

    // --- ERC20 functions used by protocol contracts ---

    function balanceOf(address account) external view returns (uint256);

    // --- Protocol functions ---

    function emergencyStopMinting(address _asset, bool status) external;

    function mint(address _asset, address _account, uint256 _amount) external;

    function mintFromWhitelistedContract(uint256 _amount) external;

    function burnFromWhitelistedContract(uint256 _amount) external;

    function burn(address _account, uint256 _amount) external;

    function sendToPool(address _sender, address poolAddress, uint256 _amount) external;

    function returnFromPool(address poolAddress, address user, uint256 _amount) external;

    function addWhitelist(address _address) external;

    function removeWhitelist(address _address) external;
}
