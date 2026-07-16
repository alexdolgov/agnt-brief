// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import {IERC20} from "@openzeppelin-latest/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin-latest/contracts/token/ERC20/utils/SafeERC20.sol";
import {AccessControl} from "@openzeppelin-latest/contracts/access/AccessControl.sol";
import {ILiquidityLauncher} from "liquidity-launcher/src/interfaces/ILiquidityLauncher.sol";
import {IDistributionContract} from "liquidity-launcher/src/interfaces/IDistributionContract.sol";
import {Distribution} from "liquidity-launcher/src/types/Distribution.sol";
import {MigratorParameters} from "liquidity-launcher/src/types/MigratorParameters.sol";
import {SuperchainLBPStrategyFactory} from "./SuperchainLBPStrategyFactory.sol";
import {IMultiPositionManager} from "../MultiPositionManager/interfaces/IMultiPositionManager.sol";
import {OrderBookFactory} from "../LimitOrderBook/OrderBookFactory.sol";
import {ITokenFactory} from "liquidity-launcher/src/token-factories/uerc20-factory/interfaces/ITokenFactory.sol";
import {UERC20Metadata} from "liquidity-launcher/src/token-factories/uerc20-factory/libraries/UERC20MetadataLibrary.sol";

/// @notice Parameters for deploying a token and launching presale
struct DeployAndLaunchParams {
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
    IMultiPositionManager.RebalanceParams rebalanceParams;
    string mpmName;
    bytes32 salt;
    bytes32 hookSalt;  // Pre-computed salt for early hook deployment (from OrderBookFactory.computeSaltForVolatilityDynamic)
}

