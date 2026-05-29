// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2024 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.

pragma solidity ^0.7.6;
pragma abicoder v2;

import {UpgradeableOperable} from "src/governance/UpgradeableOperable.sol";

import {ICreator} from "src/interfaces/management/ICreator.sol";
import {IMinimalInit} from "src/interfaces/IMinimalInit.sol";
import {IFactory} from "src/interfaces/management/IFactory.sol";
import {IRewardReceiver} from "src/interfaces/rewards/IRewardReceiver.sol";

import {IPriceHelper} from "src/interfaces/swap/IPriceHelper.sol";

import {IAlgebraSwapper} from "src/interfaces/swap/IAlgebraSwapper.sol";
import {IUniswapV3Swapper} from "src/interfaces/swap/IUniswapV3Swapper.sol";

contract Factory is IFactory, UpgradeableOperable {
    // Stack too deep
    struct CreateVariables {
        uint256 nonce;
        address incentiveReceiver;
        ICreator creator;
        address[] beacons;
        LPContracts contracts;
    }

    string public override strategy;

    address public lpGov;
    address public keeper;
    address public incentiveReceiver;
    bool public toggle;

    ICreator public creator;

    address public viewer;
    address public universalSwapper;
    address public merkleDistributor;
    IRewardReceiver public rewardReceiver;

    uint256 public mantentionRate;
    uint256 public withdrawRate;
    uint256 public compoundRate;

    uint256 public nonce;
    // nonce -> LPContracts
    mapping(uint256 => LPContracts) public lpContracts;
    // pool -> Stage
    mapping(address => Stage) public stage;
    // pool -> nonce
    mapping(address => uint256) public poolByNonce;
    // type -> price helper
    mapping(uint256 => address) public priceHelper;
    // type -> lp manager
    mapping(uint256 => address) public lpManager;
    // type -> swapper
    mapping(uint256 => address) public trackerSwapper;

    /* -------------------------------------------------------------------------- */
    /*                                    INIT                                    */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Initialize Factory contract.
     * @param init Parameters needed to initialize factory.
     */
    function initialize(
        string memory _strategy,
        address _incentiveReceiver,
        uint256 _mantentionRate,
        uint256 _withdrawRate,
        uint256 _compoundRate,
        InitParams memory init
    ) external initializer {
        __Governable_init(msg.sender);

        strategy = _strategy;

        lpGov = msg.sender;

        creator = ICreator(init.creator);
        viewer = init.viewer;
        universalSwapper = init.swapper;
        rewardReceiver = IRewardReceiver(init.rewardReceiver);
        merkleDistributor = init.merkleDistributor;
        keeper = init.keeper;

        // Incentives
        incentiveReceiver = _incentiveReceiver;
        mantentionRate = _mantentionRate;
        withdrawRate = _withdrawRate;
        compoundRate = _compoundRate;
    }

    /* -------------------------------------------------------------------------- */
    /*                                 ONLY GOVERNOR                              */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Change LP Manager stage.
     * @param _pool LP pool address.
     * @param _stage LP Manager stage.
     */
    function changeStage(address _pool, Stage _stage) external override onlyGovernor {
        emit UpdateStage(_pool, stage[_pool], _stage);
        stage[_pool] = _stage;
    }

    /**
     * @notice Update LP Manager governor.
     * @param _lpGov new LP manager governor address.
     */
    function updateLPGov(address _lpGov) external override onlyGovernor {
        lpGov = _lpGov;
    }

    /**
     * @notice Update Internal contracts.
     * @param init internal contract addresses.
     */
    function updateInternalContracts(InitParams memory init) external override onlyGovernor {
        creator = ICreator(init.creator);
        viewer = init.viewer;
        universalSwapper = init.swapper;
        rewardReceiver = IRewardReceiver(init.rewardReceiver);
        merkleDistributor = init.merkleDistributor;
    }

    /**
     * @notice Update Contract by type.
     * @param _type type of LP.
     * @param _priceHelper new Price Helper address.
     * @param _lpManager new LP Manager address.
     * @param _swapper new Swapper address.
     */
    function updateContractsByType(uint256 _type, address _priceHelper, address _lpManager, address _swapper)
        external
        override
        onlyGovernor
    {
        priceHelper[_type] = _priceHelper;
        lpManager[_type] = _lpManager;
        trackerSwapper[_type] = _swapper;
    }

    /**
     * @notice Update Factory Description.
     * @param _strategy strategy description.
     */
    function updateDescription(string memory _strategy) external onlyGovernor {
        strategy = _strategy;
    }

    /**
     * @notice Update keeper.
     * @param _keeper keeper address.
     */
    function updateKeeper(address _keeper) external override onlyGovernor {
        keeper = _keeper;
    }

    /**
     * @notice Update Incentive Receiver.
     * @param _incentiveReceiver incentiveReceiver address.
     */
    function updateIncentiveReceiver(address _incentiveReceiver) external override onlyGovernor {
        incentiveReceiver = _incentiveReceiver;
    }

    /**
     * @notice Update Retention Incentives.
     * @param _mantentionRate mantention retention amount.
     * @param _withdrawRate withdraw retention amount.
     * @param _compoundRate compound retention amount.
     */
    function updateRetentionIncentives(uint256 _mantentionRate, uint256 _withdrawRate, uint256 _compoundRate)
        external
        override
        onlyGovernor
    {
        mantentionRate = _mantentionRate;
        withdrawRate = _withdrawRate;
        compoundRate = _compoundRate;
    }

    /**
     * @notice Update LP Manager addresses.
     * @param contracts LP addresses.
     */
    function updateLPManagerContracts(LPContracts memory contracts) external override onlyGovernor {
        lpContracts[poolByNonce[contracts.lp]] = contracts;
    }

    /**
     * @notice Toggle between only operator or free access to whitelist functions.
     */
    function pressToggle() external override onlyGovernor {
        toggle = !toggle;
        emit Toggle(toggle);
    }

    /* -------------------------------------------------------------------------- */
    /*                                 ONLY WHITELISTED                           */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Create new LP Manager.
     * @param createParams LP manager create parameters.
     * @param poolInput Pool Params.
     */
    function create(CreateParams memory createParams, IPriceHelper.PoolInput memory poolInput)
        external
        override
        returns (uint256 nonce_, LPContracts memory contracts)
    {
        _whitelisted();
        (nonce_, contracts) = _create(createParams);
        _setup(poolInput, contracts);

        emit LPManagerCreated(nonce_, contracts.lp, Stage.CREATED, contracts);
    }

    /**
     * @notice Create new LP Manager.
     * @param params LP manager create parameters.
     */
    function _create(CreateParams memory params) private returns (uint256, LPContracts memory contracts) {
        CreateVariables memory vars;

        vars.nonce = nonce + 1;

        require(stage[params._pool] == Stage.NON_CREATED || stage[params._pool] == Stage.OBSOLETE, "Ivalid Stage");

        nonce = vars.nonce;

        vars.incentiveReceiver = incentiveReceiver;

        vars.creator = creator;

        vars.beacons = vars.creator.getBeacons();

        // 0  -> LP Pool
        // 1  -> Viewer
        // 2  -> Swapper
        // 3  -> Receiver
        // 4  -> Price Helper
        // 5  -> LP Manager
        // 6  -> Double Tracker
        // 7  -> Single Tracker Zero
        // 8  -> Single Tracker One
        // 9  -> Compounder
        // 10  -> Router

        vars.contracts.lp = params._pool;
        vars.contracts.viewer = viewer;
        vars.contracts.swapper = universalSwapper;
        vars.contracts.receiver = address(rewardReceiver);

        // Price Helper
        vars.contracts.priceHelper = priceHelper[params._type];

        // LP Manager
        vars.contracts.lpManager = vars.creator.createBeacon(lpManager[params._type]);

        IMinimalInit(vars.contracts.lpManager).initializeLPManager(
            params._pool,
            vars.contracts.receiver,
            vars.contracts.priceHelper,
            vars.contracts.swapper,
            vars.incentiveReceiver,
            mantentionRate,
            withdrawRate,
            params._positionName,
            params._positionSymbol,
            params._defaultLower,
            params._defaultUpper
        );

        // Double Tracker
        vars.contracts.doubleTracker = vars.creator.createBeacon(vars.beacons[0]);
        IMinimalInit(vars.contracts.doubleTracker).initializeDoubleTracker(
            vars.contracts.lpManager,
            vars.contracts.swapper,
            vars.contracts.receiver,
            merkleDistributor,
            vars.incentiveReceiver
        );

        // Single Tracker Zero
        vars.contracts.singleTrackerZero = vars.creator.createBeacon(vars.beacons[1]);
        IMinimalInit(vars.contracts.singleTrackerZero).initializeSingleTracker(
            vars.contracts.lpManager,
            trackerSwapper[params._type],
            vars.contracts.swapper,
            vars.contracts.receiver,
            merkleDistributor,
            vars.incentiveReceiver,
            false
        );

        // Single Tracker One
        vars.contracts.singleTrackerOne = vars.creator.createBeacon(vars.beacons[2]);
        IMinimalInit(vars.contracts.singleTrackerOne).initializeSingleTracker(
            vars.contracts.lpManager,
            trackerSwapper[params._type],
            vars.contracts.swapper,
            vars.contracts.receiver,
            merkleDistributor,
            vars.incentiveReceiver,
            true
        );

        // Deploy Compounder & Router
        vars.contracts.compounder = vars.creator.createBeacon(vars.beacons[3]);
        vars.contracts.router = vars.creator.createBeacon(vars.beacons[4]);

        // Init Compounder
        IMinimalInit(vars.contracts.compounder).initializeCompounder(
            vars.contracts.router,
            vars.contracts.doubleTracker,
            vars.contracts.lpManager,
            vars.contracts.swapper,
            vars.incentiveReceiver,
            compoundRate,
            params._compoundName,
            params._compoundSymbol
        );

        //// review router

        // Init Router
        IMinimalInit(vars.contracts.router).initializeRouter(
            vars.contracts.lpManager,
            vars.contracts.priceHelper,
            vars.contracts.compounder,
            vars.contracts.doubleTracker,
            vars.contracts.singleTrackerZero,
            vars.contracts.singleTrackerOne
        );

        // Tracker Swapper
        _swapperPaths(
            vars.contracts.singleTrackerZero,
            vars.contracts.singleTrackerOne,
            params._type,
            trackerSwapper[params._type],
            params._paths,
            params._routes
        );

        // Universal Swapper
        IMinimalInit(vars.contracts.swapper).updateCaller(vars.contracts.doubleTracker, true);
        IMinimalInit(vars.contracts.swapper).updateCaller(vars.contracts.singleTrackerZero, true);
        IMinimalInit(vars.contracts.swapper).updateCaller(vars.contracts.singleTrackerOne, true);
        IMinimalInit(vars.contracts.swapper).updateCaller(vars.contracts.lpManager, true);
        IMinimalInit(vars.contracts.swapper).updateCaller(vars.contracts.compounder, true);

        poolByNonce[params._pool] = vars.nonce;

        lpContracts[vars.nonce] = vars.contracts;

        return (vars.nonce, vars.contracts);
    }

    /**
     * @notice Setup new LP manager.
     * @param poolInput Pool Params.
     * @param contracts LP Contracts.
     */
    function _setup(IPriceHelper.PoolInput memory poolInput, LPContracts memory contracts) private {
        address _keeper = keeper;

        // LP Manager
        IMinimalInit init = IMinimalInit(contracts.lpManager);
        init.addOperator(contracts.router);
        init.addKeeper(_keeper);
        init.updateGovernor(lpGov);

        // Reward Receiver
        rewardReceiver.addTracker(contracts.lpManager, contracts.doubleTracker);

        rewardReceiver.addTracker(contracts.lpManager, contracts.singleTrackerZero);

        rewardReceiver.addTracker(contracts.lpManager, contracts.singleTrackerOne);

        // Double Tracker
        init = IMinimalInit(contracts.doubleTracker);
        init.addOperator(contracts.router);
        init.addOperator(contracts.compounder);
        init.addKeeper(_keeper);
        init.updateGovernor(lpGov);

        // Single Tracker Zero
        init = IMinimalInit(contracts.singleTrackerZero);
        init.addOperator(contracts.router);
        init.addOperator(contracts.compounder);
        init.addKeeper(_keeper);
        init.updateGovernor(lpGov);

        // Single Tracker One
        init = IMinimalInit(contracts.singleTrackerOne);
        init.addOperator(contracts.router);
        init.addOperator(contracts.compounder);
        init.addKeeper(_keeper);
        init.updateGovernor(lpGov);

        // Compounder
        init = IMinimalInit(contracts.compounder);
        init.addOperator(contracts.router);
        init.addKeeper(_keeper);
        init.updateGovernor(lpGov);

        // Router
        init = IMinimalInit(contracts.router);
        init.addOperator(contracts.compounder);
        init.addKeeper(_keeper);
        init.updateGovernor(lpGov);

        // Price Helper
        IPriceHelper(contracts.priceHelper).updatePoolData(contracts.lp, poolInput);

        stage[contracts.lp] = Stage.CREATED;
    }

    /* -------------------------------------------------------------------------- */
    /*                                   VIEW                                     */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Get LP Manager addresses.
     * @param _nonce LP Manager nonce.
     */
    function getLPManagerContracts(uint256 _nonce) external view override returns (LPContracts memory) {
        // 0  -> LP Pool
        // 1  -> Viewer
        // 2  -> Swapper
        // 3  -> Receiver
        // 4  -> Price Helper
        // 5  -> LP Manager
        // 6  -> Double Tracker
        // 7  -> Single Tracker Zero
        // 8  -> Single Tracker One
        // 9  -> Compounder
        // 10  -> Router
        return lpContracts[_nonce];
    }

    /**
     * @notice Get LP Manager addresses.
     * @param _pool LP address.
     */
    function getLPManagerContracts(address _pool) external view override returns (LPContracts memory) {
        // 0  -> LP Pool
        // 1  -> Viewer
        // 2  -> Swapper
        // 3  -> Receiver
        // 4  -> Price Helper
        // 5  -> LP Manager
        // 6  -> Double Tracker
        // 7  -> Single Tracker Zero
        // 8  -> Single Tracker One
        // 9  -> Compounder
        // 10  -> Router
        return lpContracts[poolByNonce[_pool]];
    }

    /* -------------------------------------------------------------------------- */
    /*                                  PRIVATE                                   */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Verify if caller can call a function.
     */
    function _whitelisted() private view {
        require(hasRole(OPERATOR, msg.sender) || toggle, "Ivalid Caller");
    }

    /**
     * @notice Verify if caller can call a function.
     */
    function _swapperPaths(
        address trackerZero,
        address trackerOne,
        uint256 _type,
        address _swapper,
        bytes memory _paths,
        uint8[] memory _routes
    ) private {
        address asset0;
        address asset1;

        if (_type == 1 || _type == 3) {
            // UNISWAP
            IUniswapV3Swapper.SwapPair[] memory routes0 = new IUniswapV3Swapper.SwapPair[](_routes[0]);
            IUniswapV3Swapper.SwapPair[] memory routes1 = new IUniswapV3Swapper.SwapPair[](_routes[1]);
            (asset0, asset1, routes0, routes1) =
                abi.decode(_paths, (address, address, IUniswapV3Swapper.SwapPair[], IUniswapV3Swapper.SwapPair[]));

            // Token 0 to token 1
            IUniswapV3Swapper(_swapper).upsertPathOverride(trackerZero, asset0, asset1, routes0);

            // Token 1 to token 0
            IUniswapV3Swapper(_swapper).upsertPathOverride(trackerOne, asset1, asset0, routes1);
        } else if (_type == 2) {
            // ALGEBRA
            IAlgebraSwapper.SwapPair[] memory routes0 = new IAlgebraSwapper.SwapPair[](_routes[0]);
            IAlgebraSwapper.SwapPair[] memory routes1 = new IAlgebraSwapper.SwapPair[](_routes[1]);
            (asset0, asset1, routes0, routes1) =
                abi.decode(_paths, (address, address, IAlgebraSwapper.SwapPair[], IAlgebraSwapper.SwapPair[]));

            // Token 0 to token 1
            IAlgebraSwapper(_swapper).upsertPathOverride(trackerZero, asset0, asset1, routes1);

            // Token 1 to token 0
            IAlgebraSwapper(_swapper).upsertPathOverride(trackerOne, asset1, asset0, routes0);
        }
    }
}
