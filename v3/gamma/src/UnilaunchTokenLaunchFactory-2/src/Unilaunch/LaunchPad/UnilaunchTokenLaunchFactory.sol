// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {IERC20} from "@openzeppelin-latest/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin-latest/contracts/token/ERC20/utils/SafeERC20.sol";
import {AccessControl} from "@openzeppelin-latest/contracts/access/AccessControl.sol";
import {ILiquidityLauncher} from "liquidity-launcher/src/interfaces/ILiquidityLauncher.sol";
import {IDistributionContract} from "liquidity-launcher/src/interfaces/IDistributionContract.sol";
import {Distribution} from "liquidity-launcher/src/types/Distribution.sol";
import {MigratorParameters} from "liquidity-launcher/src/types/MigratorParameters.sol";
import {UnilaunchSuperchainLBPStrategyFactory} from "./UnilaunchSuperchainLBPStrategyFactory.sol";
import {UnilaunchOrderBookFactory} from "../LimitOrderBook/UnilaunchOrderBookFactory.sol";
import {IMultiPositionManager} from "../MultiPositionManager/interfaces/IMultiPositionManager.sol";
import {ITokenFactory} from "liquidity-launcher/src/token-factories/uerc20-factory/interfaces/ITokenFactory.sol";
import {UERC20Metadata} from "liquidity-launcher/src/token-factories/uerc20-factory/libraries/UERC20MetadataLibrary.sol";
import {AuctionParameters} from "continuous-clearing-auction/src/interfaces/IContinuousClearingAuction.sol";
import {UnilaunchTokenVestingFactory} from "./UnilaunchTokenVestingFactory.sol";
import {UnilaunchCallOptionFactory} from "./UnilaunchCallOptionFactory.sol";
import {UnilaunchBuyback} from "./UnilaunchBuyback.sol";
import {UnilaunchBuybackDeployer} from "./UnilaunchBuybackDeployer.sol";
import {UnilaunchTokenVestingFactoryDeployer} from "./UnilaunchTokenVestingFactoryDeployer.sol";
import {UnilaunchCallOptionFactoryDeployer} from "./UnilaunchCallOptionFactoryDeployer.sol";
import {PoolKey} from "v4-core/types/PoolKey.sol";
import {ActionConstants} from "@uniswap/v4-periphery/src/libraries/ActionConstants.sol";

/// @notice Enum to specify which token factory type to use
enum TokenFactoryType { UERC20, USUPERC20 }

/// @notice Parameters for deploying a token and launching presale
struct DeployAndLaunchParams {
    string name;
    string symbol;
    UERC20Metadata metadata;
    bytes32 salt;
    bytes32 hookSalt;  // Pre-computed salt for early hook deployment (from OrderBookFactory.computeSaltForVolatilityDynamicLimitOrder)
}

/// @notice Parameters for launching a presale (used internally)
struct LaunchParams {
    uint128 launchAmount;
    MigratorParameters migratorParams;
    bytes auctionParams;
    IMultiPositionManager.RebalanceParams rebalanceParams;
    string mpmName;
    bytes32 salt;
    bytes32 hookSalt;
    address callOptionFactory;
    address buyback;
}

struct LaunchAmounts {
    uint256 totalSupply;
    uint128 launchAmount;
    uint256 vestingAmount;
    uint256 optionAmount;
}

struct LaunchConfig {
    MigratorParameters migratorParams;
    bytes auctionParams;
    IMultiPositionManager.RebalanceParams rebalanceParams;
    string mpmName;
}

struct AuxContracts {
    address vestingFactory;
    address callOptionFactory;
    address buyback;
}

struct AuxDeployers {
    UnilaunchBuybackDeployer buybackDeployer;
    UnilaunchTokenVestingFactoryDeployer vestingDeployer;
    UnilaunchCallOptionFactoryDeployer callOptionDeployer;
}

