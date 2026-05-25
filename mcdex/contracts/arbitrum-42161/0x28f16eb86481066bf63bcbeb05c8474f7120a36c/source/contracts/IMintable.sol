// SPDX-License-Identifier: GPL2
pragma solidity 0.8.10;

import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";

interface IMintable is IERC20Upgradeable {
    function mint(address recipient, uint256 amount) external;
}
