// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {IERC20} from "@openzeppelin-latest/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin-latest/contracts/token/ERC20/utils/SafeERC20.sol";
import {ILiquidityLauncher} from "liquidity-launcher/src/interfaces/ILiquidityLauncher.sol";
import {IDistributionContract} from "liquidity-launcher/src/interfaces/IDistributionContract.sol";
import {Distribution} from "liquidity-launcher/src/types/Distribution.sol";
import {MigratorParameters} from "liquidity-launcher/src/types/MigratorParameters.sol";
import {SuperchainLBPStrategyFactory} from "./SuperchainLBPStrategyFactory.sol";
import {IMultiPositionManager} from "../MultiPositionManager/interfaces/IMultiPositionManager.sol";
import {PoolType} from "./types/PoolType.sol";
import {ITokenFactory} from "liquidity-launcher/src/token-factories/uerc20-factory/interfaces/ITokenFactory.sol";
import {UERC20Metadata} from "liquidity-launcher/src/token-factories/uerc20-factory/libraries/UERC20MetadataLibrary.sol";

/// @notice Parameters for deploying and launching a SuperchainERC20 token
struct SuperTokenLaunchParams {
    address tokenFactory;
    string name;
    string symbol;
    uint8 decimals;
    uint256 totalSupply;
    uint256 homeChainId;
    UERC20Metadata metadata;
    uint128 launchAmount;
    MigratorParameters migratorParams;
    bytes auctionParams;
    PoolType poolType;
    IMultiPositionManager.RebalanceParams rebalanceParams;
    string mpmName;
    bytes32 salt;
}

