// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.28;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IXGLDToken is IERC20 {
    error OnlyMinter();
    error OnlyBurner();
    error ZeroAddress();

    event MinterAdded(address indexed minter);
    event MinterRemoved(address indexed minter);
    event BurnerAdded(address indexed burner);
    event BurnerRemoved(address indexed burner);

    function mint(address to, uint256 amount) external;
    function burn(uint256 amount) external;
    function minters(address account) external view returns (bool);
    function burners(address account) external view returns (bool);
    function addMinter(address minter) external;
    function removeMinter(address minter) external;
    function addBurner(address burner) external;
    function removeBurner(address burner) external;
}
