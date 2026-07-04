// SPDX-License-Identifier: UNLICENSED
pragma solidity =0.8.24 ^0.8.20 ^0.8.24;

// lib/openzeppelin-contracts/contracts/utils/Address.sol

// OpenZeppelin Contracts (last updated v5.0.0) (utils/Address.sol)

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

// src/interfaces/IDistributionCreator.sol

interface IDistributionCreator {
    // https://github.com/AngleProtocol/merkl-contracts/blob/c621948937be3dac367e0376601f93201adefb3a/contracts/struct/CampaignParameters.sol
    struct CampaignParameters {
        // POPULATED ONCE CREATED

        // ID of the campaign. This can be left as a null bytes32 when creating campaigns
        // on Merkl.
        bytes32 campaignId;
        // CHOSEN BY CAMPAIGN CREATOR

        // Address of the campaign creator, if marked as address(0), it will be overriden with the
        // address of the `msg.sender` creating the campaign
        address creator;
        // Address of the token used as a reward
        address rewardToken;
        // Amount of `rewardToken` to distribute across all the epochs
        // Amount distributed per epoch is `amount/numEpoch`
        uint256 amount;
        // Type of campaign
        uint32 campaignType;
        // Timestamp at which the campaign should start
        uint32 startTimestamp;
        // Duration of the campaign in seconds. Has to be a multiple of EPOCH = 3600
        uint32 duration;
        // Extra data to pass to specify the campaign
        bytes campaignData;
    }

    error CampaignDoesNotExist();
    error CampaignAlreadyExists();

    function distributor() external view returns (address);
    function campaign(bytes32 _campaignId) external view returns (CampaignParameters memory);
    function campaignLookup(bytes32 _campaignId) external view returns (uint256);

    function acceptConditions() external;
    function campaignId(CampaignParameters memory campaignData) external returns (bytes32);
    function createCampaign(CampaignParameters memory newCampaign) external returns (bytes32);
}

// lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol

// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/IERC20.sol)

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

// lib/openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Permit.sol

// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/extensions/IERC20Permit.sol)

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

// src/interfaces/ILQTYStaking.sol

interface ILQTYStaking {
    // --- Events --

    event LQTYTokenAddressSet(address _lqtyTokenAddress);
    event LUSDTokenAddressSet(address _lusdTokenAddress);
    event TroveManagerAddressSet(address _troveManager);
    event BorrowerOperationsAddressSet(address _borrowerOperationsAddress);
    event ActivePoolAddressSet(address _activePoolAddress);

    event StakeChanged(address indexed staker, uint256 newStake);
    event StakingGainsWithdrawn(address indexed staker, uint256 LUSDGain, uint256 ETHGain);
    event F_ETHUpdated(uint256 _F_ETH);
    event F_LUSDUpdated(uint256 _F_LUSD);
    event TotalLQTYStakedUpdated(uint256 _totalLQTYStaked);
    event EtherSent(address _account, uint256 _amount);
    event StakerSnapshotsUpdated(address _staker, uint256 _F_ETH, uint256 _F_LUSD);

    // --- Functions ---

    function setAddresses(
        address _lqtyTokenAddress,
        address _lusdTokenAddress,
        address _troveManagerAddress,
        address _borrowerOperationsAddress,
        address _activePoolAddress
    ) external;

    function stake(uint256 _LQTYamount) external;

    function unstake(uint256 _LQTYamount) external;

    function increaseF_ETH(uint256 _ETHFee) external;

    function increaseF_LUSD(uint256 _LQTYFee) external;

    function getPendingETHGain(address _user) external view returns (uint256);

    function getPendingLUSDGain(address _user) external view returns (uint256);

    function stakes(address _user) external view returns (uint256);

    function totalLQTYStaked() external view returns (uint256);
}

// src/utils/Types.sol

struct PermitParams {
    address owner;
    address spender;
    uint256 value;
    uint256 deadline;
    uint8 v;
    bytes32 r;
    bytes32 s;
}

uint256 constant WAD = 1e18;

// lib/openzeppelin-contracts/contracts/interfaces/IERC20.sol

// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/IERC20.sol)

// lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol

// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/utils/SafeERC20.sol)

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

