// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IHyperToken {
    event SetMinter(address sender, address account, bool enable);

    function mint(address to, uint256 amount) external;

    function burn(uint256 amount) external;

    function setMiner(address account, bool enable) external;
}
