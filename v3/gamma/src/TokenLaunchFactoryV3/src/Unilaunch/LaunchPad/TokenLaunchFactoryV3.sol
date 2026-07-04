// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {IERC20} from "@openzeppelin-latest/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin-latest/contracts/token/ERC20/utils/SafeERC20.sol";
import {AccessControl} from "@openzeppelin-latest/contracts/access/AccessControl.sol";
import {Strings} from "@openzeppelin-latest/contracts/utils/Strings.sol";
import {ILiquidityLauncher} from "ll/interfaces/ILiquidityLauncher.sol";
import {IDistributionContract} from "ll/interfaces/IDistributionContract.sol";
import {Distribution} from "ll/types/Distribution.sol";
import {MigratorParameters} from "ll/types/MigratorParameters.sol";
import {SuperchainLBPStrategyFactory} from "./SuperchainLBPStrategyFactory.sol";
import {OrderBookFactory} from "../LimitOrderBook/OrderBookFactory.sol";
import {IMultiPositionManager} from "../MultiPositionManager/interfaces/IMultiPositionManager.sol";
import {ITokenFactory} from "@uniswap/uerc20-factory/interfaces/ITokenFactory.sol";
import {UERC20Metadata} from "@uniswap/uerc20-factory/libraries/UERC20MetadataLibrary.sol";
import {AuctionParameters} from "continuous-clearing-auction/src/interfaces/IContinuousClearingAuction.sol";
import {TokenVestingFactory} from "./TokenVestingFactory.sol";
import {CallOptionFactory} from "./CallOptionFactory.sol";
import {Buyback} from "./Buyback.sol";
import {BuybackDeployer} from "./BuybackDeployer.sol";
import {TokenVestingFactoryDeployer} from "./TokenVestingFactoryDeployer.sol";
import {CallOptionFactoryDeployer} from "./CallOptionFactoryDeployer.sol";
import {PoolKey} from "v4-core/types/PoolKey.sol";
import {Currency} from "v4-core/types/Currency.sol";
import {LPFeeLibrary} from "v4-core/libraries/LPFeeLibrary.sol";
import {IHooks} from "v4-core/interfaces/IHooks.sol";
import {ActionConstants} from "@uniswap/v4-periphery/src/libraries/ActionConstants.sol";
import {
    TokenFactoryType,
    DeployAndLaunchParams,
    LaunchParams,
    LaunchAmounts,
    LaunchConfig,
    AuxContracts,
    AuxDeployers,
    LaunchRegistration,
    LaunchInfo
} from "./TokenLaunchFactory.sol";

