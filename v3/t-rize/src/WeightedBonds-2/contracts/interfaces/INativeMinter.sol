//SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface INativeMinter {
    event NativeCoinMinted(
        address indexed sender,
        address indexed recipient,
        uint256 amount
    );

    function mintNativeCoin(address addr, uint256 amount) external;
}