struct LaunchRegistration {
    address token;
    address strategy;
    address auction;
    address vestingFactory;
    address callOptionFactory;
    address buyback;
    address creator;
    string name;
    string symbol;
    uint8 decimals;
    uint128 launchAmount;
    MigratorParameters migratorParams;
    bytes auctionParams;
}

/// @notice Complete information about a token launch (for indexing/frontend)
struct LaunchInfo {
    address token;
    address strategy;
    address auction;
    address vestingFactory;
    address callOptionFactory;
    address buyback;
    PoolKey poolKey;
    address mpm;
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
contract UnilaunchTokenLaunchFactory is AccessControl {
    using SafeERC20 for IERC20;

    /// @notice Role for collecting fees
    bytes32 public constant FEE_COLLECTOR_ROLE = keccak256("FEE_COLLECTOR_ROLE");

    /// @notice The SuperchainLBPStrategyFactory used to deploy strategies
    UnilaunchSuperchainLBPStrategyFactory public immutable strategyFactory;

    /// @notice The LiquidityLauncher used to coordinate token distribution
    ILiquidityLauncher public immutable liquidityLauncher;

    /// @notice Token factory used for deployments
    address public immutable tokenFactory;

    /// @notice Token factory type used for deployments
    TokenFactoryType public immutable tokenFactoryType;

    /// @notice Home chain id used for SUPERC20 deployments
    uint256 public immutable homeChainId;

    /// @notice Creation fee for launching tokens (in native currency)
    uint256 public creationFee = 0.01 ether;

    /// @notice Unichain router address for buyback deployment
    address public immutable buybackRouter;

    /// @notice Deployer for UnilaunchBuyback (reduces factory bytecode size)
    UnilaunchBuybackDeployer public immutable buybackDeployer;

    /// @notice Deployer for UnilaunchTokenVestingFactory (reduces factory bytecode size)
    UnilaunchTokenVestingFactoryDeployer public immutable vestingDeployer;

    /// @notice Deployer for UnilaunchCallOptionFactory (reduces factory bytecode size)
    UnilaunchCallOptionFactoryDeployer public immutable callOptionDeployer;

    /// @notice Treasury address for fee and call option split
    address public immutable treasury;

    /// @notice Total collected fees available for withdrawal
    uint256 public collectedFees;

    uint256 public constant TOTAL_SUPPLY_UNSCALED = 1_000_000_000;
    uint8 public constant TOKEN_DECIMALS = 18;
    uint256 public constant TOTAL_SUPPLY = TOTAL_SUPPLY_UNSCALED * 1e18;
    uint64 public constant AUCTION_BLOCKS = 625_000;
    uint64 public constant MIGRATION_DELAY_BLOCKS = 1;
    uint64 public constant SWEEP_DELAY_BLOCKS = 2;
    uint64 public constant CLAIM_DELAY_BLOCKS = 10;
    int24 public constant POOL_TICK_SPACING = 60;
    uint24 public constant POOL_LP_FEE = 5_000;
    uint256 public constant AUCTION_TICK_SPACING = 264_093_875;
    uint256 public constant AUCTION_FLOOR_PRICE = 26_409_387_500;

    uint8 public launchPercent = 70;
    uint8 public vestingPercent = 15;
    uint8 public optionPercent = 15;
    uint24 public tokenSplitToAuction = 5_000_000; // in mps (parts per 10 million)
    uint128 public requiredCurrencyRaised = 1 ether;
    address public defaultRebalanceStrategy;

    // ============ Launch Indexing Storage ============

    /// @notice All launches in chronological order
    LaunchInfo[] internal _allLaunches;

    /// @notice Creator address => array of launch indices
    mapping(address => uint256[]) internal _creatorLaunchIndices;

    /// @notice Token address => launch indices
    mapping(address => uint256[]) internal _tokenToIndices;

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

    /// @notice Error thrown when token has too few decimals for CCA (requires >= 6)
    error TokenDecimalsTooLow();

    /// @notice Error thrown when auction supply exceeds CCA maximum (1e30)
    error AuctionSupplyTooLarge();

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

    /// @notice Emitted when allocation percentages are updated
    event AllocationUpdated(uint8 launchPercent, uint8 vestingPercent, uint8 optionPercent, uint24 tokenSplitToAuction);
    /// @notice Emitted when the auction split is updated
    event TokenSplitToAuctionUpdated(uint24 tokenSplitToAuction);
    event RequiredCurrencyRaisedUpdated(uint128 requiredCurrencyRaised);
    event DefaultRebalanceStrategyUpdated(address indexed strategy);

    /// @param _strategyFactory The UnilaunchSuperchainLBPStrategyFactory contract
    /// @param _liquidityLauncher The LiquidityLauncher contract
    /// @param _admin The initial admin of the contract
    /// @param _buybackRouter The buyback router address
    /// @param _treasury Treasury address for fee splits
    /// @param deployers The deployer contracts for auxiliary components
    /// @param _creationFee Initial creation fee
    /// @param _defaultRebalanceStrategy Default strategy for rebalance
    constructor(
        UnilaunchSuperchainLBPStrategyFactory _strategyFactory,
        ILiquidityLauncher _liquidityLauncher,
        address _tokenFactory,
        TokenFactoryType _tokenFactoryType,
        uint256 _homeChainId,
        address _admin,
        address _buybackRouter,
        address _treasury,
        AuxDeployers memory deployers,
        uint256 _creationFee,
        address _defaultRebalanceStrategy
    ) {
        if (address(_strategyFactory) == address(0)) revert ZeroAddress();
        if (address(_liquidityLauncher) == address(0)) revert ZeroAddress();
        if (_tokenFactory == address(0)) revert ZeroAddress();
        if (_admin == address(0)) revert ZeroAddress();
        if (_buybackRouter == address(0)) revert ZeroAddress();
        if (_treasury == address(0)) revert ZeroAddress();
        if (address(deployers.buybackDeployer) == address(0)) revert ZeroAddress();
        if (address(deployers.vestingDeployer) == address(0)) revert ZeroAddress();
        if (address(deployers.callOptionDeployer) == address(0)) revert ZeroAddress();
        if (_defaultRebalanceStrategy == address(0)) revert ZeroAddress();
        strategyFactory = _strategyFactory;
        liquidityLauncher = _liquidityLauncher;
        tokenFactory = _tokenFactory;
        tokenFactoryType = _tokenFactoryType;
        homeChainId = _homeChainId;
        buybackRouter = _buybackRouter;
        treasury = _treasury;
        buybackDeployer = deployers.buybackDeployer;
        vestingDeployer = deployers.vestingDeployer;
        callOptionDeployer = deployers.callOptionDeployer;
        if (_creationFee != 0) {
            creationFee = _creationFee;
        }
        defaultRebalanceStrategy = _defaultRebalanceStrategy;

        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
        _grantRole(FEE_COLLECTOR_ROLE, _admin);
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
        (LaunchAmounts memory amounts, LaunchConfig memory config) = _prepareNewTokenLaunch(params);
        AuxContracts memory aux;
        (token, aux) = _deployTokenAndAux(params, amounts);
        (strategy, auction) = _launchPresaleWithAux(token, amounts, aux, config, params.salt, params.hookSalt);
        _finalizeNewLaunch(token, strategy, auction, aux, params, amounts, config);
    }

    function _prepareNewTokenLaunch(DeployAndLaunchParams memory params)
        internal
        returns (LaunchAmounts memory amounts, LaunchConfig memory config)
    {
        if (tokenFactory == address(0)) revert ZeroAddress();
        if (defaultRebalanceStrategy == address(0)) revert ZeroAddress();

        amounts = _buildAmounts();
        if (amounts.launchAmount == 0) revert InvalidAmount();

        config = _buildLaunchConfig(amounts.launchAmount, msg.sender, params.symbol);

        _collectCreationFee();
    }

    function _deployTokenAndAux(DeployAndLaunchParams memory params, LaunchAmounts memory amounts)
        internal
        returns (address token, AuxContracts memory aux)
    {
        token = _deployToken(
            tokenFactory,
            tokenFactoryType,
            params.name,
            params.symbol,
            TOKEN_DECIMALS,
            amounts.totalSupply,
            homeChainId,
            params.metadata,
            params.salt
        );
        aux = _deployAuxContracts(token, msg.sender);
    }

    function _launchPresaleWithAux(
        address token,
        LaunchAmounts memory amounts,
        AuxContracts memory aux,
        LaunchConfig memory config,
        bytes32 salt,
        bytes32 hookSalt
    ) internal returns (address strategy, address auction) {
        LaunchParams memory launchParams = LaunchParams({
            launchAmount: amounts.launchAmount,
            migratorParams: config.migratorParams,
            auctionParams: config.auctionParams,
            rebalanceParams: config.rebalanceParams,
            mpmName: config.mpmName,
            salt: salt,
            hookSalt: hookSalt,
            callOptionFactory: aux.callOptionFactory,
            buyback: aux.buyback
        });
        (strategy, auction) = _launchPresale(token, launchParams, false);
    }

    function _finalizeNewLaunch(
        address token,
        address strategy,
        address auction,
        AuxContracts memory aux,
        DeployAndLaunchParams memory params,
        LaunchAmounts memory amounts,
        LaunchConfig memory config
    ) internal {
        UnilaunchCallOptionFactory(payable(aux.callOptionFactory)).setStrategy(strategy);
        UnilaunchBuyback(payable(aux.buyback)).setStrategy(strategy);

        IERC20(token).safeTransfer(aux.vestingFactory, amounts.vestingAmount);
        IERC20(token).safeTransfer(aux.callOptionFactory, amounts.optionAmount);

        uint256 remainingSupply = amounts.totalSupply - amounts.launchAmount - amounts.vestingAmount - amounts.optionAmount;
        if (remainingSupply > 0) {
            IERC20(token).safeTransfer(msg.sender, remainingSupply);
        }

        LaunchRegistration memory registration = LaunchRegistration({
            token: token,
            strategy: strategy,
            auction: auction,
            vestingFactory: aux.vestingFactory,
            callOptionFactory: aux.callOptionFactory,
            buyback: aux.buyback,
            creator: msg.sender,
            name: params.name,
            symbol: params.symbol,
            decimals: TOKEN_DECIMALS,
            launchAmount: amounts.launchAmount,
            migratorParams: config.migratorParams,
            auctionParams: config.auctionParams
        });
        _registerLaunch(registration);

        emit TokenLaunched(token, strategy, auction, msg.sender, params.name, params.symbol);
    }

    function _buildAmounts() internal view returns (LaunchAmounts memory amounts) {
        amounts.totalSupply = TOTAL_SUPPLY;
        amounts.launchAmount = uint128((amounts.totalSupply * launchPercent) / 100);
        amounts.vestingAmount = (amounts.totalSupply * vestingPercent) / 100;
        amounts.optionAmount = (amounts.totalSupply * optionPercent) / 100;
    }

    function _buildLaunchConfig(uint128 launchAmount, address creator, string memory symbol)
        internal
        view
        returns (LaunchConfig memory config)
    {
        uint64 startBlock = uint64(block.number);
        uint64 endBlock = startBlock + AUCTION_BLOCKS;
        uint64 migrationBlock = endBlock + MIGRATION_DELAY_BLOCKS;
        uint64 sweepBlock = endBlock + SWEEP_DELAY_BLOCKS;

        MigratorParameters memory migratorParams = MigratorParameters({
            currency: address(0),
            poolLPFee: POOL_LP_FEE,
            poolTickSpacing: POOL_TICK_SPACING,
            tokenSplitToAuction: tokenSplitToAuction,
            auctionFactory: address(0),
            positionRecipient: creator,
            migrationBlock: migrationBlock,
            sweepBlock: sweepBlock,
            operator: creator,
            createOneSidedTokenPosition: true,
            createOneSidedCurrencyPosition: true
        });

        if ((uint256(launchAmount) * migratorParams.tokenSplitToAuction) / 1e7 > 1e30) revert AuctionSupplyTooLarge();

        bytes memory auctionParams = _buildAuctionParams(creator, startBlock, endBlock);

        IMultiPositionManager.RebalanceParams memory rebalanceParams = IMultiPositionManager.RebalanceParams({
            strategy: defaultRebalanceStrategy,
            center: 0,
            tLeft: 2_000_000,
            tRight: 2_000_000,
            limitWidth: 0,
            weight0: 0,
            weight1: 0,
            useCarpet: true
        });

        string memory mpmName = string(abi.encodePacked(symbol, " MPM"));

        config = LaunchConfig({
            migratorParams: migratorParams,
            auctionParams: auctionParams,
            rebalanceParams: rebalanceParams,
            mpmName: mpmName
        });
    }

    function _buildAuctionParams(address creator, uint64 startBlock, uint64 endBlock)
        internal
        view
        returns (bytes memory)
    {
        bytes memory steps = abi.encodePacked(
            uint24(16), uint40(89_286),
            uint24(16), uint40(89_286),
            uint24(16), uint40(89_286),
            uint24(16), uint40(89_286),
            uint24(16), uint40(89_286),
            uint24(16), uint40(89_286),
            uint24(16), uint40(89_284)
        );

        AuctionParameters memory params = AuctionParameters({
            currency: address(0),
            tokensRecipient: creator,
            fundsRecipient: ActionConstants.MSG_SENDER,
            startBlock: startBlock,
            endBlock: endBlock,
            claimBlock: endBlock + CLAIM_DELAY_BLOCKS,
            tickSpacing: AUCTION_TICK_SPACING,
            validationHook: address(0),
            floorPrice: AUCTION_FLOOR_PRICE,
            requiredCurrencyRaised: requiredCurrencyRaised,
            auctionStepsData: steps
        });

        return abi.encode(params);
    }

    function _deployAuxContracts(address token, address creator)
        internal
        returns (AuxContracts memory aux)
    {
        aux.buyback = buybackDeployer.deploy(treasury, token, buybackRouter);
        aux.vestingFactory = vestingDeployer.deploy(token, creator);
        aux.callOptionFactory = callOptionDeployer.deploy(token, treasury, aux.buyback, creator);
    }

    /// @notice Internal function to deploy token via factory
    /// @dev Encapsulates token deployment logic to reduce stack depth
    /// @dev Uses address(this) as creator since TokenLaunchFactory is the deploying contract
    function _deployToken(
        address deployTokenFactory,
        TokenFactoryType deployFactoryType,
        string memory name,
        string memory symbol,
        uint8 decimals,
        uint256 totalSupply,
        uint256 deployHomeChainId,
        UERC20Metadata memory metadata,
        bytes32 salt
    ) internal returns (address token) {
        // Encode factory data based on factory type
        // UERC20Factory expects: abi.encode(metadata)
        // USUPERC20Factory expects: abi.encode(homeChainId, creator, metadata)
        bytes memory factoryData;
        if (deployFactoryType == TokenFactoryType.UERC20) {
            factoryData = abi.encode(metadata);
        } else {
            factoryData = abi.encode(deployHomeChainId, address(this), metadata);
        }
        token = ITokenFactory(deployTokenFactory).createToken(
            name, symbol, decimals, totalSupply, address(this), factoryData, getGraffiti(msg.sender, salt)
        );
    }

    /// @notice Internal function to launch presale
    /// @dev Encapsulates presale launch logic to reduce stack depth
    /// @param token The token to launch
    /// @param params The launch parameters
    /// @param useTransferFrom If true, uses transferFrom (caller must approve), otherwise uses transfer (this contract holds tokens)
    function _launchPresale(
        address token,
        LaunchParams memory params,
        bool useTransferFrom
    ) internal returns (address strategy, address auction) {
        // Transfer tokens to LiquidityLauncher
        if (useTransferFrom) {
            IERC20(token).safeTransferFrom(msg.sender, address(liquidityLauncher), params.launchAmount);
        } else {
            IERC20(token).safeTransfer(address(liquidityLauncher), params.launchAmount);
        }

        // Encode configuration and create distribution (always VOLATILITY pool)
        // hookSalt is pre-computed off-chain to avoid expensive on-chain HookMiner.find()
        bytes memory configData = abi.encode(
            params.migratorParams,
            params.rebalanceParams,
            params.mpmName,
            params.auctionParams,
            params.hookSalt,
            params.callOptionFactory,
            params.buyback
        );
        Distribution memory distribution =
            Distribution({strategy: address(strategyFactory), amount: params.launchAmount, configData: configData});

        // Deploy strategy via LiquidityLauncher
        IDistributionContract distributionContract =
            liquidityLauncher.distributeToken(token, distribution, false, params.salt);
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
    /// @dev Uses keccak256 hash of caller and salt for deterministic, front-run resistant deployment
    /// @param caller The original caller (msg.sender) to ensure uniqueness per user
    /// @param salt User-provided salt for uniqueness per launch
    /// @return The graffiti hash
    function getGraffiti(address caller, bytes32 salt) internal pure returns (bytes32) {
        return keccak256(abi.encode(caller, salt));
    }

    /// @notice Internal function to collect creation fee
    /// @dev Validates msg.value and accumulates fees
    function _collectCreationFee() internal {
        uint256 fee = creationFee;
        if (msg.value < fee) revert InsufficientFee();
        if (fee > 0) {
            collectedFees += fee;
            emit CreationFeeCollected(msg.sender, fee);
        }

        uint256 excess = msg.value - fee;
        if (excess > 0) {
            (bool success,) = msg.sender.call{value: excess}("");
            if (!success) revert ETHTransferFailed();
        }
    }

    /// @notice Internal function to register a launch for indexing
    /// @dev Stores launch info and updates all indices. Uses storage-direct writes to avoid stack overflow.
    function _registerLaunch(LaunchRegistration memory params) internal {
        uint256 index = _allLaunches.length;

        // Push empty struct and get storage reference
        _allLaunches.push();
        LaunchInfo storage info = _allLaunches[index];

        // Write core addresses
        info.token = params.token;
        info.strategy = params.strategy;
        info.auction = params.auction;
        info.vestingFactory = params.vestingFactory;
        info.callOptionFactory = params.callOptionFactory;
        info.buyback = params.buyback;
        info.creator = params.creator;

        // Write token metadata
        info.name = params.name;
        info.symbol = params.symbol;
        info.decimals = params.decimals;
        info.launchAmount = params.launchAmount;

        // Write migrator params
        info.tokenSplitToAuction = params.migratorParams.tokenSplitToAuction;
        info.migrationBlock = params.migratorParams.migrationBlock;
        info.sweepBlock = params.migratorParams.sweepBlock;

        // Decode and write auction block numbers
        {
            AuctionParameters memory auctionParamsDecoded = abi.decode(params.auctionParams, (AuctionParameters));
            info.startBlock = auctionParamsDecoded.startBlock;
            info.endBlock = auctionParamsDecoded.endBlock;
            info.claimBlock = auctionParamsDecoded.claimBlock;
        }

        info.createdAt = block.timestamp;

        // Update indices (store index + 1, so 0 means "not found")
        _updateLaunchIndices(params.token, params.strategy, params.auction, params.creator, index);
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
        _tokenToIndices[token].push(index);
        _strategyToIndex[strategy] = index + 1;
        _auctionToIndex[auction] = index + 1;
        _creatorLaunchIndices[creator].push(index);
    }

    /// @notice Set the creation fee for launching tokens
    /// @dev Only callable by admin
    /// @param _fee The new creation fee in wei
    function setCreationFee(uint256 _fee) external onlyRole(DEFAULT_ADMIN_ROLE) {
        creationFee = _fee;
        emit CreationFeeUpdated(_fee);
    }

    function setAllocationPercents(uint8 newLaunchPercent, uint8 newVestingPercent, uint8 newOptionPercent)
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        if (uint256(newLaunchPercent) + newVestingPercent + newOptionPercent != 100) revert InvalidAmount();
        launchPercent = newLaunchPercent;
        vestingPercent = newVestingPercent;
        optionPercent = newOptionPercent;
        emit AllocationUpdated(newLaunchPercent, newVestingPercent, newOptionPercent, tokenSplitToAuction);
    }

    /// @notice Set the split of launch tokens that go to auction (in mps, 1e7 = 100%)
    /// @dev Only callable by admin
    function setTokenSplitToAuction(uint24 newTokenSplitToAuction) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (newTokenSplitToAuction > 10_000_000) revert InvalidAmount();
        tokenSplitToAuction = newTokenSplitToAuction;
        emit TokenSplitToAuctionUpdated(newTokenSplitToAuction);
    }

