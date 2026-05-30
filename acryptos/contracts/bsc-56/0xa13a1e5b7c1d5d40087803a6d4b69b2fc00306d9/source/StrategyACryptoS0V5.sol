// File: openzeppelin-contracts-2.5.1/contracts/token/ERC20/IERC20.sol

pragma solidity ^0.5.0;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP. Does not include
 * the optional functions; to access them see {ERC20Detailed}.
 */
interface IERC20 {
    /**
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `recipient`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address recipient, uint256 amount) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev Moves `amount` tokens from `sender` to `recipient` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);

    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);
}

// File: openzeppelin-contracts-2.5.1/contracts/math/SafeMath.sol

pragma solidity ^0.5.0;

/**
 * @dev Wrappers over Solidity's arithmetic operations with added overflow
 * checks.
 *
 * Arithmetic operations in Solidity wrap on overflow. This can easily result
 * in bugs, because programmers usually assume that an overflow raises an
 * error, which is the standard behavior in high level programming languages.
 * `SafeMath` restores this intuition by reverting the transaction when an
 * operation overflows.
 *
 * Using this library instead of the unchecked operations eliminates an entire
 * class of bugs, so it's recommended to use it always.
 */
library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");

        return c;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return sub(a, b, "SafeMath: subtraction overflow");
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     * - Subtraction cannot overflow.
     *
     * _Available since v2.4.0._
     */
    function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b <= a, errorMessage);
        uint256 c = a - b;

        return c;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");

        return c;
    }

    /**
     * @dev Returns the integer division of two unsigned integers. Reverts on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        return div(a, b, "SafeMath: division by zero");
    }

    /**
     * @dev Returns the integer division of two unsigned integers. Reverts with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     * - The divisor cannot be zero.
     *
     * _Available since v2.4.0._
     */
    function div(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        // Solidity only automatically asserts when dividing by 0
        require(b > 0, errorMessage);
        uint256 c = a / b;
        // assert(a == b * c + a % b); // There is no case in which this doesn't hold

        return c;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * Reverts when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        return mod(a, b, "SafeMath: modulo by zero");
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * Reverts with custom message when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     * - The divisor cannot be zero.
     *
     * _Available since v2.4.0._
     */
    function mod(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b != 0, errorMessage);
        return a % b;
    }
}

// File: openzeppelin-contracts-2.5.1/contracts/math/Math.sol

pragma solidity ^0.5.0;

/**
 * @dev Standard math utilities missing in the Solidity language.
 */
library Math {
    /**
     * @dev Returns the largest of two numbers.
     */
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a >= b ? a : b;
    }

    /**
     * @dev Returns the smallest of two numbers.
     */
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }

    /**
     * @dev Returns the average of two numbers. The result is rounded towards
     * zero.
     */
    function average(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b) / 2 can overflow, so we distribute
        return (a / 2) + (b / 2) + ((a % 2 + b % 2) / 2);
    }
}

// File: openzeppelin-contracts-2.5.1/contracts/utils/Address.sol

pragma solidity ^0.5.5;

/**
 * @dev Collection of functions related to the address type
 */
library Address {
    /**
     * @dev Returns true if `account` is a contract.
     *
     * [IMPORTANT]
     * ====
     * It is unsafe to assume that an address for which this function returns
     * false is an externally-owned account (EOA) and not a contract.
     *
     * Among others, `isContract` will return false for the following 
     * types of addresses:
     *
     *  - an externally-owned account
     *  - a contract in construction
     *  - an address where a contract will be created
     *  - an address where a contract lived, but was destroyed
     * ====
     */
    function isContract(address account) internal view returns (bool) {
        // According to EIP-1052, 0x0 is the value returned for not-yet created accounts
        // and 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 is returned
        // for accounts without code, i.e. `keccak256('')`
        bytes32 codehash;
        bytes32 accountHash = 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470;
        // solhint-disable-next-line no-inline-assembly
        assembly { codehash := extcodehash(account) }
        return (codehash != accountHash && codehash != 0x0);
    }

    /**
     * @dev Converts an `address` into `address payable`. Note that this is
     * simply a type cast: the actual underlying value is not changed.
     *
     * _Available since v2.4.0._
     */
    function toPayable(address account) internal pure returns (address payable) {
        return address(uint160(account));
    }

    /**
     * @dev Replacement for Solidity's `transfer`: sends `amount` wei to
     * `recipient`, forwarding all available gas and reverting on errors.
     *
     * https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost
     * of certain opcodes, possibly making contracts go over the 2300 gas limit
     * imposed by `transfer`, making them unable to receive funds via
     * `transfer`. {sendValue} removes this limitation.
     *
     * https://diligence.consensys.net/posts/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.5.11/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
     *
     * _Available since v2.4.0._
     */
    function sendValue(address payable recipient, uint256 amount) internal {
        require(address(this).balance >= amount, "Address: insufficient balance");

        // solhint-disable-next-line avoid-call-value
        (bool success, ) = recipient.call.value(amount)("");
        require(success, "Address: unable to send value, recipient may have reverted");
    }
}

// File: openzeppelin-contracts-2.5.1/contracts/token/ERC20/SafeERC20.sol

pragma solidity ^0.5.0;




/**
 * @title SafeERC20
 * @dev Wrappers around ERC20 operations that throw on failure (when the token
 * contract returns false). Tokens that return no value (and instead revert or
 * throw on failure) are also supported, non-reverting calls are assumed to be
 * successful.
 * To use this library you can add a `using SafeERC20 for ERC20;` statement to your contract,
 * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
 */
