// Sources flattened with hardhat v2.22.8 https://hardhat.org

// SPDX-License-Identifier: MIT

// File @openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol@v5.0.2

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/extensions/IERC20Permit.sol)

pragma solidity ^0.8.20;

/**
 * @dev Interface of the ERC20 Permit extension allowing approvals to be made via signatures, as defined in
 * https://eips.ethereum.org/EIPS/eip-2612[EIP-2612].
 *
 * Adds the {permit} method, which can be used to change an account's ERC20 allowance (see {IERC20-allowance}) by
 * presenting a message signed by the account. By not relying on {IERC20-approve}, the token holder account doesn't
 * need to send a transaction, and thus is not required to hold Ether at all.
 *
 * ==== Security Considerations
 *
 * There are two important considerations concerning the use of `permit`. The first is that a valid permit signature
 * expresses an allowance, and it should not be assumed to convey additional meaning. In particular, it should not be
 * considered as an intention to spend the allowance in any specific way. The second is that because permits have
 * built-in replay protection and can be submitted by anyone, they can be frontrun. A protocol that uses permits should
 * take this into consideration and allow a `permit` call to fail. Combining these two aspects, a pattern that may be
 * generally recommended is:
 *
 * ```solidity
 * function doThingWithPermit(..., uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s) public {
 *     try token.permit(msg.sender, address(this), value, deadline, v, r, s) {} catch {}
 *     doThing(..., value);
 * }
 *
 * function doThing(..., uint256 value) public {
 *     token.safeTransferFrom(msg.sender, address(this), value);
 *     ...
 * }
 * ```
 *
 * Observe that: 1) `msg.sender` is used as the owner, leaving no ambiguity as to the signer intent, and 2) the use of
 * `try/catch` allows the permit to fail and makes the code tolerant to frontrunning. (See also
 * {SafeERC20-safeTransferFrom}).
 *
 * Additionally, note that smart contract wallets (such as Argent or Safe) are not able to produce permit signatures, so
 * contracts should have entry points that don't rely on permit.
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
     *
     * CAUTION: See Security Considerations above.
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


// File @openzeppelin/contracts/token/ERC20/IERC20.sol@v5.0.2

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.20;

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
     * @dev Returns the value of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the value of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 value) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens.
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
    function approve(address spender, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the
     * allowance mechanism. `value` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 value) external returns (bool);
}


// File @openzeppelin/contracts/utils/Address.sol@v5.0.2

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/Address.sol)

pragma solidity ^0.8.20;

/**
 * @dev Collection of functions related to the address type
 */
