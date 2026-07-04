// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {Hestia} from "./Hestia.sol";
import {ReentrancyGuard} from "./ReentrancyGuard.sol";
import {IUSDC} from "./IUSDC.sol";
import {IWETH} from "./IWETH.sol";
import {ERC20} from "./ERC20.sol";
import {Owned} from "./Owned.sol";
import {TickMath} from './TickMath.sol';
import {LiquidityAmounts} from './LiquidityAmounts.sol';
import {INonfungiblePositionManager} from "./INonfungiblePositionManager.sol";
import {IUniswapV3Pool} from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import {IUniswapV3Factory} from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Factory.sol";

contract HestiaChaosEngine is ReentrancyGuard, Owned {
    // contracts set for Base chain
    IWETH private constant WETH = IWETH(0x4200000000000000000000000000000000000006);
    IUSDC private constant USDC = IUSDC(0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913);
    INonfungiblePositionManager private constant POSITION_MANAGER =
        INonfungiblePositionManager(0x03a520b32C04BF3bEEf7BEb72E919cf822Ed34f1);
    IUniswapV3Factory private constant FACTORY = IUniswapV3Factory(0x33128a8fC17869897dcE68Ed026d694621f6FDfD);

    // constants already set
    uint256 private constant USDC_THOUSAND = 1000000000;
    uint256 private constant USDC_5THOUSAND = 5000000000;
    uint24 private constant POOL_FEE = 10_000;
    address private constant USDC_WETH_POOL_ADDRESS = 0xb2cc224c1c9feE385f8ad6a55b4d94E92359DC59;
    address private constant CCTP = 0x87aF913718f73168D4566bBF51683792aC2680eB;
    uint160 private constant MIN_SQRT_RATIO = 4295128739;
    uint160 private constant MAX_SQRT_RATIO = 1461446703485210103287273052203988822378723970342;
    uint256 private constant HESTIA_SUPPLY = 1_000_000e18;
    uint256 private constant BPS = 10000;
    uint256 private constant MAX_DEADLINE_DURATION = 2 minutes;
    uint256 private constant CONFIG_INTERVAL = 1 hours; 
    address private constant MULTISIG = 0x507fbdE39ba40DA4Fc79426AD5E3C64944fE43d4;

    // property that can modified only by deployer intervention
    int8 private NFT_LOCKED = 0;
    address private AUTOMATOR = 0xCBe5a4103d4C7Ed5D73d9942101473C1Bc0A8020;

    // configuration variables, can be tweaked by automator

    // USDC_CAPACITY: amount of total USDC that should be kept as reserve in contract (default 5000$)
    uint256 private USDC_CAPACITY = USDC_5THOUSAND; 

    // LIQUIDITY_SLIPPAGE for swaps, increase and decrease liquidity calls on hestia-usdc pool (0:off, range is 50:0.5% to 2500:25%)
    uint256 private LIQUIDITY_SLIPPAGE = 500;

    // SMOKE_PUBLIC, whether the smokeFees function can be accessed without privileged access
    bool private SMOKE_PUBLIC = true;

    // SMOKE_INTERVAL: minimal interval between smokeFees (range is 1 to 6 hours)
    uint256 private SMOKE_INTERVAL = 1 hours; 

    // SMOKE_CHAOS_RATIO: amount of the USDC reserve that hestiaRage will use for causeChaos volume generation (range is 0 -> off, max: $5000)
    uint256 private SMOKE_CHAOS_RATIO = USDC_THOUSAND; 

    // SMOKE_CHAOS_LOOP: amount of back and forth swap to do in cause chaos (0:off, range is 1 to 5)
    int8 private SMOKE_CHAOS_LOOP = 3;

    // SMOKE_FEED: ratio of the USDC collected fees that smokeFees will attempt to use when injecting liquidity (0:off, range is 1:100% to 100:1%)
    uint256 private SMOKE_FEED = 0;

    // SMOKE_USDC_TARGET: defines the action to do with USDC in smokeFees (0 -> keep in contract, 1 -> swap to WETH and transfer to CCTP, 2 -> transfer to Multisig, 3 -> swap to Hestia)
    int8 private SMOKE_USDC_TARGET = 0;

    // SMOKE_HESTIA_TARGET: defines the action to do with Hestia in smokeFees (0 -> keep in contract, 1 -> swap to USDC, 2 -> swap to WETH and transfer to CCTP, 3 -> transfer to 0 address, 4 -> transfer to Multisig)
    int8 private SMOKE_HESTIA_TARGET = 0;
    
    // RAGE_PUBLIC, whether the hestiaRage function can be accessed without privileged access
    bool private RAGE_PUBLIC = true;

    // RAGE_INTERVAL: minimal interval between hestiaRage (range is 6 hours to 24 hours)
    uint256 private RAGE_INTERVAL = 24 hours;

    // RAGE_FEED: amount of the USDC reserve that hestiaRage will attempt to use when injecting liquidity (0:off, max $25000)
    uint256 private RAGE_FEED = USDC_THOUSAND;

    // RAGE_LIQUIDITY_RATIO: divider used to reduce liquidity from position (0:off, range is 100:1% to 10000:0.01%)
    uint128 private RAGE_LIQUIDITY_RATIO = 250;
    
    // unset property that will be set in contract
    IUniswapV3Pool private POOL;
    IUniswapV3Pool private USDC_WETH_POOL;
    Hestia private immutable HESTIA;
    uint256 private NFT_ID;
    uint256 private NEXT_RAGE_TIME;
    uint256 private NEXT_SMOKE_TIME;
    uint256 private NEXT_CONFIG_TIME;
    address private POOL_TOKEN_0;
    address private POOL_TOKEN_1;
    address private USDC_WETH_POOL_TOKEN_0;
    address private USDC_WETH_POOL_TOKEN_1;

    // struct
    struct State {
        // global
        address owner;
        address automator;
        uint256 nextConfigTime;
        address poolAddress;
        address poolToken0;
        address poolToken1;
        address usdcWethPoolAddress;
        address usdcWethPoolToken0;
        address usdcWethPoolToken1;
        uint256 liquiditySlippage;
        uint256 nftId;
        int8 nftLocked;
        // capacity
        uint256 usdcCapacity;
        uint256 usdcExcessBalance;
        uint256 usdcTotalBalance;
        uint256 usdcChaosBalance;
        uint256 hestiaTotalBalance;
        // smokeFees
        uint256 nextSmokeTime;
        bool smokePublic;
        uint256 smokeInterval;
        uint256 smokeChaosRatio;
        int8 smokeChaosLoop;
        uint256 smokeFeed;
        int8 smokeUsdcTarget;
        int8 smokeHestiaTarget;
        // rage
        uint256 nextRageTime;
        bool ragePublic;
        uint256 rageInterval;
        uint256 rageFeed;
        uint128 rageLiquidityRatio;
    }

    // events
    event SmokedFees(uint256 hestiaBurn, uint256 usdcAmount);
    event HestiaRaged(uint256 hestiaBurn, uint256 usdcAmount);
    event SetDefaultMode();
    event SetNft(uint256 nftId);
    event LockNft(uint256 nftId);
    event SetAutomator(address automator);
    event SetUsdcWethPool(address pool);
    event ConfigChanged(
        uint256 usdcCapacity,
        uint256 liquiditySlippage,
        bool smokePublic,
        uint256 smokeInterval,
        uint256 smokeChaosRatio,
        int8 smokeChaosLoop,
        uint256 smokeFeed,
        int8 smokeUsdcTarget,
        int8 smokeHestiaTarget,
        bool ragePublic,
        uint256 rageInterval,
        uint256 rageFeed,
        uint128 rageLiquidityRatio
    );
    event HestiaFeed(uint256 hestiaIncrease, uint256 usdcIncrease);
    event HestiaBleed(uint256 hestiaDecrease, uint256 usdcDecrease);
    event SwapFailed(address tokenIn, address tokenOut, uint256 amount);
    event CauseChaosFailed(int8 loop);

    // create the Hestia token and renounce ownership
    constructor() Owned(msg.sender) {
        HESTIA = new Hestia(msg.sender, HESTIA_SUPPLY);
        HESTIA.renounceOwnership();
        HESTIA.approve(address(POSITION_MANAGER), type(uint256).max);
        USDC.approve(address(POSITION_MANAGER), type(uint256).max);
    }

    // allows contract to receive usdc
    receive() external payable nonReentrant {
        USDC.deposit{value: msg.value}();
    }

    // setNft id to contract without locking, only for owner
    // load pools in state
    function setNft(uint256 _NFT_ID) external onlyOwner nonReentrant {
        require(_NFT_ID != 0, "invalidNftId");
        require(NFT_LOCKED == 0, "nftAlreadyLocked");

        (
            ,
            ,
            address nftToken0,
            address nftToken1,
            uint24 nftFee,
            ,
            ,
            ,
            ,
            ,
            ,
        ) = POSITION_MANAGER.positions(_NFT_ID);

        // check nft has correct tokens and fees
        require(
            (nftToken0 == address(USDC) && nftToken1 == address(HESTIA)) ||
            (nftToken0 == address(HESTIA) && nftToken1 == address(USDC)),
            "nftTokensDoNoMatchPoolTokens"
        );
        require(nftFee == POOL_FEE, "nftFeeTierDoesNotMatchPool");

        // initialize the usdc hestia pool
        if (address(POOL) == address(0)) {
            POOL = IUniswapV3Pool(FACTORY.getPool(address(USDC), address(HESTIA), POOL_FEE));
            require(address(POOL) != address(0),"invalidPoolAddress");
            USDC.approve(address(POOL), type(uint256).max);
            HESTIA.approve(address(POOL), type(uint256).max);
            POOL_TOKEN_0 = POOL.token0();
            POOL_TOKEN_1 = POOL.token1();

            USDC_WETH_POOL = IUniswapV3Pool(USDC_WETH_POOL_ADDRESS);
            USDC_WETH_POOL_TOKEN_0 = USDC_WETH_POOL.token0();
            USDC_WETH_POOL_TOKEN_1 = USDC_WETH_POOL.token1();
            USDC.approve(USDC_WETH_POOL_ADDRESS, type(uint256).max);
            WETH.approve(USDC_WETH_POOL_ADDRESS, type(uint256).max);
        }

        // set the nft
        NFT_ID = _NFT_ID;

        emit SetNft(NFT_ID);
    }

    // locks the nft by transferring it to controller contract, only for owner
    function lockNFT() external onlyOwner nonReentrant {
        require(NFT_ID > 0, "nftNotSet");
        require(NFT_LOCKED == 0, "nftAlreadyLocked");
        POSITION_MANAGER.transferFrom(owner, address(this), NFT_ID);
        NFT_LOCKED = 1;
        emit LockNft(NFT_ID);
    }

    // allow the deployer to change the usdc-weth pool in case it gets changed
    function setUsdcWethPool(address poolAddress) external onlyOwner nonReentrant {
        require(poolAddress != address(0), "invalidPoolAddress");
        IUniswapV3Pool newPool = IUniswapV3Pool(poolAddress);
        address token0 = newPool.token0();
        address token1 = newPool.token1();

        require(
            (token0 == address(USDC) && token1 == address(WETH)) || (token0 == address(WETH) && token1 == address(USDC)),
            "invalidPoolTokens"
        );

        USDC_WETH_POOL = IUniswapV3Pool(poolAddress);
        USDC_WETH_POOL_TOKEN_0 = token0;
        USDC_WETH_POOL_TOKEN_1 = token1;
        USDC.approve(poolAddress, type(uint256).max);
        WETH.approve(poolAddress, type(uint256).max);

        emit SetUsdcWethPool(poolAddress);
    }

    // change automator address, only for owner or automator
    // even though its not the best practice, we choose to allow automator to name a successor himself (if deployer wallet is lost for example)
    function setAutomator(address automator) external nonReentrant {
        require(msg.sender == AUTOMATOR || msg.sender == owner, "unauthorized");
        require(automator != owner, "invalidAutomatorAddress");
        AUTOMATOR = automator;
        emit SetAutomator(automator);
    }

    // set configs of the contract, only for automator
    function setConfigs(
        uint256 usdcCapacity,
        uint256 liquiditySlippage,
        bool smokePublic,
        uint256 smokeInterval,
        uint256 smokeChaosRatio,
        int8 smokeChaosLoop,
        uint256 smokeFeed,
        int8 smokeUsdcTarget,
        int8 smokeHestiaTarget,
        bool ragePublic,
        uint256 rageInterval,
        uint256 rageFeed,
        uint128 rageLiquidityRatio
    ) external nonReentrant {
        require(msg.sender == AUTOMATOR, "unauthorized");
        require(block.timestamp >= NEXT_CONFIG_TIME, "configTimeout");
        NEXT_CONFIG_TIME = block.timestamp + CONFIG_INTERVAL;

        // for security, we want to limit the amount of change the automator can deal in one call for configs who deal with reserve usage (USDC_CAPACITY, SMOKE_CHAOS_RATIO, RAGE_FEED)
        // otherwise this could indicate an error, like forgetting a decimal, and have a huge impact on market
        // it can also limit the damage done by a compromised automator until the deployer rectifies the situation

        // capacity change limited to $5000 per call, no maximum
        uint256 minUsdcCapacity = (USDC_CAPACITY > USDC_5THOUSAND) ? USDC_CAPACITY - USDC_5THOUSAND : 0;
        require(usdcCapacity >= minUsdcCapacity && usdcCapacity <= (USDC_CAPACITY + USDC_5THOUSAND), "invalidUsdcCapacity");

        // smokeChaosRatio increase limited to $1000 per call, maximum is $5000
        require(smokeChaosRatio >= 0 && smokeChaosRatio <= (SMOKE_CHAOS_RATIO + USDC_THOUSAND) && smokeChaosRatio <= USDC_5THOUSAND, "invalidSmokeChaosRatio");

        // rageFeed increase limited to $5000 per call, maximum is $25000
        require(rageFeed >= 0 && rageFeed <= (RAGE_FEED + USDC_5THOUSAND) && rageFeed <= (USDC_5THOUSAND * 5), "invalidRageFeed");

        // liquiditySlippage at 0 to shut down the feature, otherwise maximum is 25% slippage
        require(liquiditySlippage == 0 || (liquiditySlippage >= 50 && liquiditySlippage <= 2500), "invalidLiquiditySlippage" );

        require(smokeInterval >= 1 hours && smokeInterval <= 6 hours, "invalidSmokeInterval");
        require(smokeChaosLoop >= 0 && smokeChaosLoop <= 5, "invalidSmokeChaosLoop");
        require(smokeFeed >= 0 && smokeFeed <= 100, "invalidSmokeFeed");
        require(smokeUsdcTarget >= 0 && smokeUsdcTarget <= 3, "invalidSmokeUsdcTarget");
        require(smokeHestiaTarget >= 0 && smokeHestiaTarget <= 4, "invalidSmokeHestiaTarget");
        require(rageInterval >= 6 hours && rageInterval <= 24 hours, "invalidRageInterval");
        require(rageLiquidityRatio == 0 || (rageLiquidityRatio >= 100 && rageLiquidityRatio <= 10000), "invalidRageLiquidityRatio");

        USDC_CAPACITY = usdcCapacity;
        LIQUIDITY_SLIPPAGE = liquiditySlippage;
        SMOKE_PUBLIC = smokePublic;
        SMOKE_INTERVAL = smokeInterval;
        SMOKE_CHAOS_RATIO = smokeChaosRatio;
        SMOKE_CHAOS_LOOP = smokeChaosLoop;
        SMOKE_FEED = smokeFeed;
        SMOKE_USDC_TARGET = smokeUsdcTarget;
        SMOKE_HESTIA_TARGET = smokeHestiaTarget;
        RAGE_PUBLIC = ragePublic;
        RAGE_INTERVAL = rageInterval;
        RAGE_FEED = rageFeed;
        RAGE_LIQUIDITY_RATIO = rageLiquidityRatio;

        emit ConfigChanged(
            usdcCapacity,
            liquiditySlippage,
            smokePublic,
            smokeInterval,
            smokeChaosRatio,
            smokeChaosLoop,
            smokeFeed,
            smokeUsdcTarget,
            smokeHestiaTarget,
            ragePublic,
            rageInterval,
            rageFeed,
            rageLiquidityRatio
        );
    }

    // setDefaultMode 
    // returns configuration to contract default when deployed, only for deployer
    // the default mode is balanced, but has no leaks of liquidity to CCTP
    function setDefaultMode() external onlyOwner nonReentrant {
        USDC_CAPACITY = USDC_5THOUSAND;
        LIQUIDITY_SLIPPAGE = 500;
        SMOKE_PUBLIC = true;
        SMOKE_INTERVAL = 1 hours;
        SMOKE_CHAOS_RATIO = USDC_THOUSAND;
        SMOKE_CHAOS_LOOP = 3;
        SMOKE_FEED = 0;
        SMOKE_USDC_TARGET = 0;
        SMOKE_HESTIA_TARGET = 0;
        RAGE_PUBLIC = true;
        RAGE_INTERVAL = 24 hours;
        RAGE_FEED = USDC_THOUSAND;
        RAGE_LIQUIDITY_RATIO = 250;
        emit SetDefaultMode();
    }

    // getState
    // returns the full state of the contract
    function getState() external view returns (State memory) {
        return State({
            // global
            owner: owner,
            automator: AUTOMATOR,
            nextConfigTime: NEXT_CONFIG_TIME,
            poolAddress: address(POOL),
            poolToken0: POOL_TOKEN_0,
            poolToken1: POOL_TOKEN_1,
            usdcWethPoolAddress: address(USDC_WETH_POOL),
            usdcWethPoolToken0: USDC_WETH_POOL_TOKEN_0,
            usdcWethPoolToken1: USDC_WETH_POOL_TOKEN_1,
            liquiditySlippage: LIQUIDITY_SLIPPAGE,
            nftId: NFT_ID,
            nftLocked: NFT_LOCKED,
            // capacity
            usdcCapacity: USDC_CAPACITY,
            usdcExcessBalance: getUsdcExcessBalance(),
            usdcTotalBalance: getUsdcTotalBalance(),
            usdcChaosBalance: getUsdcChaosBalance(),
            hestiaTotalBalance: getHestiaTotalBalance(),
            // smokeFees
            nextSmokeTime: NEXT_SMOKE_TIME,
            smokePublic: SMOKE_PUBLIC,
            smokeInterval: SMOKE_INTERVAL,
            smokeChaosRatio: SMOKE_CHAOS_RATIO,
            smokeChaosLoop: SMOKE_CHAOS_LOOP,
            smokeFeed: SMOKE_FEED,
            smokeUsdcTarget: SMOKE_USDC_TARGET,
            smokeHestiaTarget: SMOKE_HESTIA_TARGET,
            // rage
            nextRageTime: NEXT_RAGE_TIME,
            ragePublic: RAGE_PUBLIC,
            rageInterval: RAGE_INTERVAL,
            rageFeed: RAGE_FEED,
            rageLiquidityRatio: RAGE_LIQUIDITY_RATIO
        });
    }

    // returns the total hestiaBalance in contract
    function getHestiaTotalBalance() internal view returns(uint256) {
        return HESTIA.balanceOf(address(this));
    }

    // returns the total usdcBalance in contract
    function getUsdcTotalBalance() internal view returns(uint256) {
        return USDC.balanceOf(address(this));
    }

    // returns the total wethBalance in contract
    function getWethTotalBalance() internal view returns(uint256) {
        return WETH.balanceOf(address(this));
    }

    // returns the available usdcBalance minus the usdc that should be kept in contract
    function getUsdcExcessBalance() internal view returns(uint256) {
        uint256 realUsdcBalance = getUsdcTotalBalance();
        return (realUsdcBalance > USDC_CAPACITY) ? realUsdcBalance - USDC_CAPACITY : 0;
    }

    // returns the usdcBalance available for cause chaos in smokeFees, maximum is 5K
    function getUsdcChaosBalance() internal view returns(uint256) {
        if(SMOKE_CHAOS_RATIO == 0) return 0;
        uint256 realUsdcBalance = getUsdcTotalBalance();
        return (realUsdcBalance >= SMOKE_CHAOS_RATIO)? SMOKE_CHAOS_RATIO : realUsdcBalance;
    }

    // returns the usdcBalance available for feed in rage, maximum is 25K
    function getUsdcFeedBalance() internal view returns(uint256) {
        if(RAGE_FEED == 0) return 0;
        uint256 realUsdcBalance = getUsdcTotalBalance();
        return (realUsdcBalance >= RAGE_FEED)? RAGE_FEED : realUsdcBalance;
    }

    // smoke function
    // first, cause chaos by taking the available usdc for cause chaos and swap it back-and-forth to generate fees
    // then, collect fees from the position 
    // calculate exactly the amount gained for usdc and hestia
    // finally do some actions with each tokens, depending on configuration
    function smokeFees() external nonReentrant {
        require(SMOKE_PUBLIC || msg.sender == AUTOMATOR, "unauthorized");
        require(NFT_ID > 0, "nftNotSet");
        require(block.timestamp >= NEXT_SMOKE_TIME, "smokeTimeout");
        NEXT_SMOKE_TIME = block.timestamp + SMOKE_INTERVAL;

        // causeChaos logic, can generate additional volume and fees
        if(SMOKE_CHAOS_LOOP > 0) causeChaos();
        
        // initial balance, after cause chaos
        uint256 hestiaAmountInitial = getHestiaTotalBalance();
        uint256 usdcAmountInitial = getUsdcTotalBalance();

        // collect fees
        POSITION_MANAGER.collect(
            INonfungiblePositionManager.CollectParams({
                tokenId: NFT_ID,
                recipient: address(this),
                amount0Max: type(uint128).max,
                amount1Max: type(uint128).max
            })
        );

        // calculate usdc and hestia gained
        uint256 hestiaAmountAfter = getHestiaTotalBalance();
        uint256 usdcAmountAfter = getUsdcTotalBalance();
        uint256 hestiaAmountGained = (hestiaAmountAfter >= hestiaAmountInitial)? hestiaAmountAfter - hestiaAmountInitial : 0;
        uint256 usdcAmountGained = (usdcAmountAfter >= usdcAmountInitial)? usdcAmountAfter - usdcAmountInitial: 0;
        uint256 hestiaAmountEvent = hestiaAmountGained;
        uint256 usdcAmountEvent = usdcAmountGained;

        // attempt liquidity increase from gained fees
        if(SMOKE_FEED > 0 && hestiaAmountGained > 0 && usdcAmountGained > 0) 
        {
            uint256 availableUsdcGained = usdcAmountGained / SMOKE_FEED;
            if(availableUsdcGained > 0) increaseLiquidity(hestiaAmountGained, availableUsdcGained);

            // recalculate usdc and hestia gained after liquidity increase
            hestiaAmountAfter = getHestiaTotalBalance();
            usdcAmountAfter = getUsdcTotalBalance();
            hestiaAmountGained = (hestiaAmountAfter >= hestiaAmountInitial)? hestiaAmountAfter - hestiaAmountInitial : 0;
            usdcAmountGained = (usdcAmountAfter >= usdcAmountInitial)? usdcAmountAfter - usdcAmountInitial: 0;
        }

        // swap hestia for usdc
        if (hestiaAmountGained > 0 && SMOKE_HESTIA_TARGET == 1) 
        {
            swap(address(HESTIA),address(USDC),hestiaAmountGained);
            
            // recalculate usdc and hestia gained after swap
            hestiaAmountAfter = getHestiaTotalBalance();
            usdcAmountAfter = getUsdcTotalBalance();
            hestiaAmountGained = (hestiaAmountAfter >= hestiaAmountInitial)? hestiaAmountAfter - hestiaAmountInitial : 0;
            usdcAmountGained = (usdcAmountAfter >= usdcAmountInitial)? usdcAmountAfter - usdcAmountInitial: 0;
        }
        
        // for hestia to cctp, we need to do 2 swaps (to usdc and then to weth)
        if(hestiaAmountGained > 0 && SMOKE_HESTIA_TARGET == 2)
        {
            uint256 usdcAmountBeforeSwap = getUsdcTotalBalance();
            swap(address(HESTIA),address(USDC),hestiaAmountGained);
            uint256 usdcAmountAfterSwap = getUsdcTotalBalance();
            uint256 usdcAmountGainedBySwap = (usdcAmountAfterSwap > usdcAmountBeforeSwap) ? usdcAmountAfterSwap - usdcAmountBeforeSwap: 0;

            if(usdcAmountGainedBySwap > 0)
            {
                swapUsdcForWeth(usdcAmountGainedBySwap);
                uint256 wethGained = getWethTotalBalance();
                if(wethGained > 0) WETH.transfer(CCTP, wethGained);
            }

            // recalculate usdc and hestia gained after both swaps
            hestiaAmountAfter = getHestiaTotalBalance();
            usdcAmountAfter = getUsdcTotalBalance();
            hestiaAmountGained = (hestiaAmountAfter >= hestiaAmountInitial)? hestiaAmountAfter - hestiaAmountInitial : 0;
            usdcAmountGained = (usdcAmountAfter >= usdcAmountInitial)? usdcAmountAfter - usdcAmountInitial: 0;
        }

        // for usdc to CCTP we need to swap to WETH first
        if (usdcAmountGained > 0 && SMOKE_USDC_TARGET == 1) {
            swapUsdcForWeth(usdcAmountGained);
            uint256 wethGained = getWethTotalBalance();
            if(wethGained > 0) WETH.transfer(CCTP, wethGained);
        }

        if (usdcAmountGained > 0 && SMOKE_USDC_TARGET == 2) USDC.transfer(MULTISIG, usdcAmountGained);

        // this setting could be used to acquire extra hestia to increase liquidity in rage function when reserve is large
        if (usdcAmountGained > 0 && SMOKE_USDC_TARGET == 3)
        {
            swap(address(USDC),address(HESTIA),usdcAmountGained);
            // only update hestia gained at this stage
            hestiaAmountAfter = getHestiaTotalBalance();
            hestiaAmountGained = (hestiaAmountAfter >= hestiaAmountInitial)? hestiaAmountAfter - hestiaAmountInitial : 0;
        }

        // transfer possible to do with gained hestia
        if (hestiaAmountGained > 0 && SMOKE_HESTIA_TARGET == 3) HESTIA.transfer(address(0), hestiaAmountGained);
        if (hestiaAmountGained > 0 && SMOKE_HESTIA_TARGET == 4) HESTIA.transfer(MULTISIG, hestiaAmountGained);

        emit SmokedFees(hestiaAmountEvent, usdcAmountEvent);
    }

    // rage function
    // decrease liquidity from the pool and collect the pool fees
    // ratio of decrease can be tweaked
    // the USDC is kept in contract to fill up the capacity
    // 100% of excess USDC is used to market buy HESTIA
    // send remaining HESTIA to the burn address
    function hestiaRage() external nonReentrant {
        require(RAGE_PUBLIC || msg.sender == AUTOMATOR, "unauthorized");
        require(NFT_ID > 0, "nftNotSet");
        require(block.timestamp >= NEXT_RAGE_TIME, "rageTimeout");
        NEXT_RAGE_TIME = block.timestamp + RAGE_INTERVAL;
        
        uint256 initialUsdcAmount = getUsdcTotalBalance();
        uint256 initialHestiaAmount = getHestiaTotalBalance();

        // in this mode, we will attempt to increase liquidity with whatever hestia we have in the contract and the matching reserve
        // this will mostly be used in phase 0
        if(initialUsdcAmount > 0 && initialHestiaAmount > 0) 
        {
            uint256 availableUsdcForLiquidity = getUsdcFeedBalance();
            if(availableUsdcForLiquidity > 0) 
            {
                increaseLiquidity(initialHestiaAmount, availableUsdcForLiquidity);
                // update the initial amounts for the rest of the function
                initialUsdcAmount = getUsdcTotalBalance();
                initialHestiaAmount = getHestiaTotalBalance();
            }
        }

        // decrease liquidity in pool by provided ratio
        // providing 0 as liquidity ratio would disable completely the liquidity decrease and fee collection
        if(RAGE_LIQUIDITY_RATIO >= 100)
        {
            (, , , , , , , uint128 liquidity, , , , ) = POSITION_MANAGER.positions(NFT_ID);
            uint128 liquidityToBurn = liquidity / RAGE_LIQUIDITY_RATIO;
            uint256 amount0Min = 0;
            uint256 amount1Min = 0;
            
            // calculate slippage protection, can be disabled
            if(LIQUIDITY_SLIPPAGE >= 50)
            (amount0Min, amount1Min) = calculateMinimalDecreaseAmounts(liquidityToBurn);

            POSITION_MANAGER.decreaseLiquidity(
                INonfungiblePositionManager.DecreaseLiquidityParams({
                    tokenId: NFT_ID,
                    liquidity: liquidityToBurn,
                    amount0Min: amount0Min,
                    amount1Min: amount1Min,
                    deadline: block.timestamp + MAX_DEADLINE_DURATION
                })
            );

            // decreased liquidity is collected as fees
            POSITION_MANAGER.collect(
                INonfungiblePositionManager.CollectParams({
                    tokenId: NFT_ID,
                    recipient: address(this),
                    amount0Max: type(uint128).max,
                    amount1Max: type(uint128).max
                })
            );

            uint256 usdcAmountAfter = getUsdcTotalBalance();
            uint256 hestiaAmountAfter = getHestiaTotalBalance();
            uint256 usdcAmountDiff = (usdcAmountAfter >= initialUsdcAmount)? usdcAmountAfter - initialUsdcAmount: 0;
            uint256 hestiaAmountDiff = (hestiaAmountAfter >= initialHestiaAmount)? hestiaAmountAfter - initialHestiaAmount: 0;

            emit HestiaBleed(hestiaAmountDiff, usdcAmountDiff);
        }

        // swap usdc excess balance (over capacity) to hestia
        uint256 usdcAmount = getUsdcExcessBalance();
        if (usdcAmount > 0) swap(address(USDC),address(HESTIA),usdcAmount);

        // burn all hestia still left in contract
        uint256 hestiaAmount = getHestiaTotalBalance();
        if (hestiaAmount > 0) HESTIA.transfer(address(0), hestiaAmount);

        emit HestiaRaged(hestiaAmount, usdcAmount);
    }

    // internal function to causeChaos, used in the smoke fees function
    function causeChaos() internal {
        uint256 chaosBalance = getUsdcChaosBalance();
        uint256 hestiaBalanceInitial = getHestiaTotalBalance();

        if(chaosBalance > 0 && SMOKE_CHAOS_LOOP > 0)
        {
            for(int8 i=1; i <= SMOKE_CHAOS_LOOP; i++)
            {
                // if the reserve has more than the chaos balance limit, then multiple loops of causeChaos should cause slight price increase
                uint256 usdcBalance = getUsdcChaosBalance();
                if(usdcBalance > 0) 
                {
                    swap(address(USDC),address(HESTIA),usdcBalance);
                    uint256 hestiaBalance = getHestiaTotalBalance();

                    // error if hestiaBalance is not larger than the initial, this should not happen - revert otherwise we are losing usdc reserve
                    require(hestiaBalance > hestiaBalanceInitial,'invalidHestiaBalance');

                    // we only want to swap back the hestia gained from previous swap
                    uint256 hestiaBalanceExcess = hestiaBalance - hestiaBalanceInitial;
                    swap(address(HESTIA),address(USDC),hestiaBalanceExcess);
                }

                // highly unlikely, but would mean available usdc is completely empty, we can break the loop without reverting
                else
                {
                    emit CauseChaosFailed(i);
                    break;
                }
            }
        }
    }

    // attempt to increase using the acquired fees liquidity
    function increaseLiquidity(uint256 hestiaGained, uint256 usdcGained) internal {
        bool isToken0Usdc = POOL_TOKEN_0 == address(USDC);
                
        (uint256 amount0Desired, uint256 amount1Desired, uint256 amount0Min, uint256 amount1Min) = calculateOptimalIncreaseAmounts(
            isToken0Usdc ? usdcGained : hestiaGained,
            isToken0Usdc ? hestiaGained : usdcGained
        );
            
        if(amount0Desired > 0 && amount1Desired > 0)
        {
            POSITION_MANAGER.increaseLiquidity(
                INonfungiblePositionManager.IncreaseLiquidityParams({
                    tokenId: NFT_ID,
                    amount0Desired: amount0Desired,
                    amount1Desired: amount1Desired,
                    amount0Min: amount0Min,
                    amount1Min: amount1Min,
                    deadline: block.timestamp + MAX_DEADLINE_DURATION
                })
            );

            emit HestiaFeed(
                isToken0Usdc ? amount1Desired: amount0Desired, 
                isToken0Usdc ? amount0Desired: amount1Desired
            );
        }
    }

    // swap function for using the usdc_hestia pool
    function swap(address tokenIn, address tokenOut, uint256 amount) internal {
        require(amount > 0, "swapZeroAmount");
        require(address(POOL) != address(0), "poolNotSet");
        require(tokenIn == address(USDC) || tokenIn == address(HESTIA), "invalidTokenIn");
        require(tokenOut == address(USDC) || tokenOut == address(HESTIA), "invalidTokenOut");
        require(tokenIn != tokenOut, "invalidTokens");

        bool zeroForOne = tokenIn == POOL_TOKEN_0;
        uint160 sqrtPriceLimitX96 = zeroForOne ? MIN_SQRT_RATIO + 1 : MAX_SQRT_RATIO - 1;

        // adding liquidity slippage protection for swaps
        if(LIQUIDITY_SLIPPAGE >= 50) 
        {
            (uint160 currentSqrtPriceX96,,,,,,) = POOL.slot0();
            if (zeroForOne) {
                // when selling token0 (zeroForOne = true)
                // we want to limit the price from going too low
                uint256 adjustedPrice = uint256(currentSqrtPriceX96) * swapSqrt(BPS - LIQUIDITY_SLIPPAGE);
                sqrtPriceLimitX96 = uint160(adjustedPrice / swapSqrt(BPS));
            } else {
                // when selling token1 (zeroForOne = false)
                // we want to limit the price from going too high, so we invert the slippage
                uint256 adjustedPrice = uint256(currentSqrtPriceX96) * swapSqrt(BPS);
                sqrtPriceLimitX96 = uint160(adjustedPrice / swapSqrt(BPS - LIQUIDITY_SLIPPAGE));
            }
        }

        try POOL.swap(
            address(this), 
            zeroForOne, 
            int256(amount), 
            sqrtPriceLimitX96, 
            abi.encode(tokenIn)
        ) {} catch {
            emit SwapFailed(tokenIn, tokenOut, amount);
            revert("swapFailed");
        }
    }

    // swapUsdcForWeth using the set usdc_weth_pool
    function swapUsdcForWeth(uint256 amount) internal {
        require(amount > 0, "swapZeroAmount");
        require(address(USDC_WETH_POOL) != address(0), "poolNotSet");

        bool zeroForOne = address(USDC) == USDC_WETH_POOL_TOKEN_0;

        // this swap has no slippage protection, we were unable to make it work probably due to decimal difference between both tokens
        // this will likely have minimal impact has the USDC-WETH pool has huge liquidity
        uint160 sqrtPriceLimitX96 = zeroForOne ? MIN_SQRT_RATIO + 1 : MAX_SQRT_RATIO - 1;

        try USDC_WETH_POOL.swap(
            address(this),
            zeroForOne,
            int256(amount),
            sqrtPriceLimitX96,
            abi.encode(address(USDC))
        ) {} catch {
            emit SwapFailed(address(USDC), address(WETH), amount);
            revert("swapFailed");
        }
    }

    // swap callback function
    function uniswapV3SwapCallback(int amount0, int amount1, bytes calldata data) external {
        require(
            (msg.sender == address(POOL) || msg.sender == address(USDC_WETH_POOL)) && tx.origin != address(this), 
            "swapCallbackNotAuthorized"
        );
        
        (address tokenIn) = abi.decode(data, (address));

        IUniswapV3Pool pool = IUniswapV3Pool(msg.sender);
        bool isToken0 = pool.token0() == tokenIn;
        uint256 amountToPay = uint256(isToken0 ? amount0 : amount1);
        ERC20(tokenIn).transfer(msg.sender, amountToPay);
    }

    // helper function to calculate square root for swap functions
    function swapSqrt(uint256 x) internal pure returns (uint256) {
        if (x == 0) return 0;
        
        uint256 z = (x + 1) / 2;
        uint256 y = x;
        
        while (z < y) {
            y = z;
            z = (x / z + z) / 2;
        }
        
        return y;
    }

    // function used to increaseLiquidity to NFT
    // slippage can be enable or disabled in config
    function calculateOptimalIncreaseAmounts(
        uint256 amount0Available,
        uint256 amount1Available
    ) internal view returns (uint256 amount0Desired, uint256 amount1Desired, uint256 amount0Min, uint256 amount1Min) {
        require(amount0Available > 0 && amount1Available > 0, "invalidAmounts");

        // get position details
        (
            ,
            ,
            ,
            ,
            ,
            int24 tickLower,
            int24 tickUpper,
            ,
            ,
            ,
            ,
        ) = POSITION_MANAGER.positions(NFT_ID);

        // get current sqrt price
        (uint160 sqrtPriceX96, , , , , , ) = POOL.slot0();

        uint160 sqrtRatioAX96 = TickMath.getSqrtRatioAtTick(tickLower);
        uint160 sqrtRatioBX96 = TickMath.getSqrtRatioAtTick(tickUpper);

        uint128 liquidity = LiquidityAmounts.getLiquidityForAmounts(
            sqrtPriceX96,
            sqrtRatioAX96,
            sqrtRatioBX96,
            amount0Available,
            amount1Available
        );
        require(liquidity > 0, "insufficientLiquidity");

        (amount0Desired, amount1Desired) = LiquidityAmounts.getAmountsForLiquidity(
            sqrtPriceX96,
            sqrtRatioAX96,
            sqrtRatioBX96,
            liquidity
        );
        require(amount0Desired > 0 || amount1Desired > 0, "invalidDesiredAmounts");

        // calculate minimum amounts accounting for slippage
        amount0Min = (LIQUIDITY_SLIPPAGE >= 50)? (amount0Desired * (BPS - LIQUIDITY_SLIPPAGE)) / BPS: 0;
        amount1Min = (LIQUIDITY_SLIPPAGE >= 50)? (amount1Desired * (BPS - LIQUIDITY_SLIPPAGE)) / BPS: 0;
    }

    // function used to decreaseLiquidity in NFT
    // this will only be called if decrease function wants slippage calculation
    function calculateMinimalDecreaseAmounts(uint128 liquidityToRemove) internal view returns (uint256 amount0Min, uint256 amount1Min) {
        require(liquidityToRemove > 0, "invalidLiquidityAmount");

        // get position details
        (
            ,
            ,
            ,
            ,
            ,
            int24 tickLower,
            int24 tickUpper,
            ,
            ,
            ,
            ,
        ) = POSITION_MANAGER.positions(NFT_ID);

        // get current sqrt price
        (uint160 sqrtPriceX96, , , , , , ) = POOL.slot0();

        // calculate expected amounts from liquidity
        (uint256 amount0Expected, uint256 amount1Expected) = LiquidityAmounts.getAmountsForLiquidity(
            sqrtPriceX96,
            TickMath.getSqrtRatioAtTick(tickLower),
            TickMath.getSqrtRatioAtTick(tickUpper),
            liquidityToRemove
        );

        // calculate minimum amounts accounting for slippage
        amount0Min = (amount0Expected * (BPS - LIQUIDITY_SLIPPAGE)) / BPS;
        amount1Min = (amount1Expected * (BPS - LIQUIDITY_SLIPPAGE)) / BPS;
    }
}