// src/interfaces/IGovernance.sol

uint256 constant UNREGISTERED_INITIATIVE = type(uint256).max;

interface IGovernance {
    enum HookStatus {
        Failed,
        Succeeded,
        NotCalled
    }

    /// @notice Emitted when a user deposits LQTY
    /// @param user The account depositing LQTY
    /// @param rewardRecipient The account receiving the LUSD/ETH rewards earned from staking in V1, if claimed
    /// @param lqtyAmount The amount of LQTY being deposited
    /// @return lusdReceived Amount of LUSD tokens received as a side-effect of staking new LQTY
    /// @return lusdSent Amount of LUSD tokens sent to `rewardRecipient` (may include previously received LUSD)
    /// @return ethReceived Amount of ETH received as a side-effect of staking new LQTY
    /// @return ethSent Amount of ETH sent to `rewardRecipient` (may include previously received ETH)
    event DepositLQTY(
        address indexed user,
        address rewardRecipient,
        uint256 lqtyAmount,
        uint256 lusdReceived,
        uint256 lusdSent,
        uint256 ethReceived,
        uint256 ethSent
    );

    /// @notice Emitted when a user withdraws LQTY or claims V1 staking rewards
    /// @param user The account withdrawing LQTY or claiming V1 staking rewards
    /// @param recipient The account receiving the LQTY withdrawn, and if claimed, the LUSD/ETH rewards earned from staking in V1
    /// @return lqtyReceived Amount of LQTY tokens actually withdrawn (may be lower than the `_lqtyAmount` passed to `withdrawLQTY`)
    /// @return lqtySent Amount of LQTY tokens sent to `recipient` (may include LQTY sent to the user's proxy from sources other than V1 staking)
    /// @return lusdReceived Amount of LUSD tokens received as a side-effect of staking new LQTY
    /// @return lusdSent Amount of LUSD tokens sent to `recipient` (may include previously received LUSD)
    /// @return ethReceived Amount of ETH received as a side-effect of staking new LQTY
    /// @return ethSent Amount of ETH sent to `recipient` (may include previously received ETH)
    event WithdrawLQTY(
        address indexed user,
        address recipient,
        uint256 lqtyReceived,
        uint256 lqtySent,
        uint256 lusdReceived,
        uint256 lusdSent,
        uint256 ethReceived,
        uint256 ethSent
    );

    event SnapshotVotes(uint256 votes, uint256 forEpoch, uint256 boldAccrued);
    event SnapshotVotesForInitiative(address indexed initiative, uint256 votes, uint256 vetos, uint256 forEpoch);

    event RegisterInitiative(address initiative, address registrant, uint256 atEpoch, HookStatus hookStatus);
    event UnregisterInitiative(address initiative, uint256 atEpoch, HookStatus hookStatus);

    event AllocateLQTY(
        address indexed user,
        address indexed initiative,
        int256 deltaVoteLQTY,
        int256 deltaVetoLQTY,
        uint256 atEpoch,
        HookStatus hookStatus
    );
    event ClaimForInitiative(address indexed initiative, uint256 bold, uint256 forEpoch, HookStatus hookStatus);

    struct Configuration {
        uint256 registrationFee;
        uint256 registrationThresholdFactor;
        uint256 unregistrationThresholdFactor;
        uint256 unregistrationAfterEpochs;
        uint256 votingThresholdFactor;
        uint256 minClaim;
        uint256 minAccrual;
        uint256 epochStart;
        uint256 epochDuration;
        uint256 epochVotingCutoff;
    }

    function registerInitialInitiatives(address[] memory _initiatives) external;

