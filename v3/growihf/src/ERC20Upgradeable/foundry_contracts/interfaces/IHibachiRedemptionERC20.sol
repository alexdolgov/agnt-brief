// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

/// @title Redemption ERC-20
/// @author Hibachi Dev
/// @notice ERC-20 token used to facilitate asset redemption in "Escape" mode.
interface IHibachiRedemptionERC20 {
    function initialize(string memory name, string memory symbol) external;

    function mint(address recipient, uint256 amount) external;

    function burn(address owner, uint256 amount) external;
}
