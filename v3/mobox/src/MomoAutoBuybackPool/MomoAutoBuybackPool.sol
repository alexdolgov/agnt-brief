// SPDX-License-Identifier: MIT

pragma solidity ^0.6.6;

/*
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with GSN meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address payable) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes memory) {
        this; // silence state mutability warning without generating bytecode - see https://github.com/ethereum/solidity/issues/2691
        return msg.data;
    }
}

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
     */
    function sendValue(address payable recipient, uint256 amount) internal {
        require(address(this).balance >= amount, "Address: insufficient balance");

        // solhint-disable-next-line avoid-low-level-calls, avoid-call-value
        (bool success, ) = recipient.call{ value: amount }("");
        require(success, "Address: unable to send value, recipient may have reverted");
    }
}

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
        require(b <= a, "SafeMath: subtraction overflow");
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
        // See: https://github.com/OpenZeppelin/openzeppelin-solidity/pull/522
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
        // Solidity only automatically asserts when dividing by 0
        require(b > 0, "SafeMath: division by zero");
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
        require(b != 0, "SafeMath: modulo by zero");
        return a % b;
    }
}

library SafeMathExt {
    function add128(uint128 a, uint128 b) internal pure returns (uint128) {
        uint128 c = a + b;
        require(c >= a, "uint128: addition overflow");

        return c;
    }

    function sub128(uint128 a, uint128 b) internal pure returns (uint128) {
        require(b <= a, "uint128: subtraction overflow");
        uint128 c = a - b;

        return c;
    }

    function add64(uint64 a, uint64 b) internal pure returns (uint64) {
        uint64 c = a + b;
        require(c >= a, "uint64: addition overflow");

        return c;
    }

    function sub64(uint64 a, uint64 b) internal pure returns (uint64) {
        require(b <= a, "uint64: subtraction overflow");
        uint64 c = a - b;

        return c;
    }

    function safe128(uint256 a) internal pure returns(uint128) {
        require(a < 0x0100000000000000000000000000000000, "uint128: number overflow");
        return uint128(a);
    }

    function safe64(uint256 a) internal pure returns(uint64) {
        require(a < 0x010000000000000000, "uint64: number overflow");
        return uint64(a);
    }

    function safe32(uint256 a) internal pure returns(uint32) {
        require(a < 0x0100000000, "uint32: number overflow");
        return uint32(a);
    }

    function safe16(uint256 a) internal pure returns(uint16) {
        require(a < 0x010000, "uint32: number overflow");
        return uint16(a);
    }
}

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


/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor() internal {
        _owner = _msgSender();
        emit OwnershipTransferred(address(0), _owner);
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(_msgSender() == _owner, "not owner");
        _;
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public {
        require(newOwner != address(0), "newOwner invalid");
        if (_owner != address(0)) {
            require(_msgSender() == _owner, "not owner");
        }
        
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }
}

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 * From https://github.com/OpenZeppelin/openzeppelin-contracts
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
  function transferFrom(
    address sender,
    address recipient,
    uint256 amount
  ) external returns (bool);

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

