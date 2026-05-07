// ============================================================
// FILE: .cache/OpenZeppelin/v4.9.3/token/ERC20/extensions/IERC20Permit.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/extensions/IERC20Permit.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 Permit extension allowing approvals to be made via signatures, as defined in
 * https://eips.ethereum.org/EIPS/eip-2612[EIP-2612].
 *
 * Adds the {permit} method, which can be used to change an account's ERC20 allowance (see {IERC20-allowance}) by
 * presenting a message signed by the account. By not relying on {IERC20-approve}, the token holder account doesn't
 * need to send a transaction, and thus is not required to hold Ether at all.
 */
interface IERC20Permit {
    /**
     * @dev Sets `value` as the allowance of `spender` over ``owner``'s tokens,
     * given ``owner``'s signed approval.
     *
     * IMPORTANT: The same issues {IERC20-approve} has related to transaction
     * ordering also apply here.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     * - `deadline` must be a timestamp in the future.
     * - `v`, `r` and `s` must be a valid `secp256k1` signature from `owner`
     * over the EIP712-formatted function arguments.
     * - the signature must use ``owner``'s current nonce (see {nonces}).
     *
     * For more information on the signature format, see the
     * https://eips.ethereum.org/EIPS/eip-2612#specification[relevant EIP
     * section].
     */
    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;

    /**
     * @dev Returns the current nonce for `owner`. This value must be
     * included whenever a signature is generated for {permit}.
     *
     * Every successful call to {permit} increases ``owner``'s nonce by one. This
     * prevents a signature from being used multiple times.
     */
    function nonces(address owner) external view returns (uint256);

    /**
     * @dev Returns the domain separator used in the encoding of the signature for {permit}, as defined by {EIP712}.
     */
    // solhint-disable-next-line func-name-mixedcase
    function DOMAIN_SEPARATOR() external view returns (bytes32);
}