library Address {
    /**
     * @dev The ETH balance of the account is not enough to perform the operation.
     */
    error AddressInsufficientBalance(address account);

    /**
     * @dev There's no code at `target` (it is not a contract).
     */
    error AddressEmptyCode(address target);

    /**
     * @dev A call to an address target failed. The target may have reverted.
     */
    error FailedInnerCall();

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
     * https://solidity.readthedocs.io/en/v0.8.20/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
     */
    function sendValue(address payable recipient, uint256 amount) internal {
        if (address(this).balance < amount) {
            revert AddressInsufficientBalance(address(this));
        }

        (bool success, ) = recipient.call{value: amount}("");
        if (!success) {
            revert FailedInnerCall();
        }
    }

    /**
     * @dev Performs a Solidity function call using a low level `call`. A
     * plain `call` is an unsafe replacement for a function call: use this
     * function instead.
     *
     * If `target` reverts with a revert reason or custom error, it is bubbled
     * up by this function (like regular Solidity function calls). However, if
     * the call reverted with no returned reason, this function reverts with a
     * {FailedInnerCall} error.
     *
     * Returns the raw returned data. To convert to the expected return value,
     * use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].
     *
     * Requirements:
     *
     * - `target` must be a contract.
     * - calling `target` with `data` must not revert.
     */
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but also transferring `value` wei to `target`.
     *
     * Requirements:
     *
     * - the calling contract must have an ETH balance of at least `value`.
     * - the called Solidity function must be `payable`.
     */
    function functionCallWithValue(address target, bytes memory data, uint256 value) internal returns (bytes memory) {
        if (address(this).balance < value) {
            revert AddressInsufficientBalance(address(this));
        }
        (bool success, bytes memory returndata) = target.call{value: value}(data);
        return verifyCallResultFromTarget(target, success, returndata);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a static call.
     */
    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        (bool success, bytes memory returndata) = target.staticcall(data);
        return verifyCallResultFromTarget(target, success, returndata);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a delegate call.
     */
    function functionDelegateCall(address target, bytes memory data) internal returns (bytes memory) {
        (bool success, bytes memory returndata) = target.delegatecall(data);
        return verifyCallResultFromTarget(target, success, returndata);
    }

    /**
     * @dev Tool to verify that a low level call to smart-contract was successful, and reverts if the target
     * was not a contract or bubbling up the revert reason (falling back to {FailedInnerCall}) in case of an
     * unsuccessful call.
     */
    function verifyCallResultFromTarget(
        address target,
        bool success,
        bytes memory returndata
    ) internal view returns (bytes memory) {
        if (!success) {
            _revert(returndata);
        } else {
            // only check if target is a contract if the call was successful and the return data is empty
            // otherwise we already know that it was a contract
            if (returndata.length == 0 && target.code.length == 0) {
                revert AddressEmptyCode(target);
            }
            return returndata;
        }
    }

    /**
     * @dev Tool to verify that a low level call was successful, and reverts if it wasn't, either by bubbling the
     * revert reason or with a default {FailedInnerCall} error.
     */
    function verifyCallResult(bool success, bytes memory returndata) internal pure returns (bytes memory) {
        if (!success) {
            _revert(returndata);
        } else {
            return returndata;
        }
    }

    /**
     * @dev Reverts with returndata if present. Otherwise reverts with {FailedInnerCall}.
     */
    function _revert(bytes memory returndata) private pure {
        // Look for revert reason and bubble it up if present
        if (returndata.length > 0) {
            // The easiest way to bubble the revert reason is using memory via assembly
            /// @solidity memory-safe-assembly
            assembly {
                let returndata_size := mload(returndata)
                revert(add(32, returndata), returndata_size)
            }
        } else {
            revert FailedInnerCall();
        }
    }
}


// File @openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol@v5.0.2

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/utils/SafeERC20.sol)

pragma solidity ^0.8.20;



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
     * @dev An operation with an ERC20 token failed.
     */
    error SafeERC20FailedOperation(address token);

    /**
     * @dev Indicates a failed `decreaseAllowance` request.
     */
    error SafeERC20FailedDecreaseAllowance(address spender, uint256 currentAllowance, uint256 requestedDecrease);

    /**
     * @dev Transfer `value` amount of `token` from the calling contract to `to`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeTransfer(IERC20 token, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeCall(token.transfer, (to, value)));
    }

    /**
     * @dev Transfer `value` amount of `token` from `from` to `to`, spending the approval given by `from` to the
     * calling contract. If `token` returns no value, non-reverting calls are assumed to be successful.
     */
    function safeTransferFrom(IERC20 token, address from, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeCall(token.transferFrom, (from, to, value)));
    }

    /**
     * @dev Increase the calling contract's allowance toward `spender` by `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeIncreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        uint256 oldAllowance = token.allowance(address(this), spender);
        forceApprove(token, spender, oldAllowance + value);
    }

    /**
     * @dev Decrease the calling contract's allowance toward `spender` by `requestedDecrease`. If `token` returns no
     * value, non-reverting calls are assumed to be successful.
     */
    function safeDecreaseAllowance(IERC20 token, address spender, uint256 requestedDecrease) internal {
        unchecked {
            uint256 currentAllowance = token.allowance(address(this), spender);
            if (currentAllowance < requestedDecrease) {
                revert SafeERC20FailedDecreaseAllowance(spender, currentAllowance, requestedDecrease);
            }
            forceApprove(token, spender, currentAllowance - requestedDecrease);
        }
    }

    /**
     * @dev Set the calling contract's allowance toward `spender` to `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful. Meant to be used with tokens that require the approval
     * to be set to zero before setting it to a non-zero value, such as USDT.
     */
    function forceApprove(IERC20 token, address spender, uint256 value) internal {
        bytes memory approvalCall = abi.encodeCall(token.approve, (spender, value));

        if (!_callOptionalReturnBool(token, approvalCall)) {
            _callOptionalReturn(token, abi.encodeCall(token.approve, (spender, 0)));
            _callOptionalReturn(token, approvalCall);
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
        // we're implementing it ourselves. We use {Address-functionCall} to perform this call, which verifies that
        // the target address contains contract code and also asserts for success in the low-level call.

        bytes memory returndata = address(token).functionCall(data);
        if (returndata.length != 0 && !abi.decode(returndata, (bool))) {
            revert SafeERC20FailedOperation(address(token));
        }
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
        return success && (returndata.length == 0 || abi.decode(returndata, (bool))) && address(token).code.length > 0;
    }
}