/// @title TokenLaunchFactory
/// @notice Single-transaction factory for deploying tokens with presale auctions
/// @dev Routes through Uniswap's LiquidityLauncher for ecosystem visibility and future UI integration
contract TokenLaunchFactory {
    using SafeERC20 for IERC20;

    /// @notice The SuperchainLBPStrategyFactory used to deploy strategies
    SuperchainLBPStrategyFactory public immutable strategyFactory;

    /// @notice The LiquidityLauncher used to coordinate token distribution
    ILiquidityLauncher public immutable liquidityLauncher;

    /// @notice Error thrown when zero address provided
    error ZeroAddress();

    /// @notice Error thrown when invalid amount provided
    error InvalidAmount();

    /// @notice Emitted when a new token is launched with presale
    /// @param token The deployed token address
    /// @param strategy The deployed strategy address
    /// @param auction The deployed auction address
    /// @param creator The creator address
    /// @param name Token name
    /// @param symbol Token symbol
    event TokenLaunched(
        address indexed token,
        address indexed strategy,
        address indexed auction,
        address creator,
        string name,
        string symbol
    );

    /// @param _strategyFactory The SuperchainLBPStrategyFactory contract
    /// @param _liquidityLauncher The LiquidityLauncher contract
    constructor(SuperchainLBPStrategyFactory _strategyFactory, ILiquidityLauncher _liquidityLauncher) {
        if (address(_strategyFactory) == address(0)) revert ZeroAddress();
        if (address(_liquidityLauncher) == address(0)) revert ZeroAddress();
        strategyFactory = _strategyFactory;
        liquidityLauncher = _liquidityLauncher;
    }

    /// @notice Launches a token with presale auction in a single transaction
    /// @dev This function:
    ///      1. Approves LiquidityLauncher to transfer tokens
    ///      2. Calls LiquidityLauncher.distributeToken() which:
    ///         - Creates strategy via SuperchainLBPStrategyFactory
    ///         - Transfers tokens to strategy
    ///         - Initializes the auction
    /// @param token The token address (must be already deployed)
    /// @param launchAmount Total tokens for launch (split between auction and liquidity reserve by tokenSplitToAuction)
    /// @param migratorParams Migration parameters (currency, fees, blocks, etc.)
    /// @param auctionParams CCA auction parameters
    /// @param poolType Pool type (REGULAR, DYNAMIC, or VOLATILITY)
    /// @param rebalanceParams Rebalance parameters for MPM strategy
    /// @param mpmName Name for the MPM token
    /// @param salt Salt for deterministic deployment
    /// @return strategy The deployed SuperchainLBPStrategy address
    /// @return auction The deployed ContinuousClearingAuction address
    function launchToken(
        address token,
        uint128 launchAmount,
        MigratorParameters memory migratorParams,
        bytes memory auctionParams,
        PoolType poolType,
        IMultiPositionManager.RebalanceParams memory rebalanceParams,
        string memory mpmName,
        bytes32 salt
    ) external returns (address strategy, address auction) {
        // Validation
        if (token == address(0)) revert ZeroAddress();
        if (launchAmount == 0) revert InvalidAmount();
        if (rebalanceParams.strategy == address(0)) revert ZeroAddress();

        // Deploy strategy and get addresses
        // Scoped block to avoid stack too deep
        {
            // Encode configuration data for strategy factory
            bytes memory configData = abi.encode(migratorParams, poolType, rebalanceParams, mpmName, auctionParams);

            // Create Distribution struct for LiquidityLauncher
            Distribution memory distribution =
                Distribution({strategy: address(strategyFactory), amount: launchAmount, configData: configData});

            // Transfer tokens from caller to LiquidityLauncher
            // Caller must have approved this contract for at least launchAmount
            IERC20(token).safeTransferFrom(msg.sender, address(liquidityLauncher), launchAmount);

            // Call LiquidityLauncher to distribute tokens
            // payerIsUser = false because tokens are already in LiquidityLauncher
            IDistributionContract distributionContract =
                liquidityLauncher.distributeToken(token, distribution, false, salt);
            strategy = address(distributionContract);
        }

        // Get auction address from strategy
        // Scoped block to avoid stack too deep
        {
            // Using low-level call since we need to call auction() getter
            (bool success, bytes memory data) = strategy.staticcall(abi.encodeWithSignature("auction()"));
            if (success && data.length >= 32) {
                auction = abi.decode(data, (address));
            }
        }

        emit TokenLaunched(token, strategy, auction, msg.sender, "", "");
    }

    /// @notice Deploys a SuperchainERC20 token and launches it with presale in a single transaction
    /// @dev This function:
    ///      1. Deploys USUPERC20 token via token factory
    ///      2. Transfers launchAmount to LiquidityLauncher (split between auction and liquidity)
    ///      3. Launches presale via launchToken()
    ///      4. Transfers remaining tokens to creator
    /// @param params The SuperTokenLaunchParams struct containing all deployment parameters
    /// @return token The deployed token address
    /// @return strategy The deployed SuperchainLBPStrategy address
    /// @return auction The deployed ContinuousClearingAuction address
    function deployAndLaunchSuperToken(SuperTokenLaunchParams memory params)
        external
        returns (address token, address strategy, address auction)
    {
        // Validation
        if (params.tokenFactory == address(0)) revert ZeroAddress();
        if (params.totalSupply == 0) revert InvalidAmount();
        if (params.launchAmount == 0) revert InvalidAmount();
        if (params.launchAmount > params.totalSupply) revert InvalidAmount();
        if (params.rebalanceParams.strategy == address(0)) revert ZeroAddress();

        // Deploy token
        token = _deployToken(
            params.tokenFactory,
            params.name,
            params.symbol,
            params.decimals,
            params.totalSupply,
            params.homeChainId,
            params.metadata
        );

        // Launch presale
        (strategy, auction) = _launchPresale(
            token,
            params.launchAmount,
            params.migratorParams,
            params.auctionParams,
            params.poolType,
            params.rebalanceParams,
            params.mpmName,
            params.salt
        );

        // Transfer remaining tokens to creator
        _transferRemainingTokens(token, params.totalSupply, params.launchAmount);

        emit TokenLaunched(token, strategy, auction, msg.sender, params.name, params.symbol);
    }

    /// @notice Internal function to deploy token via factory
    /// @dev Encapsulates token deployment logic to reduce stack depth
    /// @dev Uses address(this) as creator since TokenLaunchFactory is the deploying contract
    function _deployToken(
        address tokenFactory,
        string memory name,
        string memory symbol,
        uint8 decimals,
        uint256 totalSupply,
        uint256 homeChainId,
        UERC20Metadata memory metadata
    ) internal returns (address token) {
        // Use address(this) as creator since TokenLaunchFactory is calling the factory
        bytes memory factoryData = abi.encode(homeChainId, address(this), metadata);
        token = ITokenFactory(tokenFactory).createToken(
            name, symbol, decimals, totalSupply, address(this), factoryData, getGraffiti(address(this))
        );
    }

    /// @notice Internal function to launch presale
    /// @dev Encapsulates presale launch logic to reduce stack depth
    function _launchPresale(
        address token,
        uint128 launchAmount,
        MigratorParameters memory migratorParams,
        bytes memory auctionParams,
        PoolType poolType,
        IMultiPositionManager.RebalanceParams memory rebalanceParams,
        string memory mpmName,
        bytes32 salt
    ) internal returns (address strategy, address auction) {
        // Transfer tokens to LiquidityLauncher
        IERC20(token).safeTransfer(address(liquidityLauncher), launchAmount);

        // Encode configuration and create distribution
        bytes memory configData = abi.encode(migratorParams, poolType, rebalanceParams, mpmName, auctionParams);
        Distribution memory distribution =
            Distribution({strategy: address(strategyFactory), amount: launchAmount, configData: configData});

        // Deploy strategy via LiquidityLauncher
        IDistributionContract distributionContract =
            liquidityLauncher.distributeToken(token, distribution, false, salt);
        strategy = address(distributionContract);

        // Get auction address from strategy
        (bool success, bytes memory data) = strategy.staticcall(abi.encodeWithSignature("auction()"));
        if (success && data.length >= 32) {
            auction = abi.decode(data, (address));
        }
    }

    /// @notice Internal function to transfer remaining tokens
    /// @dev Encapsulates remaining token transfer logic to reduce stack depth
    function _transferRemainingTokens(address token, uint256 totalSupply, uint128 launchAmount) internal {
        uint256 remainingTokens = totalSupply - launchAmount;
        if (remainingTokens > 0) {
            IERC20(token).safeTransfer(msg.sender, remainingTokens);
        }
    }

    /// @notice Generates graffiti hash for token factory deployment
    /// @dev Uses keccak256 hash of creator address for deterministic deployment
    /// @param creator The token creator address
    /// @return The graffiti hash
    function getGraffiti(address creator) internal pure returns (bytes32) {
        return keccak256(abi.encode(creator));
    }
}