/// @title TokenLaunchFactory
/// @notice Single-transaction factory for deploying tokens with presale auctions
/// @dev Routes through Uniswap's LiquidityLauncher for ecosystem visibility and future UI integration
contract TokenLaunchFactory is AccessControl {
    using SafeERC20 for IERC20;

    /// @notice Role for collecting fees
    bytes32 public constant FEE_COLLECTOR_ROLE = keccak256("FEE_COLLECTOR_ROLE");

    /// @notice The SuperchainLBPStrategyFactory used to deploy strategies
    SuperchainLBPStrategyFactory public immutable strategyFactory;

    /// @notice The LiquidityLauncher used to coordinate token distribution
    ILiquidityLauncher public immutable liquidityLauncher;

    /// @notice Creation fee for launching tokens (in native currency)
    uint256 public creationFee;

    /// @notice Total collected fees available for withdrawal
    uint256 public collectedFees;

    /// @notice Error thrown when zero address provided
    error ZeroAddress();

    /// @notice Error thrown when invalid amount provided
    error InvalidAmount();

    /// @notice Error thrown when insufficient ETH is sent for creation fee
    error InsufficientFee();

    /// @notice Error thrown when there are no fees to withdraw
    error NoFeesToWithdraw();

    /// @notice Error thrown when ETH transfer fails
    error ETHTransferFailed();

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

    /// @notice Emitted when the creation fee is updated
    /// @param newFee The new creation fee
    event CreationFeeUpdated(uint256 newFee);

    /// @notice Emitted when a creation fee is collected
    /// @param creator The address that paid the fee
    /// @param fee The fee amount collected
    event CreationFeeCollected(address indexed creator, uint256 fee);

    /// @notice Emitted when fees are withdrawn
    /// @param recipient The address receiving the fees
    /// @param amount The amount withdrawn
    event FeesWithdrawn(address indexed recipient, uint256 amount);

    /// @param _strategyFactory The SuperchainLBPStrategyFactory contract
    /// @param _liquidityLauncher The LiquidityLauncher contract
    /// @param _admin The initial admin of the contract
    constructor(
        SuperchainLBPStrategyFactory _strategyFactory,
        ILiquidityLauncher _liquidityLauncher,
        address _admin
    ) {
        if (address(_strategyFactory) == address(0)) revert ZeroAddress();
        if (address(_liquidityLauncher) == address(0)) revert ZeroAddress();
        strategyFactory = _strategyFactory;
        liquidityLauncher = _liquidityLauncher;

        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
        _grantRole(FEE_COLLECTOR_ROLE, _admin);
    }

    /// @notice Launches a presale with an existing token in a single transaction
    /// @dev This function:
    ///      1. Collects creation fee
    ///      2. Transfers tokens from caller to LiquidityLauncher
    ///      3. Calls LiquidityLauncher.distributeToken() which:
    ///         - Creates strategy via SuperchainLBPStrategyFactory
    ///         - Transfers tokens to strategy
    ///         - Initializes the auction
    /// @param token The token address (must be already deployed)
    /// @param launchAmount Total tokens for launch (split between auction and liquidity reserve by tokenSplitToAuction)
    /// @param migratorParams Migration parameters (currency, fees, blocks, etc.)
    /// @param auctionParams CCA auction parameters
    /// @param rebalanceParams Rebalance parameters for MPM strategy
    /// @param mpmName Name for the MPM token
    /// @param salt Salt for deterministic deployment
    /// @param hookSalt Pre-computed salt for hook deployment (from OrderBookFactory.computeSaltForVolatilityDynamic)
    /// @return strategy The deployed SuperchainLBPStrategy address
    /// @return auction The deployed ContinuousClearingAuction address
    function launchPresaleWithExistingToken(
        address token,
        uint128 launchAmount,
        MigratorParameters memory migratorParams,
        bytes memory auctionParams,
        IMultiPositionManager.RebalanceParams memory rebalanceParams,
        string memory mpmName,
        bytes32 salt,
        bytes32 hookSalt
    ) external payable returns (address strategy, address auction) {
        // Validation
        if (token == address(0)) revert ZeroAddress();
        if (launchAmount == 0) revert InvalidAmount();
        if (rebalanceParams.strategy == address(0)) revert ZeroAddress();

        // Collect creation fee
        _collectCreationFee();

        // Deploy strategy and get addresses
        // Scoped block to avoid stack too deep
        {
            // Encode configuration data for strategy factory (always VOLATILITY pool)
            // hookSalt is pre-computed off-chain to avoid expensive on-chain HookMiner.find()
            bytes memory configData = abi.encode(migratorParams, rebalanceParams, mpmName, auctionParams, hookSalt);

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

    /// @notice Deploys a new token and launches it with presale in a single transaction
    /// @dev This function:
    ///      1. Collects creation fee
    ///      2. Deploys token via token factory
    ///      3. Transfers launchAmount to LiquidityLauncher (split between auction and liquidity)
    ///      4. Launches presale via _launchPresale()
    ///      5. Transfers remaining tokens to creator
    /// @param params The DeployAndLaunchParams struct containing all deployment parameters
    /// @return token The deployed token address
    /// @return strategy The deployed SuperchainLBPStrategy address
    /// @return auction The deployed ContinuousClearingAuction address
    function deployTokenAndLaunchPresale(DeployAndLaunchParams memory params)
        external
        payable
        returns (address token, address strategy, address auction)
    {
        // Validation
        if (params.tokenFactory == address(0)) revert ZeroAddress();
        if (params.totalSupply == 0) revert InvalidAmount();
        if (params.launchAmount == 0) revert InvalidAmount();
        if (params.launchAmount > params.totalSupply) revert InvalidAmount();
        if (params.rebalanceParams.strategy == address(0)) revert ZeroAddress();

        // Collect creation fee
        _collectCreationFee();

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
            params.rebalanceParams,
            params.mpmName,
            params.salt,
            params.hookSalt
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
        IMultiPositionManager.RebalanceParams memory rebalanceParams,
        string memory mpmName,
        bytes32 salt,
        bytes32 hookSalt
    ) internal returns (address strategy, address auction) {
        // Transfer tokens to LiquidityLauncher
        IERC20(token).safeTransfer(address(liquidityLauncher), launchAmount);

        // Encode configuration and create distribution (always VOLATILITY pool)
        // hookSalt is pre-computed off-chain to avoid expensive on-chain HookMiner.find()
        bytes memory configData = abi.encode(migratorParams, rebalanceParams, mpmName, auctionParams, hookSalt);
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

    /// @notice Internal function to collect creation fee
    /// @dev Validates msg.value and accumulates fees
    function _collectCreationFee() internal {
        uint256 fee = creationFee;
        if (fee > 0) {
            if (msg.value < fee) revert InsufficientFee();
            collectedFees += fee;
            emit CreationFeeCollected(msg.sender, fee);

            // Refund excess ETH if any
            uint256 excess = msg.value - fee;
            if (excess > 0) {
                (bool success,) = msg.sender.call{value: excess}("");
                if (!success) revert ETHTransferFailed();
            }
        }
    }

    /// @notice Set the creation fee for launching tokens
    /// @dev Only callable by admin
    /// @param _fee The new creation fee in wei
    function setCreationFee(uint256 _fee) external onlyRole(DEFAULT_ADMIN_ROLE) {
        creationFee = _fee;
        emit CreationFeeUpdated(_fee);
    }

    /// @notice Withdraw collected fees to a recipient
    /// @dev Only callable by fee collector
    /// @param recipient The address to receive the fees
    function withdrawFees(address recipient) external onlyRole(FEE_COLLECTOR_ROLE) {
        if (recipient == address(0)) revert ZeroAddress();
        uint256 amount = collectedFees;
        if (amount == 0) revert NoFeesToWithdraw();

        collectedFees = 0;
        emit FeesWithdrawn(recipient, amount);

        (bool success,) = recipient.call{value: amount}("");
        if (!success) revert ETHTransferFailed();
    }

    /// @notice Receive function to accept ETH
    receive() external payable {}

    // ============ View Functions ============

    /// @notice Computes the hook salt for a given hookOwner
    /// @dev Call this off-chain before launching a token to get the hookSalt parameter
    ///      The salt is deterministic based on hookOwner and the current OrderBookFactory configuration
    /// @param hookOwner The address that will own the hook (typically the positionRecipient)
    /// @return hookSalt The pre-computed salt for early hook deployment
    /// @return hookAddress The expected address of the deployed hook
    function computeHookSalt(address hookOwner) external view returns (bytes32 hookSalt, address hookAddress) {
        OrderBookFactory orderBookFactory = strategyFactory.orderBookFactory();
        (hookSalt, hookAddress) = orderBookFactory.computeSaltForVolatilityDynamic(
            hookOwner,
            address(orderBookFactory.limitOrderManager()),
            address(orderBookFactory)
        );
    }
}
