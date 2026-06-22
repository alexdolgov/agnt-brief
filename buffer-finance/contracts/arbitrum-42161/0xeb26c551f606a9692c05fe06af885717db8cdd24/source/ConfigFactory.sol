// SPDX-License-Identifier: MIT
// Author: Heisenberg
pragma solidity ^0.8.4;

import "ReentrancyGuard.sol";
import "ERC721.sol";
import "AccessControl.sol";
import "SafeERC20.sol";
import "Interfaces.sol";
import "OptionsConfig.sol";
import "BufferBinaryOptions.sol";

// import "BufferRouter.sol";

/**
 * @author Heisenberg
 * @title Controller
 * @notice A contract to manage the config values for all the option contracts and to launch new option contracts on a defined pool
 */

contract ConfigFactory {
    constructor() {}

    // a function to deploy the config contract
    function deploy(ILiquidityPool _pool) public returns (IOptionsConfig) {
        IOptionsConfig config = new OptionsConfig(_pool);
        Ownable(address(config)).transferOwnership(msg.sender);
        return config;
    }
}

// Interface for the ConfigFactory contract

interface IConfigFactory {
    function deploy(ILiquidityPool _pool) external returns (IOptionsConfig);
}