// ============================================================
// FILE: .cache/OpenZeppelin/v4.9.3/token/ERC20/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
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

    /**
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 amount) external returns (bool);

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
     * @dev Moves `amount` tokens from `from` to `to` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
}

// ============================================================
// FILE: .cache/OpenZeppelin/v4.9.3/token/ERC20/utils/SafeERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.3) (token/ERC20/utils/SafeERC20.sol)

pragma solidity ^0.8.0;

import "../IERC20.sol";
import "../extensions/IERC20Permit.sol";
import "../../../utils/Address.sol";

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

    /**
     * @dev Transfer `value` amount of `token` from the calling contract to `to`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeTransfer(IERC20 token, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transfer.selector, to, value));
    }

    /**
     * @dev Transfer `value` amount of `token` from `from` to `to`, spending the approval given by `from` to the
     * calling contract. If `token` returns no value, non-reverting calls are assumed to be successful.
     */
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
        require(
            (value == 0) || (token.allowance(address(this), spender) == 0),
            "SafeERC20: approve from non-zero to non-zero allowance"
        );
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, value));
    }

    /**
     * @dev Increase the calling contract's allowance toward `spender` by `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeIncreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        uint256 oldAllowance = token.allowance(address(this), spender);
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, oldAllowance + value));
    }

    /**
     * @dev Decrease the calling contract's allowance toward `spender` by `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeDecreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        unchecked {
            uint256 oldAllowance = token.allowance(address(this), spender);
            require(oldAllowance >= value, "SafeERC20: decreased allowance below zero");
            _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, oldAllowance - value));
        }
    }

    /**
     * @dev Set the calling contract's allowance toward `spender` to `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful. Meant to be used with tokens that require the approval
     * to be set to zero before setting it to a non-zero value, such as USDT.
     */
    function forceApprove(IERC20 token, address spender, uint256 value) internal {
        bytes memory approvalCall = abi.encodeWithSelector(token.approve.selector, spender, value);

        if (!_callOptionalReturnBool(token, approvalCall)) {
            _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, 0));
            _callOptionalReturn(token, approvalCall);
        }
    }

    /**
     * @dev Use a ERC-2612 signature to set the `owner` approval toward `spender` on `token`.
     * Revert on invalid signature.
     */
    function safePermit(
        IERC20Permit token,
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) internal {
        uint256 nonceBefore = token.nonces(owner);
        token.permit(owner, spender, value, deadline, v, r, s);
        uint256 nonceAfter = token.nonces(owner);
        require(nonceAfter == nonceBefore + 1, "SafeERC20: permit did not succeed");
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     */
    function _callOptionalReturn(IERC20 token, bytes memory data) private {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We use {Address-functionCall} to perform this call, which verifies that
        // the target address contains contract code and also asserts for success in the low-level call.

        bytes memory returndata = address(token).functionCall(data, "SafeERC20: low-level call failed");
        require(returndata.length == 0 || abi.decode(returndata, (bool)), "SafeERC20: ERC20 operation did not succeed");
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     *
     * This is a variant of {_callOptionalReturn} that silents catches all reverts and returns a bool instead.
     */
    function _callOptionalReturnBool(IERC20 token, bytes memory data) private returns (bool) {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We cannot use {Address-functionCall} here since this should return false
        // and not revert is the subcall reverts.

        (bool success, bytes memory returndata) = address(token).call(data);
        return
            success && (returndata.length == 0 || abi.decode(returndata, (bool))) && Address.isContract(address(token));
    }
}

// ============================================================
// FILE: .cache/OpenZeppelin/v4.9.3/utils/Address.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/Address.sol)

pragma solidity ^0.8.1;

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
     *
     * Furthermore, `isContract` will also return true if the target contract within
     * the same transaction is already scheduled for destruction by `SELFDESTRUCT`,
     * which only has an effect at the end of a transaction.
     * ====
     *
     * [IMPORTANT]
     * ====
     * You shouldn't rely on `isContract` to protect against flash loan attacks!
     *
     * Preventing calls from contracts is highly discouraged. It breaks composability, breaks support for smart wallets
     * like Gnosis Safe, and does not provide security since it can be circumvented by calling from a contract
     * constructor.
     * ====
     */
    function isContract(address account) internal view returns (bool) {
        // This method relies on extcodesize/address.code.length, which returns 0
        // for contracts in construction, since the code is only stored at the end
        // of the constructor execution.

        return account.code.length > 0;
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
     * https://consensys.net/diligence/blog/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.8.0/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
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
        return functionCallWithValue(target, data, 0, "Address: low-level call failed");
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
    function functionCallWithValue(address target, bytes memory data, uint256 value) internal returns (bytes memory) {
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
        (bool success, bytes memory returndata) = target.call{value: value}(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
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
        (bool success, bytes memory returndata) = target.staticcall(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
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
        (bool success, bytes memory returndata) = target.delegatecall(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    /**
     * @dev Tool to verify that a low level call to smart-contract was successful, and revert (either by bubbling
     * the revert reason or using the provided one) in case of unsuccessful call or if target was not a contract.
     *
     * _Available since v4.8._
     */
    function verifyCallResultFromTarget(
        address target,
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) internal view returns (bytes memory) {
        if (success) {
            if (returndata.length == 0) {
                // only check isContract if the call was successful and the return data is empty
                // otherwise we already know that it was a contract
                require(isContract(target), "Address: call to non-contract");
            }
            return returndata;
        } else {
            _revert(returndata, errorMessage);
        }
    }

    /**
     * @dev Tool to verify that a low level call was successful, and revert if it wasn't, either by bubbling the
     * revert reason or using the provided one.
     *
     * _Available since v4.3._
     */
    function verifyCallResult(
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) internal pure returns (bytes memory) {
        if (success) {
            return returndata;
        } else {
            _revert(returndata, errorMessage);
        }
    }

    function _revert(bytes memory returndata, string memory errorMessage) private pure {
        // Look for revert reason and bubble it up if present
        if (returndata.length > 0) {
            // The easiest way to bubble the revert reason is using memory via assembly
            /// @solidity memory-safe-assembly
            assembly {
                let returndata_size := mload(returndata)
                revert(add(32, returndata), returndata_size)
            }
        } else {
            revert(errorMessage);
        }
    }
}

// ============================================================
// FILE: interfaces/IYearnBoostedStaker.sol
// ============================================================

// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.22;

import {IERC20, SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

interface IYearnBoostedStaker {
    struct AccountData {
        uint112 realizedStake;
        uint112 pendingStake;
        uint16 lastUpdateWeek;
        uint8 updateWeeksBitmap;
    }

    struct ToRealize {
        uint112 weightPersistent;
        uint112 weight;
    }

    enum ApprovalStatus {
        None,
        StakeOnly,
        UnstakeOnly,
        StakeAndUnstake
    }

    // State variables
    function MAX_STAKE_GROWTH_WEEKS() external view returns (uint);
    function MAX_WEEK_BIT() external view returns (uint8);
    function START_TIME() external view returns (uint);
    function stakeToken() external view returns (IERC20);
    function globalGrowthRate() external view returns (uint112);
    function globalLastUpdateWeek() external view returns (uint16);
    function totalSupply() external view returns (uint);
    function decimals() external view returns (uint8);
    function owner() external view returns (address);
    function pendingOwner() external view returns (address);
    function approvedCaller(address account, address caller) external view returns (ApprovalStatus);
    function approvedWeightedStaker(address staker) external view returns (bool);
    function accountWeeklyToRealize(address account, uint week) external view returns (ToRealize memory);
    function globalWeeklyToRealize(uint week) external view returns (ToRealize memory);
    function accountWeeklyMaxStake(address account, uint week) external view returns (uint);
    function globalWeeklyMaxStake(uint week) external view returns (uint);

    // Events
    event Stake(address indexed account, uint indexed week, uint amount, uint newUserWeight, uint weightAdded);
    event Unstake(address indexed account, uint indexed week, uint amount, uint newUserWeight, uint weightRemoved);
    event ApprovedCallerSet(address indexed account, address indexed caller, ApprovalStatus status);
    event WeightedStakerSet(address indexed staker, bool approved);
    event OwnershipTransferred(address indexed newOwner);

    // Functions
    function stake(uint _amount) external returns (uint);
    function stakeFor(address _account, uint _amount) external returns (uint);
    function stakeAsMaxWeighted(address _account, uint _amount) external returns (uint);
    function unstake(uint _amount, address _receiver) external returns (uint);
    function unstakeFor(address _account, uint _amount, address _receiver) external returns (uint);

    function checkpointAccount(address _account) external returns (AccountData memory acctData, uint weight);
    function checkpointAccountWithLimit(address _account, uint _week) external returns (AccountData memory acctData, uint weight);

    function getAccountWeight(address account) external view returns (uint);
    function getAccountWeightAt(address _account, uint _week) external view returns (uint);

    function checkpointGlobal() external returns (uint);
    function getGlobalWeight() external view returns (uint);
    function getGlobalWeightAt(uint week) external view returns (uint);

    function getAccountWeightRatio(address _account) external view returns (uint);
    function getAccountWeightRatioAt(address _account, uint _week) external view returns (uint);

    function balanceOf(address _account) external view returns (uint);
    function setApprovedCaller(address _caller, ApprovalStatus _status) external;
    function setWeightedStaker(address _staker, bool _approved) external;

    function transferOwnership(address _pendingOwner) external;
    function acceptOwnership() external;

    function sweep(address _token) external;
    function getWeek() external view returns (uint);
}

// ============================================================
// FILE: SingleTokenRewardDistributor.sol
// ============================================================

// SPDX-License-Identifier: GNU AGPLv3
pragma solidity ^0.8.22;

import {WeekStart, IYearnBoostedStaker} from "utils/WeekStart.sol";
import {IERC20, SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";


contract SingleTokenRewardDistributor is WeekStart {
    using SafeERC20 for IERC20;

    uint constant public PRECISION = 1e27;
    IYearnBoostedStaker public immutable staker;
    IERC20 public immutable rewardToken;
    uint public immutable START_WEEK;
    uint immutable MAX_STAKE_GROWTH_WEEKS;

    struct AccountInfo {
        address recipient; // Who rewards will be sent to. Cheaper to store here than in dedicated mapping.
        uint96 lastClaimWeek;
    }

    mapping(uint week => uint amount) public weeklyRewardAmount;
    mapping(address account => AccountInfo info) public accountInfo;
    mapping(address account => mapping(address claimer => bool approved)) public approvedClaimer;
    
    event RewardDeposited(uint indexed week, address indexed depositor, uint rewardAmount);
    event RewardsClaimed(address indexed account, uint indexed week, uint rewardAmount);
    event RecipientConfigured(address indexed account, address indexed recipient);
    event ClaimerApproved(address indexed account, address indexed, bool approved);
    event RewardPushed(uint indexed fromWeek, uint indexed toWeek, uint amount);

    /**
        @param _staker the staking contract to use for weight calculations.
        @param _rewardToken address of reward token to be used.
    */
    constructor(
        IYearnBoostedStaker _staker,
        IERC20 _rewardToken
    )
        WeekStart(_staker) {
        staker = _staker;
        rewardToken = _rewardToken;
        START_WEEK = staker.getWeek();
        MAX_STAKE_GROWTH_WEEKS = staker.MAX_STAKE_GROWTH_WEEKS();
    }

    /**
        @notice Allow permissionless deposits to the current week.
        @param _amount the amount of reward token to deposit.
    */
    function depositReward(uint _amount) external {
        if (_amount > 0) {
            uint week = getWeek();
            weeklyRewardAmount[week] += _amount;
            rewardToken.safeTransferFrom(msg.sender, address(this), _amount);
            emit RewardDeposited(week, msg.sender, _amount);
        }
    }

    /**
        @notice Push inaccessible rewards to current week.
        @dev    In rare circumstances, rewards may have been deposited to a week where no adjusted weight exists.
                This function allows us to recover rewards to the current week.
        @param _week the week to push rewards from.
        @return true if operation was successful.
    */
    function pushRewards(uint _week) external returns (bool) {
        uint week = getWeek();
        uint amount = pushableRewards(_week);
        if(amount == 0) return false;
        weeklyRewardAmount[_week] = 0;
        weeklyRewardAmount[week] += amount;
        emit RewardPushed(_week, week, amount);
        return true;
    }

    /**
        @notice Helper view function to check if any rewards are pushable.
        @param _week the week to push rewards from.
        @return uint representing rewards amount that is pushable.
    */
    function pushableRewards(uint _week) public view returns (uint) {
        uint week = getWeek();
        if(_week >= week) return 0;
        if(adjustedGlobalWeightAt(_week) != 0) return 0;
        return weeklyRewardAmount[_week];
    }

    /**
        @notice Claim all owed rewards since the last week touched by the user.
        @dev    It is not suggested to use this function directly. Rather `claimWithRange` 
                will tend to be more gas efficient when used with values from `getSuggestedClaimRange`.
    */
    function claim() external returns (uint amountClaimed) {
        uint currentWeek = getWeek();
        currentWeek = currentWeek == 0 ? 0 : currentWeek - 1;
        return _claimWithRange(msg.sender, 0, currentWeek);
    }

    /**
        @notice Claim on behalf of another account. Retrieves all owed rewards since the last week touched by the user.
        @dev    It is not suggested to use this function directly. Rather `claimWithRange` 
                will tend to be more gas efficient when used with values from `getSuggestedClaimRange`.
    */
    function claimFor(address _account) external returns (uint amountClaimed) {
        require(_onlyClaimers(_account), "!approvedClaimer");
        uint currentWeek = getWeek();
        currentWeek = currentWeek == 0 ? 0 : currentWeek - 1;
        return _claimWithRange(_account, 0, currentWeek);
    }

    /**
        @notice Claim rewards within a range of specified past weeks.
        @param _claimStartWeek the min week to search and rewards.
        @param _claimEndWeek the max week in which to search for and claim rewards.
        @dev    IMPORTANT: Choosing a `_claimStartWeek` that is greater than the earliest week in which a user
                may claim. Will result in the user being locked out (total loss) of rewards for any weeks prior.
    */
    function claimWithRange(
        uint _claimStartWeek,
        uint _claimEndWeek
    ) external returns (uint amountClaimed) {
        return _claimWithRange(msg.sender, _claimStartWeek, _claimEndWeek);
    }

    /**
        @notice Claim on behalf of another account for a range of specified past weeks.
        @param _account Account of which to make the claim on behalf of.
        @param _claimStartWeek The min week to search and rewards.
        @param _claimEndWeek The max week in which to search for and claim rewards.
        @dev    WARNING: Choosing a `_claimStartWeek` that is greater than the earliest week in which a user
                may claim will result in the user being locked out (total loss) of rewards for any weeks prior.
        @dev    Useful to target specific weeks with known reward amounts. Claiming via this function will tend 
                to be more gas efficient when used with values from `getSuggestedClaimRange`.
    */
    function claimWithRangeFor(
        address _account,
        uint _claimStartWeek,
        uint _claimEndWeek
    ) external returns (uint amountClaimed) {
        require(_onlyClaimers(_account), "!approvedClaimer");
        return _claimWithRange(_account, _claimStartWeek, _claimEndWeek);
    }

    function _claimWithRange(
        address _account,
        uint _claimStartWeek,
        uint _claimEndWeek
    ) internal returns (uint amountClaimed) {
        uint currentWeek = getWeek();
        if(_claimEndWeek >= currentWeek) return 0;

        AccountInfo storage info = accountInfo[_account];
        
        // Sanitize inputs
        uint _minStartWeek = info.lastClaimWeek == 0 ? START_WEEK : info.lastClaimWeek;
        _claimStartWeek = max(_minStartWeek, _claimStartWeek);
        if(_claimStartWeek > _claimEndWeek) return 0;
        
        amountClaimed = _getTotalClaimableByRange(_account, _claimStartWeek, _claimEndWeek);
        
        _claimEndWeek += 1;
        info.lastClaimWeek = uint96(_claimEndWeek);
        
        if (amountClaimed > 0) {
            address recipient = info.recipient == address(0) ? _account : info.recipient;
            rewardToken.safeTransfer(recipient, amountClaimed);
            emit RewardsClaimed(_account, _claimEndWeek, amountClaimed);
        }
    }

    /**
        @notice Helper function used to determine overall share of rewards at a particular week.
        @dev    IMPORTANT: This calculation cannot be relied upon to return strictly the users weight
                against global weight as it implements custom logic to ignore the first week of each deposit.
        @dev    Computing shares in past weeks is accurate. However, current week computations will not 
                be accurate until week is finalized.
        @dev    Results scaled to PRECSION.
    */
    function computeSharesAt(address _account, uint _week) public view returns (uint) {
        require(_week <= getWeek(), "Invalid week");
        // As a security measure, we don't distribute rewards to YBS deposits on their first full week of staking.
        // To acheive this, we lookup the weight that was added in the target week and ignore it.
        uint adjAcctWeight = adjustedAccountWeightAt(_account, _week);
        if (adjAcctWeight == 0) return 0;
        
        uint adjGlobalWeight = adjustedGlobalWeightAt(_week);
        if (adjGlobalWeight == 0) return 0;

        return adjAcctWeight * PRECISION / adjGlobalWeight;
    }

    function adjustedAccountWeightAt(address _account, uint _week) public view returns (uint) {
        uint acctWeight = staker.getAccountWeightAt(_account, _week);
        if (acctWeight == 0) return 0;
        return acctWeight - staker.accountWeeklyToRealize(_account, _week + MAX_STAKE_GROWTH_WEEKS).weightPersistent;
    }

    function adjustedGlobalWeightAt(uint _week) public view returns (uint) {
        uint globalWeight = staker.getGlobalWeightAt(_week);
        if (globalWeight == 0) return 0;
        return globalWeight - staker.globalWeeklyToRealize(_week + MAX_STAKE_GROWTH_WEEKS).weightPersistent;
    }

    /**
        @notice Get the sum total number of claimable tokens for a user across all his claimable weeks.
    */
    function getClaimable(address _account) external view returns (uint claimable) {
        (uint claimStartWeek, uint claimEndWeek) = getSuggestedClaimRange(_account);
        return _getTotalClaimableByRange(_account, claimStartWeek, claimEndWeek);
    }

    /**
        @notice Returns sum of tokens earned with a specified range of weeks.
        @param _account Account to query.
        @param _claimStartWeek Week to begin querying from.
        @param _claimEndWeek Week to end querying at.
    */
    function getTotalClaimableByRange(
        address _account,
        uint _claimStartWeek,
        uint _claimEndWeek
    ) external view returns (uint claimable) {
        uint currentWeek = getWeek();
        if (_claimEndWeek >= currentWeek) _claimEndWeek = currentWeek - 1;
        return _getTotalClaimableByRange(_account, _claimStartWeek, _claimEndWeek);
    }

    function _getTotalClaimableByRange(
        address _account,
        uint _claimStartWeek,
        uint _claimEndWeek
    ) internal view returns (uint claimableAmount) {
        for (uint i = _claimStartWeek; i <= _claimEndWeek; ++i) {
            claimableAmount += _getClaimableAt(_account, i);
        }
    }

    /**
        @notice Helper function returns suggested start and end range for claim weeks.
        @dev    This function is designed to be called prior to ranged claims to shorten the number of iterations
                required to loop if possible.
    */
    function getSuggestedClaimRange(address _account) public view returns (uint claimStartWeek, uint claimEndWeek) {
        uint currentWeek = getWeek();
        if (currentWeek == 0) return (0, 0);
        bool canClaim;
        uint lastClaimWeek = accountInfo[_account].lastClaimWeek;
        
        claimStartWeek = START_WEEK > lastClaimWeek ? START_WEEK : lastClaimWeek;

        // Loop from old towards recent.
        for (claimStartWeek; claimStartWeek <= currentWeek; claimStartWeek++) {
            if (_getClaimableAt(_account, claimStartWeek) > 0) {
                canClaim = true;
                break;
            }
        }

        if (!canClaim) return (0,0);

        // Loop backwards from recent week towards old. Skip current week.
        for (claimEndWeek = currentWeek - 1; claimEndWeek > claimStartWeek; claimEndWeek--) {
            if (_getClaimableAt(_account, claimEndWeek) > 0) {
                break;
            }
        }

        return (claimStartWeek, claimEndWeek);
    }

    /**
        @notice Get the reward amount available at a given week index.
        @param _account The account to check.
        @param _week The past week to check.
    */
    function getClaimableAt(
        address _account, 
        uint _week
    ) external view returns (uint rewardAmount) {
        if(_week >= getWeek()) return 0;
        return _getClaimableAt(_account, _week);
    }

    function _getClaimableAt(
        address _account, 
        uint _week
    ) internal view returns (uint rewardAmount) {
        if(_week < accountInfo[_account].lastClaimWeek) return 0;
        uint rewardShare = computeSharesAt(_account, _week);
        uint totalWeeklyAmount = weeklyRewardAmount[_week];
        rewardAmount = rewardShare * totalWeeklyAmount / PRECISION;
    }

    function _onlyClaimers(address _account) internal view returns (bool approved) {
        return approvedClaimer[_account][msg.sender] || _account == msg.sender;
    }

    /**
        @notice User may configure their account to set a custom reward recipient.
        @param _recipient   Wallet to receive rewards on behalf of the account. Zero address will result in all 
                            rewards being transferred directly to the account holder.
    */
    function configureRecipient(address _recipient) external {
        accountInfo[msg.sender].recipient = _recipient;
        emit RecipientConfigured(msg.sender, _recipient);
    }

    /**
        @notice Allow account to specify addresses to claim on their behalf.
        @param _claimer Claimer to approve or revoke
        @param _approved True to approve, False to revoke.
    */
    function approveClaimer(address _claimer, bool _approved) external {
        approvedClaimer[msg.sender][_claimer] = _approved;
        emit ClaimerApproved(msg.sender, _claimer, _approved);
    }

    function max(uint a, uint b) internal pure returns (uint) {
        return a < b ? b : a;
    }
}

// ============================================================
// FILE: utils/WeekStart.sol
// ============================================================

// SPDX-License-Identifier: GNU AGPLv3
pragma solidity ^0.8.22;
import {IYearnBoostedStaker} from "../interfaces/IYearnBoostedStaker.sol";

/**
    @title Week Start
    @dev Provides a unified `START_TIME` and `getWeek` aligned with the staker.
 */
contract WeekStart {
    uint256 public immutable START_TIME;

    constructor(IYearnBoostedStaker staker) {
        START_TIME = staker.START_TIME();
    }

    function getWeek() public view returns (uint256 week) {
        return (block.timestamp - START_TIME) / 1 weeks;
    }
}

// ============================================================
// FILE: YBSRewardFactory.sol
// ============================================================

// SPDX-License-Identifier: GNU AGPLv3
pragma solidity ^0.8.22;

import {IERC20, SingleTokenRewardDistributor, IYearnBoostedStaker} from "../SingleTokenRewardDistributor.sol";


/// @title Deploys Rewards Distributor Contract
contract YBSRewardFactory{

    string public constant VERSION = "1.0.0";

    /**
        @notice Deploy new YBS Reward contract.
        @dev We use CREATE2 to generate deterministic deployments based on msg.sender.
    */
    function deploy(
        address _ybs,
        address _reward_token
    ) external returns (address distributor) {

        uint256 salt = uint256(uint160(address(msg.sender)));
        bytes memory bytecode = type(SingleTokenRewardDistributor).creationCode;
        bytes memory bytecodeWithArgs = abi.encodePacked(
            bytecode,
            abi.encode(_ybs, _reward_token)
        );
        address deployedAddress;
        assembly {
            deployedAddress := create2(0, add(bytecodeWithArgs, 0x20), mload(bytecodeWithArgs), salt)
        }
        require(deployedAddress != address(0), "Failed to deploy contract");

        return deployedAddress;
    }
}