    /// @notice Address of the LQTY StakingV1 contract
    /// @return stakingV1 Address of the LQTY StakingV1 contract
    function stakingV1() external view returns (ILQTYStaking stakingV1);
    /// @notice Address of the LQTY token
    /// @return lqty Address of the LQTY token
    function lqty() external view returns (IERC20 lqty);
    /// @notice Address of the BOLD token
    /// @return bold Address of the BOLD token
    function bold() external view returns (IERC20 bold);
    /// @notice Timestamp at which the first epoch starts
    /// @return epochStart Timestamp at which the first epoch starts
    function EPOCH_START() external view returns (uint256 epochStart);
    /// @notice Duration of an epoch in seconds (e.g. 1 week)
    /// @return epochDuration Epoch duration
    function EPOCH_DURATION() external view returns (uint256 epochDuration);
    /// @notice Voting period of an epoch in seconds (e.g. 6 days)
    /// @return epochVotingCutoff Epoch voting cutoff
    function EPOCH_VOTING_CUTOFF() external view returns (uint256 epochVotingCutoff);
    /// @notice Minimum BOLD amount that has to be claimed, if an initiative doesn't have enough votes to meet the
    /// criteria then it's votes a excluded from the vote count and distribution
    /// @return minClaim Minimum claim amount
    function MIN_CLAIM() external view returns (uint256 minClaim);
    /// @notice Minimum amount of BOLD that have to be accrued for an epoch, otherwise accrual will be skipped for
    /// that epoch
    /// @return minAccrual Minimum amount of BOLD
    function MIN_ACCRUAL() external view returns (uint256 minAccrual);
    /// @notice Amount of BOLD to be paid in order to register a new initiative
    /// @return registrationFee Registration fee
    function REGISTRATION_FEE() external view returns (uint256 registrationFee);
    /// @notice Share of all votes that are necessary to register a new initiative
    /// @return registrationThresholdFactor Threshold factor
    function REGISTRATION_THRESHOLD_FACTOR() external view returns (uint256 registrationThresholdFactor);
    /// @notice Multiple of the voting threshold in vetos that are necessary to unregister an initiative
    /// @return unregistrationThresholdFactor Unregistration threshold factor
    function UNREGISTRATION_THRESHOLD_FACTOR() external view returns (uint256 unregistrationThresholdFactor);
    /// @notice Number of epochs an initiative has to be inactive before it can be unregistered
    /// @return unregistrationAfterEpochs Number of epochs
    function UNREGISTRATION_AFTER_EPOCHS() external view returns (uint256 unregistrationAfterEpochs);
    /// @notice Share of all votes that are necessary for an initiative to be included in the vote count
    /// @return votingThresholdFactor Voting threshold factor
    function VOTING_THRESHOLD_FACTOR() external view returns (uint256 votingThresholdFactor);

    /// @notice Returns the amount of BOLD accrued since last epoch (last snapshot)
    /// @return boldAccrued BOLD accrued
    function boldAccrued() external view returns (uint256 boldAccrued);

    struct VoteSnapshot {
        uint256 votes; // Votes at epoch transition
        uint256 forEpoch; // Epoch for which the votes are counted
    }

    struct InitiativeVoteSnapshot {
        uint256 votes; // Votes at epoch transition
        uint256 forEpoch; // Epoch for which the votes are counted
        uint256 lastCountedEpoch; // Epoch at which which the votes where counted last in the global snapshot
        uint256 vetos; // Vetos at epoch transition
    }

    /// @notice Returns the vote count snapshot of the previous epoch
    /// @return votes Number of votes
    /// @return forEpoch Epoch for which the votes are counted
    function votesSnapshot() external view returns (uint256 votes, uint256 forEpoch);
    /// @notice Returns the vote count snapshot for an initiative of the previous epoch
    /// @param _initiative Address of the initiative
    /// @return votes Number of votes
    /// @return forEpoch Epoch for which the votes are counted
    /// @return lastCountedEpoch Epoch at which which the votes where counted last in the global snapshot
    function votesForInitiativeSnapshot(address _initiative)
        external
        view
        returns (uint256 votes, uint256 forEpoch, uint256 lastCountedEpoch, uint256 vetos);

    struct Allocation {
        uint256 voteLQTY; // LQTY allocated vouching for the initiative
        uint256 voteOffset; // Offset associated with LQTY vouching for the initiative
        uint256 vetoLQTY; // LQTY vetoing the initiative
        uint256 vetoOffset; // Offset associated with LQTY vetoing the initiative
        uint256 atEpoch; // Epoch at which the allocation was last updated
    }

