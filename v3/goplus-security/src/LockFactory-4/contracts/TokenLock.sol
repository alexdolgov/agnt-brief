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

import "hardhat/console.sol";

contract TokenLock is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;
    
    error InvalidAddress();
    error NotUnlocked();
    error InsufficientBalance();
    error InvalidPoolPath();

    uint256 public constant BASIS_POINTS = 10000; // 100%

    IERC20 public immutable token;
    IUniswapV3Pool[] public pools; // Array of pools for multi-hop price calculation
    address public operator;
    uint256 public immutable unlockTime;
    uint256 public immutable unlockPriceMultiplier;
    uint256 public immutable initialPrice;

    ILockFactory public immutable lockFactory;

    uint256 public immutable withdrawFee;

    struct PoolInfo {
        IUniswapV3Pool pool;
        address token0;
        address token1;
        uint8 decimals0;
        uint8 decimals1;
    }

    mapping(address => PoolInfo) public poolInfos;

    event Withdraw(address indexed user, uint256 amount, uint256 feeAmount);

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

        // Validate pool path and store pools
        address currentToken = _token;
        for (uint256 i = 0; i < _pools.length; i++) {
            IUniswapV3Pool currentPool = IUniswapV3Pool(_pools[i]);
            pools.push(currentPool);

            address poolToken0 = currentPool.token0();
            address poolToken1 = currentPool.token1();

            // Verify current token is in the pool
            if (currentToken == poolToken0) {
                currentToken = poolToken1; // Next token in path
            } else if (currentToken == poolToken1) {
                currentToken = poolToken0; // Next token in path
            } else {
                revert InvalidPoolPath(); // Token not in pool
            }
            poolInfos[address(currentPool)] = PoolInfo({
                pool: currentPool,
                token0: poolToken0,
                token1: poolToken1,
                decimals0: IERC20Metadata(poolToken0).decimals(),
                decimals1: IERC20Metadata(poolToken1).decimals()
            });

            (,,,, uint16 observationCardinalityNext,,) = currentPool.slot0();
            if(observationCardinalityNext < lockFactory.twapInterval()) {
                currentPool.increaseObservationCardinalityNext(lockFactory.twapInterval());
            }
        }

        initialPrice = getCurrentPrice();
    }


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
     * @notice Get the price of the locked token through multi-hop pools
     * @return price Final price with 1e18 precision (e.g., token price in USDT)
     */
    function getCurrentPrice() public view returns (uint256) {
        uint256 price = 1e18; // Start with 1.0 (1e18 precision)
        address currentToken = address(token);

        // Iterate through each pool in the path
        for (uint256 i = 0; i < pools.length; i++) {
            IUniswapV3Pool currentPool = pools[i];

            // Determine if current token is token0 or token1
            bool isToken0InThisPool = _isToken0InPool(address(currentPool), currentToken);
            // Get TWAP price for this pool
            uint256 poolPrice = getPoolPrice(address(currentPool), isToken0InThisPool);
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
     * @return price token1/token0 price with 1e18 precision
     */
    function getPoolPrice(address poolAddress, bool isToken0InThisPool) internal view returns (uint256) {
        PoolInfo memory info = poolInfos[poolAddress];
        uint16 twapInterval = lockFactory.twapInterval();
        uint32[] memory secondsAgos = new uint32[](2);
        secondsAgos[0] = twapInterval;
        secondsAgos[1] = 0;

        (int56[] memory tickCumulatives, ) = IUniswapV3Pool(poolAddress).observe(secondsAgos);
        int56 tickCumulativeDelta = tickCumulatives[1] - tickCumulatives[0];
        int24 arithmeticMeanTick = int24(tickCumulativeDelta / int56(uint56(twapInterval)));

        // Always round to negative infinity
        if (
            tickCumulativeDelta < 0 &&
            (tickCumulativeDelta % int56(int16(twapInterval)) != 0)
        ) arithmeticMeanTick--;

        uint160 sqrtPriceX96 = TickMath.getSqrtRatioAtTick(arithmeticMeanTick);
        uint256 numerator = FullMath.mulDiv(
            uint256(sqrtPriceX96),
            uint256(sqrtPriceX96),
            1
        );
        uint256 denominator = (1 << 96) * (1 << 96);
        uint256 ratio = FullMath.mulDiv(numerator, 1e18, denominator);
        if (!isToken0InThisPool) {
            ratio = FullMath.mulDiv(1e36, 1, ratio);
            if (info.decimals1 >= info.decimals0) {
                ratio = FullMath.mulDiv(ratio, 10 ** (info.decimals1 - info.decimals0), 1);
            } else {
                ratio = FullMath.mulDiv(ratio, 1, 10 ** (info.decimals0 - info.decimals1));
            }
        } else {
            if (info.decimals1 >= info.decimals0) {
                ratio = FullMath.mulDiv(ratio, 1, 10 ** (info.decimals1 - info.decimals0));
            } else {
                ratio = FullMath.mulDiv(ratio, 10 ** (info.decimals0 - info.decimals1), 1);
            }
        }



        return ratio;
    }

    function isUnlocked() public view returns (bool) {
        if (block.timestamp >= unlockTime) {
            return true;
        }
        uint256 currentPrice = getCurrentPrice();
        if (currentPrice >= (initialPrice * unlockPriceMultiplier) / BASIS_POINTS) {
            return true;
        }
        return false;
    }

    function withdraw() external nonReentrant {
        if (msg.sender != owner() && msg.sender != operator) revert InvalidAddress();
        if (!isUnlocked()) revert NotUnlocked();

        uint256 balance = token.balanceOf(address(this));
        if (balance == 0) revert InsufficientBalance();

        uint256 feeAmount = (balance * withdrawFee) / BASIS_POINTS;
        uint256 amountAfterFee = balance - feeAmount;

        if (feeAmount > 0) {
            token.safeTransfer(lockFactory.feeCollector(), feeAmount);
        }
        token.safeTransfer(owner(), amountAfterFee);
        emit Withdraw(msg.sender, amountAfterFee, feeAmount);
    }
}