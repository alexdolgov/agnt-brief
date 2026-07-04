// SPDX-License-Identifier: MIT

pragma solidity 0.8.6;



// Part: Address

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
        // This method relies on extcodesize, which returns 0 for contracts in
        // construction, since the code is only stored at the end of the
        // constructor execution.

        uint256 size;
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
        require(address(this).balance >= amount, "Address: insufficient balance");

        (bool success, ) = recipient.call{value: amount}("");
        require(success, "Address: unable to send value, recipient may have reverted");
    }

    /**
     * @dev Performs a Solidity function call using a low level `call`. A
     * plain `call` is an unsafe replacement for a function call: use this
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
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
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
        return functionCallWithValue(target, data, value, "Address: low-level call with value failed");
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
        require(address(this).balance >= value, "Address: insufficient balance for call");
        require(isContract(target), "Address: call to non-contract");

        (bool success, bytes memory returndata) = target.call{value: value}(data);
        return _verifyCallResult(success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        return functionStaticCall(target, data, "Address: low-level static call failed");
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

        (bool success, bytes memory returndata) = target.staticcall(data);
        return _verifyCallResult(success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function functionDelegateCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionDelegateCall(target, data, "Address: low-level delegate call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function functionDelegateCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        require(isContract(target), "Address: delegate call to non-contract");

        (bool success, bytes memory returndata) = target.delegatecall(data);
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

// Part: Context

/*
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }
}

// Part: IERC20

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
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

// Part: IERC20Metadata

/**
 * @dev Interface for the optional metadata functions from the ERC20 standard.
 *
 * _Available since v4.1._
 */
interface IERC20Metadata is IERC20 {
    /**
     * @dev Returns the name of the token.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the symbol of the token.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the decimals places of the token.
     */
    function decimals() external view returns (uint8);
}

// Part: IUniswapV2Router01

interface IUniswapV2Router01 {
    function factory() external pure returns (address);

    function WETH() external pure returns (address);

    function addLiquidity(
        address tokenA,
        address tokenB,
        uint256 amountADesired,
        uint256 amountBDesired,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline
    )
        external
        returns (
            uint256 amountA,
            uint256 amountB,
            uint256 liquidity
        );

    function addLiquidityETH(
        address token,
        uint256 amountTokenDesired,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline
    )
        external
        payable
        returns (
            uint256 amountToken,
            uint256 amountETH,
            uint256 liquidity
        );

    function removeLiquidity(
        address tokenA,
        address tokenB,
        uint256 liquidity,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline
    ) external returns (uint256 amountA, uint256 amountB);

    function removeLiquidityETH(
        address token,
        uint256 liquidity,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline
    ) external returns (uint256 amountToken, uint256 amountETH);