    struct UserState {
        uint256 unallocatedLQTY; // LQTY deposited and unallocated
        uint256 unallocatedOffset; // The offset sum corresponding to the unallocated LQTY
        uint256 allocatedLQTY; // LQTY allocated by the user to initatives
        uint256 allocatedOffset; // The offset sum corresponding to the allocated LQTY
    }

    struct InitiativeState {
        uint256 voteLQTY; // LQTY allocated vouching for the initiative
        uint256 voteOffset; // Offset associated with LQTY vouching for to the initative
        uint256 vetoLQTY; // LQTY allocated vetoing the initiative
        uint256 vetoOffset; // Offset associated with LQTY veoting the initative
        uint256 lastEpochClaim;
    }

    struct GlobalState {
        uint256 countedVoteLQTY; // Total LQTY that is included in vote counting
        uint256 countedVoteOffset; // Offset associated with the counted vote LQTY
    }

    /// @notice Returns the user's state
    /// @return unallocatedLQTY LQTY deposited and unallocated
    /// @return unallocatedOffset Offset associated with unallocated LQTY
    /// @return allocatedLQTY allocated by the user to initatives
    /// @return allocatedOffset Offset associated with allocated LQTY
    function userStates(address _user)
        external
        view
        returns (uint256 unallocatedLQTY, uint256 unallocatedOffset, uint256 allocatedLQTY, uint256 allocatedOffset);
    /// @notice Returns the initiative's state
    /// @param _initiative Address of the initiative
    /// @return voteLQTY LQTY allocated vouching for the initiative
    /// @return voteOffset Offset associated with voteLQTY
    /// @return vetoLQTY LQTY allocated vetoing the initiative
    /// @return vetoOffset Offset associated with vetoLQTY
    /// @return lastEpochClaim // Last epoch at which rewards were claimed
    function initiativeStates(address _initiative)
        external
        view
        returns (uint256 voteLQTY, uint256 voteOffset, uint256 vetoLQTY, uint256 vetoOffset, uint256 lastEpochClaim);
    /// @notice Returns the global state
    /// @return countedVoteLQTY Total LQTY that is included in vote counting
    /// @return countedVoteOffset Offset associated with countedVoteLQTY
    function globalState() external view returns (uint256 countedVoteLQTY, uint256 countedVoteOffset);
    /// @notice Returns the amount of voting and vetoing LQTY a user allocated to an initiative
    /// @param _user Address of the user
    /// @param _initiative Address of the initiative
    /// @return voteLQTY LQTY allocated vouching for the initiative
    /// @return voteOffset The offset associated with voteLQTY
    /// @return vetoLQTY allocated vetoing the initiative
    /// @return vetoOffset the offset associated with vetoLQTY
    /// @return atEpoch Epoch at which the allocation was last updated
    function lqtyAllocatedByUserToInitiative(address _user, address _initiative)
        external
        view
        returns (uint256 voteLQTY, uint256 voteOffset, uint256 vetoLQTY, uint256 vetoOffset, uint256 atEpoch);

    /// @notice Returns when an initiative was registered
    /// @param _initiative Address of the initiative
    /// @return atEpoch If `_initiative` is an active initiative, returns the epoch at which it was registered.
    ///                 If `_initiative` hasn't been registered, returns 0.
    ///                 If `_initiative` has been unregistered, returns `UNREGISTERED_INITIATIVE`.
    function registeredInitiatives(address _initiative) external view returns (uint256 atEpoch);

    /*//////////////////////////////////////////////////////////////
                                STAKING
    //////////////////////////////////////////////////////////////*/

    /// @notice Deposits LQTY
    /// @dev The caller has to approve their `UserProxy` address to spend the LQTY tokens
    /// @param _lqtyAmount Amount of LQTY to deposit
    function depositLQTY(uint256 _lqtyAmount) external;

    /// @notice Deposits LQTY
    /// @dev The caller has to approve their `UserProxy` address to spend the LQTY tokens
    /// @param _lqtyAmount Amount of LQTY to deposit
    /// @param _doSendRewards If true, send rewards claimed from LQTY staking
    /// @param _recipient Address to which the tokens should be sent
    function depositLQTY(uint256 _lqtyAmount, bool _doSendRewards, address _recipient) external;

