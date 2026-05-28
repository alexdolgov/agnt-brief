// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import {IPoolManager} from "v4-core/interfaces/IPoolManager.sol";
import {PoolKey} from "v4-core/types/PoolKey.sol";
import {LaunchpadPositionManager} from "./LaunchpadPositionManager.sol";

/**
 * @title LimitedPositionDeployer
 * @notice Deploys LimitedPositionManager contracts using regular CREATE
 * @dev Separated from factory to reduce factory contract size
 */
contract LaunchpadPositionDeployer {
    /**
     * @notice Deploys a new LaunchpadPositionManager contract
     * @param poolManager The Uniswap V4 pool manager
     * @param poolKey The pool key for the Uniswap V4 pool
     * @param owner The owner of the new LimitedPositionManager
     * @param factory The factory contract address
     * @param name The name of the LP token
     * @param symbol The symbol of the LP token
     * @param fee The protocol fee (always 4 for Limited, meaning 25%)
     * @return The address of the deployed LimitedPositionManager
     */
    function deploy(
        IPoolManager poolManager,
        PoolKey memory poolKey,
        address owner,
        address factory,
        string memory name,
        string memory symbol,
        uint16 fee
    ) external returns (address) {
        return address(new LaunchpadPositionManager(
            poolManager,
            poolKey,
            owner,
            factory,
            name,
            symbol,
            fee
        ));
    }
}
