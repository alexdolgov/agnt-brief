//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import "@openzeppelin/contracts-upgradeable/interfaces/IERC4626Upgradeable.sol";

interface ISeMetis is IERC4626Upgradeable {
    function depositFromEMetisMinter(uint256 amount, address account) external;
    function addAssets(uint256 assets) external;
}