// File contracts/interfaces/IErrors.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.20;

interface IErrors {
    /**
     * @dev Error thrown when the provided address is equal to the zero address.
     */
    error ZeroAddressNotAllowed();

    /**
     * @dev Error thrown when the provided token is the reward token and cannot be used.
     */
    error TokenIsRewardToken();

    /**
     * @dev Error thrown when the provided token already exists in another pool.
     */
    error TokenAlreadyInPool();

    /**
     * @dev Error thrown when there are not enough rewards in the contract.
     */
    error InsufficientRewards();

    /**
     * @dev Error thrown when the msg.sender is not the backend wallet.
     */
    error OnlyBackend();

    /**
     * @dev Error thrown when there is no active stake for the `msg.sender`.
     */
    error NoActiveStake();

    /**
     * @dev Error thrown when the staked amount is less than the withdraw amount.
     */
    error InsufficientBalance();

    /**
     * @dev Error thrown when the ether sent with the transaction is not equal to `value` ether.
     */
    error InvalidEtherValue(uint256 value);

    /**
     * @dev Error thrown when the staked amount is less than the required minimum value.
     */
    error InsufficientStakeAmount();

    /**
     * @dev Error thrown when the provided PAXE tokens are not enough for staking.
     */
    error InsufficientPaxeTokens();

    /**
     * @dev Error thrown when a user tries to refer but has already been referred by someone else.
     */
    error AlreadyReferred(address referree, address referrer);

    /**
     * @dev Error thrown when a user tries to refer themselves.
     */
    error SelfReferError(address referree, address referrer);

    /**
     * @dev Error thrown when the referrer address provided is invalid.
     */
    error InvalidReferrerError(address referree, address referrer);

    /**
     * @dev Error thrown when an invalid nonce is provided.
     */
    error InvalidNonceError(address sender, uint256 nonce);

    /**
     * @dev Error thrown when the provided signature is invalid.
     */
    error InvalidSignatureError();

    /**
     * @dev Error thrown when a cyclic reference is detected in the referral chain.
     */
    error CyclicReferenceError(address referree, address referrer);

    /**
     * @dev Error thrown when a trying to set a variable to the value it already has.
     */
    error AlreadySetError();

    /**
     * @dev Error thrown when the provided PAXE token does not match the PAXE Oracle's tokens.
     */
    error IncorrectPaxeOracle();

    /**
     * @dev Error thrown when the provided SAKAI token does not match the SAKAI Oracle's tokens.
     */
    error IncorrectSakaiOracle();

    /**
     * @dev Error thrown when the provided token does not match the Oracle's tokens.
     */
    error IncorrectOracle();

    /**
     * @dev Thrown when the tokens paired by the PAXE Oracle and the SAKAI Oracle do not match.
     */
    error IncorrectOraclePairTokens();

    /**
     * @dev Error thrown when the restaked amount is zero.
     */
    error InsufficientRestakeAmount();

    /**
     * @dev Error thrown when the provided special referrer stake reward is out of bounds.
     */
    error SpecialReferrerStakeRewardOutOfBounds();
}


// File contracts/interfaces/IEvents.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.20;