    /// @notice Set required currency raised for auction (must be >= 1 ETH)
    /// @dev Only callable by admin
    function setRequiredCurrencyRaised(uint128 newRequiredCurrencyRaised) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (newRequiredCurrencyRaised < 1 ether) revert InvalidAmount();
        requiredCurrencyRaised = newRequiredCurrencyRaised;
        emit RequiredCurrencyRaisedUpdated(newRequiredCurrencyRaised);
    }

    /// @notice Set default rebalance strategy for new launches
    /// @dev Only callable by admin
    function setDefaultRebalanceStrategy(address newStrategy) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (newStrategy == address(0)) revert ZeroAddress();
        defaultRebalanceStrategy = newStrategy;
        emit DefaultRebalanceStrategyUpdated(newStrategy);
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
        hookOwner;
        UnilaunchOrderBookFactory orderBookFactory = UnilaunchOrderBookFactory(
            address(strategyFactory.orderBookFactory())
        );
        hookSalt = bytes32(0);
        hookAddress = address(orderBookFactory.hook());
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

    /// @notice Get the latest launch info by token address
    /// @param token The token address
    /// @return info The latest launch information
    function getLaunchByToken(address token) external view returns (LaunchInfo memory info) {
        uint256[] storage indices = _tokenToIndices[token];
        uint256 count = indices.length;
        if (count == 0) revert LaunchNotFound();
        info = _allLaunches[indices[count - 1]];
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
        exists = _tokenToIndices[token].length != 0;
    }

    /// @notice Get number of launches for a token
    /// @param token The token address
    /// @return count Number of launches for the token
    function getLaunchCountByToken(address token) external view returns (uint256 count) {
        count = _tokenToIndices[token].length;
    }

    /// @notice Get launches by token with pagination
    /// @param token The token address
    /// @param offset Starting index within token launches
    /// @param limit Maximum number to return (0 = all remaining)
    /// @return launches Array of LaunchInfo structs
    /// @return totalCount Total number of launches for this token
    function getLaunchesByTokenPaginated(
        address token,
        uint256 offset,
        uint256 limit
    ) external view returns (LaunchInfo[] memory launches, uint256 totalCount) {
        uint256[] storage indices = _tokenToIndices[token];
        totalCount = indices.length;

        if (limit == 0) limit = totalCount;
        if (offset >= totalCount) return (new LaunchInfo[](0), totalCount);

        uint256 count = (offset + limit > totalCount) ? (totalCount - offset) : limit;
        launches = new LaunchInfo[](count);

        for (uint256 i = 0; i < count; i++) {
            launches[i] = _allLaunches[indices[offset + i]];
        }
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
