// SPDX-License-Identifier: BUSL-1.1
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
import {AuctionParameters} from "continuous-clearing-auction/src/interfaces/IContinuousClearingAuction.sol";

/// @notice Enum to specify which token factory type to use
enum TokenFactoryType { UERC20, USUPERC20 }

/// @notice Parameters for deploying a token and launching presale
struct DeployAndLaunchParams {
    address tokenFactory;
    TokenFactoryType factoryType;
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
    bytes32 hookSalt;  // Pre-computed salt for early hook deployment (from OrderBookFactory.computeSaltForVolatilityDynamicLimitOrder)
}

/// @notice Complete information about a token launch (for indexing/frontend)
struct LaunchInfo {
    address token;
    address strategy;
    address auction;
    address creator;
    string name;
    string symbol;
    uint8 decimals;
    uint128 launchAmount;
    uint24 tokenSplitToAuction; // in mps (parts per 10 million)
    uint64 startBlock;
    uint64 endBlock;
    uint64 claimBlock;
    uint64 migrationBlock;
    uint64 sweepBlock;
    uint256 createdAt; // block.timestamp when launched
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

    // ============ Launch Indexing Storage ============

    /// @notice All launches in chronological order
    LaunchInfo[] internal _allLaunches;

    /// @notice Creator address => array of launch indices
    mapping(address => uint256[]) internal _creatorLaunchIndices;

    /// @notice Token address => launch index (+1, 0 means not found)
    mapping(address => uint256) internal _tokenToIndex;

    /// @notice Auction address => launch index (+1, 0 means not found)
    mapping(address => uint256) internal _auctionToIndex;

    /// @notice Strategy address => launch index (+1, 0 means not found)
    mapping(address => uint256) internal _strategyToIndex;

    // ============ Errors ============

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

    /// @notice Error thrown when launch not found
    error LaunchNotFound();

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
    /// @param hookSalt Pre-computed salt for hook deployment (from OrderBookFactory.computeSaltForVolatilityDynamicLimitOrder)
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

        // Register launch for indexing
        _registerLaunchWithExistingToken(token, strategy, auction, launchAmount, migratorParams, auctionParams);

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
            params.factoryType,
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

        // Register launch for indexing
        _registerLaunch(
            token,
            strategy,
            auction,
            msg.sender,
            params.name,
            params.symbol,
            params.decimals,
            params.launchAmount,
            params.migratorParams,
            params.auctionParams
        );

