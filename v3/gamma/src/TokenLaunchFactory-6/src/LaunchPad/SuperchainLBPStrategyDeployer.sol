// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {SuperchainLBPStrategy} from "./SuperchainLBPStrategy.sol";
import {MigratorParameters} from "liquidity-launcher/src/types/MigratorParameters.sol";
import {IPositionManager} from "@uniswap/v4-periphery/src/interfaces/IPositionManager.sol";
import {IPoolManager} from "@uniswap/v4-core/src/interfaces/IPoolManager.sol";
import {OrderBookFactory} from "../LimitOrderBook/OrderBookFactory.sol";
import {IMultiPositionManager} from "../MultiPositionManager/interfaces/IMultiPositionManager.sol";

/// @title SuperchainLBPStrategyDeployer
/// @notice Deploys SuperchainLBPStrategy contracts with CREATE2
/// @dev Separated from factory to reduce factory contract size
contract SuperchainLBPStrategyDeployer {
    /// @notice The authorized factory that can call deploy
    address public immutable authorizedFactory;

    /// @notice Error when caller is not the authorized factory
    error UnauthorizedCaller();

    /// @param _authorizedFactory The factory contract authorized to call deploy
    constructor(address _authorizedFactory) {
        authorizedFactory = _authorizedFactory;
    }

    /// @notice Deploys a new SuperchainLBPStrategy contract
    /// @param salt The salt for CREATE2 deployment
    /// @param token The token being distributed
    /// @param amount The amount of tokens being distributed
    /// @param migratorParams Migration parameters
    /// @param auctionParams Auction parameters
    /// @param poolManager The Uniswap V4 pool manager
    /// @param orderBookFactory The OrderBookFactory contract
    /// @param rebalanceParams Rebalance strategy parameters
    /// @param mpmName Name for the MPM ERC20 token
    /// @param hookSalt Pre-computed salt for lazy hook deployment
    /// @param callerSalt Caller-unique salt from LiquidityLauncher (emitted with reservation)
    /// @return The address of the deployed SuperchainLBPStrategy
    function deploy(
        bytes32 salt,
        address token,
        uint128 amount,
        MigratorParameters memory migratorParams,
        bytes memory auctionParams,
        IPoolManager poolManager,
        OrderBookFactory orderBookFactory,
        IMultiPositionManager.RebalanceParams memory rebalanceParams,
        string memory mpmName,
        bytes32 hookSalt,
        bytes32 callerSalt
    ) external returns (address) {
        if (msg.sender != authorizedFactory) revert UnauthorizedCaller();

        return address(
            new SuperchainLBPStrategy{salt: salt}(
                token,
                amount,
                migratorParams,
                auctionParams,
                IPositionManager(address(0)), // Dummy position manager (not used)
                poolManager,
                orderBookFactory,
                rebalanceParams,
                mpmName,
                hookSalt,
                callerSalt
            )
        );
    }

    /// @notice Computes the address where a SuperchainLBPStrategy will be deployed
    /// @param salt The salt for CREATE2 deployment
    /// @param token The token being distributed
    /// @param amount The amount of tokens being distributed
    /// @param migratorParams Migration parameters
    /// @param auctionParams Auction parameters
    /// @param poolManager The Uniswap V4 pool manager
    /// @param orderBookFactory The OrderBookFactory contract
    /// @param rebalanceParams Rebalance strategy parameters
    /// @param mpmName Name for the MPM ERC20 token
    /// @param hookSalt Pre-computed salt for lazy hook deployment
    /// @param callerSalt Caller-unique salt from LiquidityLauncher (emitted with reservation)
    /// @return predicted The address where the SuperchainLBPStrategy will be deployed
    function computeAddress(
        bytes32 salt,
        address token,
        uint128 amount,
        MigratorParameters memory migratorParams,
        bytes memory auctionParams,
        IPoolManager poolManager,
        OrderBookFactory orderBookFactory,
        IMultiPositionManager.RebalanceParams memory rebalanceParams,
        string memory mpmName,
        bytes32 hookSalt,
        bytes32 callerSalt
    ) external view returns (address predicted) {
        bytes32 hash = keccak256(
            abi.encodePacked(
                type(SuperchainLBPStrategy).creationCode,
                abi.encode(
                    token,
                    amount,
                    migratorParams,
                    auctionParams,
                    IPositionManager(address(0)),
                    poolManager,
                    orderBookFactory,
                    rebalanceParams,
                    mpmName,
                    hookSalt,
                    callerSalt
                )
            )
        );

        // CREATE2 address: keccak256(0xff ++ address ++ salt ++ keccak256(init_code))
        predicted = address(uint160(uint256(keccak256(abi.encodePacked(bytes1(0xff), address(this), salt, hash)))));
    }
}
