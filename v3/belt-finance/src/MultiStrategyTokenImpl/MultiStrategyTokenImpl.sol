pragma solidity 0.6.12;

import "./MultiStrategyTokenStorage.sol";

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
        // solhint-disable-next-line no-inline-assembly
        assembly { size := extcodesize(account) }
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

        // solhint-disable-next-line avoid-low-level-calls, avoid-call-value
        (bool success, ) = recipient.call{ value: amount }("");
        require(success, "Address: unable to send value, recipient may have reverted");
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
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
      return functionCall(target, data, "Address: low-level call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`], but with
     * `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCall(address target, bytes memory data, string memory errorMessage) internal returns (bytes memory) {
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
    function functionCallWithValue(address target, bytes memory data, uint256 value) internal returns (bytes memory) {
        return functionCallWithValue(target, data, value, "Address: low-level call with value failed");
    }

    /**
     * @dev Same as {xref-Address-functionCallWithValue-address-bytes-uint256-}[`functionCallWithValue`], but
     * with `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(address target, bytes memory data, uint256 value, string memory errorMessage) internal returns (bytes memory) {
        require(address(this).balance >= value, "Address: insufficient balance for call");
        require(isContract(target), "Address: call to non-contract");

        // solhint-disable-next-line avoid-low-level-calls
        (bool success, bytes memory returndata) = target.call{ value: value }(data);
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
    function functionStaticCall(address target, bytes memory data, string memory errorMessage) internal view returns (bytes memory) {
        require(isContract(target), "Address: static call to non-contract");

        // solhint-disable-next-line avoid-low-level-calls
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
    function functionDelegateCall(address target, bytes memory data, string memory errorMessage) internal returns (bytes memory) {
        require(isContract(target), "Address: delegate call to non-contract");

        // solhint-disable-next-line avoid-low-level-calls
        (bool success, bytes memory returndata) = target.delegatecall(data);
        return _verifyCallResult(success, returndata, errorMessage);
    }

    function _verifyCallResult(bool success, bytes memory returndata, string memory errorMessage) private pure returns(bytes memory) {
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

library SafeERC20 {
    using SafeMath for uint256;
    using Address for address;

    function safeTransfer(IERC20 token, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transfer.selector, to, value));
    }

    function safeTransferFrom(IERC20 token, address from, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transferFrom.selector, from, to, value));
    }

    /**
     * @dev Deprecated. This function has issues similar to the ones found in
     * {IERC20-approve}, and its usage is discouraged.
     *
     * Whenever possible, use {safeIncreaseAllowance} and
     * {safeDecreaseAllowance} instead.
     */
    function safeApprove(IERC20 token, address spender, uint256 value) internal {
        // safeApprove should only be called when setting an initial allowance,
        // or when resetting it to zero. To increase and decrease it, use
        // 'safeIncreaseAllowance' and 'safeDecreaseAllowance'
        // solhint-disable-next-line max-line-length
        require((value == 0) || (token.allowance(address(this), spender) == 0),
            "SafeERC20: approve from non-zero to non-zero allowance"
        );
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, value));
    }

    function safeIncreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        uint256 newAllowance = token.allowance(address(this), spender).add(value);
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));
    }

    function safeDecreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        uint256 newAllowance = token.allowance(address(this), spender).sub(value, "SafeERC20: decreased allowance below zero");
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));
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
        if (returndata.length > 0) { // Return data is optional
            // solhint-disable-next-line max-line-length
            require(abi.decode(returndata, (bool)), "SafeERC20: ERC20 operation did not succeed");
        }
    }
}

