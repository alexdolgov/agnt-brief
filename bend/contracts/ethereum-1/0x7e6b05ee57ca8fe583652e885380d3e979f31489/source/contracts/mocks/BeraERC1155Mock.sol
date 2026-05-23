// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

/// @notice A simple, local ERC1155 for testing.
contract BeraERC1155Mock is ERC1155 {
    constructor() ERC1155("https://token-cdn-domain/{id}.json") {}

    function mint(address to, uint256 id, uint256 amount) public {
        _mint(to, id, amount, "");
    }
}
