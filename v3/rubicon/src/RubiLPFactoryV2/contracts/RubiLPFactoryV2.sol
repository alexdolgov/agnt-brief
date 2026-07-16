// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IAquilaFactory} from "./interfaces/IAquilaFactory.sol";
import {IAquilaPair} from "./interfaces/IAquilaPair.sol";
import {IAquilaRouter} from "./interfaces/IAquilaRouter.sol";
import {IUniswapV3Factory} from "./interfaces/IUniswapV3Factory.sol";
import {IUniswapV3Pool} from "./interfaces/IUniswapV3Pool.sol";
import {INonfungiblePositionManager} from "./interfaces/INonfungiblePositionManager.sol";
import {ISwapRouter} from "./interfaces/ISwapRouter.sol";
import {IStakingRewardsFactory} from "./interfaces/IStakingRewardsFactory.sol";
import {MintedERC20} from "./helpers/MintedERC20.sol";

// ============ Errors ============
error AdminOnly();
error BadAddress();
error BadEthAmount();
error AlreadyInitialized();
error FarmPercentTooHigh();
error InvalidFarmDuration();

/**
 * @title RubiLPFactoryV2
 * @notice Arena-style token launches: V2 LP + V3 sell wall + optional farming
 * @dev Proxy upgrade from V1 - maintains storage layout, new functionality
 * 
 * Entry Points (replaces V1):
 * - createArenaToken: Create token with V2 LP + V3 sell wall
 * - createArenaTokenAndBuy: Create + atomic buy
 * - createArenaTokenWithFarm: Create + yield farm
 * - createArenaTokenWithFarmAndBuy: Create + farm + buy
 */