/// @title TokenLaunchFactoryV3
/// @notice Single-transaction factory for deploying tokens with presale auctions
/// @dev Routes through Uniswap's LiquidityLauncher for ecosystem visibility and future UI integration
contract TokenLaunchFactoryV3 is AccessControl {
    using SafeERC20 for IERC20;

    /// @notice Role for collecting fees
    bytes32 public constant FEE_COLLECTOR_ROLE = keccak256("FEE_COLLECTOR_ROLE");

    /// @notice The SuperchainLBPStrategyFactory used to deploy strategies
    SuperchainLBPStrategyFactory public immutable strategyFactory;

    /// @notice The LiquidityLauncher used to coordinate token distribution
    ILiquidityLauncher public immutable liquidityLauncher;

    /// @notice Token factory used for deployments
    address public immutable tokenFactory;

    /// @notice Token factory type used for deployments
    TokenFactoryType public immutable tokenFactoryType;

    /// @notice Home chain id used for SUPERC20 deployments
    uint256 public immutable homeChainId;

    /// @notice Creation fee for launching tokens (in native currency)
    uint256 public creationFee = 0.00001 ether;

    /// @notice Unichain router address for buyback deployment
    address public immutable buybackRouter;

    /// @notice Deployer for Buyback (reduces factory bytecode size)
    BuybackDeployer public immutable buybackDeployer;

    /// @notice Deployer for TokenVestingFactory (reduces factory bytecode size)
    TokenVestingFactoryDeployer public immutable vestingDeployer;

    /// @notice Deployer for CallOptionFactory (reduces factory bytecode size)
    CallOptionFactoryDeployer public immutable callOptionDeployer;

    /// @notice Treasury address for fee and call option split
    address public immutable treasury;

    /// @notice Total collected fees available for withdrawal
    uint256 public collectedFees;

    uint256 public constant TOTAL_SUPPLY_UNSCALED = 1_000_000_000;
    uint8 public constant TOKEN_DECIMALS = 18;
    uint256 public constant TOTAL_SUPPLY = TOTAL_SUPPLY_UNSCALED * 1e18;
    uint64 public blocksPerHour = 3_600;
    uint64 private constant MAX_DURATION_HOURS = 7;
    uint64 public migrationDelayBlocks = 1;
    uint64 public sweepDelayBlocks = 2;
    uint64 public claimDelayBlocks = 10;
    int24 public poolTickSpacing = 10;
    uint24 public poolLpFee = 5_000;
    uint256 public auctionTickSpacing = 264_093_875;
    uint256 public auctionFloorPrice = 26_409_387_500;
    uint256 private constant MPS_TOTAL = 10_000_000;
    uint16 public constant BPS_DENOMINATOR = 10_000;
    uint16 public preBidBps = 3_333;
    uint24 public constant MIN_FINAL_STEP_MPS = 2_000_000;
    uint24 public finalStepMps = 3_000_000;
    uint40 public constant FINAL_STEP_BLOCKS = 1;
    uint32 private constant RAMP_BLOCK_WEIGHT_SUM = 86_399;

    uint8 public launchPercent = 70;
    uint8 public vestingPercent = 15;
    uint8 public optionPercent = 15;
    uint24 public tokenSplitToAuction = 5_000_000; // in mps (parts per 10 million)
    uint128 public requiredCurrencyRaised = 0.00001 ether;
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

    /// @notice Auction address => packed auction steps data
    mapping(address => bytes) internal _auctionStepsDataByAuction;

    /// @notice Strategy address => launch index (+1, 0 means not found)
    mapping(address => uint256) internal _strategyToIndex;

    // ============ Errors ============

    /// @notice Error thrown when zero address provided
    error ZeroAddress();

    /// @notice Error thrown when invalid amount provided
    error InvalidAmount();

    /// @notice Error thrown when invalid auction duration provided
    error InvalidDuration();
    error InvalidBlocksPerHour();

    /// @notice Error thrown when insufficient ETH is sent for creation fee
    error InsufficientFee();

    /// @notice Error thrown when there are no fees to withdraw
    error NoFeesToWithdraw();

    /// @notice Error thrown when ETH transfer fails
    error ETHTransferFailed();

    /// @notice Error thrown when launch not found
    error LaunchNotFound();

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
    event BlocksPerHourUpdated(uint64 blocksPerHour);
    event PoolConfigUpdated(int24 tickSpacing, uint24 lpFee);
    event AuctionConfigUpdated(uint256 tickSpacing, uint256 floorPrice);
    event DelayBlocksUpdated(uint64 migrationDelayBlocks, uint64 sweepDelayBlocks, uint64 claimDelayBlocks);
    event PreBidBpsUpdated(uint16 preBidBps);
    event FinalStepMpsUpdated(uint24 finalStepMps);

    /// @param _strategyFactory The SuperchainLBPStrategyFactory contract
    /// @param _liquidityLauncher The LiquidityLauncher contract
    /// @param _admin The initial admin of the contract
    /// @param _buybackRouter The buyback router address
    /// @param _treasury Treasury address for fee splits
    /// @param deployers The deployer contracts for auxiliary components
    /// @param _creationFee Initial creation fee
    /// @param _defaultRebalanceStrategy Default strategy for rebalance
    constructor(
        SuperchainLBPStrategyFactory _strategyFactory,
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
        LaunchAmounts memory amounts = _prepareNewTokenLaunch();
        AuxContracts memory aux;
        (token, aux) = _deployTokenAndAux(params, amounts);
        LaunchConfig memory config = _buildLaunchConfig(
            amounts.launchAmount,
            msg.sender,
            params.durationBlocks,
            token
        );
        (strategy, auction) = _launchPresaleWithAux(token, amounts, aux, config, params.salt, params.hookSalt);
        _finalizeNewLaunch(token, strategy, auction, aux, params, amounts, config);
    }

    function _prepareNewTokenLaunch() internal returns (LaunchAmounts memory amounts) {
        if (tokenFactory == address(0)) revert ZeroAddress();
        if (defaultRebalanceStrategy == address(0)) revert ZeroAddress();

        amounts = _buildAmounts();
        if (amounts.launchAmount == 0) revert InvalidAmount();

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
        CallOptionFactory(payable(aux.callOptionFactory)).setStrategy(strategy);
        Buyback(payable(aux.buyback)).setStrategy(strategy);

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

    function _buildLaunchConfig(uint128 launchAmount, address creator, uint64 durationBlocks, address token)
        internal
        view
        returns (LaunchConfig memory config)
    {
        uint64 minDurationBlocks = blocksPerHour;
        uint64 maxDurationBlocks = blocksPerHour * MAX_DURATION_HOURS;
        if (durationBlocks < minDurationBlocks || durationBlocks > maxDurationBlocks) revert InvalidDuration();
        uint64 startBlock = uint64(block.number);
        uint64 endBlock = startBlock + durationBlocks;
        uint64 migrationBlock = endBlock + migrationDelayBlocks;
        uint64 sweepBlock = endBlock + sweepDelayBlocks;

        MigratorParameters memory migratorParams = MigratorParameters({
            migrationBlock: migrationBlock,
            currency: address(0),
            poolLPFee: poolLpFee,
            poolTickSpacing: poolTickSpacing,
            tokenSplit: tokenSplitToAuction,
            initializerFactory: address(0),
            positionRecipient: creator,
            sweepBlock: sweepBlock,
            operator: creator,
            maxCurrencyAmountForLP: type(uint128).max
        });

        if ((uint256(launchAmount) * migratorParams.tokenSplit) / 1e7 > 1e30) revert AuctionSupplyTooLarge();

        string memory mpmName = string(
            abi.encodePacked("LPManager-", Strings.toString(_allLaunches.length + 1))
        );
        address tokensRecipient = _computeMpmAddress(token, creator, mpmName);
        bytes memory auctionParams = _buildAuctionParams(tokensRecipient, startBlock, endBlock);

        IMultiPositionManager.RebalanceParams memory rebalanceParams = IMultiPositionManager.RebalanceParams({
            strategy: defaultRebalanceStrategy,
            center: 0,
            tLeft: 2_000_000,
            tRight: 2_000_000,
            limitWidth: 2_000_000,
            weight0: 0.5e18,
            weight1: 0.5e18,
            useCarpet: true
        });

        config = LaunchConfig({
            migratorParams: migratorParams,
            auctionParams: auctionParams,
            rebalanceParams: rebalanceParams,
            mpmName: mpmName
        });
    }

    function _buildAuctionSteps(uint64 durationBlocks) internal view returns (bytes memory steps) {
        uint64 preBidBlocks = _computePreBidBlocks(durationBlocks);
        if (preBidBlocks >= durationBlocks) revert InvalidDuration();

        uint64 rampBlocks = durationBlocks - preBidBlocks - FINAL_STEP_BLOCKS;
        if (rampBlocks == 0) revert InvalidDuration();

        uint24 configuredFinalStepMps = finalStepMps;
        if (configuredFinalStepMps < MIN_FINAL_STEP_MPS || configuredFinalStepMps > MPS_TOTAL) {
            revert InvalidAmount();
        }

        uint32[12] memory rampBlockWeights = _rampBlockWeights();
        uint24[12] memory rampMpsWeights = _rampMpsWeights();
        uint40[12] memory rampBlockCounts;
        uint24[12] memory rampMps;
        uint256 blocksSum;

        for (uint256 i = 0; i < rampBlockWeights.length; i++) {
            uint256 blockCount = (uint256(rampBlocks) * rampBlockWeights[i]) / RAMP_BLOCK_WEIGHT_SUM;
            rampBlockCounts[i] = uint40(blockCount);
            blocksSum += blockCount;
        }

        if (blocksSum < rampBlocks) {
            rampBlockCounts[rampBlockCounts.length - 1] = uint40(
                uint256(rampBlockCounts[rampBlockCounts.length - 1]) + (rampBlocks - blocksSum)
            );
        }

        uint256 weightedBlocksSum;
        for (uint256 i = 0; i < rampMpsWeights.length; i++) {
            weightedBlocksSum += uint256(rampBlockCounts[i]) * rampMpsWeights[i];
        }

        uint256 rampMpsTotal = MPS_TOTAL - configuredFinalStepMps;
        uint256 distributed;
        for (uint256 i = 0; i < rampMpsWeights.length; i++) {
            rampMps[i] = uint24((uint256(rampMpsWeights[i]) * rampMpsTotal) / weightedBlocksSum);
            distributed += uint256(rampMps[i]) * rampBlockCounts[i];
        }

        uint256 remainder = rampMpsTotal - distributed;
        uint24 finalStepMpsAdjusted = configuredFinalStepMps;
        if (remainder > 0) {
            finalStepMpsAdjusted = uint24(uint256(finalStepMpsAdjusted) + remainder);
        }

        if (preBidBlocks > 0) {
            steps = abi.encodePacked(uint24(0), uint40(preBidBlocks));
        }

        for (uint256 i = 0; i < rampBlockCounts.length; i++) {
            steps = bytes.concat(steps, abi.encodePacked(rampMps[i], rampBlockCounts[i]));
        }

        steps = bytes.concat(steps, abi.encodePacked(finalStepMpsAdjusted, uint40(FINAL_STEP_BLOCKS)));
    }

    function _computePreBidBlocks(uint64 durationBlocks) internal view returns (uint64) {
        if (preBidBps == 0) return 0;
        return uint64((uint256(durationBlocks) * preBidBps + (BPS_DENOMINATOR - 1)) / BPS_DENOMINATOR);
    }

    function _rampBlockWeights() internal pure returns (uint32[12] memory weights) {
        weights = [
            uint32(3000),
            3000,
            3400,
            4400,
            5200,
            6000,
            7000,
            7800,
            9600,
            10000,
            12000,
            14999
        ];
    }

    function _rampMpsWeights() internal pure returns (uint24[12] memory weights) {
        weights = [
            uint24(42),
            52,
            59,
            64,
            69,
            73,
            77,
            81,
            85,
            88,
            92,
            95
        ];
    }


    function _buildAuctionParams(address tokensRecipient, uint64 startBlock, uint64 endBlock)
        internal
        view
        returns (bytes memory)
    {
        bytes memory steps = _buildAuctionSteps(endBlock - startBlock);

        AuctionParameters memory params = AuctionParameters({
            currency: address(0),
            tokensRecipient: tokensRecipient,
            fundsRecipient: ActionConstants.MSG_SENDER,
            startBlock: startBlock,
            endBlock: endBlock,
            claimBlock: endBlock + claimDelayBlocks,
            tickSpacing: auctionTickSpacing,
            validationHook: address(0),
            floorPrice: auctionFloorPrice,
            requiredCurrencyRaised: requiredCurrencyRaised,
            auctionStepsData: steps
        });

        return abi.encode(params);
    }

    function _computeMpmAddress(address token, address managerOwner, string memory mpmName)
        internal
        view
        returns (address)
    {
        OrderBookFactory orderBookFactory = OrderBookFactory(address(strategyFactory.orderBookFactory()));
        PoolKey memory poolKey = _buildPoolKey(token, orderBookFactory);
        return orderBookFactory.multiPositionFactory().computeAddress(poolKey, managerOwner, mpmName);
    }

    function _buildPoolKey(address token, OrderBookFactory orderBookFactory)
        internal
        view
        returns (PoolKey memory poolKey)
    {
        poolKey = PoolKey({
            currency0: Currency.wrap(address(0)),
            currency1: Currency.wrap(token),
            fee: LPFeeLibrary.DYNAMIC_FEE_FLAG,
            tickSpacing: poolTickSpacing,
            hooks: IHooks(address(orderBookFactory.hook()))
        });
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
    /// @dev Uses address(this) as creator since TokenLaunchFactoryV3 is the deploying contract
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

        // Get initializer address from strategy (CCA initializer)
        (bool success, bytes memory data) = strategy.staticcall(abi.encodeWithSignature("initializer()"));
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
        info.tokenSplitToAuction = params.migratorParams.tokenSplit;
        info.migrationBlock = params.migratorParams.migrationBlock;
        info.sweepBlock = params.migratorParams.sweepBlock;

        // Populate predicted pool key + MPM address
        {
            string memory mpmName = string(
                abi.encodePacked("LPManager-", Strings.toString(index + 1))
            );
            OrderBookFactory orderBookFactory = OrderBookFactory(
                address(strategyFactory.orderBookFactory())
            );
            PoolKey memory poolKey = _buildPoolKey(params.token, orderBookFactory);
            info.poolKey = poolKey;
            info.mpm = orderBookFactory.multiPositionFactory().computeAddress(
                poolKey,
                params.creator,
                mpmName
            );
        }

        // Decode and write auction block numbers
        {
            AuctionParameters memory auctionParamsDecoded = abi.decode(params.auctionParams, (AuctionParameters));
            info.startBlock = auctionParamsDecoded.startBlock;
            info.endBlock = auctionParamsDecoded.endBlock;
            info.claimBlock = auctionParamsDecoded.claimBlock;
            _auctionStepsDataByAuction[params.auction] = auctionParamsDecoded.auctionStepsData;
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

    /// @notice Set required currency raised for auction
    /// @dev Only callable by admin
    function setRequiredCurrencyRaised(uint128 newRequiredCurrencyRaised) external onlyRole(DEFAULT_ADMIN_ROLE) {
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

    function setBlocksPerHour(uint64 newBlocksPerHour) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (newBlocksPerHour == 0) revert InvalidBlocksPerHour();
        if (newBlocksPerHour > type(uint64).max / MAX_DURATION_HOURS) revert InvalidBlocksPerHour();
        blocksPerHour = newBlocksPerHour;
        emit BlocksPerHourUpdated(newBlocksPerHour);
    }

    function setPoolConfig(int24 newTickSpacing, uint24 newLpFee) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (newTickSpacing <= 0) revert InvalidAmount();
        poolTickSpacing = newTickSpacing;
        poolLpFee = newLpFee;
        emit PoolConfigUpdated(newTickSpacing, newLpFee);
    }

    function setAuctionConfig(uint256 newTickSpacing, uint256 newFloorPrice) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (newTickSpacing == 0 || newFloorPrice == 0) revert InvalidAmount();
        auctionTickSpacing = newTickSpacing;
        auctionFloorPrice = newFloorPrice;
        emit AuctionConfigUpdated(newTickSpacing, newFloorPrice);
    }

    function setDelayBlocks(
        uint64 newMigrationDelayBlocks,
        uint64 newSweepDelayBlocks,
        uint64 newClaimDelayBlocks
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (newClaimDelayBlocks == 0) revert InvalidAmount();
        migrationDelayBlocks = newMigrationDelayBlocks;
        sweepDelayBlocks = newSweepDelayBlocks;
        claimDelayBlocks = newClaimDelayBlocks;
        emit DelayBlocksUpdated(newMigrationDelayBlocks, newSweepDelayBlocks, newClaimDelayBlocks);
    }

    function setPreBidBps(uint16 newPreBidBps) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (newPreBidBps > BPS_DENOMINATOR) revert InvalidAmount();
        preBidBps = newPreBidBps;
        emit PreBidBpsUpdated(newPreBidBps);
    }

    function setFinalStepMps(uint24 newFinalStepMps) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (newFinalStepMps < MIN_FINAL_STEP_MPS || newFinalStepMps > MPS_TOTAL) {
            revert InvalidAmount();
        }
        finalStepMps = newFinalStepMps;
        emit FinalStepMpsUpdated(newFinalStepMps);
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

    /// @notice Returns the packed auction steps data for an auction address
    function getAuctionStepsData(address auction) external view returns (bytes memory steps) {
        return _auctionStepsDataByAuction[auction];
    }

    /// @notice Get launch info by strategy address
    /// @param strategy The strategy address
    /// @return info The launch information
    function getLaunchByStrategy(address strategy) external view returns (LaunchInfo memory info) {
        uint256 indexPlusOne = _strategyToIndex[strategy];
        if (indexPlusOne == 0) revert LaunchNotFound();
        info = _allLaunches[indexPlusOne - 1];
    }

    /// @notice Get launch info by index (used by off-chain lens)
    /// @param index The launch index
    /// @return info The launch information
    function launchInfoAt(uint256 index) external view returns (LaunchInfo memory info) {
        info = _allLaunches[index];
    }

    /// @notice Get a creator launch index (used by off-chain lens)
    function creatorLaunchIndex(address creator, uint256 index) external view returns (uint256 launchIndex) {
        launchIndex = _creatorLaunchIndices[creator][index];
    }

    /// @notice Get a token launch index (used by off-chain lens)
    function tokenLaunchIndex(address token, uint256 index) external view returns (uint256 launchIndex) {
        launchIndex = _tokenToIndices[token][index];
    }

    /// @notice Get an auction launch index (+1, 0 means not found)
    function auctionLaunchIndex(address auction) external view returns (uint256 indexPlusOne) {
        indexPlusOne = _auctionToIndex[auction];
    }

    /// @notice Get number of launches for a token
    /// @param token The token address
    /// @return count Number of launches for the token
    function getLaunchCountByToken(address token) external view returns (uint256 count) {
        count = _tokenToIndices[token].length;
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