interface StrategyTokenLike {
    function balanceOf(address) external view returns (uint256);
    function totalSupply() external view returns (uint256);
    function deposit(uint256 _amount, uint256 _minShares) external;
    function withdraw(uint256 _shares, uint256 _minAmount) external;
    function balance() external view returns (uint256);
    function balanceStrategy() external view returns (uint256);
    function calcPoolValueInToken() external view returns (uint256);
    function getPricePerFullShare() external view returns (uint256);
    function sharesToAmount(uint256 _shares) external view returns (uint256);
    function amountToShares(uint256 _amount) external view returns (uint256);
    function setEntranceFee(uint256 _entranceFeeNumer, uint256 _entranceFeeDenom) external;
}

interface IWBNB is IERC20 {
    function deposit() external payable;

    function withdraw(uint wad) external;
}

contract MultiStrategyTokenImpl is MultiStrategyTokenStorage {
    using SafeERC20 for IERC20;
    using Address for address;
    using SafeMath for uint256;
    
    constructor () public ERC20("", ""){}

    function setGovAddress(address _govAddress) external {
        require(msg.sender == govAddress, "Not authorized");
        govAddress = _govAddress;
    }

    function pauseDeposit() external {
        require(!depositPaused, "deposit paused");
        require(msg.sender == govAddress, "Not authorized");
        depositPaused = true;
    }

    function unpauseDeposit() external {
        require(depositPaused, "deposit not paused");
        require(msg.sender == govAddress, "Not authorized");
        depositPaused = false;
    }

    function pauseWithdraw() external virtual {
        require(!withdrawPaused, "withdraw paused");
        require(msg.sender == govAddress, "Not authorized");
        withdrawPaused = true;
    }

    function unpauseWithdraw() external virtual {
        require(withdrawPaused, "withdraw not paused");
        require(msg.sender == govAddress, "Not authorized");
        withdrawPaused = false;
    }

    function deposit(uint256 _amount, uint256 _minShares)
        external
    {
        require(!depositPaused, "deposit paused");
        require(_amount != 0, "deposit must be greater than 0");
        IERC20(token).safeTransferFrom(msg.sender, address(this), _amount);
        _deposit(_amount, _minShares);
    }

    function depositBNB(uint256 _minShares) external payable {
        require(!depositPaused, "deposit paused");
        require(isWbnb, "not bnb");
        require(msg.value != 0, "deposit must be greater than 0");
        _wrapBNB(msg.value);
        _deposit(msg.value, _minShares);
    }

    function _deposit(uint256 _amount, uint256 _minShares)
        internal
        nonReentrant
    {
        uint256 _pool = calcPoolValueInToken();
        
        address strategyAddress;
        (strategyAddress,) = findMostInsufficientStrategy();
        StrategyTokenLike(strategyAddress).deposit(_amount, 0);
        uint256 sharesToMint = calcPoolValueInToken().sub(_pool);
        if (totalSupply() != 0 && _pool != 0) {
            sharesToMint = sharesToMint.mul(totalSupply())
                .div(_pool);
        }
        require(sharesToMint >= _minShares, "did not meet minimum shares requested");
        _mint(msg.sender, sharesToMint);    
    }
    

    function withdraw(uint256 _shares, uint256 _minAmount)
        external
    {
        uint r = _withdraw(_shares, _minAmount);
        IERC20(token).safeTransfer(msg.sender, r);
    }

    function withdrawBNB(uint256 _shares, uint256 _minAmount)
        external
    {
        require(isWbnb, "not bnb");
        uint256 r = _withdraw(_shares, _minAmount);
        _unwrapBNB(r);
        msg.sender.transfer(r);
    }

    function _withdraw(uint256 _shares, uint256 _minAmount)
        internal
        nonReentrant
        returns (uint256)
    {
        require(!withdrawPaused, "withdraw paused");
        require(_shares != 0, "shares must be greater than 0");

        uint256 ibalance = balanceOf(msg.sender);
        require(_shares <= ibalance, "insufficient balance");

        uint256 pool = calcPoolValueInToken();

        uint256 r = pool.mul(_shares).div(totalSupply());
        _burn(msg.sender, _shares);

        address strategyToWithdraw;
        uint256 strategyAvailableAmount;
        (strategyToWithdraw, strategyAvailableAmount) = findMostOverLockedStrategy(r);
        if (r > strategyAvailableAmount) {
            (strategyToWithdraw, strategyAvailableAmount) = findMostLockedStrategy();
            require(r <= strategyAvailableAmount, "withdrawal amount too big");
        }
        uint256 _stratPool = StrategyTokenLike(strategyToWithdraw).calcPoolValueInToken();
        uint256 stratShares = r
            .mul(
                IERC20(strategyToWithdraw).totalSupply()
            )
            .div(_stratPool);
        uint256 diff = balance();
        StrategyTokenLike(strategyToWithdraw).withdraw(stratShares, 0/*strategyAvailableAmount*/);
        diff = balance().sub(diff);
        
        require(diff >= _minAmount, "did not meet minimum amount requested");

        return diff;
    }

    function rebalance() public {
        require(msg.sender == govAddress, "Not authorized");
        address strategyToWithdraw;
        uint256 strategyAvailableAmount;
        address strategyToDeposit;
        // uint256 strategyInsuffAmount;
        (strategyToWithdraw, strategyAvailableAmount) = findMostOverLockedStrategy(0);
        (strategyToDeposit, /*strategyInsuffAmount*/) = findMostInsufficientStrategy();

        uint256 totalBalance = calcPoolValueInToken();
        uint256 optimal = totalBalance.mul(ratios[strategyToWithdraw]).div(ratioTotal);

        uint256 threshold = optimal.mul(
                rebalanceThresholdNumer
        ).div(rebalanceThresholdDenom);

        if (strategyAvailableAmount != 0 && threshold < strategyAvailableAmount) {
            uint256 _pool = StrategyTokenLike(strategyToWithdraw).calcPoolValueInToken();
            uint256 stratShares = strategyAvailableAmount
                    .mul(
                        IERC20(strategyToWithdraw).totalSupply()
                    )
                    .div(_pool);
            uint256 diff = balance();
            StrategyTokenLike(strategyToWithdraw).withdraw(stratShares, 0/*strategyAvailableAmount)*/);
            diff = balance().sub(diff);
            StrategyTokenLike(strategyToDeposit).deposit(diff, 0);
        }
    }

    function findMostOverLockedStrategy(uint256 withdrawAmt) public view returns (address, uint256) {
        address[] memory strats = getAvailableStrategyList(false);

        uint256 totalBalance = calcPoolValueInToken().sub(withdrawAmt);

        address overLockedStrategy = strats[0];

        uint256 optimal = totalBalance.mul(ratios[strats[0]]).div(ratioTotal);
        uint256 current = getBalanceOfOneStrategy(strats[0]);   
        
        bool isLessThanOpt = current < optimal;
        uint256 overLockedBalance = isLessThanOpt ? optimal.sub(current) : current.sub(optimal);

        uint256 i = 1;
        for (; i < strats.length; i += 1) {
            optimal = totalBalance.mul(ratios[strats[i]]).div(ratioTotal);
            current = getBalanceOfOneStrategy(strats[i]); 
            if (isLessThanOpt && current >= optimal) {
                isLessThanOpt = false;
                overLockedBalance = current.sub(optimal);
                overLockedStrategy = strats[i];
            } else if (isLessThanOpt && current < optimal) {
                if (optimal.sub(current) < overLockedBalance) {
                    overLockedBalance = optimal.sub(current);
                    overLockedStrategy = strats[i];
                }
            } else if (!isLessThanOpt && current >= optimal) {
                if (current.sub(optimal) > overLockedBalance) {
                    overLockedBalance = current.sub(optimal);
                    overLockedStrategy = strats[i];
                }
            }
        }

        if (isLessThanOpt) {
            overLockedBalance = 0;
        }

        return (overLockedStrategy, overLockedBalance);
    }

    function findMostLockedStrategy() public view returns (address, uint256) {
        address[] memory strats = getAvailableStrategyList(false);

        uint256 current;
        address lockedMostAddr = strats[0];
        uint256 lockedBalance = getBalanceOfOneStrategy(strats[0]);

        uint256 i = 1;
        for (; i < strats.length; i += 1) {
            current = getBalanceOfOneStrategy(strats[i]); 
            if (current > lockedBalance) {
                lockedBalance = current;
                lockedMostAddr = strats[i];
            }
        }

        return (lockedMostAddr, lockedBalance);
    }

    function findMostInsufficientStrategy() public view returns (address, uint256) {
        address[] memory strats = getAvailableStrategyList(true);

        uint256 totalBalance = calcPoolValueInToken();

        address insuffStrategy = strats[0];

        uint256 optimal = totalBalance.mul(ratios[strats[0]]).div(ratioTotal);
        uint256 current = getBalanceOfOneStrategy(strats[0]);
        
        bool isGreaterThanOpt = current > optimal;
        uint256 insuffBalance = isGreaterThanOpt ? current.sub(optimal) : optimal.sub(current);

        uint256 i = 1;
        for (; i < strats.length; i += 1) {
            optimal = totalBalance.mul(ratios[strats[i]]).div(ratioTotal);
            current = getBalanceOfOneStrategy(strats[i]); 
            if (isGreaterThanOpt && current < optimal) {
                isGreaterThanOpt = false;
                insuffBalance = optimal.sub(current);
                insuffStrategy = strats[i];
            } else if (isGreaterThanOpt && current > optimal) {
                if (current.sub(optimal) < insuffBalance) {
                    insuffBalance = current.sub(optimal);
                    insuffStrategy = strats[i];
                }
            } else if (!isGreaterThanOpt && current <= optimal) {
                if (optimal.sub(current) > insuffBalance) {
                    insuffBalance = optimal.sub(current);
                    insuffStrategy = strats[i];
                }
            }
        }

        if (isGreaterThanOpt) {
            insuffBalance = 0;
        }

        return (insuffStrategy, insuffBalance);
    }

    function approveToken() public {
        uint i = 0;
        for (; i < strategies.length; i += 1) {
            IERC20(token).safeApprove(strategies[i], uint(-1));   
        }
    }

    function balance() public view returns (uint256) {
        return IERC20(token).balanceOf(address(this));
    }

    function getBalanceOfOneStrategy(address strategyAddress) public view returns (uint256 bal) {
            StrategyTokenLike stToken = StrategyTokenLike(strategyAddress);
            if (stToken.balanceOf(address(this)) != 0) {
                bal = stToken.calcPoolValueInToken().mul(
                    stToken.balanceOf(address(this))
                ).div(
                    stToken.totalSupply()
                );
            } else {
                bal = 0;
            }
    }

    function balanceStrategy() public view returns (uint256) {
        uint i = 0;
        uint sum = 0;
        for (; i < strategies.length; i += 1) {
            sum = sum.add(getBalanceOfOneStrategy(strategies[i]));
        }
        return sum;
    }

    function getAvailableStrategyList(bool isDeposit) internal view returns (address[] memory) {
        uint256 activeCnt = isDeposit ? depositActiveCount : withdrawActiveCount;
        require(activeCnt != 0, "none of the strategies are active");
        address[] memory addrArr = new address[](activeCnt);
        uint256 i = 0;
        uint256 cnt = 0;
        for (; i < strategies.length; i += 1) {
            if (isDeposit) {
                if (depositActive[strategies[i]]) {
                    addrArr[cnt] = strategies[i];
                    cnt += 1;
                }
            } else {
                if (withdrawActive[strategies[i]]) {
                    addrArr[cnt] = strategies[i];
                    cnt += 1;
                }
            }
        }

        return addrArr;
    }

    function calcPoolValueInToken() public view returns (uint256) {
        return balanceStrategy();
    }

    function getPricePerFullShare() public view returns (uint) {
        uint _pool = calcPoolValueInToken();
        return _pool.mul(uint256(10) ** uint256(decimals())).div(totalSupply());
    }

    function changeRatio(uint256 index, uint256 value) external {
        require(msg.sender == govAddress, "Not authorized");
        // require(index != 0);
        require(strategies.length > index, "invalid index");
        uint256 valueBefore = ratios[strategies[index]];
        ratios[strategies[index]] = value;    
        ratioTotal = ratioTotal.sub(valueBefore).add(value);
    }

    // doesn"t guarantee that withdrawing shares returned by this function will always be successful.
    function getMaxWithdrawableShares() public view returns (uint256) {
        require(totalSupply() != 0, "total supply is 0");
        uint256 bal;
        (, bal) = findMostLockedStrategy();
        return amountToShares(bal);
    }

    function sharesToAmount(uint256 _shares) public view returns (uint256) {
        uint256 _pool = calcPoolValueInToken();
        return _shares.mul(_pool).div(totalSupply());
    }

    function amountToShares(uint256 _amount) public view returns (uint256) {
        uint256 _pool = calcPoolValueInToken();
        uint256 shares;
        if (totalSupply() == 0 || _pool == 0) {
            shares = _amount;
        } else {
            shares = (_amount.mul(totalSupply()))
                .div(_pool);
        }
        return shares;
    }
    
    function setStrategyActive(uint256 index, bool isDeposit, bool b) public {
        require(msg.sender == govAddress, "Not authorized");
        mapping(address => bool) storage isActive = isDeposit ? depositActive : withdrawActive;
        require(index < strategies.length, "invalid index");
        require(isActive[strategies[index]] != b, b ? "already active" : "already inactive");
        if (isDeposit) {
            depositActiveCount = b ? depositActiveCount.add(1) : depositActiveCount.sub(1);
        } else {
            withdrawActiveCount = b ? withdrawActiveCount.add(1) : withdrawActiveCount.sub(1);
        }
        isActive[strategies[index]] = b;
    }

    function setRebalanceThreshold(uint256 _rebalanceThresholdNumer, uint256 _rebalanceThresholdDenom) external {
        require(msg.sender == govAddress, "Not authorized");
        require(_rebalanceThresholdDenom != 0, "denominator should not be 0");
        require(_rebalanceThresholdDenom >= _rebalanceThresholdNumer, "denominator should be greater than or equal to the numerator");
        rebalanceThresholdNumer = _rebalanceThresholdNumer;
        rebalanceThresholdDenom = _rebalanceThresholdDenom;
    }

    function strategyCount() public view returns (uint256) {
        return strategies.length;
    }


    function _wrapBNB(uint256 _amount) internal {
        if (address(this).balance >= _amount) {
            IWBNB(wbnbAddress).deposit{value: _amount}();
        }
    }

    function _unwrapBNB(uint256 _amount) internal {
        uint256 wbnbBal = IERC20(wbnbAddress).balanceOf(address(this));
        if (wbnbBal >= _amount) {
            IWBNB(wbnbAddress).withdraw(_amount);
        }
    }

    function inCaseTokensGetStuck(
        address _token,
        uint256 _amount,
        address _to
    ) public {
        require(msg.sender == govAddress, "!gov");
        require(_token != address(this), "!safe");
        if (_token == address(0)) {
            require(address(this).balance >= _amount, "amount greater than holding");
            _wrapBNB(_amount);
        } else if (_token == token) { 
            require(balance() >= _amount, "amount greater than holding");
        }
        IERC20(_token).safeTransfer(_to, _amount);
    }

    function getProxyAdmin() public view returns (address adm) {
        bytes32 slot = 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103;
        // solhint-disable-next-line no-inline-assembly
        assembly {
            adm := sload(slot)
        }
    }

    receive() external payable {}
}