contract RubiLPFactoryV2 is ReentrancyGuard {
    
    //==============================================================
    // V1 STORAGE - DO NOT MODIFY ORDER (proxy upgrade compatibility)
    //==============================================================
    
    bool private initialized;
    address private admin;

    IAquilaFactory public aquilaFactory;
    IAquilaRouter public aquilaRouter;
    IERC20 public WETH;

    /// @dev Used internally to represent native ETH
    IERC20 private constant ETH = IERC20(address(420));

    //==============================================================
    // V2 STORAGE - Appended after V1 storage
    //==============================================================
    
    // V3 Integration
    IUniswapV3Factory public v3Factory;
    INonfungiblePositionManager public v3PositionManager;
    ISwapRouter public v3SwapRouter;
    
    // Staking/Farm Integration  
    IStakingRewardsFactory public stakingRewardsFactory;
    
    // RUBI Token - quote token for all pairs
    IERC20 public rubiToken;
    
    // DAO Treasury - receives V3 position NFTs
    address public daoTreasury;
    
    // Arena Launch Parameters (Golden Parameters)
    uint256 public constant MIN_LAUNCH_ETH = 0.001 ether; // ~$3.00
    uint256 public constant V2_BPS = 6;                   // 0.06% Supply
    uint256 public minLaunchEth;                          // Can be overridden by admin
    uint256 public v2LpBps;                               // Basis points (defaults to V2_BPS)
    
    // V3 Sell Wall Config
    int24 public v3TickLower;
    int24 public v3TickUpper;
    uint24 public constant V3_FEE = 10000;                // 1% fee tier
    uint24 public v3FeeTier;                              // Can be overridden
    
    // Farm Constraints
    uint256 public maxFarmBps;
    uint256 public minFarmDuration;
    uint256 public maxFarmDuration;
    
    // V2 initialized flag
    bool private v2Initialized;

    //==============================================================
    // EVENTS
    //==============================================================

    /// @notice Emitted on every token launch (backwards compatible)
    event LPCreated(
        address indexed lpAddress,
        address indexed owner,
        address baseToken,
        address quoteToken,
        string baseSymbol,
        string quoteSymbol,
        string ipfsHash
    );

    /// @notice Arena-specific event with full details
    event ArenaTokenCreated(
        address indexed token,
        address indexed v2Pair,
        uint256 v3TokenId,
        address farm,
        address indexed owner,
        uint256 totalSupply,
        uint256 v2Amount,
        uint256 v3Amount,
        uint256 farmAmount,
        uint256 farmDuration,
        string ipfsHash
    );

    //==============================================================
    // INITIALIZATION
    //==============================================================

    /// @notice V1 initialize (already called on existing proxy)
    function initialize(
        address _aquilaFactory,
        address _aquilaRouter,
        address _weth,
        address _admin
    ) external {
        require(!initialized, AlreadyInitialized());
        aquilaFactory = IAquilaFactory(_aquilaFactory);
        aquilaRouter = IAquilaRouter(_aquilaRouter);
        WETH = IERC20(_weth);
        admin = _admin;
        initialized = true;
    }

    /// @notice V2 initialize (call after proxy upgrade)
    function initializeV2(
        address _v3Factory,
        address _v3PositionManager,
        address _v3SwapRouter,
        address _stakingRewardsFactory,
        address _rubiToken,
        address _daoTreasury
    ) external onlyAdmin {
        require(!v2Initialized, AlreadyInitialized());
        
        v3Factory = IUniswapV3Factory(_v3Factory);
        v3PositionManager = INonfungiblePositionManager(_v3PositionManager);
        v3SwapRouter = ISwapRouter(_v3SwapRouter);
        stakingRewardsFactory = IStakingRewardsFactory(_stakingRewardsFactory);
        rubiToken = IERC20(_rubiToken);
        daoTreasury = _daoTreasury;
        
        // Golden Parameters (from spec)
        minLaunchEth = MIN_LAUNCH_ETH;  // 0.001 ETH (~$3)
        v2LpBps = V2_BPS;                // 6 bps = 0.06%
        v3FeeTier = V3_FEE;              // 10000 = 1%
        // v3TickLower and v3TickUpper set dynamically per token (currentTick to MAX_TICK)
        maxFarmBps = 3000;               // 30%
        minFarmDuration = 14 days;
        maxFarmDuration = 180 days;
        
        v2Initialized = true;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, AdminOnly());
        _;
    }

    //==============================================================
    // ARENA ENTRY POINTS
    //==============================================================

    /**
     * @notice Create Arena token (V2 LP + V3 sell wall, no farm, no buy)
     */
    function createArenaToken(
        string memory name,
        string memory symbol,
        string memory ipfsHash,
        uint256 totalSupply
    ) external payable nonReentrant returns (
        address pair,
        address token,
        uint256 v3TokenId
    ) {
        require(msg.value >= minLaunchEth, BadEthAmount());
        
        uint256 v2Amount = (totalSupply * v2LpBps) / 10000;
        uint256 v3Amount = totalSupply - v2Amount;
        
        token = _createToken(name, symbol, ipfsHash, totalSupply);
        pair = _createV2LP(token, v2Amount, minLaunchEth, ipfsHash);
        
        if (v3Amount > 0) {
            v3TokenId = _createV3SellWall(token, pair, v3Amount);
        }
        
        _refundExcess(minLaunchEth);
        
        emit ArenaTokenCreated(
            token, pair, v3TokenId, address(0), msg.sender,
            totalSupply, v2Amount, v3Amount, 0, 0, ipfsHash
        );
    }

    /**
     * @notice Create Arena token + atomic buy
     */
    function createArenaTokenAndBuy(
        string memory name,
        string memory symbol,
        string memory ipfsHash,
        uint256 totalSupply,
        uint256 ethToBuy
    ) external payable nonReentrant returns (
        address pair,
        address token,
        uint256 v3TokenId
    ) {
        require(msg.value >= minLaunchEth + ethToBuy, BadEthAmount());
        
        uint256 v2Amount = (totalSupply * v2LpBps) / 10000;
        uint256 v3Amount = totalSupply - v2Amount;
        
        token = _createToken(name, symbol, ipfsHash, totalSupply);
        pair = _createV2LP(token, v2Amount, minLaunchEth, ipfsHash);
        
        if (v3Amount > 0) {
            v3TokenId = _createV3SellWall(token, pair, v3Amount);
        }
        
        if (ethToBuy > 0) {
            _buy(token, ethToBuy);
        }
        
        _refundExcess(minLaunchEth + ethToBuy);
        
        emit ArenaTokenCreated(
            token, pair, v3TokenId, address(0), msg.sender,
            totalSupply, v2Amount, v3Amount, 0, 0, ipfsHash
        );
    }

    /**
     * @notice Create Arena token + yield farm
     */
    function createArenaTokenWithFarm(
        string memory name,
        string memory symbol,
        string memory ipfsHash,
        uint256 totalSupply,
        uint256 farmBps,
        uint256 farmDuration
    ) external payable nonReentrant returns (
        address pair,
        address token,
        uint256 v3TokenId,
        address farm
    ) {
        require(msg.value >= minLaunchEth, BadEthAmount());
        require(farmBps <= maxFarmBps, FarmPercentTooHigh());
        require(farmDuration >= minFarmDuration && farmDuration <= maxFarmDuration, InvalidFarmDuration());
        
        uint256 v2Amount = (totalSupply * v2LpBps) / 10000;
        uint256 farmAmount = (totalSupply * farmBps) / 10000;
        uint256 v3Amount = totalSupply - v2Amount - farmAmount;
        
        token = _createToken(name, symbol, ipfsHash, totalSupply);
        pair = _createV2LP(token, v2Amount, minLaunchEth, ipfsHash);
        
        if (v3Amount > 0) {
            v3TokenId = _createV3SellWall(token, pair, v3Amount);
        }
        
        if (farmAmount > 0) {
            farm = _createFarm(token, pair, farmAmount, farmDuration);
        }
        
        _refundExcess(minLaunchEth);
        
        emit ArenaTokenCreated(
            token, pair, v3TokenId, farm, msg.sender,
            totalSupply, v2Amount, v3Amount, farmAmount, farmDuration, ipfsHash
        );
    }

    /**
     * @notice Create Arena token + yield farm + atomic buy
     */
    function createArenaTokenWithFarmAndBuy(
        string memory name,
        string memory symbol,
        string memory ipfsHash,
        uint256 totalSupply,
        uint256 farmBps,
        uint256 farmDuration,
        uint256 ethToBuy
    ) external payable nonReentrant returns (
        address pair,
        address token,
        uint256 v3TokenId,
        address farm
    ) {
        require(msg.value >= minLaunchEth + ethToBuy, BadEthAmount());
        require(farmBps <= maxFarmBps, FarmPercentTooHigh());
        require(farmDuration >= minFarmDuration && farmDuration <= maxFarmDuration, InvalidFarmDuration());
        
        uint256 v2Amount = (totalSupply * v2LpBps) / 10000;
        uint256 farmAmount = (totalSupply * farmBps) / 10000;
        uint256 v3Amount = totalSupply - v2Amount - farmAmount;
        
        token = _createToken(name, symbol, ipfsHash, totalSupply);
        pair = _createV2LP(token, v2Amount, minLaunchEth, ipfsHash);
        
        if (v3Amount > 0) {
            v3TokenId = _createV3SellWall(token, pair, v3Amount);
        }
        
        if (farmAmount > 0) {
            farm = _createFarm(token, pair, farmAmount, farmDuration);
        }
        
        if (ethToBuy > 0) {
            _buy(token, ethToBuy);
        }
        
        _refundExcess(minLaunchEth + ethToBuy);
        
        emit ArenaTokenCreated(
            token, pair, v3TokenId, farm, msg.sender,
            totalSupply, v2Amount, v3Amount, farmAmount, farmDuration, ipfsHash
        );
    }

    //==============================================================
    // INTERNAL
    //==============================================================

    function _createToken(
        string memory name,
        string memory symbol,
        string memory ipfsHash,
        uint256 totalSupply
    ) internal returns (address) {
        // Generate unique salt to prevent predicted address attacks
        // Includes: sender, timestamp, name, symbol for uniqueness
        bytes32 salt = keccak256(abi.encodePacked(msg.sender, block.timestamp, name, symbol));
        
        // Deploy using CREATE2 with salt
        MintedERC20 token = new MintedERC20{salt: salt}(
            name,
            symbol,
            ipfsHash,
            totalSupply,
            address(this)
        );
        
        // Final safety check: ensure V3 pool doesn't exist (prevent griefing)
        address pool = v3Factory.getPool(address(token), address(rubiToken), v3FeeTier);
        require(pool == address(0), "Pool already exists - Retry");
        
        return address(token);
    }

    function _createV2LP(
        address token,
        uint256 tokenAmount,
        uint256 ethAmount,
        string memory ipfsHash
    ) internal returns (address pair) {
        // Step 1: Swap ETH → RUBI
        address[] memory ethToRubiPath = new address[](2);
        ethToRubiPath[0] = address(WETH);
        ethToRubiPath[1] = address(rubiToken);
        
        uint256[] memory rubiAmounts = aquilaRouter.swapExactETHForTokens{value: ethAmount}(
            0, // Accept any amount of RUBI
            ethToRubiPath,
            address(this), // Send RUBI to this contract
            block.timestamp
        );
        uint256 rubiAmount = rubiAmounts[rubiAmounts.length - 1];
        
        // Step 2: Create TOKEN/RUBI pair
        pair = aquilaFactory.createPair(token, address(rubiToken));
        
        // Step 3: Approve and add liquidity
        IERC20(token).approve(address(aquilaRouter), tokenAmount);
        rubiToken.approve(address(aquilaRouter), rubiAmount);
        
        aquilaRouter.addLiquidity(
            token,
            address(rubiToken),
            tokenAmount,
            rubiAmount,
            tokenAmount,
            rubiAmount,
            address(0), // Burn LP tokens
            block.timestamp
        );

        emit LPCreated(
            pair,
            msg.sender,
            token,
            address(rubiToken),
            IERC20Metadata(token).symbol(),
            IERC20Metadata(address(rubiToken)).symbol(),
            ipfsHash
        );
    }

    function _createV3SellWall(
        address token,
        address v2Pair,
        uint256 tokenAmount
    ) internal returns (uint256 tokenId) {
        // Get V2 reserves to calculate initial price
        (uint112 reserve0, uint112 reserve1) = _getV2Reserves(v2Pair);
        bool tokenIsToken0 = token < address(rubiToken);
        uint256 tokenReserve = tokenIsToken0 ? reserve0 : reserve1;
        uint256 rubiReserve = tokenIsToken0 ? reserve1 : reserve0;
        
        // Calculate sqrtPriceX96 with proper sort order handling
        uint160 sqrtPriceX96 = _calculateSqrtPrice(token, tokenReserve, rubiReserve);
        
        // Create TOKEN/RUBI pool (consistent with V2 LP)
        address pool = v3Factory.getPool(token, address(rubiToken), v3FeeTier);
        if (pool == address(0)) {
            pool = v3Factory.createPool(token, address(rubiToken), v3FeeTier);
            IUniswapV3Pool(pool).initialize(sqrtPriceX96);
        }

        IERC20(token).approve(address(v3PositionManager), tokenAmount);

        // Get current tick from pool and align to tick spacing
        int24 currentTick = _getCurrentTick(pool);
        int24 tickSpacing = 200; // For 1% fee tier (10000)
        
        // Align tickLower to nearest valid tick (multiple of spacing)
        int24 tickLower = _alignTick(currentTick, tickSpacing);
        
        // Ensure we don't start below current price (would require RUBI liquidity)
        if (tickLower < currentTick) {
            tickLower += tickSpacing;
        }
        
        // Set upper tick to MAX_TICK (aligned)
        int24 tickUpper = 887200; // MAX_TICK for 1% tier (aligned to spacing)
        if (tickUpper > 887200) {
            tickUpper = _alignTick(887200, tickSpacing);
        }

        INonfungiblePositionManager.MintParams memory params = INonfungiblePositionManager.MintParams({
            token0: tokenIsToken0 ? token : address(rubiToken),
            token1: tokenIsToken0 ? address(rubiToken) : token,
            fee: v3FeeTier,
            tickLower: tickLower,
            tickUpper: tickUpper,
            amount0Desired: tokenIsToken0 ? tokenAmount : 0,
            amount1Desired: tokenIsToken0 ? 0 : tokenAmount,
            amount0Min: 0,
            amount1Min: 0,
            recipient: daoTreasury,
            deadline: block.timestamp
        });

        (tokenId, , , ) = v3PositionManager.mint(params);
    }
    
    /**
     * @notice Calculate sqrtPriceX96 with proper sort order handling
     * @dev In V3, price is always token1/token0, so we must check which token is which
     */
    function _calculateSqrtPrice(
        address token,
        uint256 amountToken,
        uint256 amountRubi
    ) internal view returns (uint160) {
        bool tokenIsToken0 = token < address(rubiToken);
        
        if (tokenIsToken0) {
            // token0 = token, token1 = rubi
            // price = token1/token0 = rubi/token
            // sqrtPriceX96 = sqrt(rubi/token) * 2^96
            return _getSqrtRatioAtTick(amountRubi, amountToken);
        } else {
            // token0 = rubi, token1 = token
            // price = token1/token0 = token/rubi
            // sqrtPriceX96 = sqrt(token/rubi) * 2^96
            return _getSqrtRatioAtTick(amountToken, amountRubi);
        }
    }
    
    /**
     * @notice Calculate sqrt(amount1/amount0) * 2^96
     * @dev Uses _mulDiv to handle 512-bit intermediate overflow safely
     */
    function _getSqrtRatioAtTick(uint256 amount1, uint256 amount0) internal pure returns (uint160) {
        require(amount0 > 0, "Divide by zero");
        
        // _mulDiv handles the 512-bit intermediate overflow safely
        // sqrt(amount1/amount0) * 2^96 = sqrt((amount1 * 2^192) / amount0)
        uint256 ratioX192 = _mulDiv(amount1, 1 << 192, amount0);
        
        // sqrt(ratioX192) results in a value scaled by 2^96
        return uint160(_sqrt(ratioX192));
    }
    
    /**
     * @notice Align tick to nearest multiple of spacing (round down for safety)
     * @dev For 1% fee tier, spacing is 200
     */
    function _alignTick(int24 tick, int24 spacing) internal pure returns (int24) {
        int24 compressed = tick / spacing;
        
        // Round towards negative infinity for negative ticks
        if (tick < 0 && tick % spacing != 0) {
            compressed--;
        }
        
        return compressed * spacing;
    }
    
    function _getV2Reserves(address pair) internal view returns (uint112 reserve0, uint112 reserve1) {
        // Use IAquilaPair interface to get reserves
        (reserve0, reserve1, ) = IAquilaPair(pair).getReserves();
    }
    
    /**
     * @notice Multiplies two numbers and divides by a third, handling 512-bit intermediate overflow
     * @dev Equivalent to FullMath.mulDiv - uses assembly for 512-bit math
     * @param a First multiplicand
     * @param b Second multiplicand  
     * @param denominator Divisor
     * @return result The result of (a * b) / denominator
     */
    function _mulDiv(uint256 a, uint256 b, uint256 denominator) internal pure returns (uint256 result) {
        // 512-bit multiply [prod1 prod0] = a * b
        // Compute the product mod 2**256 and mod 2**256 - 1
        // then use the Chinese Remainder Theorem to reconstruct
        // the 512 bit result. The result is stored in two 256
        // variables such that product = prod1 * 2**256 + prod0
        uint256 prod0; // Least significant 256 bits of the product
        uint256 prod1; // Most significant 256 bits of the product
        assembly {
            let mm := mulmod(a, b, not(0))
            prod0 := mul(a, b)
            prod1 := sub(sub(mm, prod0), lt(mm, prod0))
        }

        // Handle non-overflow cases, 256 by 256 division
        if (prod1 == 0) {
            require(denominator > 0);
            assembly {
                result := div(prod0, denominator)
            }
            return result;
        }

        // Make sure the result is less than 2**256.
        // Also prevents denominator == 0
        require(denominator > prod1);

        ///////////////////////////////////////////////
        // 512 by 256 division.
        ///////////////////////////////////////////////

        // Make division exact by subtracting the remainder from [prod1 prod0]
        // Compute remainder using mulmod
        uint256 remainder;
        assembly {
            remainder := mulmod(a, b, denominator)
        }
        // Subtract 256 bit number from 512 bit number
        assembly {
            prod1 := sub(prod1, gt(remainder, prod0))
            prod0 := sub(prod0, remainder)
        }

        // Factor powers of two out of denominator
        // Compute largest power of two divisor of denominator.
        // Always >= 1.
        // In Solidity 0.8+, use two's complement: ~denominator + 1 is equivalent to -denominator
        uint256 twos;
        unchecked {
            twos = (~denominator + 1) & denominator;
        }
        // Divide denominator by power of two
        assembly {
            denominator := div(denominator, twos)
        }

        // Divide [prod1 prod0] by the factors of two
        assembly {
            prod0 := div(prod0, twos)
        }
        // Shift in bits from prod1 into prod0. For this we need
        // to flip `twos` such that it is 2**256 / twos.
        // If twos is zero, then it becomes one
        assembly {
            twos := add(div(sub(0, twos), twos), 1)
        }
        prod0 |= prod1 * twos;

        // Invert denominator mod 2**256
        // Now that denominator is an odd number, it has an inverse
        // modulo 2**256 such that denominator * inv = 1 mod 2**256.
        // Compute the inverse by starting with a seed that is correct
        // correct for four bits. That is, denominator * inv = 1 mod 2**4
        uint256 inv = (3 * denominator) ^ 2;
        // Now use Newton-Raphson iteration to improve the precision.
        // Thanks to Hensel's lifting lemma, this also works in modular
        // arithmetic, doubling the correct bits in each step.
        inv *= 2 - denominator * inv; // inverse mod 2**8
        inv *= 2 - denominator * inv; // inverse mod 2**16
        inv *= 2 - denominator * inv; // inverse mod 2**32
        inv *= 2 - denominator * inv; // inverse mod 2**64
        inv *= 2 - denominator * inv; // inverse mod 2**128
        inv *= 2 - denominator * inv; // inverse mod 2**256

        // Because the division is now exact we can divide by multiplying
        // with the modular inverse of denominator. This will give us the
        // correct result modulo 2**256. Since the precoditions guarantee
        // that the outcome is less than 2**256, this is the final result.
        // We don't need to compute the high bits of the result and prod1
        // is no longer required.
        result = prod0 * inv;
        return result;
    }
    
    function _sqrt(uint256 x) internal pure returns (uint256) {
        if (x == 0) return 0;
        uint256 z = (x + 1) / 2;
        uint256 y = x;
        while (z < y) {
            y = z;
            z = (x / z + z) / 2;
        }
        return y;
    }
    
    function _getCurrentTick(address pool) internal view returns (int24) {
        // Try to get current tick from pool, fallback to 0
        try IUniswapV3Pool(pool).slot0() returns (
            uint160 sqrtPriceX96,
            int24 tick,
            uint16 observationIndex,
            uint16 observationCardinality,
            uint16 observationCardinalityNext,
            uint8 feeProtocol,
            bool unlocked
        ) {
            return tick;
        } catch {
            return 0;
        }
    }

    function _createFarm(
        address token,
        address lpToken,
        uint256 rewardAmount,
        uint256 duration
    ) internal returns (address) {
        IERC20(token).transfer(address(stakingRewardsFactory), rewardAmount);
        
        address[] memory rewardTokens = new address[](1);
        rewardTokens[0] = token;
        
        uint256[] memory rewards = new uint256[](1);
        rewards[0] = rewardAmount;
        
        uint256[] memory durations = new uint256[](1);
        durations[0] = duration;

        stakingRewardsFactory.spawnStakingRewards(
            lpToken,
            rewardTokens,
            rewards,
            durations,
            daoTreasury
        );

        return address(0); // Farm address via ItsAlive event
    }

    function _buy(address token, uint256 ethAmount) internal {
        // Step 1: Swap ETH → RUBI (via V2)
        address[] memory ethToRubiPath = new address[](2);
        ethToRubiPath[0] = address(WETH);
        ethToRubiPath[1] = address(rubiToken);
        
        uint256[] memory rubiAmounts = aquilaRouter.swapExactETHForTokens{value: ethAmount}(
            0,
            ethToRubiPath,
            address(this), // Send RUBI to this contract
            block.timestamp
        );
        uint256 rubiAmount = rubiAmounts[rubiAmounts.length - 1];
        
        // Step 2: Swap RUBI → TOKEN via V3 (zero slippage, perfect execution)
        // V3 pool has tokens from _createV3SellWall, swaps execute against the position
        rubiToken.approve(address(v3SwapRouter), rubiAmount);
        
        ISwapRouter.ExactInputSingleParams memory params = ISwapRouter.ExactInputSingleParams({
            tokenIn: address(rubiToken),
            tokenOut: token,
            fee: v3FeeTier,
            recipient: msg.sender,
            deadline: block.timestamp,
            amountIn: rubiAmount,
            amountOutMinimum: 0, // Accept any amount (creator buy)
            sqrtPriceLimitX96: 0 // No price limit
        });
        
        v3SwapRouter.exactInputSingle(params);
    }

    function _refundExcess(uint256 used) internal {
        uint256 excess = msg.value - used;
        if (excess > 0) {
            (bool success, ) = msg.sender.call{value: excess}("");
            require(success, "Refund failed");
        }
    }

    //==============================================================
    // ADMIN
    //==============================================================

    function setMinLaunchEth(uint256 val) external onlyAdmin { minLaunchEth = val; }
    function setV2LpBps(uint256 val) external onlyAdmin { require(val <= 10000); v2LpBps = val; }
    function setV3TickRange(int24 lower, int24 upper) external onlyAdmin { v3TickLower = lower; v3TickUpper = upper; }
    function setV3FeeTier(uint24 val) external onlyAdmin { v3FeeTier = val; }
    function setMaxFarmBps(uint256 val) external onlyAdmin { require(val <= 10000); maxFarmBps = val; }
    function setFarmDurationBounds(uint256 min, uint256 max) external onlyAdmin { minFarmDuration = min; maxFarmDuration = max; }
    function setDaoTreasury(address val) external onlyAdmin { require(val != address(0)); daoTreasury = val; }
    function setV3Factory(address val) external onlyAdmin { v3Factory = IUniswapV3Factory(val); }
    function setV3PositionManager(address val) external onlyAdmin { v3PositionManager = INonfungiblePositionManager(val); }
    function setStakingRewardsFactory(address val) external onlyAdmin { stakingRewardsFactory = IStakingRewardsFactory(val); }
    function setRubiToken(address val) external onlyAdmin { require(val != address(0)); rubiToken = IERC20(val); }
    function setAquilaFactory(address val) external onlyAdmin { aquilaFactory = IAquilaFactory(val); }
    function setAquilaRouter(address val) external onlyAdmin { aquilaRouter = IAquilaRouter(val); }
    function changeAdmin(address val) external onlyAdmin { require(val != address(0)); admin = val; }
}
