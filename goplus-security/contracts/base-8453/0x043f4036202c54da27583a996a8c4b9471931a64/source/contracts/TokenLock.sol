// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "./interfaces/IUniswapV3Pool.sol";
import "./interfaces/ILockFactory.sol";
import "./libraries/TickMath.sol";
import "./libraries/FullMath.sol";
import "./Slot0Reader.sol";

/**
 * @title TokenLock
 * @notice A token locking contract with dual unlock conditions: time-based and price-based
 * @dev Uses Uniswap V3 TWAP for price calculations to prevent manipulation
 * @dev Supports multi-hop price paths through multiple pools
 * @dev Created by LockFactory and managed with withdrawal fees
 */
contract TokenLock is Ownable, ReentrancyGuard, Slot0Reader {
    using SafeERC20 for IERC20;
    
    // Custom errors for gas-efficient error handling
    error InvalidAddress();        // Thrown when zero address or unauthorized access
    error NotUnlocked();          // Thrown when attempting to withdraw before unlock conditions are met
    error InsufficientBalance();  // Thrown when contract has no tokens to withdraw
    error InvalidPoolPath();      // Thrown when pool path validation fails

    /// @notice Basis points constant for percentage calculations (100% = 10000)
    uint256 public constant BASIS_POINTS = 10000;

    /// @notice The ERC20 token being locked
    IERC20 public immutable token;
    
    /// @notice Array of Uniswap V3 pools for multi-hop price calculation
    IUniswapV3Pool[] public pools;
    
    /// @notice Address authorized to withdraw tokens (in addition to owner)
    address public operator;
    
    /// @notice Timestamp when time-based unlock becomes available
    uint256 public immutable unlockTime;
    
    /// @notice Price multiplier for price-based unlock (in basis points)
    uint256 public immutable unlockPriceMultiplier;
    
    /// @notice Initial price recorded at lock creation (1e18 precision)
    uint256 public immutable initialPrice;

    /// @notice Reference to the LockFactory that created this lock
    ILockFactory public immutable lockFactory;

    /// @notice Withdrawal fee percentage (in basis points)
    uint256 public immutable withdrawFee;

    /**
     * @dev Struct to store pool information for price calculations
     * @param pool The Uniswap V3 pool interface
     * @param token0 First token in the pool pair
     * @param token1 Second token in the pool pair
     * @param decimals0 Decimals of token0
     * @param decimals1 Decimals of token1
     */
    struct PoolInfo {
        IUniswapV3Pool pool;
        address token0;
        address token1;
        uint8 decimals0;
        uint8 decimals1;
    }

    /// @notice Mapping from pool address to pool information
    mapping(address => PoolInfo) public poolInfos;

    /// @notice Emitted when tokens are withdrawn
    /// @param user Address that initiated the withdrawal
    /// @param amount Amount of tokens withdrawn (after fees)
    /// @param feeAmount Amount of tokens collected as fees
    event Withdraw(address indexed user, uint256 amount, uint256 feeAmount);

    /**
     * @notice Constructor to initialize the TokenLock contract
     * @param _token Address of the ERC20 token to lock
     * @param _pools Array of Uniswap V3 pool addresses for price path
     * @param _operator Address authorized to withdraw (besides owner)
     * @param _unlockTime Timestamp for time-based unlock
     * @param _unlockPriceMultiplier Price multiplier for price-based unlock (basis points)
     * @param _owner Owner of the locked tokens
     * @param _LockFactory Address of the LockFactory contract
     * @param _withdrawFee Withdrawal fee percentage (basis points)
     */
    constructor(
        address _token,
        address[] memory _pools,
        address _operator,
        uint256 _unlockTime,
        uint256 _unlockPriceMultiplier,
        address _owner,
        address _LockFactory,
        uint256 _withdrawFee
    ) Ownable(_owner) {
        if (_pools.length == 0) revert InvalidPoolPath();

        token = IERC20(_token);
        operator = _operator;
        unlockTime = _unlockTime;
        unlockPriceMultiplier = _unlockPriceMultiplier;
        lockFactory = ILockFactory(_LockFactory);
        withdrawFee = _withdrawFee;

        // Validate pool path and store pool information
        address currentToken = _token;
        for (uint256 i = 0; i < _pools.length; i++) {
            IUniswapV3Pool currentPool = IUniswapV3Pool(_pools[i]);
            pools.push(currentPool);

            address poolToken0 = currentPool.token0();
            address poolToken1 = currentPool.token1();

            // Verify current token is in the pool and determine next token in path
            if (currentToken == poolToken0) {
                currentToken = poolToken1; // Next token in path
            } else if (currentToken == poolToken1) {
                currentToken = poolToken0; // Next token in path
            } else {
                revert InvalidPoolPath(); // Token not in pool
            }
            
            // Store pool information for price calculations
            poolInfos[address(currentPool)] = PoolInfo({
                pool: currentPool,
                token0: poolToken0,
                token1: poolToken1,
                decimals0: IERC20Metadata(poolToken0).decimals(),
                decimals1: IERC20Metadata(poolToken1).decimals()
            });

            // Ensure sufficient observation cardinality for TWAP
            uint16 observationCardinalityNext = readObservationCardinalityNext(address(currentPool));
            uint16 twapInterval = lockFactory.getTwapIntervals(address(currentPool));
            if(observationCardinalityNext < twapInterval) {
                currentPool.increaseObservationCardinalityNext(twapInterval);
            }
        }

        // Record initial price at lock creation
        initialPrice = getCurrentPrice();
    }

    /**
     * @notice Set a new operator address for the token lock
     * @param _operator New operator address that will be authorized to withdraw tokens
     * @dev Only the contract owner can call this function
     * @dev The operator (along with the owner) is authorized to withdraw locked tokens
     * @dev Reverts if the new operator address is the zero address
     */
    function setOperator(address _operator) external onlyOwner {
        if (_operator == address(0)) revert InvalidAddress();
        operator = _operator;
    }

    /**
     * @notice Internal function to check if a token is token0 in a specific pool
     * @param poolAddress Address of the Uniswap V3 pool
     * @param tokenAddress Address of the token to check
     * @return true if token is token0, false if token is token1
     * @dev Reverts if token is not in the pool
     */
    function _isToken0InPool(address poolAddress, address tokenAddress) internal view returns (bool) {
        PoolInfo memory info = poolInfos[poolAddress];
        if (info.token0 == tokenAddress) {
            return true;
        } else if (info.token1 == tokenAddress) {
            return false;
        } else {
            revert InvalidPoolPath();
        }
    }

    /**
     * @notice Get the current price of the locked token through multi-hop pools
     * @return price Final price with 1e18 precision calculated via TWAP
     * @dev Iterates through all pools in the path to calculate final price
     * @dev Uses TWAP to prevent price manipulation attacks
     */
    function getCurrentPrice() public view returns (uint256) {
        uint256 price = 1e18; // Start with 1.0 (1e18 precision)
        address currentToken = address(token);

        // Iterate through each pool in the multi-hop path
        for (uint256 i = 0; i < pools.length; i++) {
            IUniswapV3Pool currentPool = pools[i];

            // Determine if current token is token0 or token1 in this pool
            bool isToken0InThisPool = _isToken0InPool(address(currentPool), currentToken);
            
            // Get TWAP price for this pool
            uint256 poolPrice = getPoolPrice(address(currentPool), isToken0InThisPool);
            
            // Multiply cumulative price by this pool's price
            price = (price * poolPrice) / 1e18;

            // Update currentToken for next iteration in multi-hop path
            PoolInfo memory info = poolInfos[address(currentPool)];
            if (currentToken == info.token0) {
                currentToken = info.token1; // Next token in path
            } else {
                currentToken = info.token0; // Next token in path
            }
        }

        return price;
    }


    /**
     * @notice Get TWAP price for a single pool
     * @param poolAddress Address of the Uniswap V3 pool
     * @param isToken0InThisPool Whether the current token is token0 in this pool
     * @return price Calculated price with 1e18 precision, adjusted for decimals
     * @dev Uses Uniswap V3's observe function to get TWAP data
     * @dev Handles decimal differences between token pairs
     */
    function getPoolPrice(address poolAddress, bool isToken0InThisPool) internal view returns (uint256) {
        PoolInfo memory info = poolInfos[poolAddress];
        uint16 twapInterval = lockFactory.getTwapIntervals(poolAddress);
        
        // Set up time points for TWAP calculation
        uint32[] memory secondsAgos = new uint32[](2);
        secondsAgos[0] = twapInterval; // Past time point
        secondsAgos[1] = 0;            // Current time point

        // Get tick cumulative data from Uniswap V3 pool
        (int56[] memory tickCumulatives, ) = IUniswapV3Pool(poolAddress).observe(secondsAgos);
        int56 tickCumulativeDelta = tickCumulatives[1] - tickCumulatives[0];
        
        // Calculate arithmetic mean tick over the TWAP interval
        int24 arithmeticMeanTick = int24(tickCumulativeDelta / int56(uint56(twapInterval)));

        // Always round to negative infinity for consistent pricing
        if (
            tickCumulativeDelta < 0 &&
            (tickCumulativeDelta % int56(int16(twapInterval)) != 0)
        ) arithmeticMeanTick--;

        // Convert tick to sqrt price ratio
        uint160 sqrtPriceX96 = TickMath.getSqrtRatioAtTick(arithmeticMeanTick);
        
        // Calculate price ratio from sqrt price (sqrtPrice^2 = price)
        // Use different computation strategies based on sqrtPriceX96 size to avoid overflow
        uint256 ratio;
        if (sqrtPriceX96 <= type(uint128).max) {
            // High precision calculation when sqrtPriceX96 <= 2^128
            uint256 numerator = FullMath.mulDiv(
                uint256(sqrtPriceX96),
                uint256(sqrtPriceX96),
                1
            );
            uint256 denominator = (1 << 96) * (1 << 96);
            ratio = FullMath.mulDiv(numerator, 1e18, denominator);
        } else {
            // Precision-truncated calculation when sqrtPriceX96 > 2^128 to avoid overflow
            uint256 ratioX128 = FullMath.mulDiv(sqrtPriceX96, sqrtPriceX96, 1 << 64);
            ratio = FullMath.mulDiv(ratioX128, 1e18, 1 << 128);
        }
        
        // Adjust price based on token position and decimal differences
        if (!isToken0InThisPool) {
            // If querying token is token1, invert the ratio (token1/token0 -> token0/token1)
            ratio = FullMath.mulDiv(1e36, 1, ratio);
            
            // Adjust for decimal differences (token1 decimals vs token0 decimals)
            if (info.decimals1 >= info.decimals0) {
                ratio = FullMath.mulDiv(ratio, 10 ** (info.decimals1 - info.decimals0), 1);
            } else {
                ratio = FullMath.mulDiv(ratio, 1, 10 ** (info.decimals0 - info.decimals1));
            }
        } else {
            // If querying token is token0, adjust for decimal differences
            if (info.decimals1 >= info.decimals0) {
                ratio = FullMath.mulDiv(ratio, 1, 10 ** (info.decimals1 - info.decimals0));
            } else {
                ratio = FullMath.mulDiv(ratio, 10 ** (info.decimals0 - info.decimals1), 1);
            }
        }
        return ratio;
    }

    /**
     * @notice Check if the token lock can be unlocked
     * @return true if either time-based or price-based unlock condition is met
     * @dev Time unlock: current time >= unlockTime
     * @dev Price unlock: current price >= initialPrice * unlockPriceMultiplier / BASIS_POINTS
     */
    function isUnlocked() public view returns (bool) {
        // Check time-based unlock condition
        if (block.timestamp >= unlockTime) {
            return true;
        }
        
        // Check price-based unlock condition
        uint256 currentPrice = getCurrentPrice();
        if (currentPrice >= (initialPrice * unlockPriceMultiplier) / BASIS_POINTS) {
            return true;
        }
        
        return false;
    }

    /**
     * @notice Withdraw locked tokens if unlock conditions are met
     * @dev Only owner or operator can call this function
     * @dev Requires either time or price unlock condition to be satisfied
     * @dev Deducts withdrawal fee and sends remainder to owner
     */
    function withdraw() external nonReentrant {
        // Check authorization: only owner or operator can withdraw
        if (msg.sender != owner() && msg.sender != operator) revert InvalidAddress();
        
        // Check unlock conditions
        if (!isUnlocked()) revert NotUnlocked();

        // Get current token balance
        uint256 balance = token.balanceOf(address(this));
        if (balance == 0) revert InsufficientBalance();

        // Calculate withdrawal fee and net amount
        uint256 feeAmount = (balance * withdrawFee) / BASIS_POINTS;
        uint256 amountAfterFee = balance - feeAmount;

        // Transfer fee to fee collector if applicable
        if (feeAmount > 0) {
            token.safeTransfer(lockFactory.feeCollector(), feeAmount);
        }
        
        // Transfer remaining tokens to owner
        token.safeTransfer(owner(), amountAfterFee);
        
        emit Withdraw(msg.sender, amountAfterFee, feeAmount);
    }
}