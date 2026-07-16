// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.28;

import "@openzeppelin/contracts/interfaces/IERC721Enumerable.sol";

interface IAzuroBet is IERC721Enumerable {
    error OnlyCore();

    function initialize(address core) external;

    function burn(uint256 id) external;

    function mint(address account) external returns (uint256);
}