contract ERC20 is IERC20, Context {
    using SafeMath for uint256;

    mapping (address => uint256) internal _balances;
    mapping (address => mapping (address => uint256)) internal _allowances;

    uint256 internal _totalSupply;

    /**
     * @dev Returns the name of the token.
     */
    string public name;

    /**
     * @dev Returns the symbol of the token, usually a shorter version of the
     * name.
     */
    string public symbol;

    /**
     * @dev Returns the number of decimals used to get its user representation.
     * For example, if `decimals` equals `2`, a balance of `505` tokens should
     * be displayed to a user as `5,05` (`505 / 10 ** 2`).
     *
     * Tokens usually opt for a value of 18, imitating the relationship between
     * Ether and Wei. This is the value {ERC20} uses, unless {_setupDecimals} is
     * called.
     *
     * NOTE: This information is only used for _display_ purposes: it in
     * no way affects any of the arithmetic of the contract, including
     * {IERC20-balanceOf} and {IERC20-transfer}.
     */
    uint8  public decimals;

    /**
     * @dev Sets the values for {_name} and {_symbol}, {_decimals}
     *
     * To select a different value for {decimals}, use {_setupDecimals}.
     *
     * All three of these values are immutable: they can only be set once during
     * construction.
     */
    constructor (string memory _name, string memory _symbol, uint8 _decimals) public {
        name = _name;
        symbol = _symbol;
        decimals = _decimals;
    }

    /**
     * @dev See {IERC20-totalSupply}.
     */
    function totalSupply() external view override returns(uint256) {
        return _totalSupply;
    }

    /**
     * @dev See {IERC20-balanceOf}.
     */
    function balanceOf(address _owner) external view override returns (uint256) {
        return _balances[_owner];
    }

    /**
     * @dev See {IERC20-transfer}.
     *
     * Requirements:
     *
     * - `_to` cannot be the zero address.
     * - the caller must have a balance of at least `_amount`.
     */
    function transfer(address _to, uint256 _amount) external override returns (bool) {
        _transfer(_msgSender(), _to, _amount);
        return true;
    }

    /**
     * @dev See {IERC20-allowance}.
     */
    function allowance(address _owner, address _spender) external view override returns (uint256) {
        return _allowances[_owner][_spender];
    }

    /**
     * @dev See {IERC20-approve}.
     *
     * Requirements:
     *
     * - `_spender` cannot be the zero address.
     */
    function approve(address _spender, uint256 _amount) external override returns (bool) {
        _approve(_msgSender(), _spender, _amount);
        return true;
    }

    /**
     * @dev See {IERC20-transferFrom}.
     *
     * Emits an {Approval} event indicating the updated allowance. This is not
     * required by the EIP. See the note at the beginning of {ERC20}.
     *
     * Requirements:
     *
     * - `_from` and `_to` cannot be the zero address.
     * - `_from` must have a balance of at least `_amount`.
     * - the caller must have allowance for `_from`'s tokens of at least
     * `_amount`.
     */
    function transferFrom(address _from, address _to, uint256 _amount) external override returns (bool) {
        require(_from != address(0) && _to != address(0));

        _approve(_from, _msgSender(), _allowances[_from][_msgSender()].sub(_amount));
        _transfer(_from, _to, _amount);
        return true;
    }

    /**
     * @dev Atomically increases the allowance granted to `_spender` by the caller.
     *
     * This is an alternative to {approve} that can be used as a mitigation for
     * problems described in {IERC20-approve}.
     *
     * Emits an {Approval} event indicating the updated allowance.
     *
     * Requirements:
     *
     * - `_spender` cannot be the zero address.
     */
    function increaseAllowance(address _spender, uint256 _addVal) external returns (bool) {
        require(_spender != address(0), "approve to 0");

        _approve(_msgSender(), _spender, _allowances[_msgSender()][_spender].add(_addVal));
        return true;
    }

    /**
     * @dev Atomically decreases the allowance granted to `_spender` by the caller.
     *
     * This is an alternative to {approve} that can be used as a mitigation for
     * problems described in {IERC20-approve}.
     *
     * Emits an {Approval} event indicating the updated allowance.
     *
     * Requirements:
     *
     * - `_spender` cannot be the zero address.
     * - `_spender` must have allowance for the caller of at least
     * `subtractedValue`.
     */
    function decreaseAllowance(address _spender, uint256 _subVal) external returns (bool) {
        require(_spender != address(0), "approve to 0");

        _approve(_msgSender(), _spender, _allowances[_msgSender()][_spender].sub(_subVal));
        return true;
    }

    /**
     * @dev Moves tokens `_amount` from `_from` to `_to`.
     *
     * This is internal function is equivalent to {transfer}, and can be used to
     * e.g. implement automatic token fees, slashing mechanisms, etc.
     *
     * Emits a {Transfer} event.
     *
     * Requirements:
     *
     * - `_from` cannot be the zero address.
     * - `_to` cannot be the zero address.
     * - `_from` must have a balance of at least `_amount`.
     */
    function _transfer(address _from, address _to, uint256 _amount) internal {
        require(_from != address(0), "transfer from 0");
        require(_to != address(0), "transfer to 0");

        _balances[_from] = _balances[_from].sub(_amount);
        _balances[_to] = _balances[_to].add(_amount);
        emit Transfer(_from, _to, _amount);
    }

    /**
     * @dev Sets `amount` as the allowance of `_spender` over the `_owner` s tokens.
     *
     * This internal function is equivalent to `approve`, and can be used to
     * e.g. set automatic allowances for certain subsystems, etc.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `_owner` cannot be the zero address.
     * - `_spender` cannot be the zero address.
     */
    function _approve(address _owner, address _spender, uint256 _amount) internal {
        require(_owner != address(0), "approve from 0");
        require(_spender != address(0), "approve to 0");

        _allowances[_owner][_spender] = _amount;
        emit Approval(_owner, _spender, _amount);
    }

    /** @dev Creates `_amount` tokens and assigns them to `_to`, increasing
     * the total supply.
     *
     * Emits a {Transfer} event with `from` set to the zero address.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     */
    function _mint(address _to, uint256 _amount) internal {
        require(_to != address(0), "mint to 0");

        _totalSupply = _totalSupply.add(_amount);
        _balances[_to] = _balances[_to].add(_amount);
        emit Transfer(address(0), _to, _amount);
    }

    /**
     * @dev Destroys `_amount` tokens from `_from`, reducing the
     * total supply.
     *
     * Emits a {Transfer} event with `to` set to the zero address.
     *
     * Requirements:
     *
     * - `_from` cannot be the zero address.
     * - `_from` must have at least `_amount` tokens.
     */
    function _burn(address _from, uint256 _amount) internal {
        require(_from != address(0), "burn from 0");

        _balances[_from] = _balances[_from].sub(_amount);
        _totalSupply = _totalSupply.sub(_amount);
        emit Transfer(_from, address(0), _amount);
    }
}


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
        require((value == 0) || (token.allowance(address(this), spender) == 0), "SafeERC20: approve from non-zero to non-zero allowance");
        callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, value));
    }

    function safeIncreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        uint256 newAllowance = token.allowance(address(this), spender).add(value);
        callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));
    }

    function safeDecreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        uint256 newAllowance = token.allowance(address(this), spender).sub(value);
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