    /// @notice Deposits LQTY via Permit
    /// @param _lqtyAmount Amount of LQTY to deposit
    /// @param _permitParams Permit parameters
    function depositLQTYViaPermit(uint256 _lqtyAmount, PermitParams calldata _permitParams) external;

    /// @notice Deposits LQTY via Permit
    /// @param _lqtyAmount Amount of LQTY to deposit
    /// @param _permitParams Permit parameters
    /// @param _doSendRewards If true, send rewards claimed from LQTY staking
    /// @param _recipient Address to which the tokens should be sent
    function depositLQTYViaPermit(
        uint256 _lqtyAmount,
        PermitParams calldata _permitParams,
        bool _doSendRewards,
        address _recipient
    ) external;

    /// @notice Withdraws LQTY and claims any accrued LUSD and ETH rewards from StakingV1
    /// @param _lqtyAmount Amount of LQTY to withdraw
    function withdrawLQTY(uint256 _lqtyAmount) external;

    /// @notice Withdraws LQTY and claims any accrued LUSD and ETH rewards from StakingV1
    /// @param _lqtyAmount Amount of LQTY to withdraw
    /// @param _doSendRewards If true, send rewards claimed from LQTY staking
    /// @param _recipient Address to which the tokens should be sent
    function withdrawLQTY(uint256 _lqtyAmount, bool _doSendRewards, address _recipient) external;

    /// @notice Claims staking rewards from StakingV1 without unstaking
    /// @dev Note: in the unlikely event that the caller's `UserProxy` holds any LQTY tokens, they will also be sent to `_rewardRecipient`
    /// @param _rewardRecipient Address that will receive the rewards
    /// @return lusdSent Amount of LUSD tokens sent to `_rewardRecipient` (may include previously received LUSD)
    /// @return ethSent Amount of ETH sent to `_rewardRecipient` (may include previously received ETH)
    function claimFromStakingV1(address _rewardRecipient) external returns (uint256 lusdSent, uint256 ethSent);

    /*//////////////////////////////////////////////////////////////
                                 VOTING
    //////////////////////////////////////////////////////////////*/

    /// @notice Returns the current epoch number
    /// @return epoch Current epoch
    function epoch() external view returns (uint256 epoch);
    /// @notice Returns the timestamp at which the current epoch started
    /// @return epochStart Epoch start of the current epoch
    function epochStart() external view returns (uint256 epochStart);
    /// @notice Returns the number of seconds that have gone by since the current epoch started
    /// @return secondsWithinEpoch Seconds within the current epoch
    function secondsWithinEpoch() external view returns (uint256 secondsWithinEpoch);

    /// @notice Returns the voting power for an entity (i.e. user or initiative) at a given timestamp
    /// @param _lqtyAmount Amount of LQTY associated with the entity
    /// @param _timestamp Timestamp at which to calculate voting power
    /// @param _offset The entity's offset sum
    /// @return votes Number of votes
    function lqtyToVotes(uint256 _lqtyAmount, uint256 _timestamp, uint256 _offset) external pure returns (uint256);

    /// @dev Returns the most up to date voting threshold
    /// In contrast to `getLatestVotingThreshold` this function updates the snapshot
    /// This ensures that the value returned is always the latest
    function calculateVotingThreshold() external returns (uint256);

    /// @dev Utility function to compute the threshold votes without recomputing the snapshot
    /// Note that `boldAccrued` is a cached value, this function works correctly only when called after an accrual
    function calculateVotingThreshold(uint256 _votes) external view returns (uint256);

    /// @notice Return the most up to date global snapshot and state as well as a flag to notify whether the state can be updated
    /// This is a convenience function to always retrieve the most up to date state values
    function getTotalVotesAndState()
        external
        view
        returns (VoteSnapshot memory snapshot, GlobalState memory state, bool shouldUpdate);

    /// @dev Given an initiative address, return it's most up to date snapshot and state as well as a flag to notify whether the state can be updated
    /// This is a convenience function to always retrieve the most up to date state values
    function getInitiativeSnapshotAndState(address _initiative)
        external
        view
        returns (
            InitiativeVoteSnapshot memory initiativeSnapshot,
            InitiativeState memory initiativeState,
            bool shouldUpdate
        );