    function removeLiquidityWithPermit(
        address tokenA,
        address tokenB,
        uint256 liquidity,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline,
        bool approveMax,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external returns (uint256 amountA, uint256 amountB);

    function removeLiquidityETHWithPermit(
        address token,
        uint256 liquidity,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline,
        bool approveMax,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external returns (uint256 amountToken, uint256 amountETH);

    function swapExactTokensForTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external returns (uint256[] memory amounts);

    function swapTokensForExactTokens(
        uint256 amountOut,
        uint256 amountInMax,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external returns (uint256[] memory amounts);

    function swapExactETHForTokens(
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external payable returns (uint256[] memory amounts);

    function swapTokensForExactETH(
        uint256 amountOut,
        uint256 amountInMax,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external returns (uint256[] memory amounts);

    function swapExactTokensForETH(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external returns (uint256[] memory amounts);

    function swapETHForExactTokens(
        uint256 amountOut,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external payable returns (uint256[] memory amounts);

    function quote(
        uint256 amountA,
        uint256 reserveA,
        uint256 reserveB
    ) external pure returns (uint256 amountB);

    function getAmountOut(
        uint256 amountIn,
        uint256 reserveIn,
        uint256 reserveOut
    ) external pure returns (uint256 amountOut);

    function getAmountIn(
        uint256 amountOut,
        uint256 reserveIn,
        uint256 reserveOut
    ) external pure returns (uint256 amountIn);

    function getAmountsOut(uint256 amountIn, address[] calldata path) external view returns (uint256[] memory amounts);

    function getAmountsIn(uint256 amountOut, address[] calldata path) external view returns (uint256[] memory amounts);
}

// Part: IWETH

interface IWETH is IERC20 {
    function deposit() external payable;

    function withdraw(uint256 wad) external;
}

// Part: Ownable

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
    constructor() {
        _setOwner(_msgSender());
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
        _;
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        _setOwner(address(0));
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        _setOwner(newOwner);
    }

    function _setOwner(address newOwner) private {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}

// Part: SafeERC20

/**
 * @title SafeERC20
 * @dev Wrappers around ERC20 operations that throw on failure (when the token
 * contract returns false). Tokens that return no value (and instead revert or
 * throw on failure) are also supported, non-reverting calls are assumed to be
 * successful.
 * To use this library you can add a `using SafeERC20 for IERC20;` statement to your contract,
 * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
 */
library SafeERC20 {
    using Address for address;

    function safeTransfer(
        IERC20 token,
        address to,
        uint256 value
    ) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transfer.selector, to, value));
    }

    function safeTransferFrom(
        IERC20 token,
        address from,
        address to,
        uint256 value
    ) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transferFrom.selector, from, to, value));
    }

    /**
     * @dev Deprecated. This function has issues similar to the ones found in
     * {IERC20-approve}, and its usage is discouraged.
     *
     * Whenever possible, use {safeIncreaseAllowance} and
     * {safeDecreaseAllowance} instead.
     */
    function safeApprove(
        IERC20 token,
        address spender,
        uint256 value
    ) internal {
        // safeApprove should only be called when setting an initial allowance,
        // or when resetting it to zero. To increase and decrease it, use
        // 'safeIncreaseAllowance' and 'safeDecreaseAllowance'
        require(
            (value == 0) || (token.allowance(address(this), spender) == 0),
            "SafeERC20: approve from non-zero to non-zero allowance"
        );
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, value));
    }

    function safeIncreaseAllowance(
        IERC20 token,
        address spender,
        uint256 value
    ) internal {
        uint256 newAllowance = token.allowance(address(this), spender) + value;
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));
    }

    function safeDecreaseAllowance(
        IERC20 token,
        address spender,
        uint256 value
    ) internal {
        unchecked {
            uint256 oldAllowance = token.allowance(address(this), spender);
            require(oldAllowance >= value, "SafeERC20: decreased allowance below zero");
            uint256 newAllowance = oldAllowance - value;
            _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));
        }
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     */
    function _callOptionalReturn(IERC20 token, bytes memory data) private {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We use {Address.functionCall} to perform this call, which verifies that
        // the target address contains contract code and also asserts for success in the low-level call.

        bytes memory returndata = address(token).functionCall(data, "SafeERC20: low-level call failed");
        if (returndata.length > 0) {
            // Return data is optional
            require(abi.decode(returndata, (bool)), "SafeERC20: ERC20 operation did not succeed");
        }
    }
}

// Part: DexAdapterCore