/**
 * @dev Contract module that helps prevent reentrant calls to a function.
 *
 * Inheriting from `ReentrancyGuard` will make the `nonReentrant` modifier
 * available, which can be aplied to functions to make sure there are no nested
 * (reentrant) calls to them.
 *
 * Note that because there is a single `nonReentrant` guard, functions marked as
 * `nonReentrant` may not call one another. This can be worked around by making
 * those functions `private`, and then adding `external` `nonReentrant` entry
 * points to them.
 */
contract ReentrancyGuard {
    /// @dev counter to allow mutex lock with only one SSTORE operation
    uint256 private _guardCounter;

    /**
     * @dev Prevents a contract from calling itself, directly or indirectly.
     * Calling a `nonReentrant` function from another `nonReentrant`
     * function is not supported. It is possible to prevent this from happening
     * by making the `nonReentrant` function external, and make it call a
     * `private` function that does the actual work.
     */
    modifier nonReentrant() {
        _guardCounter += 1;
        uint256 localCounter = _guardCounter;
        _;
        require(localCounter == _guardCounter, "reentrant call");
    }
}

interface IUniswapV2Router {
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
    function removeLiquidityETH(
        address token,
        uint liquidity,
        uint amountTokenMin,
        uint amountETHMin,
        address to,
        uint deadline
    ) external returns (uint amountToken, uint amountETH);
    function getAmountsOut(uint amountIn, address[] calldata path) external view returns (uint[] memory amounts);
}

interface IWETH {
    function deposit() external payable;
}

interface MomoToken {
    function burn(uint256 amount_) external;
}

interface IUniswapV2Pair {
    function token0() external view returns (address);
    function token1() external view returns (address);
    function burn(address to) external returns (uint amount0, uint amount1);
    function balanceOf(address owner) external view returns (uint);
    function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
    function totalSupply() external view returns (uint);
}

