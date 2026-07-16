// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

import "./StrategyAlphaStorage.sol";

interface Bank {
    function totalBNB() external view returns (uint amount);
    function deposit() external payable;
    function withdraw(uint share) external;
}

interface ALPHAToken is IERC20 {
}

interface IPancakeRouter01 {
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

    function removeLiquidity(
        address tokenA,
        address tokenB,
        uint256 liquidity,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline
    ) external returns (uint256 amountA, uint256 amountB);

    function swapExactTokensForTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external returns (uint256[] memory amounts);

}

interface IPancakeRouter02 is IPancakeRouter01 {

}



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

interface IWBNB is IERC20 {
    function deposit() external payable;
    function withdraw(uint256 wad) external;
}

contract StrategyAlphaImpl is StrategyAlphaStorage {
    using SafeERC20 for IERC20;
    using Address for address;
    using SafeMath for uint256;

    function deposit(uint256 _wantAmt)
        public
        onlyOwner
        nonReentrant
        whenNotPaused
        returns (uint256)
    {
        IERC20(wantAddress).safeTransferFrom(
            address(msg.sender),
            address(this),
            _wantAmt
        );
        
        _unwrapBNB(_wantAmt);

        uint before = _stakedWantTokens();
        Bank(bankAddress).deposit{value: _wantAmt}();
        uint diff = _stakedWantTokens().sub(before);

        balanceSnapshot = balanceSnapshot.add(diff);

        return diff;
    }

    function withdraw(uint256 _wantAmt)
        public
        onlyOwner
        nonReentrant
        returns (uint256)
    {
        _wantAmt = _wantAmt.mul(withdrawFeeDenom.sub(withdrawFeeNumer)).div(withdrawFeeDenom);

        uint256 wantBal = _stakedWantTokens();
        uint256 amount = _wantAmt.mul(IERC20(bankAddress).totalSupply()).div(Bank(bankAddress).totalBNB());      
        Bank(bankAddress).withdraw(amount);
        wantBal = wantBal.sub(_stakedWantTokens());

        _wrapBNB(wantBal);
        IERC20(wantAddress).safeTransfer(owner(), wantBal);
        
        balanceSnapshot = balanceSnapshot.sub(_wantAmt);

        return wantBal;
    }

    function _stakedWantTokens() public view returns (uint256) {
        IERC20 _token = IERC20(bankAddress);
        uint _totalBNB = Bank(bankAddress).totalBNB();
        return _token.balanceOf(address(this)).mul(_totalBNB).div(_token.totalSupply());
    }

    function earn() external whenNotPaused {
        uint earnedAmt = ALPHAToken(alphaAddress).balanceOf(address(this));
        if(earnedAmt != 0) {
            earnedAmt = buyBack(earnedAmt);
        
            if (alphaAddress != wantAddress) {
                IPancakeRouter02(pancakeRouterAddress).swapExactTokensForTokens(
                    earnedAmt,
                    0,
                    ALPHAToWantPath,
                    address(this),
                    now.add(600)
                );
            }
        }

        uint256 prevBalance = balanceSnapshot;
        uint256 currentBalance = _stakedWantTokens();

        if (prevBalance < currentBalance) {
            earnedAmt = currentBalance.sub(prevBalance);
            buyBackWant(earnedAmt);
        }

        earnedAmt = IERC20(wantAddress).balanceOf(address(this)); //wbnb
        if (earnedAmt != 0) {
            _unwrapBNB(earnedAmt);
            Bank(bankAddress).deposit{value: earnedAmt}();
        }

        balanceSnapshot = _stakedWantTokens();
        lastEarnBlock = block.number;
    }

    function buyBackWant(uint256 _earnedAmt) internal {
        if (buyBackRate != 0) {
            uint256 buyBackAmt = _earnedAmt.mul(buyBackRate).div(buyBackRateMax);
            uint256 curWantBal = address(this).balance;
            
            if(curWantBal < buyBackAmt) {
                uint amount = (buyBackAmt.sub(curWantBal)).mul(IERC20(bankAddress).totalSupply()).div(Bank(bankAddress).totalBNB());
                Bank(bankAddress).withdraw(amount);
                buyBackAmt = address(this).balance;
                _wrapBNB(buyBackAmt);
            }

            IPancakeRouter02(pancakeRouterAddress).swapExactTokensForTokens(
                buyBackAmt,
                0,
                wantToBELTPath,
                address(this),
                now + 600
            );

            uint256 burnAmt = IERC20(BELTAddress).balanceOf(address(this));
            IERC20(BELTAddress).safeTransfer(buyBackAddress, burnAmt);
        }
    }

    function buyBack(uint256 _earnedAmt) internal returns (uint256) {
        if (buyBackRate <= 0) {
            return _earnedAmt;
        }

        uint256 buyBackAmt = _earnedAmt.mul(buyBackRate).div(buyBackRateMax);

        IPancakeRouter02(pancakeRouterAddress).swapExactTokensForTokens(
            buyBackAmt,
            0,
            ALPHAToBELTPath,
            address(this),
            now + 600
        );

        uint256 burnAmt = IERC20(BELTAddress).balanceOf(address(this));
        IERC20(BELTAddress).safeTransfer(buyBackAddress, burnAmt);

        return _earnedAmt.sub(buyBackAmt);
    }

    function pause() public {
        require(msg.sender == govAddress, "Not authorised");

        _pause();

        IERC20(alphaAddress).safeApprove(pancakeRouterAddress, 0);
        IERC20(wantAddress).safeApprove(pancakeRouterAddress, 0);
    }

    function unpause() external {
        require(msg.sender == govAddress, "Not authorised");
        _unpause();

        IERC20(alphaAddress).safeApprove(pancakeRouterAddress, uint256(-1));
        IERC20(wantAddress).safeApprove(pancakeRouterAddress, uint256(-1));
    }

    function wantLockedTotal() public view returns (uint256) {
        return wantLockedInHere().add(balanceSnapshot);
    }

    function wantLockedInHere() public view returns (uint256) {
        uint256 wantBal = IERC20(wbnbAddress).balanceOf(address(this));
        return wantBal;
    }

    function setbuyBackRate(uint256 _buyBackRate) public {
        require(msg.sender == govAddress, "Not authorised");
        require(buyBackRate <= buyBackRateUL, "too high");
        buyBackRate = _buyBackRate;
    }

    function setGov(address _govAddress) public {
        require(msg.sender == govAddress, "Not authorised");
        govAddress = _govAddress;
    }

    function inCaseTokensGetStuck(
        address _token,
        uint256 _amount,
        address _to
    ) public {
        require(msg.sender == govAddress, "!gov");
        require(_token != alphaAddress, "!safe");
        require(_token != wantAddress, "!safe");
        require(_token != bankAddress, "!safe");

        IERC20(_token).safeTransfer(_to, _amount);
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

    function setWithdrawFee(uint256 _withdrawFeeNumer, uint256 _withdrawFeeDenom) external {
        require(msg.sender == govAddress, "Not authorised");
        require(_withdrawFeeDenom != 0, "denominator should not be 0");
        require(_withdrawFeeNumer.mul(10) <= _withdrawFeeDenom, "numerator value too big");
        withdrawFeeDenom = _withdrawFeeDenom;
        withdrawFeeNumer = _withdrawFeeNumer;
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