/// @title DEX Adapter Core
/// @author Blaize.tech team
/// @notice Contract for interacting with UniswapV2Router
contract DexAdapterCore is Ownable {
    using SafeERC20 for IERC20;
    using Address for address;

    enum PathType {
        ETH_TO_TOKEN,
        TOKEN_TO_ETH,
        TOKEN_TO_TOKEN
    }

    /// @notice Address of UniswapV2Router.
    address public router;
    /// @notice Address of Wrapped ETH token.
    address public WETH;
    /// @notice Address of USDT Token.
    address public USDT;
    /// @notice Path for swapping ETH for Token.
    mapping(address => address[]) public ethToToken;
    /// @notice Path for swapping Token for ETH.
    mapping(address => address[]) public tokenToEth;
    /// @notice Path for swapping Token for Token.
    mapping(address => mapping(address => address[])) public tokenToToken;

    /// @notice Performs initial setup.
    /// @param _router Address of router.
    /// @param _weth Address of Wrapped ETH.
    /// @param _usdt Address of USDT Token.
    constructor(
        address _router,
        address _weth,
        address _usdt
    ) {
        require(_router != address(0) && _weth != address(0) && _usdt != address(0), "Zero address");
        router = _router;
        WETH = _weth;
        USDT = _usdt;
    }

    receive() external payable {}

    /**********
     * SWAP INTERFACE
     **********/

    /// @notice Swaps an amount of ETH to underlying token and sends it to the sender.
    /// @param underlying Underlying token to be bought for ETH.
    function swapETHToUnderlying(address underlying, uint256 underlyingAmount) external payable virtual {
        if (underlying == WETH) {
            IWETH(WETH).deposit{value: msg.value}();
            IERC20(WETH).safeTransfer(msg.sender, msg.value);
        } else {
            address[] memory path = getPath(PathType.ETH_TO_TOKEN, WETH, underlying);
            address _router = _getRouter(underlying);
            IUniswapV2Router01(_router).swapExactETHForTokens{value: msg.value}(underlyingAmount, path, msg.sender, block.timestamp + 100);
        }
    }

    /// @notice Swaps underlyings to ETH and sends it to the sender.
    /// @param underlyingAmounts Amount of each underlying token to be swaped.
    /// @param underlyings Addresses of underlying tokens to be swaped.
    function swapUnderlyingsToETH(uint256[] memory underlyingAmounts, address[] memory underlyings) external virtual {
        uint256 balance;
        for (uint256 i = 0; i < underlyings.length; i++) {
            if (underlyingAmounts[i] == 0) {
                continue;
            }
            IERC20(underlyings[i]).safeTransferFrom(msg.sender, address(this), underlyingAmounts[i]);
            if (underlyings[i] == WETH) {
                IWETH(WETH).withdraw(underlyingAmounts[i]);
                Address.sendValue(payable(msg.sender), underlyingAmounts[i]);
            } else {
                balance = IERC20(underlyings[i]).balanceOf(address(this));
                address[] memory path = getPath(PathType.TOKEN_TO_ETH, underlyings[i], WETH);
                address _router = _getRouter(underlyings[i]);

                IERC20(underlyings[i]).safeApprove(_router, 0);
                IERC20(underlyings[i]).safeApprove(_router, balance);
                IUniswapV2Router01(_router).swapExactTokensForETH(balance, 0, path, msg.sender, block.timestamp + 100);
            }
        }
    }

    /// @notice Swaps one token to another one.
    /// @param _amountToSwap Amount of token to swap.
    /// @param _tokenToSwap Address of token to be swaped.
    /// @param _tokenToReceive Address of token to be bought.
    /// @return Amount of tokens bought.
    function swapTokenToToken(
        uint256 _amountToSwap,
        address _tokenToSwap,
        address _tokenToReceive
    ) external virtual returns (uint256) {
        PathType pathType = _determinePathType(_tokenToSwap, _tokenToReceive);

        address[] memory path = getPath(pathType, _tokenToSwap, _tokenToReceive);

        IERC20(_tokenToSwap).safeTransferFrom(msg.sender, address(this), _amountToSwap);
        IERC20(_tokenToSwap).safeApprove(router, 0);
        IERC20(_tokenToSwap).safeApprove(router, _amountToSwap);

        return IUniswapV2Router01(router).swapExactTokensForTokens(_amountToSwap, 0, path, msg.sender, block.timestamp + 100)[path.length - 1];
    }

    /**********
     * VIEW INTERFACE
     **********/

    /// @notice Gets an amount of tokens, which can be bought for another token's amount.
    /// @param _amount Amount of tokens to be swaped.
    /// @param _tokenToSwap Address of token to be swaped.
    /// @param _tokenToReceive Address of token to be bought.
    /// @return Amount of tokens which might be bought.
    function getUnderlyingAmount(
        uint256 _amount,
        address _tokenToSwap,
        address _tokenToReceive
    ) external view virtual returns (uint256) {
        if (_tokenToSwap == _tokenToReceive) return _amount;

        PathType pathType = _determinePathType(_tokenToSwap, _tokenToReceive);
        address[] memory path = getPath(pathType, _tokenToSwap, _tokenToReceive);
        address _router = _getRouter(_tokenToSwap);

        return IUniswapV2Router01(_router).getAmountsOut(_amount, path)[path.length - 1];
    }

    /// @notice Gets prices for underlyings in ETH.
    /// @param _tokens Array, which containt underlyings' addresses.
    /// @return Array of underlyings' prices.
    function getTokensPrices(address[] memory _tokens) external view virtual returns (uint256[] memory) {
        uint256[] memory prices = new uint256[](_tokens.length);
        for (uint256 i = 0; i < _tokens.length; i++) {
            if (_tokens[i] == WETH) {
                prices[i] = 1 ether;
            } else {
                address[] memory path = getPath(PathType.TOKEN_TO_ETH, _tokens[i], WETH);
                address _router = _getRouter(_tokens[i]);
                prices[i] = IUniswapV2Router01(_router).getAmountsOut(10**IERC20Metadata(_tokens[i]).decimals(), path)[path.length - 1];
            }
        }
        return prices;
    }

    /// @notice Gets ETH price in USDT tokens.
    /// @return Price for ETH in USDT.
    function getEthPrice() external view virtual returns (uint256) {
        address[] memory path = getPath(PathType.ETH_TO_TOKEN, WETH, USDT);
        return IUniswapV2Router01(router).getAmountsOut(1 ether, path)[path.length - 1];
    }

    /// @notice Gets price of provided DHV token address in ETH.
    /// @param _dhvToken DHV token address.
    /// @return Price of DHV token in ETH.
    function getDHVPriceInETH(address _dhvToken) external view virtual returns (uint256) {
        address[] memory path = getPath(PathType.TOKEN_TO_ETH, _dhvToken, WETH);
        address _router = _getRouter(_dhvToken);
        return IUniswapV2Router01(router).getAmountsOut(1 ether, path)[1];
    }

    /// @notice Gets a path for exchanging token.
    /// @param _tokenToSwap Address of token to be swaped.
    /// @param _tokenToReceive Address of token to be bought.
    /// @return Array, which contains path for exchanging token.
    function getPath(
        PathType _pathType,
        address _tokenToSwap,
        address _tokenToReceive
    ) public view virtual returns (address[] memory) {
        address[] memory path;
        if (_pathType == PathType.ETH_TO_TOKEN) {
            path = ethToToken[_tokenToReceive];
        } else if (_pathType == PathType.TOKEN_TO_ETH) {
            path = tokenToEth[_tokenToSwap];
        } else if (_pathType == PathType.TOKEN_TO_TOKEN) {
            path = tokenToToken[_tokenToSwap][_tokenToReceive];
        }

        if (path.length > 0) {
            return path;
        }

        path = _tokenToSwap == WETH || _tokenToReceive == WETH ? new address[](2) : new address[](3);
        if (path.length == 2) {
            path[0] = _tokenToSwap;
            path[1] = _tokenToReceive;
        } else {
            path[0] = _tokenToSwap;
            path[1] = WETH;
            path[2] = _tokenToReceive;
        }

        return path;
    }

    function getEthAmountWithSlippage(uint256 _amount, address _tokenToSwap) external view virtual returns (uint256) {
        if (_tokenToSwap == WETH) {
            return _amount;
        }
        address[] memory path = getPath(PathType.ETH_TO_TOKEN, WETH, _tokenToSwap);
        address _router = _getRouter(_tokenToSwap);
        return IUniswapV2Router01(_router).getAmountsIn(_amount, path)[0];
    }

    /**********
     *ADMIN INTERFACE
     **********/

    function setPath(
        PathType _pathType,
        address _underlying,
        address[] memory _path
    ) public virtual onlyOwner {
        if (_pathType == PathType.ETH_TO_TOKEN) {
            ethToToken[_underlying] = _path;
        } else if (_pathType == PathType.TOKEN_TO_ETH) {
            tokenToEth[_underlying] = _path;
        } else if (_pathType == PathType.TOKEN_TO_TOKEN) {
            tokenToToken[_underlying][_path[_path.length - 1]] = _path;
        }
    }

    /**********
     *INTERNAL HELPERS
     **********/

    function _getRouter(address _token) internal view virtual returns (address) {
        return router;
    }

    function _determinePathType(address _tokenToSwap, address _tokenToReceive) internal view returns (PathType) {
        if (_tokenToSwap == WETH) {
            return PathType.ETH_TO_TOKEN;
        }

        if (_tokenToReceive == WETH) {
            return PathType.TOKEN_TO_ETH;
        }

        return PathType.TOKEN_TO_TOKEN;
    }
}