        emit TokenLaunched(token, strategy, auction, msg.sender, params.name, params.symbol);
    }

    /// @notice Internal function to deploy token via factory
    /// @dev Encapsulates token deployment logic to reduce stack depth
    /// @dev Uses address(this) as creator since TokenLaunchFactory is the deploying contract
    function _deployToken(
        address tokenFactory,
        TokenFactoryType factoryType,
        string memory name,
        string memory symbol,
        uint8 decimals,
        uint256 totalSupply,
        uint256 homeChainId,
        UERC20Metadata memory metadata
    ) internal returns (address token) {
        // Encode factory data based on factory type
        // UERC20Factory expects: abi.encode(metadata)
        // USUPERC20Factory expects: abi.encode(homeChainId, creator, metadata)
        bytes memory factoryData;
        if (factoryType == TokenFactoryType.UERC20) {
            factoryData = abi.encode(metadata);
        } else {
            factoryData = abi.encode(homeChainId, address(this), metadata);
        }
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

    /// @notice Internal function to register a launch for indexing
    /// @dev Stores launch info and updates all indices. Uses storage-direct writes to avoid stack overflow.
    function _registerLaunch(
        address token,
        address strategy,
        address auction,
        address creator,
        string memory name,
        string memory symbol,
        uint8 decimals,
        uint128 launchAmount,
        MigratorParameters memory migratorParams,
        bytes memory auctionParams
    ) internal {
        uint256 index = _allLaunches.length;

        // Push empty struct and get storage reference
        _allLaunches.push();
        LaunchInfo storage info = _allLaunches[index];

        // Write core addresses
        info.token = token;
        info.strategy = strategy;
        info.auction = auction;
        info.creator = creator;

        // Write token metadata
        info.name = name;
        info.symbol = symbol;
        info.decimals = decimals;
        info.launchAmount = launchAmount;

        // Write migrator params
        info.tokenSplitToAuction = migratorParams.tokenSplitToAuction;
        info.migrationBlock = migratorParams.migrationBlock;
        info.sweepBlock = migratorParams.sweepBlock;

        // Decode and write auction block numbers
        {
            AuctionParameters memory auctionParamsDecoded = abi.decode(auctionParams, (AuctionParameters));
            info.startBlock = auctionParamsDecoded.startBlock;
            info.endBlock = auctionParamsDecoded.endBlock;
            info.claimBlock = auctionParamsDecoded.claimBlock;
        }

        info.createdAt = block.timestamp;

        // Update indices (store index + 1, so 0 means "not found")
        _updateLaunchIndices(token, strategy, auction, creator, index);
    }

    /// @notice Updates index mappings for a launch
    /// @dev Separate function to reduce stack depth in _registerLaunch
    function _updateLaunchIndices(
        address token,
        address strategy,
        address auction,
        address creator,
        uint256 index
    ) internal {
        _tokenToIndex[token] = index + 1;
        _strategyToIndex[strategy] = index + 1;
        _auctionToIndex[auction] = index + 1;
        _creatorLaunchIndices[creator].push(index);
    }

    /// @notice Internal function to register launch with existing token (fetches metadata)
    /// @dev Separate function to avoid stack too deep
    function _registerLaunchWithExistingToken(
        address token,
        address strategy,
        address auction,
        uint128 launchAmount,
        MigratorParameters memory migratorParams,
        bytes memory auctionParams
    ) internal {
        // Fetch token metadata via low-level calls
        (string memory tokenName, string memory tokenSymbol, uint8 tokenDecimals) = _fetchTokenMetadata(token);

        _registerLaunch(
            token,
            strategy,
            auction,
            msg.sender,
            tokenName,
            tokenSymbol,
            tokenDecimals,
            launchAmount,
            migratorParams,
            auctionParams
        );
    }

    /// @notice Fetch token metadata via low-level calls
    /// @dev Separate function to avoid stack too deep
    function _fetchTokenMetadata(address token) internal view returns (string memory name, string memory symbol, uint8 decimals) {
        // Fetch name
        (bool s1, bytes memory d1) = token.staticcall(abi.encodeWithSignature("name()"));
        if (s1 && d1.length > 0) name = abi.decode(d1, (string));

        // Fetch symbol
        (bool s2, bytes memory d2) = token.staticcall(abi.encodeWithSignature("symbol()"));
        if (s2 && d2.length > 0) symbol = abi.decode(d2, (string));

        // Fetch decimals
        (bool s3, bytes memory d3) = token.staticcall(abi.encodeWithSignature("decimals()"));
        if (s3 && d3.length > 0) decimals = abi.decode(d3, (uint8));
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
        (hookSalt, hookAddress) = orderBookFactory.computeSaltForVolatilityDynamicLimitOrder(
            hookOwner,
            address(orderBookFactory.limitOrderManager()),
            address(orderBookFactory)
        );
    }

    // ============ Launch Query Functions ============

    /// @notice Get all launches with pagination
    /// @param offset Starting index
    /// @param limit Maximum number to return (0 = all remaining)
    /// @return launches Array of LaunchInfo structs
    /// @return totalCount Total number of launches
    function getLaunchesPaginated(
        uint256 offset,
        uint256 limit
    ) external view returns (LaunchInfo[] memory launches, uint256 totalCount) {
        totalCount = _allLaunches.length;

        if (limit == 0) limit = totalCount;
        if (offset >= totalCount) return (new LaunchInfo[](0), totalCount);

        uint256 count = (offset + limit > totalCount) ? (totalCount - offset) : limit;
        launches = new LaunchInfo[](count);

        for (uint256 i = 0; i < count; i++) {
            launches[i] = _allLaunches[offset + i];
        }
    }

    /// @notice Get launches by creator with pagination
    /// @param creator The creator address
    /// @param offset Starting index within creator's launches
    /// @param limit Maximum number to return (0 = all remaining)
    /// @return launches Array of LaunchInfo structs
    /// @return totalCount Total number of launches by this creator
    function getLaunchesByCreatorPaginated(
        address creator,
        uint256 offset,
        uint256 limit
    ) external view returns (LaunchInfo[] memory launches, uint256 totalCount) {
        uint256[] storage indices = _creatorLaunchIndices[creator];
        totalCount = indices.length;

        if (limit == 0) limit = totalCount;
        if (offset >= totalCount) return (new LaunchInfo[](0), totalCount);

        uint256 count = (offset + limit > totalCount) ? (totalCount - offset) : limit;
        launches = new LaunchInfo[](count);

        for (uint256 i = 0; i < count; i++) {
            launches[i] = _allLaunches[indices[offset + i]];
        }
    }

    /// @notice Get recent launches (reverse chronological order)
    /// @param limit Maximum number to return (0 = all)
    /// @return launches Array of LaunchInfo structs (newest first)
    function getRecentLaunches(uint256 limit) external view returns (LaunchInfo[] memory launches) {
        uint256 totalCount = _allLaunches.length;
        if (limit == 0 || limit > totalCount) limit = totalCount;

        launches = new LaunchInfo[](limit);

        for (uint256 i = 0; i < limit; i++) {
            launches[i] = _allLaunches[totalCount - 1 - i];
        }
    }

    /// @notice Get launch info by token address
    /// @param token The token address
    /// @return info The launch information
    function getLaunchByToken(address token) external view returns (LaunchInfo memory info) {
        uint256 indexPlusOne = _tokenToIndex[token];
        if (indexPlusOne == 0) revert LaunchNotFound();
        info = _allLaunches[indexPlusOne - 1];
    }

    /// @notice Get launch info by strategy address
    /// @param strategy The strategy address
    /// @return info The launch information
    function getLaunchByStrategy(address strategy) external view returns (LaunchInfo memory info) {
        uint256 indexPlusOne = _strategyToIndex[strategy];
        if (indexPlusOne == 0) revert LaunchNotFound();
        info = _allLaunches[indexPlusOne - 1];
    }

    /// @notice Get launch info by auction address
    /// @param auction The auction address
    /// @return info The launch information
    function getLaunchByAuction(address auction) external view returns (LaunchInfo memory info) {
        uint256 indexPlusOne = _auctionToIndex[auction];
        if (indexPlusOne == 0) revert LaunchNotFound();
        info = _allLaunches[indexPlusOne - 1];
    }

    /// @notice Get launch info by index
    /// @param index The launch index
    /// @return info The launch information
    function getLaunchByIndex(uint256 index) external view returns (LaunchInfo memory info) {
        if (index >= _allLaunches.length) revert LaunchNotFound();
        info = _allLaunches[index];
    }

    /// @notice Check if a token has a registered launch
    /// @param token The token address
    /// @return exists True if launch exists
    function launchExistsForToken(address token) external view returns (bool exists) {
        exists = _tokenToIndex[token] != 0;
    }

    /// @notice Check if an auction has a registered launch
    /// @param auction The auction address
    /// @return exists True if launch exists
    function launchExistsForAuction(address auction) external view returns (bool exists) {
        exists = _auctionToIndex[auction] != 0;
    }

    /// @notice Get total number of launches
    /// @return count Total launches registered
    function totalLaunches() external view returns (uint256 count) {
        count = _allLaunches.length;
    }

    /// @notice Get number of launches by a creator
    /// @param creator The creator address
    /// @return count Number of launches by this creator
    function launchCountByCreator(address creator) external view returns (uint256 count) {
        count = _creatorLaunchIndices[creator].length;
    }
}