library SafeERC20 {
    using SafeMath for uint256;
    using Address for address;

    function safeTransfer(IERC20 token, address to, uint256 value) internal {
        callOptionalReturn(token, abi.encodeWithSelector(token.transfer.selector, to, value));
    }

    function safeTransferFrom(IERC20 token, address from, address to, uint256 value) internal {
        callOptionalReturn(token, abi.encodeWithSelector(token.transferFrom.selector, from, to, value));
    }

    function safeApprove(IERC20 token, address spender, uint256 value) internal {
        // safeApprove should only be called when setting an initial allowance,
        // or when resetting it to zero. To increase and decrease it, use
        // 'safeIncreaseAllowance' and 'safeDecreaseAllowance'
        // solhint-disable-next-line max-line-length
        require((value == 0) || (token.allowance(address(this), spender) == 0),
            "SafeERC20: approve from non-zero to non-zero allowance"
        );
        callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, value));
    }

    function safeIncreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        uint256 newAllowance = token.allowance(address(this), spender).add(value);
        callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));
    }

    function safeDecreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        uint256 newAllowance = token.allowance(address(this), spender).sub(value, "SafeERC20: decreased allowance below zero");
        callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     */
    function callOptionalReturn(IERC20 token, bytes memory data) private {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves.

        // A Solidity high level call has three parts:
        //  1. The target address is checked to verify it contains contract code
        //  2. The call itself is made, and success asserted
        //  3. The return value is decoded, which in turn checks the size of the returned data.
        // solhint-disable-next-line max-line-length
        require(address(token).isContract(), "SafeERC20: call to non-contract");

        // solhint-disable-next-line avoid-low-level-calls
        (bool success, bytes memory returndata) = address(token).call(data);
        require(success, "SafeERC20: low-level call failed");

        if (returndata.length > 0) { // Return data is optional
            // solhint-disable-next-line max-line-length
            require(abi.decode(returndata, (bool)), "SafeERC20: ERC20 operation did not succeed");
        }
    }
}

// File: interfaces/yearn/IController.sol

// SPDX-License-Identifier: MIT

pragma solidity ^0.5.17;

interface IController {
    function withdraw(address, uint256) external;

    function balanceOf(address) external view returns (uint256);

    function earn(address, uint256) external;

    function want(address) external view returns (address);

    function rewards() external view returns (address);

    function vaults(address) external view returns (address);

    function strategies(address) external view returns (address);
}

// File: contracts/strategies/StrategyACryptoS0V5.sol

pragma solidity ^0.5.17;







interface IUniswapRouter {
  function swapExactTokensForTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external returns (uint[] memory amounts);
  function removeLiquidity(
        address tokenA,
        address tokenB,
        uint liquidity,
        uint amountAMin,
        uint amountBMin,
        address to,
        uint deadline
    ) external returns (uint amountA, uint amountB);
  function getAmountsOut(uint amountIn, address[] calldata path) external view returns (uint[] memory amounts);
}

interface IStableSwap {
  function withdraw_admin_fees() external;
  function remove_liquidity_one_coin(uint256 _token_amount, int128 i, uint256 _min_amount) external;
  function exchange(int128 i, int128 j, uint256 dx, uint256 min_dy) external returns (uint256 dy);
  function exchange_underlying(int128 i, int128 j, uint256 dx, uint256 min_dy) external returns (uint256 dy);
}

