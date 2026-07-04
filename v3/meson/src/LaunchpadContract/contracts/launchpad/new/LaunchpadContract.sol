// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.7.6;
pragma abicoder v2;
interface IERC20 {
    function totalSupply() external view returns (uint256);

    function transfer(address recipient, uint amount) external returns (bool);

    function decimals() external view returns (uint8);

    function symbol() external view returns (string memory);

    function balanceOf(address) external view returns (uint);

    function transferFrom(
        address sender,
        address recipient,
        uint amount
    ) external returns (bool);

    function allowance(
        address owner,
        address spender
    ) external view returns (uint);

    function approve(address spender, uint value) external returns (bool);

    event Transfer(address indexed from, address indexed to, uint value);
    event Approval(address indexed owner, address indexed spender, uint value);
}

library SafeMath {
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");

        return c;
    }

    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return sub(a, b, "SafeMath: subtraction overflow");
    }

    function sub(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        require(b <= a, errorMessage);
        uint256 c = a - b;

        return c;
    }

    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");

        return c;
    }

    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        return div(a, b, "SafeMath: division by zero");
    }

    function div(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        uint256 c = a / b;
        // assert(a == b * c + a % b); // There is no case in which this doesn't hold

        return c;
    }
}

library FullMath {
    /// @notice Calculates floor(a×b÷denominator) with full precision. Throws if result overflows a uint256 or denominator == 0
    /// @param a The multiplicand
    /// @param b The multiplier
    /// @param denominator The divisor
    /// @return result The 256-bit result
    /// @dev Credit to Remco Bloemen under MIT license https://xn--2-umb.com/21/muldiv
    function mulDiv(
        uint256 a,
        uint256 b,
        uint256 denominator
    ) internal pure returns (uint256 result) {
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
            require(denominator > 0, "d=0");
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
        uint256 twos = -denominator & denominator;
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

    /// @notice Calculates ceil(a×b÷denominator) with full precision. Throws if result overflows a uint256 or denominator == 0
    /// @param a The multiplicand
    /// @param b The multiplier
    /// @param denominator The divisor
    /// @return result The 256-bit result
    function mulDivRoundingUp(
        uint256 a,
        uint256 b,
        uint256 denominator
    ) internal pure returns (uint256 result) {
        result = mulDiv(a, b, denominator);
        if (mulmod(a, b, denominator) > 0) {
            require(result < type(uint256).max);
            result++;
        }
    }
}

library TickMath {
    /// @dev The minimum tick that may be passed to #getSqrtRatioAtTick computed from log base 1.0001 of 2**-128
    int24 internal constant MIN_TICK = -887272;
    /// @dev The maximum tick that may be passed to #getSqrtRatioAtTick computed from log base 1.0001 of 2**128
    int24 internal constant MAX_TICK = -MIN_TICK;

    /// @dev The minimum value that can be returned from #getSqrtRatioAtTick. Equivalent to getSqrtRatioAtTick(MIN_TICK)
    uint160 internal constant MIN_SQRT_RATIO = 4295128739;
    /// @dev The maximum value that can be returned from #getSqrtRatioAtTick. Equivalent to getSqrtRatioAtTick(MAX_TICK)
    uint160 internal constant MAX_SQRT_RATIO =
        1461446703485210103287273052203988822378723970342;

    /// @dev Common checks for valid tick inputs.
    function checkTicks(int24 tickLower, int24 tickUpper) internal pure {
        require(tickLower < tickUpper, "TLU");
        require(tickLower >= MIN_TICK, "TL");
        require(tickUpper <= MAX_TICK, "TU");
        require(tickUpper % 600 == 0 && tickLower % 600 == 0, "T6");
    }

    /// @notice Calculates sqrt(1.0001^tick) * 2^96
    /// @dev Throws if |tick| > max tick
    /// @param tick The input tick for the above formula
    /// @return sqrtPriceX96 A Fixed point Q64.96 number representing the sqrt of the ratio of the two assets (token1/token0)
    /// at the given tick
    function getSqrtRatioAtTick(
        int24 tick
    ) internal pure returns (uint160 sqrtPriceX96) {
        uint256 absTick = tick < 0
            ? uint256(-int256(tick))
            : uint256(int256(tick));
        require(absTick <= uint256(MAX_TICK), "T");

        uint256 ratio = absTick & 0x1 != 0
            ? 0xfffcb933bd6fad37aa2d162d1a594001
            : 0x100000000000000000000000000000000;
        if (absTick & 0x2 != 0)
            ratio = (ratio * 0xfff97272373d413259a46990580e213a) >> 128;
        if (absTick & 0x4 != 0)
            ratio = (ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc) >> 128;
        if (absTick & 0x8 != 0)
            ratio = (ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0) >> 128;
        if (absTick & 0x10 != 0)
            ratio = (ratio * 0xffcb9843d60f6159c9db58835c926644) >> 128;
        if (absTick & 0x20 != 0)
            ratio = (ratio * 0xff973b41fa98c081472e6896dfb254c0) >> 128;
        if (absTick & 0x40 != 0)
            ratio = (ratio * 0xff2ea16466c96a3843ec78b326b52861) >> 128;
        if (absTick & 0x80 != 0)
            ratio = (ratio * 0xfe5dee046a99a2a811c461f1969c3053) >> 128;
        if (absTick & 0x100 != 0)
            ratio = (ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4) >> 128;
        if (absTick & 0x200 != 0)
            ratio = (ratio * 0xf987a7253ac413176f2b074cf7815e54) >> 128;
        if (absTick & 0x400 != 0)
            ratio = (ratio * 0xf3392b0822b70005940c7a398e4b70f3) >> 128;
        if (absTick & 0x800 != 0)
            ratio = (ratio * 0xe7159475a2c29b7443b29c7fa6e889d9) >> 128;
        if (absTick & 0x1000 != 0)
            ratio = (ratio * 0xd097f3bdfd2022b8845ad8f792aa5825) >> 128;
        if (absTick & 0x2000 != 0)
            ratio = (ratio * 0xa9f746462d870fdf8a65dc1f90e061e5) >> 128;
        if (absTick & 0x4000 != 0)
            ratio = (ratio * 0x70d869a156d2a1b890bb3df62baf32f7) >> 128;
        if (absTick & 0x8000 != 0)
            ratio = (ratio * 0x31be135f97d08fd981231505542fcfa6) >> 128;
        if (absTick & 0x10000 != 0)
            ratio = (ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9) >> 128;
        if (absTick & 0x20000 != 0)
            ratio = (ratio * 0x5d6af8dedb81196699c329225ee604) >> 128;
        if (absTick & 0x40000 != 0)
            ratio = (ratio * 0x2216e584f5fa1ea926041bedfe98) >> 128;
        if (absTick & 0x80000 != 0)
            ratio = (ratio * 0x48a170391f7dc42444e8fa2) >> 128;

        if (tick > 0) ratio = type(uint256).max / ratio;

        // this divides by 1<<32 rounding up to go from a Q128.128 to a Q128.96.
        // we then downcast because we know the result always fits within 160 bits due to our tick input constraint
        // we round up in the division so getTickAtSqrtRatio of the output price is always consistent
        sqrtPriceX96 = uint160(
            (ratio >> 32) + (ratio % (1 << 32) == 0 ? 0 : 1)
        );
    }

    /// @notice Calculates the greatest tick value such that getRatioAtTick(tick) <= ratio
    /// @dev Throws in case sqrtPriceX96 < MIN_SQRT_RATIO, as MIN_SQRT_RATIO is the lowest value getRatioAtTick may
    /// ever return.
    /// @param sqrtPriceX96 The sqrt ratio for which to compute the tick as a Q64.96
    /// @return tick The greatest tick for which the ratio is less than or equal to the input ratio
    function getTickAtSqrtRatio(
        uint160 sqrtPriceX96
    ) internal pure returns (int24 tick) {
        // second inequality must be < because the price can never reach the price at the max tick
        require(
            sqrtPriceX96 >= MIN_SQRT_RATIO && sqrtPriceX96 < MAX_SQRT_RATIO,
            "R"
        );
        uint256 ratio = uint256(sqrtPriceX96) << 32;

        uint256 r = ratio;
        uint256 msb = 0;

        assembly {
            let f := shl(7, gt(r, 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF))
            msb := or(msb, f)
            r := shr(f, r)
        }
        assembly {
            let f := shl(6, gt(r, 0xFFFFFFFFFFFFFFFF))
            msb := or(msb, f)
            r := shr(f, r)
        }
        assembly {
            let f := shl(5, gt(r, 0xFFFFFFFF))
            msb := or(msb, f)
            r := shr(f, r)
        }
        assembly {
            let f := shl(4, gt(r, 0xFFFF))
            msb := or(msb, f)
            r := shr(f, r)
        }
        assembly {
            let f := shl(3, gt(r, 0xFF))
            msb := or(msb, f)
            r := shr(f, r)
        }
        assembly {
            let f := shl(2, gt(r, 0xF))
            msb := or(msb, f)
            r := shr(f, r)
        }
        assembly {
            let f := shl(1, gt(r, 0x3))
            msb := or(msb, f)
            r := shr(f, r)
        }
        assembly {
            let f := gt(r, 0x1)
            msb := or(msb, f)
        }

        if (msb >= 128) r = ratio >> (msb - 127);
        else r = ratio << (127 - msb);

        int256 log_2 = (int256(msb) - 128) << 64;

        assembly {
            r := shr(127, mul(r, r))
            let f := shr(128, r)
            log_2 := or(log_2, shl(63, f))
            r := shr(f, r)
        }
        assembly {
            r := shr(127, mul(r, r))
            let f := shr(128, r)
            log_2 := or(log_2, shl(62, f))
            r := shr(f, r)
        }
        assembly {
            r := shr(127, mul(r, r))
            let f := shr(128, r)
            log_2 := or(log_2, shl(61, f))
            r := shr(f, r)
        }
        assembly {
            r := shr(127, mul(r, r))
            let f := shr(128, r)
            log_2 := or(log_2, shl(60, f))
            r := shr(f, r)
        }
        assembly {
            r := shr(127, mul(r, r))
            let f := shr(128, r)
            log_2 := or(log_2, shl(59, f))
            r := shr(f, r)
        }
        assembly {
            r := shr(127, mul(r, r))
            let f := shr(128, r)
            log_2 := or(log_2, shl(58, f))
            r := shr(f, r)
        }
        assembly {
            r := shr(127, mul(r, r))
            let f := shr(128, r)
            log_2 := or(log_2, shl(57, f))
            r := shr(f, r)
        }
        assembly {
            r := shr(127, mul(r, r))
            let f := shr(128, r)
            log_2 := or(log_2, shl(56, f))
            r := shr(f, r)
        }
        assembly {
            r := shr(127, mul(r, r))
            let f := shr(128, r)
            log_2 := or(log_2, shl(55, f))
            r := shr(f, r)
        }
        assembly {
            r := shr(127, mul(r, r))
            let f := shr(128, r)
            log_2 := or(log_2, shl(54, f))
            r := shr(f, r)
        }
        assembly {
            r := shr(127, mul(r, r))
            let f := shr(128, r)
            log_2 := or(log_2, shl(53, f))
            r := shr(f, r)
        }
        assembly {
            r := shr(127, mul(r, r))
            let f := shr(128, r)
            log_2 := or(log_2, shl(52, f))
            r := shr(f, r)
        }
        assembly {
            r := shr(127, mul(r, r))
            let f := shr(128, r)
            log_2 := or(log_2, shl(51, f))
            r := shr(f, r)
        }
        assembly {
            r := shr(127, mul(r, r))
            let f := shr(128, r)
            log_2 := or(log_2, shl(50, f))
        }

        int256 log_sqrt10001 = log_2 * 255738958999603826347141; // 128.128 number

        int24 tickLow = int24(
            (log_sqrt10001 - 3402992956809132418596140100660247210) >> 128
        );
        int24 tickHi = int24(
            (log_sqrt10001 + 291339464771989622907027621153398088495) >> 128
        );

        tick = tickLow == tickHi
            ? tickLow
            : getSqrtRatioAtTick(tickHi) <= sqrtPriceX96
                ? tickHi
                : tickLow;
    }
}

struct MintParams {
    address token0; // eth
    address token1; // alpha
    uint24 fee; //0.01%
    int24 tickLower; // 180000
    int24 tickUpper; // 204000
    uint256 amount0Desired; // 1,000,000,000
    uint256 amount1Desired; // 0
    uint256 amount0Min; // 0
    uint256 amount1Min; // 0
    address recipient; // address(this)
    uint256 deadline;
}

interface IpositionManager {
    function createAndInitializePoolAndAddLiq(
        uint160 sqrtPriceX96,
        MintParams calldata params,
        uint8 _maxLeverage,
        uint16 _spotThres,
        uint16 _perpThres,
        uint16 _setlThres,
        uint32 _fdFeePerS,
        uint32 _twapTime,
        uint8 _countFrame
    ) external payable returns (address pool);
    function mint(
        MintParams calldata params
    )
        external
        payable
        returns (
            uint256 tokenId,
            uint128 liquidity,
            uint256 amount0,
            uint256 amount1
        );
}

interface IWETH9 {
    function deposit() external payable;
}

interface ITokenFactory {
    function createToken(
        string memory _name,
        string memory _symbol,
        address recipient
    ) external returns (address res);
}

interface IRoxSpotPool {
    function collect(
        address recipient,
        int24 tickLower,
        int24 tickUpper,
        uint128 amount0Requested,
        uint128 amount1Requested
    ) external returns (uint128 amount0, uint128 amount1);
    function roxPosnPool() external view returns (address);
}

interface IOwnable {
    function owner() external view returns (address);

    function renounceOwnership() external;

    function transferOwnership(address newOwner_) external;
}

contract Ownable is IOwnable {
    address internal _owner;

    event OwnershipTransferred(
        address indexed previousOwner,
        address indexed newOwner
    );

    constructor() {
        _owner = msg.sender;
        emit OwnershipTransferred(address(0), _owner);
    }

    function owner() public view override returns (address) {
        return _owner;
    }

    modifier onlyOwner() {
        require(_owner == msg.sender, "Ownable: caller is not the owner");
        _;
    }

    function renounceOwnership() public virtual override onlyOwner {
        emit OwnershipTransferred(_owner, address(0));
        _owner = address(0);
    }

    function transferOwnership(
        address newOwner_
    ) public virtual override onlyOwner {
        require(
            newOwner_ != address(0),
            "Ownable: new owner is the zero address"
        );
        emit OwnershipTransferred(_owner, newOwner_);
        _owner = newOwner_;
    }
}

library PositionKey {
    /// @dev Returns the key of the position in the core library
    function compute(
        address owner,
        int24 tickLower,
        int24 tickUpper
    ) internal pure returns (bytes32) {
        return keccak256(abi.encodePacked(owner, tickLower, tickUpper));
    }
}

interface IRoxPosnPool {
    function updateFee(bytes32 key) external;
}

interface IBlast {
    // Note: the full interface for IBlast can be found below
    function configureClaimableGas() external;
    function claimAllGas(
        address contractAddress,
        address recipient
    ) external returns (uint256);
}
struct ExactInputSingleParams {
    address tokenIn;
    address tokenOut;
    uint24 fee;
    address recipient;
    uint256 deadline;
    uint256 amountIn;
    uint256 amountOutMinimum;
    uint160 sqrtPriceLimitX96;
}
interface ISwapRouter {
    function exactInputSingle(
        ExactInputSingleParams calldata params
    ) external payable returns (uint256 amountOut);
    function refundETH() external payable;
}
// 91800 max Tick
contract LaunchpadContract is Ownable {
    IBlast public constant BLAST =
        IBlast(0x4300000000000000000000000000000000000002);
    using SafeMath for uint;

    uint public autoBuyMax = 1 ether;
    uint public createFee;
    address public tokenFactory;
    address public positionManager;
    address public weth;
    address public feeRecipient;
    address public swapRouter;

    struct TokenInfo {
        address pool;
        bool isToken0;
    }

    event CreatePool(
        address indexed token,
        address indexed pool,
        bool isToken0
    );
    constructor() {
        // This sets the Gas Mode for MyContract to claimable
        BLAST.configureClaimableGas();
    }

    // Note: in production, you would likely want to restrict access to this
    function claimMyContractsGas() external onlyOwner {
        BLAST.claimAllGas(address(this), msg.sender);
    }

    mapping(address => TokenInfo) public infos;

    uint internal _unlocked = 1;

    modifier lock() {
        require(_unlocked == 1);
        _unlocked = 2;
        _;
        _unlocked = 1;
    }
    function setAutoMax(uint _n) external onlyOwner {
        autoBuyMax = _n;
    }

    function setCreateFee(uint _fee) external onlyOwner {
        createFee = _fee;
    }

    function setFeeRecipient(address _f) external onlyOwner {
        feeRecipient = _f;
    }

    function withdraw() external onlyOwner {
        (bool success, ) = msg.sender.call{value: address(this).balance}("");
        require(success, "Failed to send Ether");
    }

    function init(
        address _positionManager,
        address _weth,
        address _tokenFactory,
        address _swapRouter
    ) external onlyOwner {
        positionManager = _positionManager;
        weth = _weth;
        tokenFactory = _tokenFactory;
        swapRouter = _swapRouter;
        feeRecipient = owner();
    }
    //
    function collectFee(address token) external onlyOwner {
        TokenInfo memory info = infos[token];
        bool isToken0 = info.isToken0;
        address posnPool = IRoxSpotPool(info.pool).roxPosnPool();
        if (isToken0) {
            bytes32 key1 = PositionKey.compute(address(this), -204000, -131400);
            bytes32 key2 = PositionKey.compute(address(this), -131400, -39600);
            IRoxPosnPool(posnPool).updateFee(key1);
            IRoxPosnPool(posnPool).updateFee(key2);
            (uint256 owed0, uint256 owed1) = IRoxSpotPool(info.pool).collect(
                address(this),
                -204000,
                -131400,
                type(uint128).max,
                type(uint128).max
            );
            (uint256 owed00, uint256 owed11) = IRoxSpotPool(info.pool).collect(
                address(this),
                -131400,
                -39600,
                type(uint128).max,
                type(uint128).max
            );
            if (owed0 > 0) {
                IERC20(token).transfer(feeRecipient, owed0);
            }
            if (owed00 > 0) {
                IERC20(token).transfer(feeRecipient, owed00);
            }
            if (owed1 > 0) {
                IERC20(weth).transfer(feeRecipient, owed1);
            }
            if (owed11 > 0) {
                IERC20(weth).transfer(feeRecipient, owed11);
            }
        } else {
            bytes32 key1 = PositionKey.compute(address(this), 131400, 204000);
            bytes32 key2 = PositionKey.compute(address(this), 39600, 131400);
            bytes32 key3 = PositionKey.compute(address(this), 204000, 204600);
            IRoxPosnPool(posnPool).updateFee(key1);
            IRoxPosnPool(posnPool).updateFee(key2);
            IRoxPosnPool(posnPool).updateFee(key3);
            (uint256 owed0, uint256 owed1) = IRoxSpotPool(info.pool).collect(
                address(this),
                131400,
                204000,
                type(uint128).max,
                type(uint128).max
            );
            (uint256 owed00, uint256 owed11) = IRoxSpotPool(info.pool).collect(
                address(this),
                39600,
                131400,
                type(uint128).max,
                type(uint128).max
            );
            (uint256 owed000, uint256 owed111) = IRoxSpotPool(info.pool)
                .collect(
                    address(this),
                    204000,
                    204600,
                    type(uint128).max,
                    type(uint128).max
                );
            if (owed0 > 0) {
                IERC20(weth).transfer(feeRecipient, owed0);
            }
            if (owed00 > 0) {
                IERC20(weth).transfer(feeRecipient, owed00);
            }
            if (owed000 > 0) {
                IERC20(weth).transfer(feeRecipient, owed00);
            }
            if (owed1 > 0) {
                IERC20(token).transfer(feeRecipient, owed1);
            }
            if (owed11 > 0) {
                IERC20(token).transfer(feeRecipient, owed11);
            }
            if (owed111 > 0) {
                IERC20(token).transfer(feeRecipient, owed11);
            }
        }
    }

    //
    function autoBuyToken(uint amount, address token) internal {
        ExactInputSingleParams memory params = ExactInputSingleParams({
            tokenIn: weth,
            tokenOut: token,
            fee: 100,
            recipient: msg.sender,
            deadline: block.timestamp + 5000,
            amountIn: amount,
            amountOutMinimum: 0,
            sqrtPriceLimitX96: 0
        });
        ISwapRouter(swapRouter).exactInputSingle{value: amount}(params);
        ISwapRouter(swapRouter).refundETH();
    }

    function createTokenPool(
        string memory _name,
        string memory _symbol,
        uint amount
    ) external payable lock returns (address pool) {
        require(amount <= autoBuyMax, "You cannot buy more than 1 ETH");
        uint totalFee = createFee.add(amount).add(1);
        require(msg.value >= totalFee, "You have not paid enough ETH");
        if (createFee > 0) {
            (bool success, ) = payable(feeRecipient).call{value: createFee}("");
            require(success, "Failed to send Ether");
        }
        address token = ITokenFactory(tokenFactory).createToken(
            _name,
            _symbol,
            msg.sender
        );
        address token0 = token < weth ? token : weth;
        bool isToken0 = token == token0;
        IERC20(token0).approve(positionManager, type(uint).max);
        pool = addLiquidity(isToken0, token);
        infos[token] = TokenInfo({pool: pool, isToken0: isToken0});
        if (amount > 0) {
            autoBuyToken(amount, token);
        }
        emit CreatePool(token, pool, isToken0);
    }

    function addLiquidity(
        bool isToken0,
        address token
    ) internal returns (address pool) {
        if (isToken0) {
            // add Token Only
            uint160 sqrtPriceX96 = TickMath.getSqrtRatioAtTick(-204000);
            MintParams memory params = MintParams({
                token0: token,
                token1: weth,
                fee: 100,
                tickLower: -204000,
                tickUpper: -131400,
                amount0Desired: 700000000 * 1e18,
                amount1Desired: 0,
                amount0Min: 0,
                amount1Min: 0,
                recipient: address(this),
                deadline: block.timestamp + 500
            });
            pool = IpositionManager(positionManager)
                .createAndInitializePoolAndAddLiq(
                    sqrtPriceX96,
                    params,
                    50,
                    800,
                    1,
                    700,
                    6000,
                    30,
                    10
                );
            MintParams memory params2 = MintParams({
                token0: token,
                token1: weth,
                fee: 100,
                tickLower: -131400,
                tickUpper: -39600,
                amount0Desired: 300000000 * 1e18,
                amount1Desired: 0,
                amount0Min: 0,
                amount1Min: 0,
                recipient: address(this),
                deadline: block.timestamp + 500
            });
            IpositionManager(positionManager).mint(params2);
        } else {
            IERC20(token).approve(positionManager, type(uint).max);
            MintParams memory params = MintParams({
                token0: weth,
                token1: token,
                fee: 100,
                tickLower: 131400,
                tickUpper: 204000,
                amount0Desired: 0,
                amount1Desired: 700000000 * 1e18,
                amount0Min: 0,
                amount1Min: 0,
                recipient: address(this),
                deadline: block.timestamp + 500
            });

            MintParams memory params2 = MintParams({
                token0: weth,
                token1: token,
                fee: 100,
                tickLower: 39600,
                tickUpper: 131400,
                amount0Desired: 0,
                amount1Desired: 300000000 * 1e18,
                amount0Min: 0,
                amount1Min: 0,
                recipient: address(this),
                deadline: block.timestamp + 500
            });

            uint160 sqrtPriceX96 = TickMath.getSqrtRatioAtTick(204000);
            // add Token
            pool = IpositionManager(positionManager)
                .createAndInitializePoolAndAddLiq(
                    sqrtPriceX96,
                    params,
                    50,
                    800,
                    1,
                    700,
                    6000,
                    30,
                    10
                );
            // add weth
            IWETH9(weth).deposit{value: 1}();

            MintParams memory params3 = MintParams({
                token0: weth,
                token1: token,
                fee: 100,
                tickLower: 204000,
                tickUpper: 204600,
                amount0Desired: 1,
                amount1Desired: 0,
                amount0Min: 0,
                amount1Min: 0,
                recipient: address(this),
                deadline: block.timestamp + 500
            });
            IpositionManager(positionManager).mint(params2);
            IpositionManager(positionManager).mint(params3);
        }
    }
}