    /// @notice Voting threshold is the max. of either:
    ///   - 4% of the total voting LQTY in the previous epoch
    ///   - or the minimum number of votes necessary to claim at least MIN_CLAIM BOLD
    /// This value can be offsynch, use the non view `calculateVotingThreshold` to always retrieve the most up to date value
    /// @return votingThreshold Voting threshold
    function getLatestVotingThreshold() external view returns (uint256 votingThreshold);

    /// @notice Snapshots votes for the previous epoch and accrues funds for the current epoch
    /// @param _initiative Address of the initiative
    /// @return voteSnapshot Vote snapshot
    /// @return initiativeVoteSnapshot Vote snapshot of the initiative
    function snapshotVotesForInitiative(address _initiative)
        external
        returns (VoteSnapshot memory voteSnapshot, InitiativeVoteSnapshot memory initiativeVoteSnapshot);

    /*//////////////////////////////////////////////////////////////
                                 FSM
    //////////////////////////////////////////////////////////////*/

    enum InitiativeStatus {
        NONEXISTENT,
        /// This Initiative Doesn't exist | This is never returned
        WARM_UP,
        /// This epoch was just registered
        SKIP,
        /// This epoch will result in no rewards and no unregistering
        CLAIMABLE,
        /// This epoch will result in claiming rewards
        CLAIMED,
        /// The rewards for this epoch have been claimed
        UNREGISTERABLE,
        /// Can be unregistered
        DISABLED // It was already Unregistered

    }

    function getInitiativeState(address _initiative)
        external
        returns (InitiativeStatus status, uint256 lastEpochClaim, uint256 claimableAmount);

    function getInitiativeState(
        address _initiative,
        VoteSnapshot memory _votesSnapshot,
        InitiativeVoteSnapshot memory _votesForInitiativeSnapshot,
        InitiativeState memory _initiativeState
    ) external view returns (InitiativeStatus status, uint256 lastEpochClaim, uint256 claimableAmount);

    /// @notice Registers a new initiative
    /// @param _initiative Address of the initiative
    function registerInitiative(address _initiative) external;
    // /// @notice Unregisters an initiative if it didn't receive enough votes in the last 4 epochs
    // /// or if it received more vetos than votes and the number of vetos are greater than 3 times the voting threshold
    // /// @param _initiative Address of the initiative
    function unregisterInitiative(address _initiative) external;

    /// @notice Allocates the user's LQTY to initiatives
    /// @dev The user can only allocate to active initiatives (older than 1 epoch) and has to have enough unallocated
    /// LQTY available, the initiatives listed must be unique, and towards the end of the epoch a user can only maintain or reduce their votes
    /// @param _initiativesToReset Addresses of the initiatives the caller was previously allocated to, must be reset to prevent desynch of voting power
    /// @param _initiatives Addresses of the initiatives to allocate to, can match or be different from `_resetInitiatives`
    /// @param _absoluteLQTYVotes LQTY to allocate to the initiatives as votes
    /// @param _absoluteLQTYVetos LQTY to allocate to the initiatives as vetos
    function allocateLQTY(
        address[] calldata _initiativesToReset,
        address[] memory _initiatives,
        int256[] memory _absoluteLQTYVotes,
        int256[] memory _absoluteLQTYVetos
    ) external;
    /// @notice Deallocates the user's LQTY from initiatives
    /// @param _initiativesToReset Addresses of initiatives to deallocate LQTY from
    /// @param _checkAll When true, the call will revert if there is still some allocated LQTY left after deallocating
    ///                  from all the addresses in `_initiativesToReset`
    function resetAllocations(address[] calldata _initiativesToReset, bool _checkAll) external;

    /// @notice Splits accrued funds according to votes received between all initiatives
    /// @param _initiative Addresse of the initiative
    /// @return claimed Amount of BOLD claimed
    function claimForInitiative(address _initiative) external returns (uint256 claimed);
}

// src/interfaces/IInitiative.sol

interface IInitiative {
    /// @notice Callback hook that is called by Governance after the initiative was successfully registered
    /// @param _atEpoch Epoch at which the initiative is registered
    function onRegisterInitiative(uint256 _atEpoch) external;