interface IEvents {
    /**
     * @dev Emits an event when a new pool is added.
     */
    event AddPool(uint256 indexed pid, uint256 apr, address indexed token);

    /**
     * @dev Emits an event when a pool's apr is updated.
     */
    event SetPool(uint256 indexed pid, uint256 apr);

    /**
     * @dev Emits an event when a user deposits to a pool.
     */
    event Deposit(address indexed user, uint256 indexed pid, uint256 amount, uint256 value);

    /**
     * @dev Emits an event when a user stakes.
     */
    event Deposit(address indexed staker, uint256 indexed timestamp, uint256 value, string indexed refCode);

    /**
     * @dev Emits an event when the special wallet is updated.
     */
    event SpecialReferrerUpdated(address indexed wallet, bool indexed status);

    /**
     * @dev Emits an event when the boost points are sent.
     */
    event BoostPointSent(address indexed wallet, uint256 amount);

    /**
     * @dev Emits an event when a user withdraws from a pool.
     */
    event Withdraw(address indexed user, uint256 indexed pid, uint256 amount);

    /**
     * @dev Emits an event when a user emergency withdraws from a pool.
     */
    event EmergencyWithdraw(address indexed user, uint256 indexed pid, uint256 amount);

    /**
     * @dev Emits an event when a user restakes.
     */
    event Restake(address indexed staker, uint256 indexed timestamp, uint256 value);

    /**
     * @dev Emits an event when a user stakes.
     */
    event Stake(address indexed staker, uint256 indexed timestamp, uint256 value);

    /**
     * @dev Emits an event when a user deposits.
     */
    event Stake(address indexed staker, uint256 timestamp, uint256 value, address indexed referrer);

    /**
     * @dev Emits an event when a user claim his rewards.
     */
    event Claim(address indexed staker, uint256 indexed timestamp, uint256 rewards);

    /**
     * @dev Emits an event when a special referrer address is set or updated.
     */
    event SetSpecialReferrer(address indexed referrer, bool indexed value);

    /**
     * @dev Emits an event when a user gets referrered.
     */
    event Referred(address indexed referree, address indexed referrer);

    /**
     * @dev Emits an event when the token receiver mapping is updated.
     */
    event TokenReceiverUpdated(address indexed user, address indexed receiver);

    /**
     * @dev Emits an event when the backend wallet is updated.
     */
    event SignatureSignerUpdated(address indexed oldSignatureSigner, address indexed newSignatureSigner);

    /**
     * @dev Emits an event when the special referrer's stake reward is updated.
     */
    event SpecialReferrerStakeRewardUpdated(uint256 indexed newStakeReward, uint256 oldStakeReward);

    /**
     * @dev Emits an event when burnDepositedPAXE is updated.
     */
    event SetBurnDepositedPAXE(bool indexed value);

    /**
     * @dev Emits an event when AmbassadorMonthlyBonus is updated.
     */
    event AmbassadorMonthlyBonusUpdated(uint256[] bonus);

    /**
     * @dev Emits an event when the one-time referral reward is sent to the referrer.
     */
    event ReferralStakeRewardSent(address referral, address referrer, uint256 amount);
}


// File contracts/PaxeRestaking.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity 0.8.20;