// File: PancakeSwapAdapter.sol

contract xInfraAdapter is DexAdapterCore {
    using SafeERC20 for IERC20;

    address public constant SushiRouter = address(0x1b02dA8Cb0d097eB8D57A175b88c7D8b47997506);
    address public constant SwaprRouter = address(0xE43e60736b1cb4a75ad25240E2f9a62Bff65c0C0);

    constructor()
        DexAdapterCore(
            address(0x1C232F01118CB8B424793ae03F870aa7D0ac7f77), // HoneySwap router
            address(0xe91D153E0b41518A2Ce8Dd3D7944Fa863463a97d), // Wrapped-xDai
            address(0x4ECaBa5870353805a9F068101A40E0f32ed605C6) // USDT
        )
    {}

    /**********
     *INTERNAL HELPERS
     **********/

    function _getRouter(address _token) internal view override returns (address) {
        if (_token == address(0xb90D6bec20993Be5d72A5ab353343f7a0281f158) || _token == address(0x97Edc0e345FbBBd8460847Fcfa3bc2a13bF8641F)) {
            // DXD or RICE Token
            return SwaprRouter;
        }
        if (_token == address(0xb7D311E2Eb55F2f68a9440da38e7989210b9A05e)) {
            // STAKE Token
            return SushiRouter;
        }
        return router;
    }
}