    /// @notice Callback hook that is called by Governance after the initiative was unregistered
    /// @param _atEpoch Epoch at which the initiative is unregistered
    function onUnregisterInitiative(uint256 _atEpoch) external;

    /// @notice Callback hook that is called by Governance after the LQTY allocation is updated by a user
    /// @param _currentEpoch Epoch at which the LQTY allocation is updated
    /// @param _user Address of the user that updated their LQTY allocation
    /// @param _userState User state
    /// @param _allocation Allocation state from user to initiative
    /// @param _initiativeState Initiative state
    function onAfterAllocateLQTY(
        uint256 _currentEpoch,
        address _user,
        IGovernance.UserState calldata _userState,
        IGovernance.Allocation calldata _allocation,
        IGovernance.InitiativeState calldata _initiativeState
    ) external;

    /// @notice Callback hook that is called by Governance after the claim for the last epoch was distributed
    /// to the initiative
    /// @param _claimEpoch Epoch at which the claim was distributed
    /// @param _bold Amount of BOLD that was distributed
    function onClaimForInitiative(uint256 _claimEpoch, uint256 _bold) external;
}

// src/UniV4MerklRewards.sol

contract UniV4MerklRewards is IInitiative {
    using SafeERC20 for IERC20;

    address public constant LIQUITY_FUNDS_SAFE = address(0xF06016D822943C42e3Cb7FC3a6A3B1889C1045f8); // to blacklist

    uint32 public constant CAMPAIGN_TYPE = 13; // UNISWAP_V4
    IDistributionCreator constant merklDistributionCreator =
        IDistributionCreator(0x8BB4C975Ff3c250e0ceEA271728547f3802B36Fd);

    IGovernance public immutable governance;
    IERC20 public immutable boldToken;

    uint256 public immutable CAMPAIGN_BOLD_AMOUNT_THRESHOLD;
    bool constant IS_OUT_OF_RANGE_INCENTIVIZED = false;
    bytes32 public immutable UNIV4_POOL_ID;
    uint32 public immutable WEIGHT_FEES; // With 2 decimals
    uint32 public immutable WEIGHT_TOKEN_0;
    uint32 public immutable WEIGHT_TOKEN_1;

    uint256 internal immutable EPOCH_START;
    uint256 internal immutable EPOCH_DURATION;

    event NewMerklCampaign(uint256 indexed claimEpoch, uint256 boldAmount, bytes32 campaingId);

    modifier onlyGovernance() {
        require(msg.sender == address(governance), "UniV4MerklInitiative: invalid-sender");
        _;
    }

    constructor(
        address _governanceAddress,
        address _boldTokenAddress,
        uint256 _campaignBoldAmountThreshold,
        bytes32 _uniV4PoolId,
        uint32 _weightFees,
        uint32 _weightToken0,
        uint32 _weightToken1
    ) {
        require(_weightFees + _weightToken0 + _weightToken1 == 10000, "Wrong weigths");

        governance = IGovernance(_governanceAddress);
        boldToken = IERC20(_boldTokenAddress);

        CAMPAIGN_BOLD_AMOUNT_THRESHOLD = _campaignBoldAmountThreshold;
        UNIV4_POOL_ID = _uniV4PoolId;
        WEIGHT_FEES = _weightFees;
        WEIGHT_TOKEN_0 = _weightToken0;
        WEIGHT_TOKEN_1 = _weightToken1;

        EPOCH_START = governance.EPOCH_START();
        EPOCH_DURATION = governance.EPOCH_DURATION();

        // Approve BOLD to Merkl
        boldToken.approve(address(merklDistributionCreator), type(uint256).max);

        // whitelist ourselves to be able to create campaigs without signature
        merklDistributionCreator.acceptConditions();
    }

    function getCampaignData() public view returns (bytes memory) {
        return bytes.concat(
            abi.encode(
                416, // 13 * 32, offset for poolId bytes
                IS_OUT_OF_RANGE_INCENTIVIZED,
                WEIGHT_FEES,
                WEIGHT_TOKEN_0,
                WEIGHT_TOKEN_1,
                480, // 15 * 32, offset for whitelist address
                512, // 16 * 32, offset for blacklist address
                576 // 18 * 32, offset for hooks
            ),
            abi.encode(
                0, // lowerPriceTolerance
                0, // upperPriceTolerance
                0, // lowerPriceBound
                0, // upperPriceBound
                608, // 19 * 32, offset for empty unknown last param
                32, // poolId len as bytes
                UNIV4_POOL_ID,
                0, // empty whitelist
                1, // blacklist len
                LIQUITY_FUNDS_SAFE, // blacklisted address
                0, // empty hooks
                0 // empty last unknown param
            )
        );
    }

    function onRegisterInitiative(uint256 _atEpoch) external override {}

    /// @notice Callback hook that is called by Governance after the initiative was unregistered
    /// @param _atEpoch Epoch at which the initiative is unregistered
    function onUnregisterInitiative(uint256 _atEpoch) external override {}

    /// @notice Callback hook that is called by Governance after the LQTY allocation is updated by a user
    /// @param _currentEpoch Epoch at which the LQTY allocation is updated
    /// @param _user Address of the user that updated their LQTY allocation
    /// @param _userState User state
    /// @param _allocation Allocation state from user to initiative
    /// @param _initiativeState Initiative state
    function onAfterAllocateLQTY(
        uint256 _currentEpoch,
        address _user,
        IGovernance.UserState calldata _userState,
        IGovernance.Allocation calldata _allocation,
        IGovernance.InitiativeState calldata _initiativeState
    ) external override {}

    /// @notice Callback hook that is called by Governance after the claim for the last epoch was distributed
    /// to the initiative
    /// @param _claimEpoch Epoch at which the claim was distributed
    /// @param _bold Amount of BOLD that was distributed
    function onClaimForInitiative(uint256 _claimEpoch, uint256 _bold) external override onlyGovernance {}

    function _createCampaign(uint256 _amount) internal {
        // Avoid if rewards too low
        if (_amount < CAMPAIGN_BOLD_AMOUNT_THRESHOLD) return;

        uint256 claimEpoch = governance.epoch() - 1;

        // (Only once per epoch)
        uint256 epochEnd = EPOCH_START + claimEpoch * EPOCH_DURATION;
        IDistributionCreator.CampaignParameters memory params = IDistributionCreator.CampaignParameters({
            campaignId: bytes32(0),
            creator: address(this),
            rewardToken: address(boldToken),
            amount: _amount,
            campaignType: CAMPAIGN_TYPE,
            startTimestamp: uint32(epochEnd),
            duration: uint32(EPOCH_DURATION),
            campaignData: getCampaignData()
        });
        //params.campaignId = merklDistributionCreator.campaignId(params);
        bytes32 campaignId = merklDistributionCreator.createCampaign(params);

        emit NewMerklCampaign(claimEpoch, _amount, campaignId);
    }

    // Wrapper to avoid gas limitation
    function claimForInitiative() external {
        uint256 claimableAmount = governance.claimForInitiative(address(this));
        uint256 amount = boldToken.balanceOf(address(this));
        assert(amount >= claimableAmount);
        require(amount > 0, "UniV4MerklInitiative: no funds for campaign");

        _createCampaign(amount);
    }
}

// test/mocks/UniV4MerklRewardsWrapper.sol

contract UniV4MerklRewardsWrapper is UniV4MerklRewards {
    constructor(
        address _governanceAddress,
        address _boldTokenAddress,
        uint256 _campaignBoldAmountThreshold,
        bytes32 _uniV4PoolId,
        uint32 _weightFees,
        uint32 _weightToken0,
        uint32 _weightToken1
    )
        UniV4MerklRewards(
            _governanceAddress,
            _boldTokenAddress,
            _campaignBoldAmountThreshold,
            _uniV4PoolId,
            _weightFees,
            _weightToken0,
            _weightToken1
        )
    {}

    function createCampaignWrapper(uint256 _amount) external {
        uint256 balance = boldToken.balanceOf(address(this));
        require(balance >= _amount, "Not enough balance");
        require(_amount >= CAMPAIGN_BOLD_AMOUNT_THRESHOLD, "Below threshold");

        _createCampaign(_amount);
    }
}