contract PaxeRestaking is IErrors, IEvents {
    using SafeERC20 for IERC20;

    struct StakeInfo {
        uint256 value; // Stake value in dollars with 18 decimals precision
        uint256 stakeTimestamp; // Timestamp that user staked
        uint256 lastClaimTimestamp; // Last timestamp that yield was claimed
        uint256 claimedRewards; // Claim rewards value in dollars with 18 decimals precision
    }

    mapping(address => StakeInfo[]) public stakeInfo;

    uint256 constant STAKING_PERIOD = 180 days;
    uint256 constant CLAIM_FEE = 0.0001 ether;
    uint256 constant STAKE_FEE = 0.01 ether;

    address public immutable paxeTreasury;

    IERC20 public pPAXE;
    IERC20 public PAXE;

    /**
     * @dev Constructor for initializing the staking contract.
     */
    constructor(address _pPAXE, address _PAXE, address _paxeTreasury) {
        if (_pPAXE == address(0)) revert ZeroAddressNotAllowed();
        if (_PAXE == address(0)) revert ZeroAddressNotAllowed();
        if (_paxeTreasury == address(0)) revert ZeroAddressNotAllowed();

        pPAXE = IERC20(_pPAXE);
        PAXE = IERC20(_PAXE);
        paxeTreasury = _paxeTreasury;
    }

    /**
     * @dev Stake pPAXE that are locked indefinitely, record the staking information
     *
     * Emits a {Restake} event.
     */
    function restake(uint256 amount) external payable {
        if (msg.value != STAKE_FEE) revert InvalidEtherValue(STAKE_FEE);
        if (amount == 0) revert InsufficientRestakeAmount();
        payable(paxeTreasury).transfer(STAKE_FEE);

        pPAXE.safeTransferFrom(msg.sender, address(this), amount);

        StakeInfo memory newStake =
            StakeInfo({value: amount, stakeTimestamp: block.timestamp, lastClaimTimestamp: 0, claimedRewards: 0});
        stakeInfo[msg.sender].push(newStake);

        emit Restake(msg.sender, block.timestamp, amount);
    }

    /**
     * @dev Calculate pending rewards, delete completed stakes and distribute rewards
     *
     * Emits a {Claim} event.
     */
    function claim() external payable {
        StakeInfo[] storage userStake = stakeInfo[msg.sender];
        if (userStake.length == 0) revert NoActiveStake();
        if (msg.value != CLAIM_FEE) revert InvalidEtherValue(CLAIM_FEE);
        payable(paxeTreasury).transfer(CLAIM_FEE);

        uint256 rewards = 0;
        for (uint256 i = 0; i < userStake.length;) {
            (uint256 currentStakeRewards, bool deleteStake) = _pendingRewards(userStake[i]);

            rewards += currentStakeRewards;

            if (deleteStake) {
                userStake[i] = userStake[userStake.length - 1];
                userStake.pop();
            } else {
                userStake[i].lastClaimTimestamp = block.timestamp;
                userStake[i].claimedRewards += currentStakeRewards;

                unchecked {
                    ++i;
                }
            }
        }

        if (PAXE.balanceOf(address(this)) < rewards) revert InsufficientRewards();

        PAXE.safeTransfer(msg.sender, rewards);

        emit Claim(msg.sender, block.timestamp, rewards);
    }

    /**
     * @dev Calculate pending rewards of user.
     */
    function pendingRewards(address user) public view returns (uint256 rewards) {
        StakeInfo[] memory userStake = stakeInfo[user];

        for (uint256 i = 0; i < userStake.length; i++) {
            (uint256 currentStakeRewards,) = _pendingRewards(userStake[i]);
            rewards += currentStakeRewards;
        }
    }

    /**
     * @dev Calculate pending rewards of StakeInfo, and whether it should be deleted.
     */
    function _pendingRewards(StakeInfo memory userStake)
        internal
        view
        returns (uint256 currentStakeRewards, bool deleteStake)
    {
        uint256 rate = rewardsRate(userStake.value);
        // First claim
        if (userStake.lastClaimTimestamp == 0) {
            // Staking period is over
            if (userStake.stakeTimestamp + STAKING_PERIOD <= block.timestamp) {
                currentStakeRewards = STAKING_PERIOD * rate;
                deleteStake = true;
            } else {
                currentStakeRewards = (block.timestamp - userStake.stakeTimestamp) * rate;
            }
        } else {
            // Staking period is over
            if (userStake.stakeTimestamp + STAKING_PERIOD <= block.timestamp) {
                currentStakeRewards =
                    ((userStake.stakeTimestamp + STAKING_PERIOD) - userStake.lastClaimTimestamp) * rate;
                deleteStake = true;
            } else {
                currentStakeRewards = (block.timestamp - userStake.lastClaimTimestamp) * rate;
            }
        }
    }

    /**
     * @dev Calculate the reward per second of restakeValue.
     */
    function rewardsRate(uint256 restakeValue) internal pure returns (uint256 rate) {
        return restakeValue * 16666666666 / 1e14 / 1 days;
    }
}