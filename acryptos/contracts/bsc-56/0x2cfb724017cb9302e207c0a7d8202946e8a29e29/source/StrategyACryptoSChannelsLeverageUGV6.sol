// File: @openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol

pragma solidity >=0.6.0 <0.8.0;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20Upgradeable {
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
    function transfer(address recipient, uint256 amount)
        external
        returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender)
        external
        view
        returns (uint256);

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
    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );
}

// File: @openzeppelin/contracts-upgradeable/math/SafeMathUpgradeable.sol

pragma solidity >=0.6.0 <0.8.0;

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
library SafeMathUpgradeable {
    /**
     * @dev Returns the addition of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryAdd(uint256 a, uint256 b)
        internal
        pure
        returns (bool, uint256)
    {
        uint256 c = a + b;
        if (c < a) return (false, 0);
        return (true, c);
    }

    /**
     * @dev Returns the substraction of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function trySub(uint256 a, uint256 b)
        internal
        pure
        returns (bool, uint256)
    {
        if (b > a) return (false, 0);
        return (true, a - b);
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryMul(uint256 a, uint256 b)
        internal
        pure
        returns (bool, uint256)
    {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
        if (a == 0) return (true, 0);
        uint256 c = a * b;
        if (c / a != b) return (false, 0);
        return (true, c);
    }

    /**
     * @dev Returns the division of two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryDiv(uint256 a, uint256 b)
        internal
        pure
        returns (bool, uint256)
    {
        if (b == 0) return (false, 0);
        return (true, a / b);
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryMod(uint256 a, uint256 b)
        internal
        pure
        returns (bool, uint256)
    {
        if (b == 0) return (false, 0);
        return (true, a % b);
    }

    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
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
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a, "SafeMath: subtraction overflow");
        return a - b;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     *
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0) return 0;
        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");
        return c;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "SafeMath: division by zero");
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "SafeMath: modulo by zero");
        return a % b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {trySub}.
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        require(b <= a, errorMessage);
        return a - b;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryDiv}.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting with custom message when dividing by zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryMod}.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        return a % b;
    }
}

// File: @openzeppelin/contracts-upgradeable/utils/AddressUpgradeable.sol

pragma solidity >=0.6.2 <0.8.0;

/**
 * @dev Collection of functions related to the address type
 */
library AddressUpgradeable {
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
        // This method relies on extcodesize, which returns 0 for contracts in
        // construction, since the code is only stored at the end of the
        // constructor execution.

        uint256 size;
        // solhint-disable-next-line no-inline-assembly
        assembly {
            size := extcodesize(account)
        }
        return size > 0;
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
        require(
            address(this).balance >= amount,
            "Address: insufficient balance"
        );

        // solhint-disable-next-line avoid-low-level-calls, avoid-call-value
        (bool success, ) = recipient.call{value: amount}("");
        require(
            success,
            "Address: unable to send value, recipient may have reverted"
        );
    }

    /**
     * @dev Performs a Solidity function call using a low level `call`. A
     * plain`call` is an unsafe replacement for a function call: use this
     * function instead.
     *
     * If `target` reverts with a revert reason, it is bubbled up by this
     * function (like regular Solidity function calls).
     *
     * Returns the raw returned data. To convert to the expected return value,
     * use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].
     *
     * Requirements:
     *
     * - `target` must be a contract.
     * - calling `target` with `data` must not revert.
     *
     * _Available since v3.1._
     */
    function functionCall(address target, bytes memory data)
        internal
        returns (bytes memory)
    {
        return functionCall(target, data, "Address: low-level call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`], but with
     * `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but also transferring `value` wei to `target`.
     *
     * Requirements:
     *
     * - the calling contract must have an ETH balance of at least `value`.
     * - the called Solidity function must be `payable`.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(
        address target,
        bytes memory data,
        uint256 value
    ) internal returns (bytes memory) {
        return
            functionCallWithValue(
                target,
                data,
                value,
                "Address: low-level call with value failed"
            );
    }

    /**
     * @dev Same as {xref-Address-functionCallWithValue-address-bytes-uint256-}[`functionCallWithValue`], but
     * with `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(
        address target,
        bytes memory data,
        uint256 value,
        string memory errorMessage
    ) internal returns (bytes memory) {
        require(
            address(this).balance >= value,
            "Address: insufficient balance for call"
        );
        require(isContract(target), "Address: call to non-contract");

        // solhint-disable-next-line avoid-low-level-calls
        (bool success, bytes memory returndata) = target.call{value: value}(
            data
        );
        return _verifyCallResult(success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(address target, bytes memory data)
        internal
        view
        returns (bytes memory)
    {
        return
            functionStaticCall(
                target,
                data,
                "Address: low-level static call failed"
            );
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal view returns (bytes memory) {
        require(isContract(target), "Address: static call to non-contract");

        // solhint-disable-next-line avoid-low-level-calls
        (bool success, bytes memory returndata) = target.staticcall(data);
        return _verifyCallResult(success, returndata, errorMessage);
    }

    function _verifyCallResult(
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) private pure returns (bytes memory) {
        if (success) {
            return returndata;
        } else {
            // Look for revert reason and bubble it up if present
            if (returndata.length > 0) {
                // The easiest way to bubble the revert reason is using memory via assembly

                // solhint-disable-next-line no-inline-assembly
                assembly {
                    let returndata_size := mload(returndata)
                    revert(add(32, returndata), returndata_size)
                }
            } else {
                revert(errorMessage);
            }
        }
    }
}

// File: @openzeppelin/contracts-upgradeable/token/ERC20/SafeERC20Upgradeable.sol

pragma solidity >=0.6.0 <0.8.0;

/**
 * @title SafeERC20
 * @dev Wrappers around ERC20 operations that throw on failure (when the token
 * contract returns false). Tokens that return no value (and instead revert or
 * throw on failure) are also supported, non-reverting calls are assumed to be
 * successful.
 * To use this library you can add a `using SafeERC20 for IERC20;` statement to your contract,
 * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
 */
library SafeERC20Upgradeable {
    using SafeMathUpgradeable for uint256;
    using AddressUpgradeable for address;

    function safeTransfer(
        IERC20Upgradeable token,
        address to,
        uint256 value
    ) internal {
        _callOptionalReturn(
            token,
            abi.encodeWithSelector(token.transfer.selector, to, value)
        );
    }

    function safeTransferFrom(
        IERC20Upgradeable token,
        address from,
        address to,
        uint256 value
    ) internal {
        _callOptionalReturn(
            token,
            abi.encodeWithSelector(token.transferFrom.selector, from, to, value)
        );
    }

    /**
     * @dev Deprecated. This function has issues similar to the ones found in
     * {IERC20-approve}, and its usage is discouraged.
     *
     * Whenever possible, use {safeIncreaseAllowance} and
     * {safeDecreaseAllowance} instead.
     */
    function safeApprove(
        IERC20Upgradeable token,
        address spender,
        uint256 value
    ) internal {
        // safeApprove should only be called when setting an initial allowance,
        // or when resetting it to zero. To increase and decrease it, use
        // 'safeIncreaseAllowance' and 'safeDecreaseAllowance'
        // solhint-disable-next-line max-line-length
        require(
            (value == 0) || (token.allowance(address(this), spender) == 0),
            "SafeERC20: approve from non-zero to non-zero allowance"
        );
        _callOptionalReturn(
            token,
            abi.encodeWithSelector(token.approve.selector, spender, value)
        );
    }

    function safeIncreaseAllowance(
        IERC20Upgradeable token,
        address spender,
        uint256 value
    ) internal {
        uint256 newAllowance = token.allowance(address(this), spender).add(
            value
        );
        _callOptionalReturn(
            token,
            abi.encodeWithSelector(
                token.approve.selector,
                spender,
                newAllowance
            )
        );
    }

    function safeDecreaseAllowance(
        IERC20Upgradeable token,
        address spender,
        uint256 value
    ) internal {
        uint256 newAllowance = token.allowance(address(this), spender).sub(
            value,
            "SafeERC20: decreased allowance below zero"
        );
        _callOptionalReturn(
            token,
            abi.encodeWithSelector(
                token.approve.selector,
                spender,
                newAllowance
            )
        );
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     */
    function _callOptionalReturn(IERC20Upgradeable token, bytes memory data)
        private
    {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We use {Address.functionCall} to perform this call, which verifies that
        // the target address contains contract code and also asserts for success in the low-level call.

        bytes memory returndata = address(token).functionCall(
            data,
            "SafeERC20: low-level call failed"
        );
        if (returndata.length > 0) {
            // Return data is optional
            // solhint-disable-next-line max-line-length
            require(
                abi.decode(returndata, (bool)),
                "SafeERC20: ERC20 operation did not succeed"
            );
        }
    }
}

// File: @openzeppelin/contracts-upgradeable/math/MathUpgradeable.sol

pragma solidity >=0.6.0 <0.8.0;

/**
 * @dev Standard math utilities missing in the Solidity language.
 */
library MathUpgradeable {
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
        return (a / 2) + (b / 2) + (((a % 2) + (b % 2)) / 2);
    }
}

// File: @openzeppelin/contracts-upgradeable/proxy/Initializable.sol

// solhint-disable-next-line compiler-version
pragma solidity >=0.4.24 <0.8.0;

/**
 * @dev This is a base contract to aid in writing upgradeable contracts, or any kind of contract that will be deployed
 * behind a proxy. Since a proxied contract can't have a constructor, it's common to move constructor logic to an
 * external initializer function, usually called `initialize`. It then becomes necessary to protect this initializer
 * function so it can only be called once. The {initializer} modifier provided by this contract will have this effect.
 *
 * TIP: To avoid leaving the proxy in an uninitialized state, the initializer function should be called as early as
 * possible by providing the encoded function call as the `_data` argument to {UpgradeableProxy-constructor}.
 *
 * CAUTION: When used with inheritance, manual care must be taken to not invoke a parent initializer twice, or to ensure
 * that all initializers are idempotent. This is not verified automatically as constructors are by Solidity.
 */
abstract contract Initializable {
    /**
     * @dev Indicates that the contract has been initialized.
     */
    bool private _initialized;

    /**
     * @dev Indicates that the contract is in the process of being initialized.
     */
    bool private _initializing;

    /**
     * @dev Modifier to protect an initializer function from being invoked twice.
     */
    modifier initializer() {
        require(
            _initializing || _isConstructor() || !_initialized,
            "Initializable: contract is already initialized"
        );

        bool isTopLevelCall = !_initializing;
        if (isTopLevelCall) {
            _initializing = true;
            _initialized = true;
        }

        _;

        if (isTopLevelCall) {
            _initializing = false;
        }
    }

    /// @dev Returns true if and only if the function is running in the constructor
    function _isConstructor() private view returns (bool) {
        return !AddressUpgradeable.isContract(address(this));
    }
}

// File: MasterChef/contracts/strategies/StrategyACryptoSChannelsLeverageUGV6.sol

//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.6.12;

contract StrategyACryptoSChannelsLeverageUGV6 is Initializable {
    using SafeERC20Upgradeable for IERC20Upgradeable;
    using AddressUpgradeable for address;
    using SafeMathUpgradeable for uint256;
    using MathUpgradeable for uint256;

    address public constant rewardToken =
        address(0xdE9a73272BC2F28189CE3c243e36FaFDA2485212);
    address public constant comptroller =
        address(0x8Cd2449Ed0469D90a7C4321DF585e7913dd6E715);

    address public constant mdx =
        address(0x9C65AB58d8d978DB963e63f2bfB7121627e3a739);
    address public constant mdxSwapFarm =
        address(0x782395303692aBeD877d2737Aa7982345eB44c11);
    address public constant mdexRouter =
        address(0x7DAe51BD3E3376B8c7c4900E9107f12Be3AF1bA8);

    address public want;
    address public vToken;
    address public uniswapRouter;
    address[] public rewardTokenToWantPath;
    uint256 public targetBorrowLimit;
    uint256 public targetBorrowLimitHysteresis;

    address public governance;
    address public controller;
    address public strategist;

    uint256 public performanceFee;
    uint256 public strategistReward;
    uint256 public withdrawalFee;
    uint256 public harvesterReward;
    uint256 public constant FEE_DENOMINATOR = 10000;

    bool public venusRedemptionFeeActive;
    bool public paused;
    bool public enableHarvestMdxSwapFarm;

    function initialize(
        address _governance,
        address _strategist,
        address _controller,
        address _want,
        address _vToken,
        uint256 _targetBorrowLimit,
        uint256 _targetBorrowLimitHysteresis,
        address _uniswapRouter,
        address[] memory _rewardTokenToWantPath,
        bool _venusRedemptionFeeActive,
        bool _enableHarvestMdxSwapFarm
    ) public initializer {
        performanceFee = 1450;
        strategistReward = 50;
        withdrawalFee = 10;
        harvesterReward = 30;

        governance = _governance;
        strategist = _strategist;
        controller = _controller;

        want = _want;
        vToken = _vToken;
        targetBorrowLimit = _targetBorrowLimit;
        targetBorrowLimitHysteresis = _targetBorrowLimitHysteresis;
        uniswapRouter = _uniswapRouter;
        rewardTokenToWantPath = _rewardTokenToWantPath;
        venusRedemptionFeeActive = _venusRedemptionFeeActive;
        enableHarvestMdxSwapFarm = _enableHarvestMdxSwapFarm;

        address[] memory _markets = new address[](1);
        _markets[0] = vToken;
        IComptroller(comptroller).enterMarkets(_markets);
    }

    function getName() external pure returns (string memory) {
        return "StrategyACryptoSVenusLeverageUGV6";
    }

    function deposit() public {
        uint256 _want = IERC20Upgradeable(want).balanceOf(address(this));
        if (_want > 0) {
            _supplyWant();
            _rebalance(0);
        }
    }

    function _supplyWant() internal {
        if (paused) return;
        uint256 _want = IERC20Upgradeable(want).balanceOf(address(this));
        IERC20Upgradeable(want).safeApprove(vToken, 0);
        IERC20Upgradeable(want).safeApprove(vToken, _want);
        IVToken(vToken).mint(_want);
    }

    function _claimRewardToken() internal {
        address[] memory _markets = new address[](1);
        _markets[0] = vToken;
        IComptroller(comptroller).claimCan(address(this), _markets);
    }

    function _rebalance(uint256 withdrawAmount) internal {
        uint256 _ox = IVToken(vToken).balanceOfUnderlying(address(this));
        if (_ox == 0) return;
        require(withdrawAmount <= _ox, "_rebalance: !withdraw");
        uint256 _x = _ox.sub(withdrawAmount);
        uint256 _y = IVToken(vToken).borrowBalanceCurrent(address(this));
        uint256 _c = _collateralFactor();
        uint256 _L = _c.mul(targetBorrowLimit).div(1e18);
        uint256 _currentL = _divUp(_y, _x == 0 ? 1 : _x);
        uint256 _liquidityAvailable = IVToken(vToken).getCash();
        if (_currentL.add(targetBorrowLimitHysteresis.mul(_c).div(1e18)) < _L) {
            uint256 _dy = _L.mul(_x).div(1e18).sub(_y).mul(1e18).div(
                uint256(1e18).sub(_L)
            );
            uint256 _max_dy = _ox.mul(_c).div(1e18).sub(_y);

            if (_dy > _max_dy) _dy = _max_dy;
            if (_dy > _liquidityAvailable) _dy = _liquidityAvailable;

            // uint256 _borrowCap = IComptroller(comptroller).borrowCaps(vToken);
            // if (_borrowCap != 0) {
            //     uint256 _maxBorrowCap = 0;
            //     uint256 _totalBorrows = IVToken(vToken).totalBorrows();
            //     if (_totalBorrows < _borrowCap.sub(1)) {
            //         _maxBorrowCap = _borrowCap.sub(1).sub(_totalBorrows);
            //     }
            //     if (_dy > _maxBorrowCap) _dy = _maxBorrowCap;
            // }

            if (_dy > 0) {
                IVToken(vToken).borrow(_dy);
                _supplyWant();
            }
        } else {
            uint256 _fee = _venusRedemptionFee();
            while (
                _currentL >
                _L.add(targetBorrowLimitHysteresis.mul(_c).div(1e18))
            ) {
                uint256 _dy = _divUp(
                    _y.sub(_mulUp(_L, _x)),
                    uint256(1e18).sub(_divUp(_L, uint256(1e18).sub(_fee)))
                );
                if (_dy.add(10) > _y) _dy = _y;
                uint256 _dx = _dy.mul(1e18).div(uint256(1e18).sub(_fee));
                uint256 _max_dx = _ox.sub(_divUp(_y, _c));
                if (_dx > _max_dx) _dx = _max_dx;
                if (_dx > _liquidityAvailable) _dx = _liquidityAvailable;
                require(
                    IVToken(vToken).redeemUnderlying(_dx) == 0,
                    "_rebalance: !redeem"
                );

                _dy = IERC20Upgradeable(want).balanceOf(address(this));
                // if(_dy > _y) _dy = _y;

                _ox = _ox.sub(_dx);
                require(withdrawAmount <= _ox, "_rebalance: !withdraw");
                _x = _ox.sub(withdrawAmount);

                IERC20Upgradeable(want).safeApprove(vToken, 0);
                IERC20Upgradeable(want).safeApprove(vToken, _dy);
                IVToken(vToken).repayBorrow(_dy);
                _y = _y.sub(_dy);

                _currentL = _divUp(_y, _x == 0 ? 1 : _x);
                _liquidityAvailable = IVToken(vToken).getCash();
            }
        }
    }

    function _mulUp(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 product = a.mul(b);
        if (product == 0) {
            return 0;
        } else {
            return product.sub(1).div(1e18).add(1);
        }
    }

    function _divUp(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        } else {
            return a.mul(1e18).sub(1).div(b).add(1);
        }
    }

    // Controller only function for creating additional rewards from dust
    function withdraw(IERC20Upgradeable _asset)
        external
        returns (uint256 balance)
    {
        require(msg.sender == controller, "!controller");
        require(want != address(_asset), "want");
        balance = _asset.balanceOf(address(this));
        _asset.safeTransfer(controller, balance);
    }

    // Withdraw partial funds, normally used with a vault withdrawal
    function withdraw(uint256 _amount) external {
        require(msg.sender == controller, "!controller");

        uint256 _balance = IERC20Upgradeable(want).balanceOf(address(this));
        if (_balance < _amount) {
            _amount = _withdrawSome(_amount.sub(_balance));
            _amount = _amount.add(_balance);
        }

        uint256 _fee = _amount.mul(withdrawalFee).div(FEE_DENOMINATOR);
        IERC20Upgradeable(want).safeTransfer(
            IController(controller).rewards(),
            _fee
        );
        address _vault = IController(controller).vaults(address(want));
        require(_vault != address(0), "!vault"); // additional protection so we don't burn the funds
        IERC20Upgradeable(want).safeTransfer(_vault, _amount.sub(_fee));
    }

    function _withdrawSome(uint256 _amount) internal returns (uint256) {
        uint256 _amountToRedeem = _amount.mul(1e18).div(
            uint256(1e18).sub(_venusRedemptionFee())
        );
        _rebalance(_amountToRedeem);
        require(
            IVToken(vToken).redeemUnderlying(_amountToRedeem) == 0,
            "_withdrawSome: !redeem"
        );
        return _amount;
    }

    // Withdraw all funds, normally used when migrating strategies
    function withdrawAll() external returns (uint256 balance) {
        require(
            msg.sender == controller ||
                msg.sender == strategist ||
                msg.sender == governance,
            "!authorized"
        );
        _withdrawAll();

        balance = IERC20Upgradeable(want).balanceOf(address(this));

        address _vault = IController(controller).vaults(address(want));
        require(_vault != address(0), "!vault"); // additional protection so we don't burn the funds
        IERC20Upgradeable(want).safeTransfer(_vault, balance);
    }

    function _withdrawAll() internal {
        targetBorrowLimit = 0;
        targetBorrowLimitHysteresis = 0;
        _rebalance(0);
        require(
            IVToken(vToken).redeem(IVToken(vToken).balanceOf(address(this))) ==
                0,
            "_withdrawAll: !redeem"
        );
    }

    function _convertRewardsToWant() internal {
        uint256 _rewardToken = IERC20Upgradeable(rewardToken).balanceOf(
            address(this)
        );
        if (_rewardToken > 0) {
            IERC20Upgradeable(rewardToken).safeApprove(uniswapRouter, 0);
            IERC20Upgradeable(rewardToken).safeApprove(
                uniswapRouter,
                _rewardToken
            );

            IUniswapRouter(uniswapRouter).swapExactTokensForTokens(
                _rewardToken,
                uint256(0),
                rewardTokenToWantPath,
                address(this),
                now.add(1800)
            );
        }
    }

    function _harvestMdxSwapFarm() internal {
        IMdxSwapFarm(mdxSwapFarm).takerWithdraw(); //harvest mdx from swap farm
        uint256 _mdx = IERC20Upgradeable(mdx).balanceOf(address(this));
        if (_mdx > 0) {
            IERC20Upgradeable(mdx).safeApprove(mdexRouter, 0);
            IERC20Upgradeable(mdx).safeApprove(mdexRouter, _mdx);

            address[] memory path = new address[](3);
            path[0] = mdx;
            path[1] = address(0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56); //busd
            path[2] = rewardToken;

            IUniswapRouter(mdexRouter).swapExactTokensForTokens(
                _mdx,
                uint256(0),
                path,
                address(this),
                now.add(1800)
            );
        }
    }

    function balanceOfWant() public view returns (uint256) {
        return IERC20Upgradeable(want).balanceOf(address(this));
    }

    function balanceOfStakedWant() public view returns (uint256) {
        return
            IVToken(vToken)
                .balanceOf(address(this))
                .mul(IVToken(vToken).exchangeRateStored())
                .div(1e18)
                .mul(uint256(1e18).sub(_venusRedemptionFee()))
                .div(1e18)
                .sub(IVToken(vToken).borrowBalanceStored(address(this)));
    }

    function balanceOfStakedWantCurrent() public returns (uint256) {
        return
            IVToken(vToken)
                .balanceOfUnderlying(address(this))
                .mul(uint256(1e18).sub(_venusRedemptionFee()))
                .div(1e18)
                .sub(IVToken(vToken).borrowBalanceCurrent(address(this)));
    }

    function borrowLimit() public returns (uint256) {
        return
            IVToken(vToken).borrowBalanceCurrent(address(this)).mul(1e18).div(
                IVToken(vToken)
                    .balanceOfUnderlying(address(this))
                    .mul(_collateralFactor())
                    .div(1e18)
            );
    }

    function _collateralFactor() internal view returns (uint256) {
        (, uint256 _cf, ) = IComptroller(comptroller).markets(vToken);
        return _cf;
    }

    function _venusRedemptionFee() internal view returns (uint256) {
        if (!venusRedemptionFeeActive) return 0;
        return
            venusRedemptionFeeActive
                ? IComptroller(comptroller).treasuryPercent()
                : 0;
    }

    function harvest() public returns (uint256 harvesterRewarded) {
        require(msg.sender == tx.origin, "not eoa");

        uint256 _rewardToken = IERC20Upgradeable(rewardToken).balanceOf(
            address(this)
        );
        if (enableHarvestMdxSwapFarm) _harvestMdxSwapFarm();
        _claimRewardToken();
        _rewardToken = IERC20Upgradeable(rewardToken)
            .balanceOf(address(this))
            .sub(_rewardToken);

        uint256 _harvesterReward;
        if (_rewardToken > 0) {
            uint256 _fee = _rewardToken.mul(performanceFee).div(
                FEE_DENOMINATOR
            );
            uint256 _reward = _rewardToken.mul(strategistReward).div(
                FEE_DENOMINATOR
            );
            _harvesterReward = _rewardToken.mul(harvesterReward).div(
                FEE_DENOMINATOR
            );
            IERC20Upgradeable(rewardToken).safeTransfer(
                IController(controller).rewards(),
                _fee
            );
            IERC20Upgradeable(rewardToken).safeTransfer(strategist, _reward);
            IERC20Upgradeable(rewardToken).safeTransfer(
                msg.sender,
                _harvesterReward
            );
        }

        if (want != rewardToken) _convertRewardsToWant();
        _supplyWant();
        _rebalance(0);

        return _harvesterReward;
    }

    function balanceOf() public view returns (uint256) {
        return balanceOfWant().add(balanceOfStakedWant());
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

    function setPerformanceFee(uint256 _performanceFee) external {
        require(
            msg.sender == strategist || msg.sender == governance,
            "!authorized"
        );
        performanceFee = _performanceFee;
    }

    function setStrategistReward(uint256 _strategistReward) external {
        require(
            msg.sender == strategist || msg.sender == governance,
            "!authorized"
        );
        strategistReward = _strategistReward;
    }

    function setWithdrawalFee(uint256 _withdrawalFee) external {
        require(msg.sender == governance, "!authorized");
        withdrawalFee = _withdrawalFee;
    }

    function setHarvesterReward(uint256 _harvesterReward) external {
        require(
            msg.sender == strategist || msg.sender == governance,
            "!authorized"
        );
        harvesterReward = _harvesterReward;
    }

    function setTargetBorrowLimit(
        uint256 _targetBorrowLimit,
        uint256 _targetBorrowLimitHysteresis
    ) external {
        require(
            msg.sender == strategist || msg.sender == governance,
            "!authorized"
        );
        targetBorrowLimit = _targetBorrowLimit;
        targetBorrowLimitHysteresis = _targetBorrowLimitHysteresis;
    }

    function setUniswapRouter(
        address _uniswapRouter,
        address[] memory _rewardTokenToWantPath
    ) external {
        require(
            msg.sender == strategist || msg.sender == governance,
            "!authorized"
        );
        uniswapRouter = _uniswapRouter;
        rewardTokenToWantPath = _rewardTokenToWantPath;
    }

    function setVenusRedemptionFeeActive(bool _venusRedemptionFeeActive)
        external
    {
        require(
            msg.sender == strategist || msg.sender == governance,
            "!authorized"
        );
        venusRedemptionFeeActive = _venusRedemptionFeeActive;
    }

    function setEnableHarvestMdxSwapFarm(bool _enableHarvestMdxSwapFarm)
        external
    {
        require(
            msg.sender == strategist || msg.sender == governance,
            "!authorized"
        );
        enableHarvestMdxSwapFarm = _enableHarvestMdxSwapFarm;
    }

    function pause() external {
        require(
            msg.sender == strategist || msg.sender == governance,
            "!authorized"
        );
        _withdrawAll();
        paused = true;
    }

    function unpause() external {
        require(
            msg.sender == strategist || msg.sender == governance,
            "!authorized"
        );
        paused = false;
    }

    //In case anything goes wrong - Venus contracts are upgradeable and we have no guarantees how they might change.
    //This does not increase user risk. Governance already controls funds via strategy upgrade, and is behind timelock and/or multisig.
    function executeTransaction(
        address target,
        uint256 value,
        string memory signature,
        bytes memory data
    ) public payable returns (bytes memory) {
        require(msg.sender == governance, "!governance");

        bytes memory callData;

        if (bytes(signature).length == 0) {
            callData = data;
        } else {
            callData = abi.encodePacked(
                bytes4(keccak256(bytes(signature))),
                data
            );
        }

        // solium-disable-next-line security/no-call-value
        (bool success, bytes memory returnData) = target.call{value: value}(
            callData
        );
        require(
            success,
            "Timelock::executeTransaction: Transaction execution reverted."
        );

        return returnData;
    }
}

interface IController {
    function withdraw(address, uint256) external;

    function balanceOf(address) external view returns (uint256);

    function earn(address, uint256) external;

    function want(address) external view returns (address);

    function rewards() external view returns (address);

    function vaults(address) external view returns (address);

    function strategies(address) external view returns (address);
}

interface IUniswapRouter {
    function swapExactTokensForTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external returns (uint256[] memory amounts);
}

interface IComptroller {
    function _addVenusMarkets(address[] calldata vTokens) external;

    function _become(address unitroller) external;

    function _borrowGuardianPaused() external view returns (bool);

    function _dropVenusMarket(address vToken) external;

    function _mintGuardianPaused() external view returns (bool);

    function _setCloseFactor(uint256 newCloseFactorMantissa)
        external
        returns (uint256);

    function _setCollateralFactor(
        address vToken,
        uint256 newCollateralFactorMantissa
    ) external returns (uint256);

    function _setLiquidationIncentive(uint256 newLiquidationIncentiveMantissa)
        external
        returns (uint256);

    function _setMaxAssets(uint256 newMaxAssets) external returns (uint256);

    function _setPauseGuardian(address newPauseGuardian)
        external
        returns (uint256);

    function _setPriceOracle(address newOracle) external returns (uint256);

    function _setProtocolPaused(bool state) external returns (bool);

    function _setVAIController(address vaiController_)
        external
        returns (uint256);

    function _setVAIMintRate(uint256 newVAIMintRate) external returns (uint256);

    function _setVenusRate(uint256 venusRate_) external;

    function _supportMarket(address vToken) external returns (uint256);

    function accountAssets(address, uint256) external view returns (address);

    function admin() external view returns (address);

    function allMarkets(uint256) external view returns (address);

    function borrowAllowed(
        address vToken,
        address borrower,
        uint256 borrowAmount
    ) external returns (uint256);

    function borrowGuardianPaused(address) external view returns (bool);

    function borrowVerify(
        address vToken,
        address borrower,
        uint256 borrowAmount
    ) external;

    function checkMembership(address account, address vToken)
        external
        view
        returns (bool);

    function claimVenus(address holder, address[] calldata vTokens) external;

    function claimVenus(address holder) external;

    function claimVenus(
        address[] calldata holders,
        address[] calldata vTokens,
        bool borrowers,
        bool suppliers
    ) external;

    function closeFactorMantissa() external view returns (uint256);

    function comptrollerImplementation() external view returns (address);

    function enterMarkets(address[] calldata vTokens)
        external
        returns (uint256[] memory);

    function exitMarket(address vTokenAddress) external returns (uint256);

    function getAccountLiquidity(address account)
        external
        view
        returns (
            uint256,
            uint256,
            uint256
        );

    function getAllMarkets() external view returns (address[] memory);

    function getAssetsIn(address account)
        external
        view
        returns (address[] memory);

    function getBlockNumber() external view returns (uint256);

    function getHypotheticalAccountLiquidity(
        address account,
        address vTokenModify,
        uint256 redeemTokens,
        uint256 borrowAmount
    )
        external
        view
        returns (
            uint256,
            uint256,
            uint256
        );

    function getMintableVAI(address minter)
        external
        view
        returns (uint256, uint256);

    function getVAIMintRate() external view returns (uint256);

    function getXVSAddress() external view returns (address);

    function isComptroller() external view returns (bool);

    function liquidateBorrowAllowed(
        address vTokenBorrowed,
        address vTokenCollateral,
        address liquidator,
        address borrower,
        uint256 repayAmount
    ) external returns (uint256);

    function liquidateBorrowVerify(
        address vTokenBorrowed,
        address vTokenCollateral,
        address liquidator,
        address borrower,
        uint256 actualRepayAmount,
        uint256 seizeTokens
    ) external;

    function liquidateCalculateSeizeTokens(
        address vTokenBorrowed,
        address vTokenCollateral,
        uint256 actualRepayAmount
    ) external view returns (uint256, uint256);

    function liquidationIncentiveMantissa() external view returns (uint256);

    function markets(address)
        external
        view
        returns (
            bool isListed,
            uint256 collateralFactorMantissa,
            bool isVenus
        );

    function maxAssets() external view returns (uint256);

    function mintAllowed(
        address vToken,
        address minter,
        uint256 mintAmount
    ) external returns (uint256);

    function mintGuardianPaused(address) external view returns (bool);

    function mintVAI(uint256 mintVAIAmount) external returns (uint256);

    function mintVAIGuardianPaused() external view returns (bool);

    function mintVerify(
        address vToken,
        address minter,
        uint256 actualMintAmount,
        uint256 mintTokens
    ) external;

    function mintedVAIOf(address owner) external view returns (uint256);

    function mintedVAIs(address) external view returns (uint256);

    function oracle() external view returns (address);

    function pauseGuardian() external view returns (address);

    function pendingAdmin() external view returns (address);

    function pendingComptrollerImplementation() external view returns (address);

    function protocolPaused() external view returns (bool);

    function redeemAllowed(
        address vToken,
        address redeemer,
        uint256 redeemTokens
    ) external returns (uint256);

    function redeemVerify(
        address vToken,
        address redeemer,
        uint256 redeemAmount,
        uint256 redeemTokens
    ) external;

    function refreshVenusSpeeds() external;

    function repayBorrowAllowed(
        address vToken,
        address payer,
        address borrower,
        uint256 repayAmount
    ) external returns (uint256);

    function repayBorrowVerify(
        address vToken,
        address payer,
        address borrower,
        uint256 actualRepayAmount,
        uint256 borrowerIndex
    ) external;

    function repayVAI(uint256 repayVAIAmount) external returns (uint256);

    function repayVAIGuardianPaused() external view returns (bool);

    function seizeAllowed(
        address vTokenCollateral,
        address vTokenBorrowed,
        address liquidator,
        address borrower,
        uint256 seizeTokens
    ) external returns (uint256);

    function seizeGuardianPaused() external view returns (bool);

    function seizeVerify(
        address vTokenCollateral,
        address vTokenBorrowed,
        address liquidator,
        address borrower,
        uint256 seizeTokens
    ) external;

    function setMintedVAIOf(address owner, uint256 amount)
        external
        returns (uint256);

    function transferAllowed(
        address vToken,
        address src,
        address dst,
        uint256 transferTokens
    ) external returns (uint256);

    function transferGuardianPaused() external view returns (bool);

    function transferVerify(
        address vToken,
        address src,
        address dst,
        uint256 transferTokens
    ) external;

    function vaiController() external view returns (address);

    function vaiMintRate() external view returns (uint256);

    function venusAccrued(address) external view returns (uint256);

    // function venusBorrowState ( address ) external view returns ( uint224 index, uint32 block );
    function venusBorrowerIndex(address, address)
        external
        view
        returns (uint256);

    function venusClaimThreshold() external view returns (uint256);

    function venusInitialIndex() external view returns (uint224);

    function venusRate() external view returns (uint256);

    function venusSpeeds(address) external view returns (uint256);

    function venusSupplierIndex(address, address)
        external
        view
        returns (uint256);

    // function venusSupplyState ( address ) external view returns ( uint224 index, uint32 block );

    function borrowCaps(address) external view returns (uint256);

    function treasuryPercent() external view returns (uint256);

    function claimCan(address holder, address[] memory cTokens) external;
}

interface IVToken {
    function _acceptAdmin() external returns (uint256);

    function _addReserves(uint256 addAmount) external returns (uint256);

    function _reduceReserves(uint256 reduceAmount) external returns (uint256);

    function _setComptroller(address newComptroller) external returns (uint256);

    function _setImplementation(
        address implementation_,
        bool allowResign,
        bytes calldata becomeImplementationData
    ) external;

    function _setInterestRateModel(address newInterestRateModel)
        external
        returns (uint256);

    function _setPendingAdmin(address newPendingAdmin)
        external
        returns (uint256);

    function _setReserveFactor(uint256 newReserveFactorMantissa)
        external
        returns (uint256);

    function accrualBlockNumber() external view returns (uint256);

    function accrueInterest() external returns (uint256);

    function admin() external view returns (address);

    function allowance(address owner, address spender)
        external
        view
        returns (uint256);

    function approve(address spender, uint256 amount) external returns (bool);

    function balanceOf(address owner) external view returns (uint256);

    function balanceOfUnderlying(address owner) external returns (uint256);

    function borrow(uint256 borrowAmount) external returns (uint256);

    function borrowBalanceCurrent(address account) external returns (uint256);

    function borrowBalanceStored(address account)
        external
        view
        returns (uint256);

    function borrowIndex() external view returns (uint256);

    function borrowRatePerBlock() external view returns (uint256);

    function comptroller() external view returns (address);

    function decimals() external view returns (uint8);

    function delegateToImplementation(bytes calldata data)
        external
        returns (bytes memory);

    function delegateToViewImplementation(bytes calldata data)
        external
        view
        returns (bytes memory);

    function exchangeRateCurrent() external returns (uint256);

    function exchangeRateStored() external view returns (uint256);

    function getAccountSnapshot(address account)
        external
        view
        returns (
            uint256,
            uint256,
            uint256,
            uint256
        );

    function getCash() external view returns (uint256);

    function implementation() external view returns (address);

    function interestRateModel() external view returns (address);

    function isVToken() external view returns (bool);

    function liquidateBorrow(
        address borrower,
        uint256 repayAmount,
        address vTokenCollateral
    ) external returns (uint256);

    function mint(uint256 mintAmount) external returns (uint256);

    function name() external view returns (string memory);

    function pendingAdmin() external view returns (address);

    function redeem(uint256 redeemTokens) external returns (uint256);

    function redeemUnderlying(uint256 redeemAmount) external returns (uint256);

    function repayBorrow(uint256 repayAmount) external returns (uint256);

    function repayBorrowBehalf(address borrower, uint256 repayAmount)
        external
        returns (uint256);

    function reserveFactorMantissa() external view returns (uint256);

    function seize(
        address liquidator,
        address borrower,
        uint256 seizeTokens
    ) external returns (uint256);

    function supplyRatePerBlock() external view returns (uint256);

    function symbol() external view returns (string memory);

    function totalBorrows() external view returns (uint256);

    function totalBorrowsCurrent() external returns (uint256);

    function totalReserves() external view returns (uint256);

    function totalSupply() external view returns (uint256);

    function transfer(address dst, uint256 amount) external returns (bool);

    function transferFrom(
        address src,
        address dst,
        uint256 amount
    ) external returns (bool);

    function underlying() external view returns (address);
}

interface IMdxSwapFarm {
    // function addPair ( uint256 _allocPoint, address _pair, bool _withUpdate ) external;
    // function addWhitelist ( address _addToken ) external returns ( bool );
    // function delWhitelist ( address _delToken ) external returns ( bool );
    // function factory (  ) external view returns ( address );
    // function getMdxReward ( uint256 _lastRewardBlock ) external view returns ( uint256 );
    // function getPoolInfo ( uint256 _pid ) external view returns ( address, address, uint256, uint256, uint256, uint256 );
    // function getQuantity ( address outputToken, uint256 outputAmount, address anchorToken ) external view returns ( uint256 );
    // function getUserReward ( uint256 _pid ) external view returns ( uint256, uint256 );
    // function getWhitelist ( uint256 _index ) external view returns ( address );
    // function getWhitelistLength (  ) external view returns ( uint256 );
    // function halvingPeriod (  ) external view returns ( uint256 );
    // function isOwner ( address account ) external view returns ( bool );
    // function isWhitelist ( address _token ) external view returns ( bool );
    // function massMintPools (  ) external;
    // function mdx (  ) external view returns ( address );
    // function mdxPerBlock (  ) external view returns ( uint256 );
    // function mint ( uint256 _pid ) external returns ( bool );
    // function oracle (  ) external view returns ( address );
    // function owner (  ) external view returns ( address );
    // function pairOfPid ( address ) external view returns ( uint256 );
    // function phase ( uint256 blockNumber ) external view returns ( uint256 );
    // function phase (  ) external view returns ( uint256 );
    // function poolInfo ( uint256 ) external view returns ( address pair, uint256 quantity, uint256 totalQuantity, uint256 allocPoint, uint256 allocMdxAmount, uint256 lastRewardBlock );
    // function poolLength (  ) external view returns ( uint256 );
    // function renounceOwnership (  ) external;
    // function reward (  ) external view returns ( uint256 );
    // function reward ( uint256 blockNumber ) external view returns ( uint256 );
    // function router (  ) external view returns ( address );
    // function setHalvingPeriod ( uint256 _block ) external;
    // function setMdxPerBlock ( uint256 _newPerBlock ) external;
    // function setOracle ( address _oracle ) external;
    // function setPair ( uint256 _pid, uint256 _allocPoint, bool _withUpdate ) external;
    // function setRouter ( address newRouter ) external;
    // function startBlock (  ) external view returns ( uint256 );
    // function swap ( address account, address input, address output, uint256 amount ) external returns ( bool );
    function takerWithdraw() external;
    // function targetToken (  ) external view returns ( address );
    // function totalAllocPoint (  ) external view returns ( uint256 );
    // function transferOwnership ( address newOwner ) external;
    // function userInfo ( uint256, address ) external view returns ( uint256 quantity, uint256 blockNumber );
}