contract StrategyACryptoS0V5 {
    using SafeERC20 for IERC20;
    using Address for address;
    using SafeMath for uint256;
    using Math for uint256;

    address public constant want = address(0x4197C6EF3879a08cD51e5560da5064B773aa1d29); //ACS

    struct PairToLiquidate {
        address pair;
        address tokenA;
        address tokenB;
        address router;
    }
    struct SsToLiquidate {
        address pool;
        address lpToken;
        int128 i;
    }
    struct TokenToSwap {
        address tokenIn;
        address tokenOut;
        address router;
    }
    struct SsTokenToSwap {
        address tokenIn;
        address pool;
        bool underlying;
        int128 i;
        int128 j;
    }
    address[] public ssToWithdraw; //StableSwap pools to withdraw admin fees from
    SsToLiquidate[] public ssToLiquidate;
    PairToLiquidate[] public pairsToLiquidate;
    SsTokenToSwap[] public ssTokensToSwap;
    TokenToSwap[] public tokensToSwap0;
    TokenToSwap[] public tokensToSwap1;

    address public governance;
    address public controller;
    address public strategist;

    uint256 public withdrawalFee = 1000; //10%
    uint256 public harvesterReward = 30;
    uint256 public constant FEE_DENOMINATOR = 10000;

    constructor(address _controller) public {
      governance = msg.sender;
      strategist = msg.sender;
      controller = _controller;

      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0x1B96B92314C44b159149f7E0303511fB2Fc4774f),
        tokenA: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        tokenB: address(0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56), //BUSD
        router: address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F) //pancakeV1
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0x610e7a287c27dfFcaC0F0a94f547Cc1B770cF483),
        tokenA: address(0x4B0F1812e5Df2A09796481Ff14017e6005508003), //TWT
        tokenB: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F) //pancakeV1
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0xA527a61703D82139F8a06Bc30097cC9CAA2df5A6),
        tokenA: address(0x0E09FaBB73Bd3Ade0a17ECC321fD13a19e81cE82), //Cake
        tokenB: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F) //pancakeV1
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0x41182c32F854dd97bA0e0B1816022e0aCB2fc0bb),
        tokenA: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        tokenB: address(0xcF6BB5389c92Bdda8a3747Ddb454cB7a64626C63), //XVS
        router: address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F) //pancakeV1
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0x70D8929d04b60Af4fb9B58713eBcf18765aDE422),
        tokenA: address(0x2170Ed0880ac9A755fd29B2688956BD959F933F8), //ETH
        tokenB: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F) //pancakeV1
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0x7561EEe90e24F3b348E1087A005F78B4c8453524),
        tokenA: address(0x7130d2A12B9BCbFAe4f2634d864A1Ee1Ce3Ead9c), //BTCB
        tokenB: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F) //pancakeV1
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0x752E713fB70E3FA1Ac08bCF34485F14A986956c4),
        tokenA: address(0x47BEAd2563dCBf3bF2c9407fEa4dC236fAbA485A), //SXP
        tokenB: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F) //pancakeV1
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0xfF17ff314925Dff772b71AbdFF2782bC913B3575),
        tokenA: address(0x4BD17003473389A42DAF6a0a729f6Fdb328BbBd7), //VAI
        tokenB: address(0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56), //BUSD
        router: address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F) //pancakeV1
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0x680Dd100E4b394Bda26A59dD5c119A391e747d18),
        tokenA: address(0x8AC76a51cc950d9822D68b83fE1Ad97B32Cd580d), //USDC
        tokenB: address(0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56), //BUSD
        router: address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F) //pancakeV1
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0xc15fa3E22c912A276550F3E5FE3b0Deb87B55aCd),
        tokenA: address(0x55d398326f99059fF775485246999027B3197955), //USDT
        tokenB: address(0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56), //BUSD
        router: address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F) //pancakeV1
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0x3aB77e40340AB084c3e23Be8e5A6f7afed9D41DC),
        tokenA: address(0x1AF3F329e8BE154074D8769D1FFa4eE058B1DBc3), //DAI
        tokenB: address(0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56), //BUSD
        router: address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F) //pancakeV1
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0x91589786D36fEe5B27A5539CfE638a5fc9834665),
        tokenA: address(0x78650B139471520656b9E7aA7A5e9276814a38e9), //BTCST
        tokenB: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F) //pancakeV1
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0xBc765Fd113c5bDB2ebc25F711191B56bB8690aec),
        tokenA: address(0x4338665CBB7B2485A8855A139b75D5e34AB0DB94), //LTC
        tokenB: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F) //pancakeV1
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0xbEA35584b9a88107102ABEf0BDeE2c4FaE5D8c31),
        tokenA: address(0x728C5baC3C3e370E372Fc4671f9ef6916b814d8B), //UNFI
        tokenB: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F) //pancakeV1
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0xBA51D1AB95756ca4eaB8737eCD450cd8F05384cF),
        tokenA: address(0x3EE2200Efb3400fAbB9AacF31297cBdD1d435D47), //ADA
        tokenB: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F) //pancakeV1
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0x68Ff2ca47D27db5Ac0b5c46587645835dD51D3C1),
        tokenA: address(0x88f1A5ae2A3BF98AEAF342D26B30a79438c9142e), //YFI
        tokenB: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F) //pancakeV1
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0x99d865Ed50D2C32c1493896810FA386c1Ce81D91),
        tokenA: address(0x2170Ed0880ac9A755fd29B2688956BD959F933F8), //ETH
        tokenB: address(0x250632378E573c6Be1AC2f97Fcdf00515d0Aa91B), //BETH
        router: address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F) //pancakeV1
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0x0392957571F28037607C14832D16f8B653eDd472),
        tokenA: address(0x2170Ed0880ac9A755fd29B2688956BD959F933F8), //ETH
        tokenB: address(0x52CE071Bd9b1C4B00A0b92D298c512478CaD67e8), //COMP
        router: address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F) //pancakeV1
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0x17580340F3dAEDAE871a8C21D15911742ec79e0F),
        tokenA: address(0x2170Ed0880ac9A755fd29B2688956BD959F933F8), //ETH
        tokenB: address(0x947950BcC74888a40Ffa2593C5798F11Fc9124C4), //SUSHI
        router: address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F) //pancakeV1
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0xcBe2cF3bd012e9C1ADE2Ee4d41DB3DaC763e78F3),
        tokenA: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        tokenB: address(0xD41FDb03Ba84762dD66a0af1a6C8540FF1ba5dfb), //SFP
        router: address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F) //pancakeV1
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0x4269e7F43A63CEA1aD7707Be565a94a9189967E9),
        tokenA: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        tokenB: address(0xBf5140A22578168FD562DCcF235E5D43A02ce9B1), //UNI
        router: address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F) //pancakeV1
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0x36b7D2e5C7877392Fb17f9219efaD56F3D794700),
        tokenA: address(0x928e55daB735aa8260AF3cEDadA18B5f70C72f1b), //FRONT
        tokenB: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F) //pancakeV1
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0xbCD62661A6b1DEd703585d3aF7d7649Ef4dcDB5c),
        tokenA: address(0x7083609fCE4d1d8Dc0C979AAb8c869Ea2C873402), //DOT
        tokenB: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F) //pancakeV1
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0xaeBE45E3a03B734c68e5557AE04BFC76917B4686),
        tokenA: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        tokenB: address(0xF8A0BF9cF54Bb92F17374d9e9A321E6a111a51bD), //LINK
        router: address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F) //pancakeV1
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0xc639187ef82271D8f517de6FEAE4FaF5b517533c),
        tokenA: address(0xAD6cAEb32CD2c308980a548bD0Bc5AA4306c6c18), //BAND
        tokenB: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F) //pancakeV1
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0x20bCC3b8a0091dDac2d0BC30F68E6CBb97de59Cd),
        tokenA: address(0x55d398326f99059fF775485246999027B3197955), //USDT
        tokenB: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F) //pancakeV1
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0x4576C456AF93a37a096235e5d83f812AC9aeD027),
        tokenA: address(0x71DE20e0C4616E7fcBfDD3f875d568492cBE4739), //SWINGBY
        tokenB: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F) //pancakeV1
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0x4db28767D1527bA545CA5bbdA1C96a94ED6ff242),
        tokenA: address(0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56), //BUSD
        tokenB: address(0xECa41281c24451168a37211F0bc2b8645AF45092), //TPT
        router: address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F) //pancakeV1
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0xC7b4B32A3be2cB6572a1c9959401F832Ce47a6d2),
        tokenA: address(0x1D2F0da169ceB9fC7B3144628dB156f3F6c60dBE), //XRP
        tokenB: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F) //pancakeV1
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0xfEc200A5E3adDD4a7915a556DDe3F5850e644020),
        tokenA: address(0x658A109C5900BC6d2357c87549B651670E5b0539), //FOR
        tokenB: address(0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56), //BUSD
        router: address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F) //pancakeV1
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0xe022baa3E5E87658f789c9132B10d7425Fd3a389),
        tokenA: address(0xAC51066d7bEC65Dc4589368da368b212745d63E8), //ALICE
        tokenB: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F) //pancakeV1
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0xdC6C130299E53ACD2CC2D291fa10552CA2198a6b),
        tokenA: address(0x7A9f28EB62C791422Aa23CeAE1dA9C847cBeC9b0), //WATCH
        tokenB: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F) //pancakeV1
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0xc746337b5F800a0e19eD4eB3bda03FF1401B8167),
        tokenA: address(0xb86AbCb37C3A4B64f74f59301AFF131a1BEcC787), //ZIL
        tokenB: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F) //pancakeV1
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0x496a8b716A3A3410B16e71E3c906968CE4488e52),
        tokenA: address(0x9f589e3eabe42ebC94A44727b3f3531C0c877809), //TKO
        tokenB: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F) //pancakeV1
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0xb5F6f7dAD23132d40d778085D795BD0FD4B859CD),
        tokenA: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        tokenB: address(0xeD28A457A5A76596ac48d87C0f577020F6Ea1c4C), //pBTC
        router: address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F) //pancakeV1
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0xf64a269F0A06dA07D23F43c1Deb217101ee6Bee7),
        tokenA: address(0x23396cF899Ca06c4472205fC903bDB4de249D6fC), //UST
        tokenB: address(0x5B6DcF557E2aBE2323c48445E8CC948910d8c2c9), //MIR
        router: address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F) //pancakeV1
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0x34e821e785A93261B697eBD2797988B3AA78ca33),
        tokenA: address(0x2222227E22102Fe3322098e4CBfE18cFebD57c95), //TLM
        tokenB: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F) //pancakeV1
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0xF570d6e751976D0d10aa64ACfa829A5ea4a51727),
        tokenA: address(0x47BEAd2563dCBf3bF2c9407fEa4dC236fAbA485A), //SXP
        tokenB: address(0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56), //BUSD
        router: address(0x816278BbBCc529f8cdEE8CC72C226fb01def6E6C) //SwipeSwap
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0xB450606703743D557a1c8384Fffe6b941F8f60F4),
        tokenA: address(0x47BEAd2563dCBf3bF2c9407fEa4dC236fAbA485A), //SXP
        tokenB: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //BNB
        router: address(0x816278BbBCc529f8cdEE8CC72C226fb01def6E6C) //SwipeSwap
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0x70b31Abf9Be826eDc188A15fC35cc6037103a58F),
        tokenA: address(0x47BEAd2563dCBf3bF2c9407fEa4dC236fAbA485A), //SXP
        tokenB: address(0x7130d2A12B9BCbFAe4f2634d864A1Ee1Ce3Ead9c), //BTC
        router: address(0x816278BbBCc529f8cdEE8CC72C226fb01def6E6C) //SwipeSwap
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0xC61FB584DAf69Bedf912768AEdc0658B11A1A75C),
        tokenA: address(0x4BD17003473389A42DAF6a0a729f6Fdb328BbBd7), //VAI
        tokenB: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x816278BbBCc529f8cdEE8CC72C226fb01def6E6C) //SwipeSwap
      }));
      pairsToLiquidate.push(PairToLiquidate({
        pair: address(0xef82bD8287dA9700b004657170746968CF5cA04a),
        tokenA: address(0x4197C6EF3879a08cD51e5560da5064B773aa1d29), //ACS
        tokenB: address(0x47BEAd2563dCBf3bF2c9407fEa4dC236fAbA485A), //SXP
        router: address(0x816278BbBCc529f8cdEE8CC72C226fb01def6E6C) //SwipeSwap
      }));


      ssTokensToSwap.push(SsTokenToSwap({
        tokenIn: address(0x1AF3F329e8BE154074D8769D1FFa4eE058B1DBc3), //dai
        pool: address(0xb3F0C9ea1F05e312093Fdb031E789A756659B0AC), //ACS4 StableSwap
        underlying: false,
        i: 2,
        j: 0
      }));

      ssTokensToSwap.push(SsTokenToSwap({
        tokenIn: address(0x8AC76a51cc950d9822D68b83fE1Ad97B32Cd580d), //usdc
        pool: address(0xb3F0C9ea1F05e312093Fdb031E789A756659B0AC), //ACS4 StableSwap
        underlying: false,
        i: 3,
        j: 0
      }));

      ssTokensToSwap.push(SsTokenToSwap({
        tokenIn: address(0x4BD17003473389A42DAF6a0a729f6Fdb328BbBd7), //vai
        pool: address(0x191409D5A4EfFe25b0f4240557BA2192D18a191e), //ACS4VAI StableSwap
        underlying: true,
        i: 0,
        j: 1
      }));

      ssTokensToSwap.push(SsTokenToSwap({
        tokenIn: address(0x23396cF899Ca06c4472205fC903bDB4de249D6fC), //ust
        pool: address(0x99c92765EfC472a9709Ced86310D64C4573c4b77), //ACS4UST StableSwap
        underlying: true,
        i: 0,
        j: 1
      }));


      tokensToSwap0.push(TokenToSwap({
        tokenIn: address(0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56), //BUSD
        tokenOut: address(0x47BEAd2563dCBf3bF2c9407fEa4dC236fAbA485A), //SXP
        router: address(0x816278BbBCc529f8cdEE8CC72C226fb01def6E6C) //SwipeSwap
      }));
      tokensToSwap0.push(TokenToSwap({
        tokenIn: address(0x7130d2A12B9BCbFAe4f2634d864A1Ee1Ce3Ead9c), //BTC
        tokenOut: address(0x47BEAd2563dCBf3bF2c9407fEa4dC236fAbA485A), //SXP
        router: address(0x816278BbBCc529f8cdEE8CC72C226fb01def6E6C) //SwipeSwap
      }));
      tokensToSwap0.push(TokenToSwap({
        tokenIn: address(0x0E09FaBB73Bd3Ade0a17ECC321fD13a19e81cE82), //Cake
        tokenOut: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x10ED43C718714eb63d5aA57B78B54704E256024E) //pancakeV2
      }));
      tokensToSwap0.push(TokenToSwap({
        tokenIn: address(0x55d398326f99059fF775485246999027B3197955), //USDT
        tokenOut: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x10ED43C718714eb63d5aA57B78B54704E256024E) //pancakeV2
      }));
      tokensToSwap0.push(TokenToSwap({
        tokenIn: address(0x4B0F1812e5Df2A09796481Ff14017e6005508003), //TWT
        tokenOut: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x10ED43C718714eb63d5aA57B78B54704E256024E) //pancakeV2
      }));
      tokensToSwap0.push(TokenToSwap({
        tokenIn: address(0xcF6BB5389c92Bdda8a3747Ddb454cB7a64626C63), //XVS
        tokenOut: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x10ED43C718714eb63d5aA57B78B54704E256024E) //pancakeV2
      }));
      tokensToSwap0.push(TokenToSwap({
        tokenIn: address(0x2170Ed0880ac9A755fd29B2688956BD959F933F8), //ETH
        tokenOut: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x10ED43C718714eb63d5aA57B78B54704E256024E) //pancakeV2
      }));
      tokensToSwap0.push(TokenToSwap({
        tokenIn: address(0x78650B139471520656b9E7aA7A5e9276814a38e9), //BTCST
        tokenOut: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x10ED43C718714eb63d5aA57B78B54704E256024E) //pancakeV2
      }));
      tokensToSwap0.push(TokenToSwap({
        tokenIn: address(0x4338665CBB7B2485A8855A139b75D5e34AB0DB94), //LTC
        tokenOut: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x10ED43C718714eb63d5aA57B78B54704E256024E) //pancakeV2
      }));
      tokensToSwap0.push(TokenToSwap({
        tokenIn: address(0x728C5baC3C3e370E372Fc4671f9ef6916b814d8B), //UNFI
        tokenOut: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x10ED43C718714eb63d5aA57B78B54704E256024E) //pancakeV2
      }));
      tokensToSwap0.push(TokenToSwap({
        tokenIn: address(0x3EE2200Efb3400fAbB9AacF31297cBdD1d435D47), //ADA
        tokenOut: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x10ED43C718714eb63d5aA57B78B54704E256024E) //pancakeV2
      }));
      tokensToSwap0.push(TokenToSwap({
        tokenIn: address(0x88f1A5ae2A3BF98AEAF342D26B30a79438c9142e), //YFI
        tokenOut: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x10ED43C718714eb63d5aA57B78B54704E256024E) //pancakeV2
      }));
      tokensToSwap0.push(TokenToSwap({
        tokenIn: address(0xD41FDb03Ba84762dD66a0af1a6C8540FF1ba5dfb), //SFP
        tokenOut: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x10ED43C718714eb63d5aA57B78B54704E256024E) //pancakeV2
      }));
      tokensToSwap0.push(TokenToSwap({
        tokenIn: address(0xBf5140A22578168FD562DCcF235E5D43A02ce9B1), //UNI
        tokenOut: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x10ED43C718714eb63d5aA57B78B54704E256024E) //pancakeV2
      }));
      tokensToSwap0.push(TokenToSwap({
        tokenIn: address(0xF8A0BF9cF54Bb92F17374d9e9A321E6a111a51bD), //LINK
        tokenOut: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x10ED43C718714eb63d5aA57B78B54704E256024E) //pancakeV2
      }));
      tokensToSwap0.push(TokenToSwap({
        tokenIn: address(0xeD28A457A5A76596ac48d87C0f577020F6Ea1c4C), //pBTC
        tokenOut: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x10ED43C718714eb63d5aA57B78B54704E256024E) //pancakeV2
      }));
      tokensToSwap0.push(TokenToSwap({
        tokenIn: address(0x928e55daB735aa8260AF3cEDadA18B5f70C72f1b), //FRONT
        tokenOut: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x10ED43C718714eb63d5aA57B78B54704E256024E) //pancakeV2
      }));
      tokensToSwap0.push(TokenToSwap({
        tokenIn: address(0x7083609fCE4d1d8Dc0C979AAb8c869Ea2C873402), //DOT
        tokenOut: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x10ED43C718714eb63d5aA57B78B54704E256024E) //pancakeV2
      }));
      tokensToSwap0.push(TokenToSwap({
        tokenIn: address(0xAD6cAEb32CD2c308980a548bD0Bc5AA4306c6c18), //BAND
        tokenOut: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x10ED43C718714eb63d5aA57B78B54704E256024E) //pancakeV2
      }));
      tokensToSwap0.push(TokenToSwap({
        tokenIn: address(0x71DE20e0C4616E7fcBfDD3f875d568492cBE4739), //SWINGBY
        tokenOut: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x10ED43C718714eb63d5aA57B78B54704E256024E) //pancakeV2
      }));
      tokensToSwap0.push(TokenToSwap({
        tokenIn: address(0x1D2F0da169ceB9fC7B3144628dB156f3F6c60dBE), //XRP
        tokenOut: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x10ED43C718714eb63d5aA57B78B54704E256024E) //pancakeV2
      }));
      tokensToSwap0.push(TokenToSwap({
        tokenIn: address(0xAC51066d7bEC65Dc4589368da368b212745d63E8), //ALICE
        tokenOut: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x10ED43C718714eb63d5aA57B78B54704E256024E) //pancakeV2
      }));
      tokensToSwap0.push(TokenToSwap({
        tokenIn: address(0x7A9f28EB62C791422Aa23CeAE1dA9C847cBeC9b0), //WATCH
        tokenOut: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x10ED43C718714eb63d5aA57B78B54704E256024E) //pancakeV2
      }));
      tokensToSwap0.push(TokenToSwap({
        tokenIn: address(0xb86AbCb37C3A4B64f74f59301AFF131a1BEcC787), //ZIL
        tokenOut: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x10ED43C718714eb63d5aA57B78B54704E256024E) //pancakeV2
      }));
      tokensToSwap0.push(TokenToSwap({
        tokenIn: address(0x9f589e3eabe42ebC94A44727b3f3531C0c877809), //TKO
        tokenOut: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x10ED43C718714eb63d5aA57B78B54704E256024E) //pancakeV2
      }));
      tokensToSwap0.push(TokenToSwap({
        tokenIn: address(0x2222227E22102Fe3322098e4CBfE18cFebD57c95), //TLM
        tokenOut: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //WBNB
        router: address(0x10ED43C718714eb63d5aA57B78B54704E256024E) //pancakeV2
      }));
      tokensToSwap0.push(TokenToSwap({
        tokenIn: address(0x658A109C5900BC6d2357c87549B651670E5b0539), //FOR
        tokenOut: address(0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56), //BUSD
        router: address(0x10ED43C718714eb63d5aA57B78B54704E256024E) //pancakeV2
      }));
      tokensToSwap0.push(TokenToSwap({
        tokenIn: address(0xECa41281c24451168a37211F0bc2b8645AF45092), //TPT
        tokenOut: address(0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56), //BUSD
        router: address(0x10ED43C718714eb63d5aA57B78B54704E256024E) //pancakeV2
      }));
      tokensToSwap0.push(TokenToSwap({
        tokenIn: address(0x52CE071Bd9b1C4B00A0b92D298c512478CaD67e8), //COMP
        tokenOut: address(0x2170Ed0880ac9A755fd29B2688956BD959F933F8), //ETH
        router: address(0x10ED43C718714eb63d5aA57B78B54704E256024E) //pancakeV2
      }));
      tokensToSwap0.push(TokenToSwap({
        tokenIn: address(0x947950BcC74888a40Ffa2593C5798F11Fc9124C4), //SUSHI
        tokenOut: address(0x2170Ed0880ac9A755fd29B2688956BD959F933F8), //ETH
        router: address(0x10ED43C718714eb63d5aA57B78B54704E256024E) //pancakeV2
      }));
      tokensToSwap0.push(TokenToSwap({
        tokenIn: address(0x250632378E573c6Be1AC2f97Fcdf00515d0Aa91B), //BETH
        tokenOut: address(0x2170Ed0880ac9A755fd29B2688956BD959F933F8), //ETH
        router: address(0x10ED43C718714eb63d5aA57B78B54704E256024E) //pancakeV2
      }));
      tokensToSwap0.push(TokenToSwap({
        tokenIn: address(0x5B6DcF557E2aBE2323c48445E8CC948910d8c2c9), //MIR
        tokenOut: address(0x23396cF899Ca06c4472205fC903bDB4de249D6fC), //UST
        router: address(0x10ED43C718714eb63d5aA57B78B54704E256024E) //pancakeV2
      }));


      tokensToSwap1.push(TokenToSwap({
        tokenIn: address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c), //wbnb
        tokenOut: address(0x4197C6EF3879a08cD51e5560da5064B773aa1d29), //acs
        router: address(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F) //pancakeV1
      }));
      tokensToSwap1.push(TokenToSwap({
        tokenIn: address(0x47BEAd2563dCBf3bF2c9407fEa4dC236fAbA485A), //SXP
        tokenOut: address(0x4197C6EF3879a08cD51e5560da5064B773aa1d29), //acs
        router: address(0x816278BbBCc529f8cdEE8CC72C226fb01def6E6C) //SwipeSwap
      }));

    }

    function getName() external pure returns (string memory) {
        return "StrategyACryptoS0V5";
    }

    function deposit() public {
    }

    // Controller only function for creating additional rewards from dust
    function withdraw(IERC20 _asset) external returns (uint256 balance) {
        require(msg.sender == controller, "!controller");
        require(want != address(_asset), "want");
        balance = _asset.balanceOf(address(this));
        _asset.safeTransfer(controller, balance);
    }

    // Withdraw partial funds, normally used with a vault withdrawal
    function withdraw(uint256 _amount) external {
      require(msg.sender == controller, "!controller");
      uint256 _balance = IERC20(want).balanceOf(address(this));
      if (_balance < _amount) {
          _amount = _balance;
      }

      uint256 _fee = _amount.mul(withdrawalFee).div(FEE_DENOMINATOR);

      address _vault = IController(controller).vaults(address(want));
      require(_vault != address(0), "!vault"); // additional protection so we don't burn the funds
      IERC20(want).safeTransfer(_vault, _amount.sub(_fee));
    }

    // Withdraw all funds, normally used when migrating strategies
    function withdrawAll() external returns (uint256 balance) {
      require(msg.sender == controller || msg.sender == strategist || msg.sender == governance, "!authorized");

      balance = IERC20(want).balanceOf(address(this));

      address _vault = IController(controller).vaults(address(want));
      require(_vault != address(0), "!vault"); // additional protection so we don't burn the funds
      IERC20(want).safeTransfer(_vault, balance);
    }

    function balanceOfWant() public view returns (uint256) {
        return IERC20(want).balanceOf(address(this));
    }

    function harvest() public returns (uint harvesterRewarded) {
      require(msg.sender == tx.origin, "not eoa");

      uint _before = IERC20(want).balanceOf(address(this));
      _convertAllToWant();
      uint _harvested = IERC20(want).balanceOf(address(this)).sub(_before);

      if (_harvested > 0) {
        uint256 _harvesterReward = _harvested.mul(harvesterReward).div(FEE_DENOMINATOR);
        IERC20(want).safeTransfer(msg.sender, _harvesterReward);
        return _harvesterReward;
      }
    }


    function _convertAllToWant() internal {
      for (uint i=ssToWithdraw.length; i>0; i--) {
        IStableSwap(ssToWithdraw[i-1]).withdraw_admin_fees();
      }

      for (uint i=ssToLiquidate.length; i>0; i--) {
        uint256 _amount = IERC20(ssToLiquidate[i-1].lpToken).balanceOf(address(this));
        if(_amount > 0) {
          IERC20(ssToLiquidate[i-1].lpToken).safeApprove(ssToLiquidate[i-1].pool, 0);
          IERC20(ssToLiquidate[i-1].lpToken).safeApprove(ssToLiquidate[i-1].pool, _amount);
          IStableSwap(ssToLiquidate[i-1].pool).remove_liquidity_one_coin(_amount, ssToLiquidate[i-1].i, 0);
        }
      }

      for (uint i=pairsToLiquidate.length; i>0; i--) {
        _liquidatePair(pairsToLiquidate[i-1].pair, pairsToLiquidate[i-1].tokenA, pairsToLiquidate[i-1].tokenB, pairsToLiquidate[i-1].router);
      }

      for (uint i=ssTokensToSwap.length; i>0; i--) {
        uint256 _amount = IERC20(ssTokensToSwap[i-1].tokenIn).balanceOf(address(this));
        if(_amount > 0) {
          IERC20(ssTokensToSwap[i-1].tokenIn).safeApprove(ssTokensToSwap[i-1].pool, 0);
          IERC20(ssTokensToSwap[i-1].tokenIn).safeApprove(ssTokensToSwap[i-1].pool, _amount);
          if(ssTokensToSwap[i-1].underlying) {
            IStableSwap(ssTokensToSwap[i-1].pool).exchange_underlying(ssTokensToSwap[i-1].i, ssTokensToSwap[i-1].j, _amount, 0);            
          } else {
            IStableSwap(ssTokensToSwap[i-1].pool).exchange(ssTokensToSwap[i-1].i, ssTokensToSwap[i-1].j, _amount, 0);            
          }
        }
      }

      for (uint i=tokensToSwap0.length; i>0; i--) {
        _convertToken(tokensToSwap0[i-1].tokenIn, tokensToSwap0[i-1].tokenOut, tokensToSwap0[i-1].router);
      }

      for (uint i=tokensToSwap1.length; i>0; i--) {
        _convertToken(tokensToSwap1[i-1].tokenIn, tokensToSwap1[i-1].tokenOut, tokensToSwap1[i-1].router);
      }
    }

    function _liquidatePair(address _pair, address _tokenA, address _tokenB, address _router) internal {
      uint256 _amount = IERC20(_pair).balanceOf(address(this));
      if(_amount > 0 ) {
        IERC20(_pair).safeApprove(_router, 0);
        IERC20(_pair).safeApprove(_router, _amount);

        IUniswapRouter(_router).removeLiquidity(
            _tokenA, // address tokenA,
            _tokenB, // address tokenB,
            _amount, // uint liquidity,
            0, // uint amountAMin,
            0, // uint amountBMin,
            address(this), // address to,
            now.add(1800) // uint deadline
          );
      }
    }

    function _convertToken(address _tokenIn, address _tokenOut, address _router) internal {
      uint256 _amount = IERC20(_tokenIn).balanceOf(address(this));
      if(_amount > 0 ) {
        IERC20(_tokenIn).safeApprove(_router, 0);
        IERC20(_tokenIn).safeApprove(_router, _amount);

        address[] memory path = new address[](2);
        path[0] = _tokenIn;
        path[1] = _tokenOut;

        IUniswapRouter(_router).swapExactTokensForTokens(_amount, uint256(0), path, address(this), now.add(1800));
      }
    }

    function balanceOf() public view returns (uint256) {
      return balanceOfWant();
    }

    function setGovernance(address _governance) external {
        require(msg.sender == governance, "!governance");
        governance = _governance;
    }

    function setController(address _controller) external {
        require(msg.sender == governance, "!governance");
        controller = _controller;
    }

    function setStrategist(address _strategist) external {
        require(msg.sender == governance, "!governance");
        strategist = _strategist;
    }



    function addSsToWithdraw(address _ss) external {
      require(msg.sender == strategist || msg.sender == governance, "!authorized");
      ssToWithdraw.push(_ss);
    }

    function addSsToLiquidate(address _pool, address _lpToken, int128 _i) external {
      require(msg.sender == strategist || msg.sender == governance, "!authorized");
      ssToLiquidate.push(SsToLiquidate({
          pool: _pool,
          lpToken: _lpToken,
          i: _i
      }));
    }

    function addPairToLiquidate(address _pair, address _tokenA, address _tokenB, address _router) external {
      require(msg.sender == strategist || msg.sender == governance, "!authorized");
      pairsToLiquidate.push(PairToLiquidate({
          pair: _pair,
          tokenA: _tokenA,
          tokenB: _tokenB,
          router: _router
      }));
    }

    function addSsTokenToSwap(address _tokenIn, address _pool, bool _underlying, int128 _i, int128 _j) external {
      require(msg.sender == strategist || msg.sender == governance, "!authorized");
      ssTokensToSwap.push(SsTokenToSwap({
          tokenIn: _tokenIn,
          pool: _pool,
          underlying: _underlying,
          i: _i,
          j: _j
      }));
    }

    function addTokenToSwap0(address _tokenIn, address _tokenOut, address _router) external {
      require(msg.sender == strategist || msg.sender == governance, "!authorized");
      tokensToSwap0.push(TokenToSwap({
          tokenIn: _tokenIn,
          tokenOut: _tokenOut,
          router: _router
      }));
    }

    function addTokenToSwap1(address _tokenIn, address _tokenOut, address _router) external {
      require(msg.sender == strategist || msg.sender == governance, "!authorized");
      tokensToSwap1.push(TokenToSwap({
          tokenIn: _tokenIn,
          tokenOut: _tokenOut,
          router: _router
      }));
    }

    function deleteSsToWithdraw() external {
      require(msg.sender == strategist || msg.sender == governance, "!authorized");
      delete ssToWithdraw;
    }

    function deleteSsToLiquidate() external {
      require(msg.sender == strategist || msg.sender == governance, "!authorized");
      delete ssToLiquidate;
    }

    function deletePairsToLiquidate() external {
      require(msg.sender == strategist || msg.sender == governance, "!authorized");
      delete pairsToLiquidate;
    }

    function deleteSsTokensToSwap() external {
      require(msg.sender == strategist || msg.sender == governance, "!authorized");
      delete ssTokensToSwap;
    }

    function deleteTokensToSwap0() external {
      require(msg.sender == strategist || msg.sender == governance, "!authorized");
      delete tokensToSwap0;
    }

    function deleteTokensToSwap1() external {
      require(msg.sender == strategist || msg.sender == governance, "!authorized");
      delete tokensToSwap1;
    }

    function setWithdrawalFee(uint256 _withdrawalFee) external {
        require(msg.sender == governance, "!governance");
        withdrawalFee = _withdrawalFee;
    }

    function setHarvesterReward(uint256 _harvesterReward) external {
        require(msg.sender == strategist || msg.sender == governance, "!authorized");
        harvesterReward = _harvesterReward;
    }

    //In case anything goes wrong.
    //This does not increase user risk. Governance already controls funds via strategy upgrade, and is behind timelock and/or multisig.
    function executeTransaction(address target, uint value, string memory signature, bytes memory data) public payable returns (bytes memory) {
        require(msg.sender == governance, "!governance");

        bytes memory callData;

        if (bytes(signature).length == 0) {
            callData = data;
        } else {
            callData = abi.encodePacked(bytes4(keccak256(bytes(signature))), data);
        }

        // solium-disable-next-line security/no-call-value
        (bool success, bytes memory returnData) = target.call.value(value)(callData);
        require(success, "Timelock::executeTransaction: Transaction execution reverted.");

        return returnData;
    }
}