contract MomoAutoBuybackPool is Ownable, ReentrancyGuard {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    address public sellOp;
    address public buybackOp;

    IUniswapV2Router public constant router = IUniswapV2Router(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F);

    address public constant MBOX = 0x3203c9E46cA618C8C1cE5dC67e7e9D75f5da2377;
    address public constant WETH = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;
    uint256 public buybackStartAmount = 2000 ether;
    uint256 public buybackMaxAmountPer = 1 ether;

    event TokenSwapped(
        address fromToken,
        address toToken,
        uint256 fromAmount,
        uint256 toAmount
    );

    event MboxBurned(
        address from,
        uint256 amount
    );

    constructor () public {}

    receive() external payable {}

    modifier onlySeller() {
        require(msg.sender == sellOp, "not allowed");
        _;
    }

    modifier onlyBuyer() {
        require(msg.sender == buybackOp, "not allowed");
        _;
    }

    function setSellOp(address _opterator) external {
        require(_opterator != address(0), "invalid addr");
        if (sellOp != address(0)) {
            require(msg.sender == sellOp, "not operator");
        } else {
            require(msg.sender == owner(), "not owner");
        }
        sellOp = _opterator;
    }

    function setBuybackOp(address _opterator) external {
        require(_opterator != address(0), "invalid addr");
        if (buybackOp != address(0)) {
            require(msg.sender == buybackOp, "not operator");
        } else {
            require(msg.sender == owner(), "not owner");
        }
        buybackOp = _opterator;
    }


    function setBuybackStartAmount(uint256 _startAmount) external onlyOwner {
        buybackStartAmount = _startAmount;
    }

    function setBuybackMaxAmount(uint256 _maxAmount) external onlyOwner {
        buybackMaxAmountPer = _maxAmount;
    }

    function quote(uint256 amount) public pure returns (uint256 quoteAmount) {
        quoteAmount = amount.mul(950).div(1000);
    }

    function approve(address[] calldata _tokens, uint256[] calldata _amounts) external onlySeller {
        require(_tokens.length == _amounts.length, 'invalid args');
        for(uint256 i = 0; i < _tokens.length; i++) {
            IERC20(_tokens[i]).approve(address(router), _amounts[i]);
        }
    }

    function _swapTokens(address[] calldata _tokens) internal {
        address[] memory path = new address[](2);
        path[1] = WETH;
        uint256 tokenBalance;
        uint256[] memory swapAmounts;
        for(uint256 i = 0; i < _tokens.length; i++) {
            if (address(0) == _tokens[i]) {
                tokenBalance = address(this).balance;
                if (tokenBalance > 0) {
                    IWETH(WETH).deposit{value: tokenBalance}();
                }
            } else {
                tokenBalance = IERC20(_tokens[i]).balanceOf(address(this));
                if (tokenBalance > 0) {
                    path[0] = _tokens[i];
                    swapAmounts = router.swapExactTokensForTokens(tokenBalance, 0, path, address(this), now + 120);
                    emit TokenSwapped(_tokens[i], WETH, tokenBalance, swapAmounts[swapAmounts.length - 1]);
                }
            }
        }
    }

    function _swapTokenToMbox(uint256 _amount, uint256 _amountOutMin, uint256 _deadline) internal returns (uint256 amountOut) {
        address[] memory path = new address[](2);
        path[0] = WETH;
        path[1] = MBOX;
        uint256[] memory amounts = router.swapExactTokensForTokens(_amount, _amountOutMin, path, address(this), _deadline);
        amountOut = amounts[amounts.length - 1];
        emit TokenSwapped(WETH, MBOX, _amount, amountOut);
    }

    function _removeLps(address[] calldata _pairs) internal {
        address token0;
        address token1;
        uint256 amount0;
        uint256 amount1;
        for(uint256 i = 0; i < _pairs.length; i++) {
            uint256 lpBalance = IUniswapV2Pair(_pairs[i]).balanceOf(address(this));
            
            if (lpBalance > 0) {
                (uint256 reserve0, uint256 reserve1, ) = IUniswapV2Pair(_pairs[i]).getReserves();
                uint256 _totalLp = IUniswapV2Pair(_pairs[i]).totalSupply();
                token0 = IUniswapV2Pair(_pairs[i]).token0();
                token1 = IUniswapV2Pair(_pairs[i]).token1();
                amount0 = quote(lpBalance.mul(reserve0) / _totalLp);
                amount1 = quote(lpBalance.mul(reserve1) / _totalLp);
                router.removeLiquidity(
                    token0,
                    token1,
                    lpBalance,
                    amount0,
                    amount1,
                    address(this),
                    now + 120
                );
            }
        }
    }

    //Remove lps, swap erc20 to bnb
    function removeLpsAndSwapTokens(address[] calldata _pairs, address[] calldata _tokens) external onlySeller {
        _removeLps(_pairs);
        _swapTokens(_tokens);
    }

    function burnMbox(uint256 _amount) public onlyBuyer {
        require(_amount > 0, 'invalid amount');
        MomoToken(MBOX).burn(_amount);
        emit MboxBurned(address(this), _amount);
    }

    function buyback(uint256 _amount, uint256 _amountOutMin, uint256 _deadline) external onlyBuyer {
        require(IERC20(WETH).balanceOf(address(this)) > buybackStartAmount, 'invalid balance');
        require(_amount < buybackMaxAmountPer, 'invalid amount');
        uint256 amountOut = _swapTokenToMbox(_amount, _amountOutMin, _deadline);
        burnMbox(amountOut);
    }

    function swapTokenToToken(address[] calldata _path, uint256 _amount) external onlyBuyer {
        require(IERC20(_path[0]).balanceOf(address(this)) > _amount, 'invalid balance');
        
        uint256[] memory outAmounts = router.swapExactTokensForTokens(_amount, 0, _path, address(this), now.add(120));
        uint256 outAmount = outAmounts[outAmounts.length - 1];
        emit TokenSwapped(_path[0], _path[1], _amount, outAmount);
    }

    function getLpsETHAmount(address[] calldata _pairs) external view returns(uint256[] memory amountsRet) {
        require(_pairs.length > 0, 'invalid pairs');
        uint256 expectAmount;
        uint256 lpBalance;
        amountsRet = new uint[](_pairs.length);
        for(uint256 i = 0; i < _pairs.length; i++) {
            lpBalance = IUniswapV2Pair(_pairs[i]).balanceOf(address(this));
            expectAmount = 0;

            if (lpBalance > 0) {
                (uint256 reserve0, uint256 reserve1, ) = IUniswapV2Pair(_pairs[i]).getReserves();
                uint256 _totalSupply = IUniswapV2Pair(_pairs[i]).totalSupply();
                
                uint256 amount0 = lpBalance.mul(reserve0) / _totalSupply;
                uint256 amount1 = lpBalance.mul(reserve1) / _totalSupply;

                address token0 = IUniswapV2Pair(_pairs[i]).token0();
                address token1 = IUniswapV2Pair(_pairs[i]).token1();
                
                address[] memory path = new address[](2);
                path[1] = WETH;

                uint256[] memory amounts;
                if (token0 == WETH) {
                    expectAmount = amount0;
                    path[0] = token1;
                    amounts = router.getAmountsOut(amount1, path);
                    expectAmount += amounts[amounts.length - 1];
                } else if (token1 == WETH) {
                    expectAmount = amount1;
                    path[0] = token0;
                    amounts = router.getAmountsOut(amount0, path);
                    expectAmount += amounts[amounts.length - 1];
                } else {
                    path[0] = token1;
                    amounts = router.getAmountsOut(amount1, path);
                    expectAmount = amounts[amounts.length - 1];
                    
                    path[0] = token1;
                    amounts = router.getAmountsOut(amount0, path);
                    expectAmount += amounts[amounts.length - 1];
                }
            }
            amountsRet[i] = expectAmount; 
        }
    }

    function getTokensETHAmount(address[] calldata _tokens) external view returns(uint256[] memory amountsRet) {
        address[] memory path = new address[](2);
        path[1] = WETH;
        amountsRet = new uint[](_tokens.length);
        uint256 expectAmount;
        uint256[] memory amounts;
        uint256 tokenBalance;
        for(uint256 i = 0; i < _tokens.length; i++) {
            expectAmount = 0;
            require(_tokens[i] != WETH, 'invalid token');
            tokenBalance = IERC20(_tokens[i]).balanceOf(address(this));
            if (tokenBalance > 0) {
                path[0] = _tokens[i];
                amounts = router.getAmountsOut(tokenBalance, path);
                expectAmount += amounts[amounts.length - 1];
            }
            amountsRet[i] = expectAmount;
        }
    }
}