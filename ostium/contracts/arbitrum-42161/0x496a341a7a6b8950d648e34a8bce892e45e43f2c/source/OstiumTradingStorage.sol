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


// File src/interfaces/IOstiumPairsStorage.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.24;

interface IOstiumPairsStorage {
    struct Pair {
        bytes32 from;
        bytes32 to;
        bytes32 feed;
        uint64 tradeSizeRef;
        uint32 spreadP; // PRECISION_6 (%)
        uint32 maxLeverage;
        uint8 groupIndex;
        uint8 feeIndex;
        string oracle;
    }

    struct Group {
        bytes32 name;
        uint32 maxLeverage;
        uint16 minLeverage;
        uint16 maxCollateralP; // PRECISION_2 (% vault current balance)
    }

    struct Fee {
        bytes32 name;
        uint64 minLevPos; // PRECISION_6 USDC (collateral x leverage, useful for min fee)
        uint64 oracleFee; // PRECISION_6 Fixed USDC
        uint16 liqFeeP; // % liqFeeP*(100-LIQ_THRESHOLD_P) to LPs rewards
    }

    event PairAdded(uint16 index, bytes32 from, bytes32 to);
    event PairUpdated(uint16 indexed index);
    event PairRemoved(uint16 index, bytes32 from, bytes32 to);
    event GroupAdded(uint8 index, bytes32 name);
    event GroupUpdated(uint8 indexed index);
    event FeeAdded(uint8 index, bytes32 name);
    event FeeUpdated(uint8 indexed index);
    event PairMaxLeverageUpdated(uint16 indexed pairIndex, uint32 maxLeverage);

    error MaxReached();
    error WrongParams();
    error NotGov(address a);
    error NotManager(address a);
    error NotAuthorized(address a);
    error GroupNotListed(uint256 index);
    error FeeNotListed(uint256 index);
    error PairNotListed(uint256 index);
    error PairAlreadyListed(bytes32 from, bytes32 to);

    function isPairIndexListed(uint16 _pairIndex) external view returns (bool);
    function pairOracleFee(uint16 _pairIndex) external view returns (uint64);
    function pairFeed(uint16) external view returns (bytes32);
    function getFeedInfo(uint16 pairIndex) external view returns (bytes32, uint32, uint64, string memory);
    function oracle(uint16 pairIndex) external view returns (string memory);
    function pairSpreadP(uint16) external view returns (uint32);
    function pairMinLeverage(uint16) external view returns (uint16);
    function pairMaxLeverage(uint16) external view returns (uint32);
    function pairTradeSizeRef(uint16 _pairIndex) external view returns (uint64);
    function groupMaxCollateral(uint16) external view returns (uint256);
    function groupCollateral(uint16, bool) external view returns (uint256);
    function pairLiquidationFeeP(uint16 _pairIndex) external view returns (uint16);
    function pairMinLevPos(uint16) external view returns (uint64);
    function pairsCount() external view returns (uint16);
    function groupsCount() external view returns (uint8);
    function feesCount() external view returns (uint8);
    function pairsBackend(uint16 _index) external view returns (Pair memory, Group memory, Fee memory);
    function getAllPairsMaxLeverage() external view returns (uint32[] memory);
    function getPairsMaxLeverage(uint256 startId, uint256 finalId) external view returns (uint32[] memory);
    function pairs(uint16 pairIndex)
        external
        view
        returns (bytes32, bytes32, bytes32, uint64, uint32, uint32, uint8, uint8, string memory);
    function groups(uint8 groupIndex) external view returns (bytes32, uint32, uint16, uint16);
    function fees(uint8 feeIndex) external view returns (bytes32, uint64, uint64, uint16);
    // function groupsCollaterals(uint8 groupIndex) external view returns (uint256[2] memory);
    function isPairListed(bytes32 fromPair, bytes32 toPair) external view returns (bool);

    // onlyGov
    function addPair(Pair calldata _pair) external;
    function addPairs(Pair[] calldata _pairs) external;
    function updatePair(uint16 _pairIndex, Pair calldata _pair) external;
    function removePair(uint16 _pairIndex) external;
    function addGroup(Group calldata _group) external;
    function updateGroup(uint8 _id, Group calldata _group) external;
    function addFee(Fee calldata _fee) external;
    function updateFee(uint8 _id, Fee calldata _fee) external;

    // onlyManager
    function setPairMaxLeverage(uint16 pairIndex, uint256 maxLeverage) external;
    function setPairMaxLeverageArray(uint16[] calldata indices, uint256[] calldata values) external;

    // onlyCallbacks
    function updateGroupCollateral(uint16 _pairIndex, uint256 _amount, bool _long, bool _increase) external;
}


// File src/interfaces/IOstiumPriceUpKeep.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.24;

interface IOstiumPriceUpKeep {
    struct PriceUpKeepAnswer {
        uint256 orderId;
        int192 price;
        uint64 spreadP;
        int192 bid;
        int192 ask;
        uint64 tradeSizeRef;
    }

    enum OrderType {
        MARKET_OPEN,
        MARKET_CLOSE,
        LIMIT_OPEN,
        LIMIT_CLOSE
    }

    struct Order {
        uint32 timestamp;
        uint16 pairIndex;
        OrderType orderType;
        bool initiated;
    }

    event PriceRequested(uint256 indexed orderId, bytes32 feed, uint256 timestamp);
    event PriceReceived(uint256 indexed orderId, uint256 indexed pairIndex, int192 price, uint256 nativeFee);
    event PendingSlOrderUnregistered(uint256 indexed orderId);

    error WrongParams();
    error NotGov(address a);
    error NotRouter(address a);
    error NotContract(address a);
    error NotInitiated(uint256 a);
    error AlreadyInitiated(uint256 a);
    error InvalidPrice(uint256 orderId);

    function orders(uint256 orderId) external view returns (uint32, uint16, OrderType, bool);

    // only forwarder
    function performUpkeep(bytes calldata performData) external;

    // only price router
    function getPrice(uint256 orderId, uint16 pairIndex, OrderType orderType, uint256 timestamp) external;
}


// File src/interfaces/IOstiumVault.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.24;

interface IOstiumVault {
    struct LockedDeposit {
        address owner;
        uint256 shares;
        uint256 assetsDeposited;
        uint256 assetsDiscount;
        uint32 atTimestamp;
        uint32 lockDuration;
    }

    // Events
    event MaxDailyAccPnlDeltaPerTokenUpdated(uint256 value);
    event MaxAccOpenPnlDeltaPerTokenUpdated(uint256 value);
    event MaxSupplyIncreaseDailyPUpdated(uint256 value);
    event MaxDiscountPUpdated(uint256 value);
    event MaxDiscountThresholdPUpdated(uint256 value);

    event AddressParamUpdated(string name, address value);
    event WithdrawLockThresholdsPUpdated(uint16[2] value);
    event CurrentMaxSupplyUpdated(uint256 value);
    event DailyAccPnlDeltaReset();
    event ShareToAssetsPriceUpdated(uint256 value);
    event OpenPnlCallFailed();
    event WithdrawRequested(
        address indexed sender, address indexed owner, uint256 shares, uint16 currEpoch, uint16 indexed unlockEpoch
    );
    event WithdrawCanceled(
        address indexed sender, address indexed owner, uint256 shares, uint16 currEpoch, uint16 indexed unlockEpoch
    );
    event DepositLocked(address indexed sender, address indexed owner, uint256 depositId, LockedDeposit d);
    event DepositUnlocked(
        address indexed sender, address indexed receiver, address indexed owner, uint256 depositId, LockedDeposit d
    );
    event RewardDistributed(address indexed sender, uint256 assets, uint256 accRewardsPerToken);
    event AssetsSent(address indexed sender, address indexed receiver, uint256 assets);
    event AssetsReceived(address indexed sender, address indexed user, uint256 assets);
    event AccPnlPerTokenUsedUpdated(
        address indexed sender,
        uint256 indexed newEpoch,
        uint256 prevPositiveOpenPnl,
        uint256 newPositiveOpenPnl,
        uint256 newEpochPositiveOpenPnl,
        int256 newAccPnlPerTokenUsed
    );

    error NullPrice();
    error NullAmount();
    error NoDiscount();
    error WrongParams();
    error AboveBalance();
    error AboveMaxMint();
    error AboveMaxDeposit();
    error NotEnoughAssets();
    error NoActiveDiscount();
    error MaxDailyPnlReached();
    error WaitNextEpochStart();
    error AboveWithdrawAmount();
    error NotGov(address a);
    error NotOpenPnl(address a);
    error NotAllowed(address a);
    error NotCallbacks(address a);
    error DepositNotUnlocked(uint256 id);
    error PendingWithdrawal(address from, uint256 amount);
    error WrongLockDuration(uint256 duration, uint256 minLock, uint256 maxLock);

    function tvl() external view returns (uint256);
    function currentEpoch() external view returns (uint16);
    function currentEpochStart() external view returns (uint32);
    function currentEpochPositiveOpenPnl() external view returns (uint256);
    function availableAssets() external view returns (uint256);
    function marketCap() external view returns (uint256);
    function getLockedDeposit(uint256 depositId) external view returns (LockedDeposit memory);
    function distributeReward(uint256 assets) external;
    function currentBalance() external view returns (uint256);
    function maxAccPnlPerToken() external view returns (uint256);
    function collateralizationP() external view returns (uint256);
    function withdrawEpochsTimelock() external view returns (uint8);
    function lockDiscountP(uint256 collatP, uint32 lockDuration) external view returns (uint256);
    function totalSharesBeingWithdrawn(address owner) external view returns (uint256 shares);
    function tryUpdateCurrentMaxSupply() external;
    function makeWithdrawRequest(uint256 shares, address owner) external;
    function cancelWithdrawRequest(uint256 shares, address owner, uint16 unlockEpoch) external;
    function depositWithDiscountAndLock(uint256 assets, uint32 lockDuration, address receiver)
        external
        returns (uint256);
    function mintWithDiscountAndLock(uint256 shares, uint32 lockDuration, address receiver)
        external
        returns (uint256);
    function unlockDeposit(uint256 depositId, address receiver) external;

    // onlyGov
    function updateMaxAccOpenPnlDeltaPerToken(uint256 newValue) external;
    function updateMaxDailyAccPnlDeltaPerToken(uint256 newValue) external;
    function updateWithdrawLockThresholdsP(uint16[2] memory newValue) external;
    function updateMaxSupplyIncreaseDailyP(uint256 newValue) external;
    function updateMaxDiscountP(uint256 newValue) external;
    function updateMaxDiscountThresholdP(uint256 newValue) external;
    function tryResetDailyAccPnlDelta() external;
    function tryNewOpenPnlRequestOrEpoch() external;

    // onlyCallbacks
    function sendAssets(uint256 assets, address receiver) external;
    function receiveAssets(uint256 assets, address user) external;

    // onlyOpenPnl
    function updateAccPnlPerTokenUsed(uint256 prevPositiveOpenPnl, uint256 newPositiveOpenPnl)
        external
        returns (uint256);
}


// File src/interfaces/TokenInterfaceV5.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.24;

interface TokenInterfaceV5 {
    function burn(address, uint256) external;
    function mint(address, uint256) external;
    function transfer(address, uint256) external returns (bool);
    function transferFrom(address, address, uint256) external returns (bool);
    function balanceOf(address) external view returns (uint256);
    function hasRole(bytes32, address) external view returns (bool);
    function approve(address, uint256) external returns (bool);
    function allowance(address, address) external view returns (uint256);
}


// File src/interfaces/IOstiumTradingStorage.sol

// Original license: SPDX_License_Identifier: MIT




pragma solidity ^0.8.24;

interface IOstiumTradingStorage {
    enum LimitOrder {
        TP,
        SL,
        LIQ,
        OPEN
    }
    enum OpenOrderType {
        MARKET,
        LIMIT,
        STOP
    }

    struct Trade {
        uint256 collateral; // PRECISION_6
        uint192 openPrice; // PRECISION_18
        uint192 tp; // PRECISION_18
        uint192 sl; // PRECISION_18
        address trader;
        uint32 leverage; // PRECISION_2
        uint16 pairIndex;
        uint8 index;
        bool buy;
    }

    struct TradeInfo {
        uint256 tradeId;
        uint256 oiNotional; // PRECISION_18
        uint32 initialLeverage;
        uint32 tpLastUpdated;
        uint32 slLastUpdated;
        uint32 createdAt;
        bool beingMarketClosed;
    }

    struct OpenLimitOrder {
        uint256 collateral; // PRECISION_6
        uint192 targetPrice; // PRECISION_18
        uint192 tp; // PRECISION_18
        uint192 sl; // PRECISION_18
        address trader;
        uint32 leverage; // PRECISION_2
        uint32 createdAt;
        uint32 lastUpdated;
        uint16 pairIndex;
        OpenOrderType orderType;
        uint8 index;
        bool buy;
    }

    struct PendingMarketOrder {
        uint256 block;
        uint192 wantedPrice; // PRECISION_18
        uint32 slippageP; // PRECISION_2 (%)
        Trade trade;
    }

    struct PendingAutomationOrder {
        address trader;
        uint16 pairIndex;
        uint8 index;
        LimitOrder orderType;
    }

    event SupportedTokenAdded(address a);
    event TradingContractAdded(address a);
    event TradingContractRemoved(address a);
    event MaxTradesPerPairUpdated(uint256 value);
    event MaxPendingMarketOrdersUpdated(uint256 value);
    event MaxOpenInterestUpdated(uint16 indexed pairIndex, uint256 value);

    error NullAddr();
    error WrongParams();
    error NotEmptyIndex();
    error NotGov(address a);
    error NotTrading(address a);
    error NotManager(address a);
    error NotCallbacks(address a);
    error NotTradingOrCallbacks(address a);
    error NoOpenLimitOrder(address _trader, uint16 _pairIndex, uint8 _index);

    function usdc() external view returns (address);
    function devFees() external view returns (uint256);
    function totalOpenTradesCount() external view returns (uint32);
    function maxTradesPerPair() external view returns (uint8);
    function maxPendingMarketOrders() external view returns (uint8);
    function openTrades(address _trader, uint16 _pairIndex, uint8 _index)
        external
        view
        returns (uint256, uint192, uint192, uint192, address, uint32, uint16, uint8, bool);
    function openTradesInfo(address _trader, uint16 _pairIndex, uint8 _index)
        external
        view
        returns (uint256, uint256, uint32, uint32, uint32, uint32, bool);
    function openTradesCount(address _trader, uint16 _pairIndex) external view returns (uint32);
    function openLimitOrderIds(address _trader, uint16 _pairIndex, uint8 _index) external view returns (uint256);
    function openLimitOrdersCount(address _trader, uint16 _pairIndex) external view returns (uint8);
    function orderTriggerBlock(
        address _trader,
        uint16 _pairIndex,
        uint8 _index,
        IOstiumTradingStorage.LimitOrder orderType
    ) external view returns (uint256);
    function pairLimitOrders(uint16 pairIndex, uint256 index)
        external
        view
        returns (
            uint256,
            uint192,
            uint192,
            uint192,
            address,
            uint32,
            uint32,
            uint32,
            uint16,
            OpenOrderType,
            uint8,
            bool
        );
    function reqID_pendingMarketOrder(uint256 _orderId)
        external
        view
        returns (uint256, uint192, uint32, Trade memory);
    function reqID_pendingAutomationOrder(uint256) external view returns (address, uint16, uint8, LimitOrder);
    function pendingOrderIdsCount(address _trader) external view returns (uint256);
    function pendingMarketOpenCount(address _trader, uint16 _pairIndex) external view returns (uint8);
    function pendingMarketCloseCount(address _trader, uint16 _pairIndex) external view returns (uint8);
    function pairTraders(uint16 _pairIndex, uint256 index) external view returns (address);
    function pairTradersId(address _trader, uint16 _pairIndex) external view returns (uint256);
    function openInterest(uint16 _pairIndex, uint256 _type) external view returns (uint256);
    function hasOpenLimitOrder(address _trader, uint16 _pairIndex, uint8 _index) external view returns (bool);
    function getOpenTrade(address _trader, uint16 _pairIndex, uint8 _index) external view returns (Trade memory);
    function getOpenTradeInfo(address _trader, uint16 _pairIndex, uint8 _index)
        external
        view
        returns (TradeInfo memory);
    function firstEmptyTradeIndex(address _trader, uint16 _pairIndex) external view returns (uint8);
    function firstEmptyOpenLimitIndex(address _trader, uint16 _pairIndex) external view returns (uint8);
    function getPendingOrderIds(address) external view returns (uint256[] memory);
    function pairTradersArray(uint16 _pairIndex) external view returns (address[] memory);
    function getOpenLimitOrder(address _trader, uint16 _pairIndex, uint8 _index)
        external
        view
        returns (OpenLimitOrder memory);
    function getOpenLimitOrderByIndex(uint16 _pairIndex, uint256 _index)
        external
        view
        returns (OpenLimitOrder memory);
    function getOpenLimitOrders(uint16 _pairIndex) external view returns (OpenLimitOrder[] memory);
    function totalOpenLimitOrders(uint16 pairIndex) external view returns (uint256);
    function getPairOpeningInterestInfo(uint16 _pairIndex) external view returns (uint256, uint256, uint256);

    // onlyGov
    function claimFees() external;
    function setMaxTradesPerPair(uint256 _maxTradesPerPair) external;
    function setMaxPendingMarketOrders(uint256 _maxPendingMarketOrders) external;
    function setMaxOpenInterest(uint16 _pairIndex, uint256 _newMaxOpenInterest) external;
    function setMaxOpenInterestArray(uint16[] calldata _pairIndex, uint256[] calldata _newMaxOpenInterest) external;

    // onlyTrading
    function storeTrade(Trade memory _trade, TradeInfo memory _tradeInfo) external;
    function unregisterTrade(address _trader, uint16 _pairIndex, uint8 _index) external;
    function storePendingMarketOrder(PendingMarketOrder calldata _order, uint256 _id, bool _open) external;
    function storeOpenLimitOrder(OpenLimitOrder calldata) external;
    function updateOpenLimitOrder(OpenLimitOrder calldata) external;
    function setTrigger(address _trader, uint16 _pairIndex, uint8 _index, IOstiumTradingStorage.LimitOrder _orderType)
        external;
    function storePendingAutomationOrder(PendingAutomationOrder calldata _automationOrder, uint256 _orderId) external;
    function updateSl(address _trader, uint16 _pairIndex, uint8 _index, uint256 _newSl) external;
    function updateTp(address _trader, uint16 _pairIndex, uint8 _index, uint256 _newTp) external;

    //only trading or callbacks
    function updateTrade(Trade calldata) external;
    function unregisterPendingMarketOrder(uint256 _id, bool _open) external;
    function unregisterOpenLimitOrder(address _trader, uint16 _pairIndex, uint8 _index) external;
    function transferUsdc(address _from, address _to, uint256 _amount) external;

    //only callbacks
    function unregisterTrigger(
        address _trader,
        uint16 _pairIndex,
        uint8 _index,
        IOstiumTradingStorage.LimitOrder _orderType
    ) external;
    function unregisterPendingAutomationOrder(uint256 _orderId) external;
    function handleOpeningFees(
        uint16 _pairIndex,
        uint256 latestPrice,
        uint256 _leveragedPositionSize,
        uint32 leverage,
        bool isBuy
    ) external returns (uint256, uint256);
    function handleOracleFees(uint16 _pairIndex, bool _fullFee) external returns (uint256);
}


// File src/interfaces/external/IArbSys.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity >=0.6.10 <0.9.0;

/**
 * @title Precompiled contract that exists in every Arbitrum chain at address(100), 0x0000000000000000000000000000000000000064. Exposes a variety of system-level functionality.
 */
interface IArbSys {
    /**
     * @notice Get internal version number identifying an ArbOS build
     * @return version number as int
     */
    function arbOSVersion() external pure returns (uint256);

    function arbChainID() external view returns (uint256);

    /**
     * @notice Get Arbitrum block number (distinct from L1 block number; Arbitrum genesis block has block number 0)
     * @return block number as int
     */
    function arbBlockNumber() external view returns (uint256);

    /**
     * @notice Send given amount of Eth to dest from sender.
     * This is a convenience function, which is equivalent to calling sendTxToL1 with empty calldataForL1.
     * @param destination recipient address on L1
     * @return unique identifier for this L2-to-L1 transaction.
     */
    function withdrawEth(address destination) external payable returns (uint256);

    /**
     * @notice Send a transaction to L1
     * @param destination recipient address on L1
     * @param calldataForL1 (optional) calldata for L1 contract call
     * @return a unique identifier for this L2-to-L1 transaction.
     */
    function sendTxToL1(address destination, bytes calldata calldataForL1) external payable returns (uint256);

    /**
     * @notice get the number of transactions issued by the given external account or the account sequence number of the given contract
     * @param account target account
     * @return the number of transactions issued by the given external account or the account sequence number of the given contract
     */
    function getTransactionCount(address account) external view returns (uint256);

    /**
     * @notice get the value of target L2 storage slot
     * This function is only callable from address 0 to prevent contracts from being able to call it
     * @param account target account
     * @param index target index of storage slot
     * @return stotage value for the given account at the given index
     */
    function getStorageAt(address account, uint256 index) external view returns (uint256);

    /**
     * @notice check if current call is coming from l1
     * @return true if the caller of this was called directly from L1
     */
    function isTopLevelCall() external view returns (bool);

    /**
     * @notice check if the caller (of this caller of this) is an aliased L1 contract address
     * @return true iff the caller's address is an alias for an L1 contract address
     */
    function wasMyCallersAddressAliased() external view returns (bool);

    /**
     * @notice return the address of the caller (of this caller of this), without applying L1 contract address aliasing
     * @return address of the caller's caller, without applying L1 contract address aliasing
     */
    function myCallersAddressWithoutAliasing() external view returns (address);

    /**
     * @notice map L1 sender contract address to its L2 alias
     * @param sender sender address
     * @param dest destination address
     * @return aliased sender address
     */
    function mapL1SenderContractAddressToL2Alias(address sender, address dest) external pure returns (address);

    /**
     * @notice get the caller's amount of available storage gas
     * @return amount of storage gas available to the caller
     */
    function getStorageGasAvailable() external view returns (uint256);

    event L2ToL1Transaction(
        address caller,
        address indexed destination,
        uint256 indexed uniqueId,
        uint256 indexed batchNumber,
        uint256 indexInBatch,
        uint256 arbBlockNum,
        uint256 ethBlockNum,
        uint256 timestamp,
        uint256 callvalue,
        bytes data
    );
}


// File src/lib/ChainUtils.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.24;

library ChainUtils {
    uint256 public constant ARBITRUM_MAINNET = 42161;
    uint256 public constant ARBITRUM_GOERLI = 421613;
    uint256 public constant ARBITRUM_SEPOLIA = 421614;
    IArbSys public constant ARB_SYS = IArbSys(address(100));

    function getBlockNumber() internal view returns (uint256) {
        if (block.chainid == ARBITRUM_MAINNET || block.chainid == ARBITRUM_GOERLI || block.chainid == ARBITRUM_SEPOLIA)
        {
            return ARB_SYS.arbBlockNumber();
        }

        return block.number;
    }
}


// File @openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol@v5.0.2

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (proxy/utils/Initializable.sol)

pragma solidity ^0.8.20;

/**
 * @dev This is a base contract to aid in writing upgradeable contracts, or any kind of contract that will be deployed
 * behind a proxy. Since proxied contracts do not make use of a constructor, it's common to move constructor logic to an
 * external initializer function, usually called `initialize`. It then becomes necessary to protect this initializer
 * function so it can only be called once. The {initializer} modifier provided by this contract will have this effect.
 *
 * The initialization functions use a version number. Once a version number is used, it is consumed and cannot be
 * reused. This mechanism prevents re-execution of each "step" but allows the creation of new initialization steps in
 * case an upgrade adds a module that needs to be initialized.
 *
 * For example:
 *
 * [.hljs-theme-light.nopadding]
 * ```solidity
 * contract MyToken is ERC20Upgradeable {
 *     function initialize() initializer public {
 *         __ERC20_init("MyToken", "MTK");
 *     }
 * }
 *
 * contract MyTokenV2 is MyToken, ERC20PermitUpgradeable {
 *     function initializeV2() reinitializer(2) public {
 *         __ERC20Permit_init("MyToken");
 *     }
 * }
 * ```
 *
 * TIP: To avoid leaving the proxy in an uninitialized state, the initializer function should be called as early as
 * possible by providing the encoded function call as the `_data` argument to {ERC1967Proxy-constructor}.
 *
 * CAUTION: When used with inheritance, manual care must be taken to not invoke a parent initializer twice, or to ensure
 * that all initializers are idempotent. This is not verified automatically as constructors are by Solidity.
 *
 * [CAUTION]
 * ====
 * Avoid leaving a contract uninitialized.
 *
 * An uninitialized contract can be taken over by an attacker. This applies to both a proxy and its implementation
 * contract, which may impact the proxy. To prevent the implementation contract from being used, you should invoke
 * the {_disableInitializers} function in the constructor to automatically lock it when it is deployed:
 *
 * [.hljs-theme-light.nopadding]
 * ```
 * /// @custom:oz-upgrades-unsafe-allow constructor
 * constructor() {
 *     _disableInitializers();
 * }
 * ```
 * ====
 */
abstract contract Initializable {
    /**
     * @dev Storage of the initializable contract.
     *
     * It's implemented on a custom ERC-7201 namespace to reduce the risk of storage collisions
     * when using with upgradeable contracts.
     *
     * @custom:storage-location erc7201:openzeppelin.storage.Initializable
     */
    struct InitializableStorage {
        /**
         * @dev Indicates that the contract has been initialized.
         */
        uint64 _initialized;
        /**
         * @dev Indicates that the contract is in the process of being initialized.
         */
        bool _initializing;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.Initializable")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant INITIALIZABLE_STORAGE = 0xf0c57e16840df040f15088dc2f81fe391c3923bec73e23a9662efc9c229c6a00;

    /**
     * @dev The contract is already initialized.
     */
    error InvalidInitialization();

    /**
     * @dev The contract is not initializing.
     */
    error NotInitializing();

    /**
     * @dev Triggered when the contract has been initialized or reinitialized.
     */
    event Initialized(uint64 version);

    /**
     * @dev A modifier that defines a protected initializer function that can be invoked at most once. In its scope,
     * `onlyInitializing` functions can be used to initialize parent contracts.
     *
     * Similar to `reinitializer(1)`, except that in the context of a constructor an `initializer` may be invoked any
     * number of times. This behavior in the constructor can be useful during testing and is not expected to be used in
     * production.
     *
     * Emits an {Initialized} event.
     */
    modifier initializer() {
        // solhint-disable-next-line var-name-mixedcase
        InitializableStorage storage $ = _getInitializableStorage();

        // Cache values to avoid duplicated sloads
        bool isTopLevelCall = !$._initializing;
        uint64 initialized = $._initialized;

        // Allowed calls:
        // - initialSetup: the contract is not in the initializing state and no previous version was
        //                 initialized
        // - construction: the contract is initialized at version 1 (no reininitialization) and the
        //                 current contract is just being deployed
        bool initialSetup = initialized == 0 && isTopLevelCall;
        bool construction = initialized == 1 && address(this).code.length == 0;

        if (!initialSetup && !construction) {
            revert InvalidInitialization();
        }
        $._initialized = 1;
        if (isTopLevelCall) {
            $._initializing = true;
        }
        _;
        if (isTopLevelCall) {
            $._initializing = false;
            emit Initialized(1);
        }
    }

    /**
     * @dev A modifier that defines a protected reinitializer function that can be invoked at most once, and only if the
     * contract hasn't been initialized to a greater version before. In its scope, `onlyInitializing` functions can be
     * used to initialize parent contracts.
     *
     * A reinitializer may be used after the original initialization step. This is essential to configure modules that
     * are added through upgrades and that require initialization.
     *
     * When `version` is 1, this modifier is similar to `initializer`, except that functions marked with `reinitializer`
     * cannot be nested. If one is invoked in the context of another, execution will revert.
     *
     * Note that versions can jump in increments greater than 1; this implies that if multiple reinitializers coexist in
     * a contract, executing them in the right order is up to the developer or operator.
     *
     * WARNING: Setting the version to 2**64 - 1 will prevent any future reinitialization.
     *
     * Emits an {Initialized} event.
     */
    modifier reinitializer(uint64 version) {
        // solhint-disable-next-line var-name-mixedcase
        InitializableStorage storage $ = _getInitializableStorage();

        if ($._initializing || $._initialized >= version) {
            revert InvalidInitialization();
        }
        $._initialized = version;
        $._initializing = true;
        _;
        $._initializing = false;
        emit Initialized(version);
    }

    /**
     * @dev Modifier to protect an initialization function so that it can only be invoked by functions with the
     * {initializer} and {reinitializer} modifiers, directly or indirectly.
     */
    modifier onlyInitializing() {
        _checkInitializing();
        _;
    }

    /**
     * @dev Reverts if the contract is not in an initializing state. See {onlyInitializing}.
     */
    function _checkInitializing() internal view virtual {
        if (!_isInitializing()) {
            revert NotInitializing();
        }
    }

    /**
     * @dev Locks the contract, preventing any future reinitialization. This cannot be part of an initializer call.
     * Calling this in the constructor of a contract will prevent that contract from being initialized or reinitialized
     * to any version. It is recommended to use this to lock implementation contracts that are designed to be called
     * through proxies.
     *
     * Emits an {Initialized} event the first time it is successfully executed.
     */
    function _disableInitializers() internal virtual {
        // solhint-disable-next-line var-name-mixedcase
        InitializableStorage storage $ = _getInitializableStorage();

        if ($._initializing) {
            revert InvalidInitialization();
        }
        if ($._initialized != type(uint64).max) {
            $._initialized = type(uint64).max;
            emit Initialized(type(uint64).max);
        }
    }

    /**
     * @dev Returns the highest version that has been initialized. See {reinitializer}.
     */
    function _getInitializedVersion() internal view returns (uint64) {
        return _getInitializableStorage()._initialized;
    }

    /**
     * @dev Returns `true` if the contract is currently initializing. See {onlyInitializing}.
     */
    function _isInitializing() internal view returns (bool) {
        return _getInitializableStorage()._initializing;
    }

    /**
     * @dev Returns a pointer to the storage namespace.
     */
    // solhint-disable-next-line var-name-mixedcase
    function _getInitializableStorage() private pure returns (InitializableStorage storage $) {
        assembly {
            $.slot := INITIALIZABLE_STORAGE
        }
    }
}


// File @openzeppelin/contracts/utils/math/SafeCast.sol@v5.0.2

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/math/SafeCast.sol)
// This file was procedurally generated from scripts/generate/templates/SafeCast.js.

pragma solidity ^0.8.20;

/**
 * @dev Wrappers over Solidity's uintXX/intXX casting operators with added overflow
 * checks.
 *
 * Downcasting from uint256/int256 in Solidity does not revert on overflow. This can
 * easily result in undesired exploitation or bugs, since developers usually
 * assume that overflows raise errors. `SafeCast` restores this intuition by
 * reverting the transaction when such an operation overflows.
 *
 * Using this library instead of the unchecked operations eliminates an entire
 * class of bugs, so it's recommended to use it always.
 */
library SafeCast {
    /**
     * @dev Value doesn't fit in an uint of `bits` size.
     */
    error SafeCastOverflowedUintDowncast(uint8 bits, uint256 value);

    /**
     * @dev An int value doesn't fit in an uint of `bits` size.
     */
    error SafeCastOverflowedIntToUint(int256 value);

    /**
     * @dev Value doesn't fit in an int of `bits` size.
     */
    error SafeCastOverflowedIntDowncast(uint8 bits, int256 value);

    /**
     * @dev An uint value doesn't fit in an int of `bits` size.
     */
    error SafeCastOverflowedUintToInt(uint256 value);

    /**
     * @dev Returns the downcasted uint248 from uint256, reverting on
     * overflow (when the input is greater than largest uint248).
     *
     * Counterpart to Solidity's `uint248` operator.
     *
     * Requirements:
     *
     * - input must fit into 248 bits
     */
    function toUint248(uint256 value) internal pure returns (uint248) {
        if (value > type(uint248).max) {
            revert SafeCastOverflowedUintDowncast(248, value);
        }
        return uint248(value);
    }

    /**
     * @dev Returns the downcasted uint240 from uint256, reverting on
     * overflow (when the input is greater than largest uint240).
     *
     * Counterpart to Solidity's `uint240` operator.
     *
     * Requirements:
     *
     * - input must fit into 240 bits
     */
    function toUint240(uint256 value) internal pure returns (uint240) {
        if (value > type(uint240).max) {
            revert SafeCastOverflowedUintDowncast(240, value);
        }
        return uint240(value);
    }

    /**
     * @dev Returns the downcasted uint232 from uint256, reverting on
     * overflow (when the input is greater than largest uint232).
     *
     * Counterpart to Solidity's `uint232` operator.
     *
     * Requirements:
     *
     * - input must fit into 232 bits
     */
    function toUint232(uint256 value) internal pure returns (uint232) {
        if (value > type(uint232).max) {
            revert SafeCastOverflowedUintDowncast(232, value);
        }
        return uint232(value);
    }

    /**
     * @dev Returns the downcasted uint224 from uint256, reverting on
     * overflow (when the input is greater than largest uint224).
     *
     * Counterpart to Solidity's `uint224` operator.
     *
     * Requirements:
     *
     * - input must fit into 224 bits
     */
    function toUint224(uint256 value) internal pure returns (uint224) {
        if (value > type(uint224).max) {
            revert SafeCastOverflowedUintDowncast(224, value);
        }
        return uint224(value);
    }

    /**
     * @dev Returns the downcasted uint216 from uint256, reverting on
     * overflow (when the input is greater than largest uint216).
     *
     * Counterpart to Solidity's `uint216` operator.
     *
     * Requirements:
     *
     * - input must fit into 216 bits
     */
    function toUint216(uint256 value) internal pure returns (uint216) {
        if (value > type(uint216).max) {
            revert SafeCastOverflowedUintDowncast(216, value);
        }
        return uint216(value);
    }

    /**
     * @dev Returns the downcasted uint208 from uint256, reverting on
     * overflow (when the input is greater than largest uint208).
     *
     * Counterpart to Solidity's `uint208` operator.
     *
     * Requirements:
     *
     * - input must fit into 208 bits
     */
    function toUint208(uint256 value) internal pure returns (uint208) {
        if (value > type(uint208).max) {
            revert SafeCastOverflowedUintDowncast(208, value);
        }
        return uint208(value);
    }

    /**
     * @dev Returns the downcasted uint200 from uint256, reverting on
     * overflow (when the input is greater than largest uint200).
     *
     * Counterpart to Solidity's `uint200` operator.
     *
     * Requirements:
     *
     * - input must fit into 200 bits
     */
    function toUint200(uint256 value) internal pure returns (uint200) {
        if (value > type(uint200).max) {
            revert SafeCastOverflowedUintDowncast(200, value);
        }
        return uint200(value);
    }

    /**
     * @dev Returns the downcasted uint192 from uint256, reverting on
     * overflow (when the input is greater than largest uint192).
     *
     * Counterpart to Solidity's `uint192` operator.
     *
     * Requirements:
     *
     * - input must fit into 192 bits
     */
    function toUint192(uint256 value) internal pure returns (uint192) {
        if (value > type(uint192).max) {
            revert SafeCastOverflowedUintDowncast(192, value);
        }
        return uint192(value);
    }

    /**
     * @dev Returns the downcasted uint184 from uint256, reverting on
     * overflow (when the input is greater than largest uint184).
     *
     * Counterpart to Solidity's `uint184` operator.
     *
     * Requirements:
     *
     * - input must fit into 184 bits
     */
    function toUint184(uint256 value) internal pure returns (uint184) {
        if (value > type(uint184).max) {
            revert SafeCastOverflowedUintDowncast(184, value);
        }
        return uint184(value);
    }

    /**
     * @dev Returns the downcasted uint176 from uint256, reverting on
     * overflow (when the input is greater than largest uint176).
     *
     * Counterpart to Solidity's `uint176` operator.
     *
     * Requirements:
     *
     * - input must fit into 176 bits
     */
    function toUint176(uint256 value) internal pure returns (uint176) {
        if (value > type(uint176).max) {
            revert SafeCastOverflowedUintDowncast(176, value);
        }
        return uint176(value);
    }

    /**
     * @dev Returns the downcasted uint168 from uint256, reverting on
     * overflow (when the input is greater than largest uint168).
     *
     * Counterpart to Solidity's `uint168` operator.
     *
     * Requirements:
     *
     * - input must fit into 168 bits
     */
    function toUint168(uint256 value) internal pure returns (uint168) {
        if (value > type(uint168).max) {
            revert SafeCastOverflowedUintDowncast(168, value);
        }
        return uint168(value);
    }

    /**
     * @dev Returns the downcasted uint160 from uint256, reverting on
     * overflow (when the input is greater than largest uint160).
     *
     * Counterpart to Solidity's `uint160` operator.
     *
     * Requirements:
     *
     * - input must fit into 160 bits
     */
    function toUint160(uint256 value) internal pure returns (uint160) {
        if (value > type(uint160).max) {
            revert SafeCastOverflowedUintDowncast(160, value);
        }
        return uint160(value);
    }

    /**
     * @dev Returns the downcasted uint152 from uint256, reverting on
     * overflow (when the input is greater than largest uint152).
     *
     * Counterpart to Solidity's `uint152` operator.
     *
     * Requirements:
     *
     * - input must fit into 152 bits
     */
    function toUint152(uint256 value) internal pure returns (uint152) {
        if (value > type(uint152).max) {
            revert SafeCastOverflowedUintDowncast(152, value);
        }
        return uint152(value);
    }

    /**
     * @dev Returns the downcasted uint144 from uint256, reverting on
     * overflow (when the input is greater than largest uint144).
     *
     * Counterpart to Solidity's `uint144` operator.
     *
     * Requirements:
     *
     * - input must fit into 144 bits
     */
    function toUint144(uint256 value) internal pure returns (uint144) {
        if (value > type(uint144).max) {
            revert SafeCastOverflowedUintDowncast(144, value);
        }
        return uint144(value);
    }

    /**
     * @dev Returns the downcasted uint136 from uint256, reverting on
     * overflow (when the input is greater than largest uint136).
     *
     * Counterpart to Solidity's `uint136` operator.
     *
     * Requirements:
     *
     * - input must fit into 136 bits
     */
    function toUint136(uint256 value) internal pure returns (uint136) {
        if (value > type(uint136).max) {
            revert SafeCastOverflowedUintDowncast(136, value);
        }
        return uint136(value);
    }

    /**
     * @dev Returns the downcasted uint128 from uint256, reverting on
     * overflow (when the input is greater than largest uint128).
     *
     * Counterpart to Solidity's `uint128` operator.
     *
     * Requirements:
     *
     * - input must fit into 128 bits
     */
    function toUint128(uint256 value) internal pure returns (uint128) {
        if (value > type(uint128).max) {
            revert SafeCastOverflowedUintDowncast(128, value);
        }
        return uint128(value);
    }

    /**
     * @dev Returns the downcasted uint120 from uint256, reverting on
     * overflow (when the input is greater than largest uint120).
     *
     * Counterpart to Solidity's `uint120` operator.
     *
     * Requirements:
     *
     * - input must fit into 120 bits
     */
    function toUint120(uint256 value) internal pure returns (uint120) {
        if (value > type(uint120).max) {
            revert SafeCastOverflowedUintDowncast(120, value);
        }
        return uint120(value);
    }

    /**
     * @dev Returns the downcasted uint112 from uint256, reverting on
     * overflow (when the input is greater than largest uint112).
     *
     * Counterpart to Solidity's `uint112` operator.
     *
     * Requirements:
     *
     * - input must fit into 112 bits
     */
    function toUint112(uint256 value) internal pure returns (uint112) {
        if (value > type(uint112).max) {
            revert SafeCastOverflowedUintDowncast(112, value);
        }
        return uint112(value);
    }

    /**
     * @dev Returns the downcasted uint104 from uint256, reverting on
     * overflow (when the input is greater than largest uint104).
     *
     * Counterpart to Solidity's `uint104` operator.
     *
     * Requirements:
     *
     * - input must fit into 104 bits
     */
    function toUint104(uint256 value) internal pure returns (uint104) {
        if (value > type(uint104).max) {
            revert SafeCastOverflowedUintDowncast(104, value);
        }
        return uint104(value);
    }

    /**
     * @dev Returns the downcasted uint96 from uint256, reverting on
     * overflow (when the input is greater than largest uint96).
     *
     * Counterpart to Solidity's `uint96` operator.
     *
     * Requirements:
     *
     * - input must fit into 96 bits
     */
    function toUint96(uint256 value) internal pure returns (uint96) {
        if (value > type(uint96).max) {
            revert SafeCastOverflowedUintDowncast(96, value);
        }
        return uint96(value);
    }

    /**
     * @dev Returns the downcasted uint88 from uint256, reverting on
     * overflow (when the input is greater than largest uint88).
     *
     * Counterpart to Solidity's `uint88` operator.
     *
     * Requirements:
     *
     * - input must fit into 88 bits
     */
    function toUint88(uint256 value) internal pure returns (uint88) {
        if (value > type(uint88).max) {
            revert SafeCastOverflowedUintDowncast(88, value);
        }
        return uint88(value);
    }

    /**
     * @dev Returns the downcasted uint80 from uint256, reverting on
     * overflow (when the input is greater than largest uint80).
     *
     * Counterpart to Solidity's `uint80` operator.
     *
     * Requirements:
     *
     * - input must fit into 80 bits
     */
    function toUint80(uint256 value) internal pure returns (uint80) {
        if (value > type(uint80).max) {
            revert SafeCastOverflowedUintDowncast(80, value);
        }
        return uint80(value);
    }

    /**
     * @dev Returns the downcasted uint72 from uint256, reverting on
     * overflow (when the input is greater than largest uint72).
     *
     * Counterpart to Solidity's `uint72` operator.
     *
     * Requirements:
     *
     * - input must fit into 72 bits
     */
    function toUint72(uint256 value) internal pure returns (uint72) {
        if (value > type(uint72).max) {
            revert SafeCastOverflowedUintDowncast(72, value);
        }
        return uint72(value);
    }

    /**
     * @dev Returns the downcasted uint64 from uint256, reverting on
     * overflow (when the input is greater than largest uint64).
     *
     * Counterpart to Solidity's `uint64` operator.
     *
     * Requirements:
     *
     * - input must fit into 64 bits
     */
    function toUint64(uint256 value) internal pure returns (uint64) {
        if (value > type(uint64).max) {
            revert SafeCastOverflowedUintDowncast(64, value);
        }
        return uint64(value);
    }

    /**
     * @dev Returns the downcasted uint56 from uint256, reverting on
     * overflow (when the input is greater than largest uint56).
     *
     * Counterpart to Solidity's `uint56` operator.
     *
     * Requirements:
     *
     * - input must fit into 56 bits
     */
    function toUint56(uint256 value) internal pure returns (uint56) {
        if (value > type(uint56).max) {
            revert SafeCastOverflowedUintDowncast(56, value);
        }
        return uint56(value);
    }

    /**
     * @dev Returns the downcasted uint48 from uint256, reverting on
     * overflow (when the input is greater than largest uint48).
     *
     * Counterpart to Solidity's `uint48` operator.
     *
     * Requirements:
     *
     * - input must fit into 48 bits
     */
    function toUint48(uint256 value) internal pure returns (uint48) {
        if (value > type(uint48).max) {
            revert SafeCastOverflowedUintDowncast(48, value);
        }
        return uint48(value);
    }

    /**
     * @dev Returns the downcasted uint40 from uint256, reverting on
     * overflow (when the input is greater than largest uint40).
     *
     * Counterpart to Solidity's `uint40` operator.
     *
     * Requirements:
     *
     * - input must fit into 40 bits
     */
    function toUint40(uint256 value) internal pure returns (uint40) {
        if (value > type(uint40).max) {
            revert SafeCastOverflowedUintDowncast(40, value);
        }
        return uint40(value);
    }

    /**
     * @dev Returns the downcasted uint32 from uint256, reverting on
     * overflow (when the input is greater than largest uint32).
     *
     * Counterpart to Solidity's `uint32` operator.
     *
     * Requirements:
     *
     * - input must fit into 32 bits
     */
    function toUint32(uint256 value) internal pure returns (uint32) {
        if (value > type(uint32).max) {
            revert SafeCastOverflowedUintDowncast(32, value);
        }
        return uint32(value);
    }

    /**
     * @dev Returns the downcasted uint24 from uint256, reverting on
     * overflow (when the input is greater than largest uint24).
     *
     * Counterpart to Solidity's `uint24` operator.
     *
     * Requirements:
     *
     * - input must fit into 24 bits
     */
    function toUint24(uint256 value) internal pure returns (uint24) {
        if (value > type(uint24).max) {
            revert SafeCastOverflowedUintDowncast(24, value);
        }
        return uint24(value);
    }

    /**
     * @dev Returns the downcasted uint16 from uint256, reverting on
     * overflow (when the input is greater than largest uint16).
     *
     * Counterpart to Solidity's `uint16` operator.
     *
     * Requirements:
     *
     * - input must fit into 16 bits
     */
    function toUint16(uint256 value) internal pure returns (uint16) {
        if (value > type(uint16).max) {
            revert SafeCastOverflowedUintDowncast(16, value);
        }
        return uint16(value);
    }

    /**
     * @dev Returns the downcasted uint8 from uint256, reverting on
     * overflow (when the input is greater than largest uint8).
     *
     * Counterpart to Solidity's `uint8` operator.
     *
     * Requirements:
     *
     * - input must fit into 8 bits
     */
    function toUint8(uint256 value) internal pure returns (uint8) {
        if (value > type(uint8).max) {
            revert SafeCastOverflowedUintDowncast(8, value);
        }
        return uint8(value);
    }

    /**
     * @dev Converts a signed int256 into an unsigned uint256.
     *
     * Requirements:
     *
     * - input must be greater than or equal to 0.
     */
    function toUint256(int256 value) internal pure returns (uint256) {
        if (value < 0) {
            revert SafeCastOverflowedIntToUint(value);
        }
        return uint256(value);
    }

    /**
     * @dev Returns the downcasted int248 from int256, reverting on
     * overflow (when the input is less than smallest int248 or
     * greater than largest int248).
     *
     * Counterpart to Solidity's `int248` operator.
     *
     * Requirements:
     *
     * - input must fit into 248 bits
     */
    function toInt248(int256 value) internal pure returns (int248 downcasted) {
        downcasted = int248(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(248, value);
        }
    }

    /**
     * @dev Returns the downcasted int240 from int256, reverting on
     * overflow (when the input is less than smallest int240 or
     * greater than largest int240).
     *
     * Counterpart to Solidity's `int240` operator.
     *
     * Requirements:
     *
     * - input must fit into 240 bits
     */
    function toInt240(int256 value) internal pure returns (int240 downcasted) {
        downcasted = int240(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(240, value);
        }
    }

    /**
     * @dev Returns the downcasted int232 from int256, reverting on
     * overflow (when the input is less than smallest int232 or
     * greater than largest int232).
     *
     * Counterpart to Solidity's `int232` operator.
     *
     * Requirements:
     *
     * - input must fit into 232 bits
     */
    function toInt232(int256 value) internal pure returns (int232 downcasted) {
        downcasted = int232(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(232, value);
        }
    }

    /**
     * @dev Returns the downcasted int224 from int256, reverting on
     * overflow (when the input is less than smallest int224 or
     * greater than largest int224).
     *
     * Counterpart to Solidity's `int224` operator.
     *
     * Requirements:
     *
     * - input must fit into 224 bits
     */
    function toInt224(int256 value) internal pure returns (int224 downcasted) {
        downcasted = int224(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(224, value);
        }
    }

    /**
     * @dev Returns the downcasted int216 from int256, reverting on
     * overflow (when the input is less than smallest int216 or
     * greater than largest int216).
     *
     * Counterpart to Solidity's `int216` operator.
     *
     * Requirements:
     *
     * - input must fit into 216 bits
     */
    function toInt216(int256 value) internal pure returns (int216 downcasted) {
        downcasted = int216(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(216, value);
        }
    }

    /**
     * @dev Returns the downcasted int208 from int256, reverting on
     * overflow (when the input is less than smallest int208 or
     * greater than largest int208).
     *
     * Counterpart to Solidity's `int208` operator.
     *
     * Requirements:
     *
     * - input must fit into 208 bits
     */
    function toInt208(int256 value) internal pure returns (int208 downcasted) {
        downcasted = int208(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(208, value);
        }
    }

    /**
     * @dev Returns the downcasted int200 from int256, reverting on
     * overflow (when the input is less than smallest int200 or
     * greater than largest int200).
     *
     * Counterpart to Solidity's `int200` operator.
     *
     * Requirements:
     *
     * - input must fit into 200 bits
     */
    function toInt200(int256 value) internal pure returns (int200 downcasted) {
        downcasted = int200(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(200, value);
        }
    }

    /**
     * @dev Returns the downcasted int192 from int256, reverting on
     * overflow (when the input is less than smallest int192 or
     * greater than largest int192).
     *
     * Counterpart to Solidity's `int192` operator.
     *
     * Requirements:
     *
     * - input must fit into 192 bits
     */
    function toInt192(int256 value) internal pure returns (int192 downcasted) {
        downcasted = int192(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(192, value);
        }
    }

    /**
     * @dev Returns the downcasted int184 from int256, reverting on
     * overflow (when the input is less than smallest int184 or
     * greater than largest int184).
     *
     * Counterpart to Solidity's `int184` operator.
     *
     * Requirements:
     *
     * - input must fit into 184 bits
     */
    function toInt184(int256 value) internal pure returns (int184 downcasted) {
        downcasted = int184(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(184, value);
        }
    }

    /**
     * @dev Returns the downcasted int176 from int256, reverting on
     * overflow (when the input is less than smallest int176 or
     * greater than largest int176).
     *
     * Counterpart to Solidity's `int176` operator.
     *
     * Requirements:
     *
     * - input must fit into 176 bits
     */
    function toInt176(int256 value) internal pure returns (int176 downcasted) {
        downcasted = int176(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(176, value);
        }
    }

    /**
     * @dev Returns the downcasted int168 from int256, reverting on
     * overflow (when the input is less than smallest int168 or
     * greater than largest int168).
     *
     * Counterpart to Solidity's `int168` operator.
     *
     * Requirements:
     *
     * - input must fit into 168 bits
     */
    function toInt168(int256 value) internal pure returns (int168 downcasted) {
        downcasted = int168(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(168, value);
        }
    }

    /**
     * @dev Returns the downcasted int160 from int256, reverting on
     * overflow (when the input is less than smallest int160 or
     * greater than largest int160).
     *
     * Counterpart to Solidity's `int160` operator.
     *
     * Requirements:
     *
     * - input must fit into 160 bits
     */
    function toInt160(int256 value) internal pure returns (int160 downcasted) {
        downcasted = int160(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(160, value);
        }
    }

    /**
     * @dev Returns the downcasted int152 from int256, reverting on
     * overflow (when the input is less than smallest int152 or
     * greater than largest int152).
     *
     * Counterpart to Solidity's `int152` operator.
     *
     * Requirements:
     *
     * - input must fit into 152 bits
     */
    function toInt152(int256 value) internal pure returns (int152 downcasted) {
        downcasted = int152(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(152, value);
        }
    }

    /**
     * @dev Returns the downcasted int144 from int256, reverting on
     * overflow (when the input is less than smallest int144 or
     * greater than largest int144).
     *
     * Counterpart to Solidity's `int144` operator.
     *
     * Requirements:
     *
     * - input must fit into 144 bits
     */
    function toInt144(int256 value) internal pure returns (int144 downcasted) {
        downcasted = int144(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(144, value);
        }
    }

    /**
     * @dev Returns the downcasted int136 from int256, reverting on
     * overflow (when the input is less than smallest int136 or
     * greater than largest int136).
     *
     * Counterpart to Solidity's `int136` operator.
     *
     * Requirements:
     *
     * - input must fit into 136 bits
     */
    function toInt136(int256 value) internal pure returns (int136 downcasted) {
        downcasted = int136(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(136, value);
        }
    }

    /**
     * @dev Returns the downcasted int128 from int256, reverting on
     * overflow (when the input is less than smallest int128 or
     * greater than largest int128).
     *
     * Counterpart to Solidity's `int128` operator.
     *
     * Requirements:
     *
     * - input must fit into 128 bits
     */
    function toInt128(int256 value) internal pure returns (int128 downcasted) {
        downcasted = int128(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(128, value);
        }
    }

    /**
     * @dev Returns the downcasted int120 from int256, reverting on
     * overflow (when the input is less than smallest int120 or
     * greater than largest int120).
     *
     * Counterpart to Solidity's `int120` operator.
     *
     * Requirements:
     *
     * - input must fit into 120 bits
     */
    function toInt120(int256 value) internal pure returns (int120 downcasted) {
        downcasted = int120(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(120, value);
        }
    }

    /**
     * @dev Returns the downcasted int112 from int256, reverting on
     * overflow (when the input is less than smallest int112 or
     * greater than largest int112).
     *
     * Counterpart to Solidity's `int112` operator.
     *
     * Requirements:
     *
     * - input must fit into 112 bits
     */
    function toInt112(int256 value) internal pure returns (int112 downcasted) {
        downcasted = int112(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(112, value);
        }
    }

    /**
     * @dev Returns the downcasted int104 from int256, reverting on
     * overflow (when the input is less than smallest int104 or
     * greater than largest int104).
     *
     * Counterpart to Solidity's `int104` operator.
     *
     * Requirements:
     *
     * - input must fit into 104 bits
     */
    function toInt104(int256 value) internal pure returns (int104 downcasted) {
        downcasted = int104(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(104, value);
        }
    }

    /**
     * @dev Returns the downcasted int96 from int256, reverting on
     * overflow (when the input is less than smallest int96 or
     * greater than largest int96).
     *
     * Counterpart to Solidity's `int96` operator.
     *
     * Requirements:
     *
     * - input must fit into 96 bits
     */
    function toInt96(int256 value) internal pure returns (int96 downcasted) {
        downcasted = int96(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(96, value);
        }
    }

    /**
     * @dev Returns the downcasted int88 from int256, reverting on
     * overflow (when the input is less than smallest int88 or
     * greater than largest int88).
     *
     * Counterpart to Solidity's `int88` operator.
     *
     * Requirements:
     *
     * - input must fit into 88 bits
     */
    function toInt88(int256 value) internal pure returns (int88 downcasted) {
        downcasted = int88(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(88, value);
        }
    }

    /**
     * @dev Returns the downcasted int80 from int256, reverting on
     * overflow (when the input is less than smallest int80 or
     * greater than largest int80).
     *
     * Counterpart to Solidity's `int80` operator.
     *
     * Requirements:
     *
     * - input must fit into 80 bits
     */
    function toInt80(int256 value) internal pure returns (int80 downcasted) {
        downcasted = int80(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(80, value);
        }
    }

    /**
     * @dev Returns the downcasted int72 from int256, reverting on
     * overflow (when the input is less than smallest int72 or
     * greater than largest int72).
     *
     * Counterpart to Solidity's `int72` operator.
     *
     * Requirements:
     *
     * - input must fit into 72 bits
     */
    function toInt72(int256 value) internal pure returns (int72 downcasted) {
        downcasted = int72(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(72, value);
        }
    }

    /**
     * @dev Returns the downcasted int64 from int256, reverting on
     * overflow (when the input is less than smallest int64 or
     * greater than largest int64).
     *
     * Counterpart to Solidity's `int64` operator.
     *
     * Requirements:
     *
     * - input must fit into 64 bits
     */
    function toInt64(int256 value) internal pure returns (int64 downcasted) {
        downcasted = int64(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(64, value);
        }
    }

    /**
     * @dev Returns the downcasted int56 from int256, reverting on
     * overflow (when the input is less than smallest int56 or
     * greater than largest int56).
     *
     * Counterpart to Solidity's `int56` operator.
     *
     * Requirements:
     *
     * - input must fit into 56 bits
     */
    function toInt56(int256 value) internal pure returns (int56 downcasted) {
        downcasted = int56(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(56, value);
        }
    }

    /**
     * @dev Returns the downcasted int48 from int256, reverting on
     * overflow (when the input is less than smallest int48 or
     * greater than largest int48).
     *
     * Counterpart to Solidity's `int48` operator.
     *
     * Requirements:
     *
     * - input must fit into 48 bits
     */
    function toInt48(int256 value) internal pure returns (int48 downcasted) {
        downcasted = int48(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(48, value);
        }
    }

    /**
     * @dev Returns the downcasted int40 from int256, reverting on
     * overflow (when the input is less than smallest int40 or
     * greater than largest int40).
     *
     * Counterpart to Solidity's `int40` operator.
     *
     * Requirements:
     *
     * - input must fit into 40 bits
     */
    function toInt40(int256 value) internal pure returns (int40 downcasted) {
        downcasted = int40(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(40, value);
        }
    }

    /**
     * @dev Returns the downcasted int32 from int256, reverting on
     * overflow (when the input is less than smallest int32 or
     * greater than largest int32).
     *
     * Counterpart to Solidity's `int32` operator.
     *
     * Requirements:
     *
     * - input must fit into 32 bits
     */
    function toInt32(int256 value) internal pure returns (int32 downcasted) {
        downcasted = int32(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(32, value);
        }
    }

    /**
     * @dev Returns the downcasted int24 from int256, reverting on
     * overflow (when the input is less than smallest int24 or
     * greater than largest int24).
     *
     * Counterpart to Solidity's `int24` operator.
     *
     * Requirements:
     *
     * - input must fit into 24 bits
     */
    function toInt24(int256 value) internal pure returns (int24 downcasted) {
        downcasted = int24(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(24, value);
        }
    }

    /**
     * @dev Returns the downcasted int16 from int256, reverting on
     * overflow (when the input is less than smallest int16 or
     * greater than largest int16).
     *
     * Counterpart to Solidity's `int16` operator.
     *
     * Requirements:
     *
     * - input must fit into 16 bits
     */
    function toInt16(int256 value) internal pure returns (int16 downcasted) {
        downcasted = int16(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(16, value);
        }
    }

    /**
     * @dev Returns the downcasted int8 from int256, reverting on
     * overflow (when the input is less than smallest int8 or
     * greater than largest int8).
     *
     * Counterpart to Solidity's `int8` operator.
     *
     * Requirements:
     *
     * - input must fit into 8 bits
     */
    function toInt8(int256 value) internal pure returns (int8 downcasted) {
        downcasted = int8(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(8, value);
        }
    }

    /**
     * @dev Converts an unsigned uint256 into a signed int256.
     *
     * Requirements:
     *
     * - input must be less than or equal to maxInt256.
     */
    function toInt256(uint256 value) internal pure returns (int256) {
        // Note: Unsafe cast below is okay because `type(int256).max` is guaranteed to be positive
        if (value > uint256(type(int256).max)) {
            revert SafeCastOverflowedUintToInt(value);
        }
        return int256(value);
    }
}


// File src/interfaces/IOstiumPairInfos.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.24;

interface IOstiumPairInfos {
    struct PairOpeningFees {
        uint32 makerFeeP; // PRECISION_6 (%)
        uint32 takerFeeP; // PRECISION_6 (%)
        uint32 usageFeeP; // PRECISION_6 (%)
        uint16 utilizationThresholdP; // PRECISION_2 (%)
        uint16 makerMaxLeverage; // PRECISION_2
        uint8 vaultFeePercent;
    }

    struct PairFundingFees {
        int256 accPerOiLong; // PRECISION_18 (but USDC)
        int256 accPerOiShort; // PRECISION_18 (but USDC)
        int64 lastFundingRate; // PRECISION_18
        int64 lastVelocity; // PRECISION_18
        uint64 maxFundingFeePerBlock; // PRECISION_18
        uint64 maxFundingFeeVelocity; // PRECISION_18
        uint32 lastUpdateBlock;
        uint16 fundingFeeSlope; // PRECISION_2
    }

    struct PairRolloverFees {
        uint256 accPerOi; // PRECISION_18 (but USDC)
        uint64 rolloverFeePerBlock; // PRECISION_18
        uint64 maxRolloverFeePerBlock; // PRECISISON_18
        uint32 maxRolloverVolatility; // PRECISION_6
        uint32 lastUpdateBlock;
        uint16 rolloverFeeSlope; // PRECISION_2
    }

    struct TradeInitialAccFees {
        uint256 rollover; // PRECISION_6 (USDC)
        int256 funding; // PRECISION_6 (USDC)
        bool openedAfterUpdate;
    }

    event ManagerUpdated(address value);
    event LiqThresholdPUpdated(uint256 value);
    event MaxNegativePnlOnOpenPUpdated(uint256 value);
    event VaultFeePercentUpdated(uint16 indexed pairIndex, uint8 value);
    event PairOpeningFeesUpdated(uint16 indexed pairIndex, PairOpeningFees value);
    event PairRolloverFeesUpdated(uint16 indexed pairIndex, PairRolloverFees value);
    event PairFundingFeesUpdated(uint16 indexed pairIndex, PairFundingFees value);
    event RolloverFeePerBlockUpdated(uint16 indexed pairIndex, uint256 value, uint256 volatility);
    event MaxFundingFeeVelocityUpdated(uint16 indexed pairIndex, uint256 value);
    event MaxFundingFeePerBlockUpdated(uint16 indexed pairIndex, uint256 value);
    event FundingFeeSlopeUpdated(uint16 indexed pairIndex, uint256 value);
    event TradeInitialAccFeesStored(
        uint256 indexed tradeId,
        address indexed trader,
        uint16 indexed pairIndex,
        uint8 index,
        uint256 rollover,
        int256 funding
    );
    event AccFundingFeesStored(
        uint16 indexed pairIndex, int256 valueLong, int256 valueShort, int64 lastFundingRate, int64 velocity
    );
    event AccRolloverFeesStored(uint16 indexed pairIndex, uint256 value);
    event MaxRolloverFeePerBlockUpdated(uint16 indexed pairIndex, uint256 value);
    event MaxRolloverVolatilityUpdated(uint16 indexed pairIndex, uint256 value);
    event MaxRolloverFeeSlopeUpdated(uint16 indexed pairIndex, uint256 value);
    event FeesCharged(
        uint256 indexed orderId,
        uint256 indexed tradeId,
        address indexed trader,
        uint256 rolloverFees,
        int256 fundingFees
    );
    event LastVelocityUpdated(uint16 indexed pairIndex, int64 value);

    error WrongParams();
    error NotGov(address a);
    error NotManager(address a);
    error NotCallbacks(address a);

    function pairOpeningFees(uint16 pairIndex) external returns (uint32, uint32, uint32, uint16, uint16, uint8);
    function pairFundingFees(uint16 pairIndex)
        external
        returns (int256, int256, int64, int64, uint64, uint64, uint32, uint16);
    function pairRolloverFees(uint16 pairIndex) external returns (uint256, uint64, uint64, uint32, uint32, uint16);
    function tradeInitialAccFees(address trader, uint16 pairIndex, uint8 tradeIndex)
        external
        returns (uint256, int256, bool);
    function maxNegativePnlOnOpenP() external view returns (uint8);
    function getTradeLiquidationPrice(
        address trader,
        uint16 pairIndex,
        uint8 index,
        uint256 openPrice,
        bool long,
        uint256 collateral,
        uint32 leverage
    ) external view returns (uint256);
    function getTradeValue(
        uint256 orderId,
        uint256 tradeId,
        address trader,
        uint16 pairIndex,
        uint8 index,
        bool long,
        uint256 collateral,
        uint32 leverage,
        int256 percentProfit
    ) external returns (uint256);
    function manager() external view returns (address);
    function liqThresholdP() external view returns (uint8);
    function getOpeningFee(
        uint16 pairIndex,
        int256 leveragedPositionSize,
        uint32 leverage,
        int256 oiDelta,
        uint256 oiCap,
        uint256 usageOi
    ) external view returns (uint256, uint256);
    function getVelocity(uint16 pairIndex) external view returns (int64 velocity);
    function getPendingAccRolloverFees(uint16 pairIndex) external view returns (uint256);
    function getPendingAccFundingFees(uint16 pairIndex)
        external
        view
        returns (int256 valueLong, int256 valueShort, int64 fr);
    function getTradeRolloverFee(address trader, uint16 pairIndex, uint8 index, uint256 collateral, uint32 leverage)
        external
        view
        returns (uint256);
    function getTradeRolloverFeePure(
        uint256 accRolloverFeesPerCollateral,
        uint256 endAccRolloverFeesPerCollateral,
        uint256 collateral,
        uint32 leverage
    ) external pure returns (uint256);
    function getTradeFundingFee(
        address trader,
        uint16 pairIndex,
        uint8 index,
        bool long,
        uint256 collateral,
        uint32 leverage
    ) external view returns (int256);
    function getTradeFundingFeePure(
        int256 accFundingFeesPerOi,
        int256 endAccFundingFeesPerOi,
        uint256 collateral,
        uint32 leverage
    ) external pure returns (int256);
    function getTradeLiquidationPricePure(
        uint256 openPrice,
        bool long,
        uint256 collateral,
        uint32 leverage,
        uint256 rolloverFee,
        int256 fundingFee
    ) external view returns (uint256);
    function getTradeValuePure(uint256 collateral, int256 percentProfit, uint256 rolloverFee, int256 fundingFee)
        external
        view
        returns (uint256);
    function getRolloverFeePerBlock(uint16 pairIndex) external view returns (uint256);
    function getAccRolloverFees(uint16 pairIndex) external view returns (uint256);
    function getAccRolloverFeesUpdateBlock(uint16 pairIndex) external view returns (uint256);
    function getAccFundingFeesLong(uint16 pairIndex) external view returns (int256);
    function getAccFundingFeesShort(uint16 pairIndex) external view returns (int256);
    function getAccFundingFeesUpdateBlock(uint16 pairIndex) external view returns (uint256);
    function getTradeInitialAccRolloverFeesPerCollateral(address trader, uint16 pairIndex, uint8 index)
        external
        view
        returns (uint256);
    function getTradeInitialAccFundingFeesPerOi(address trader, uint16 pairIndex, uint8 index)
        external
        view
        returns (int256);
    function getTradeOpenedAfterUpdate(address trader, uint16 pairIndex, uint8 index) external view returns (bool);

    // only manager
    function setRolloverFeePerBlock(uint16 pairIndex, uint256 volatility) external;
    function setRolloverFeePerBlockArray(uint16[] memory indices, uint256[] memory values) external;

    // only gov
    function setVelocity(uint16 pairIndex) external;
    function setManager(address _manager) external;
    function setLiqThresholdP(uint256 value) external;
    function setMaxNegativePnlOnOpenP(uint256 value) external;
    function setPairOpeningFees(uint16 pairIndex, PairOpeningFees memory value) external;
    function setPairOpeningFeesArray(uint16[] memory indices, PairOpeningFees[] memory values) external;
    function setPairOpeningVaultFeePercent(uint16 pairIndex, uint8 value) external;
    function setPairOpeningVaultFeePercentArray(uint16[] calldata pairIndex, uint8[] calldata value) external;
    function setPairFundingFees(uint16 pairIndex, PairFundingFees memory value) external;
    function setPairFundingFeesArray(uint16[] memory indices, PairFundingFees[] memory values) external;
    function setMaxFundingFeeVelocity(uint16 pairIndex, uint256 value) external;
    function setMaxFundingFeeVelocityArray(uint16[] memory indices, uint256[] memory values) external;
    function setFundingFeeSlope(uint16 pairIndex, uint256 value) external;
    function setFundingFeeSlopeArray(uint16[] memory indices, uint256[] memory values) external;
    function setPairRolloverFees(uint16 pairIndex, PairRolloverFees memory value) external;
    function setPairRolloverFeesArray(uint16[] memory indices, PairRolloverFees[] memory values) external;
    function setMaxRolloverFeePerBlock(uint16 pairIndex, uint256 value) external;
    function setMaxRolloverFeePerBlockArray(uint16[] memory indices, uint256[] memory values) external;
    function setMaxRolloverVolatility(uint16 pairIndex, uint256 value) external;
    function setMaxRolloverVolatilityArray(uint16[] memory indices, uint256[] memory values) external;
    function setRolloverFeeSlope(uint16 pairIndex, uint256 value) external;
    function setRolloverFeeSlopeArray(uint16[] memory indices, uint256[] memory values) external;
    function setMaxFundingFeePerBlock(uint16 pairIndex, uint256 value) external;

    // only callbacks
    function storeTradeInitialAccFees(uint256 tradeId, address trader, uint16 pairIndex, uint8 index, bool long)
        external;
}


// File src/interfaces/IOstiumRegistry.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.24;

interface IOstiumRegistry {
    event DevUpdated(address a);
    event GovUpdated(address a);
    event ManagerUpdated(address a);
    event ContractRegistered(bytes32 name, address contractAddress);
    event ContractUpdated(bytes32 name, address contractAddress);
    event ContractUnregistered(bytes32 name, address contractAddress);

    error NullAddr();
    error WrongParams();
    error NotFound(bytes32 name);
    error HasAlreadyRole(address a);
    error NotGov(address a);
    error AlreadyRegistered(bytes32 name);
    error NotContract(address contractAddress);

    function gov() external view returns (address);
    function manager() external view returns (address);
    function dev() external view returns (address);
    function getContractAddress(bytes32) external view returns (address);
    function setGov(address) external;
    function setDev(address) external;
    function unregisterContract(bytes32) external;
    function unregisterContracts(bytes32[] memory) external;
    function registerContract(bytes32, address) external;
    function registerContracts(bytes32[] memory, address[] memory) external;
    function updateContract(bytes32 name, address contractAddress) external;
    function updateContracts(bytes32[] memory names, address[] memory contractAddresses) external;
}


// File src/OstiumTradingStorage.sol

// Original license: SPDX_License_Identifier: MIT









pragma solidity ^0.8.24;

contract OstiumTradingStorage is IOstiumTradingStorage, Initializable {
    using SafeCast for uint256;
    using SafeERC20 for IERC20;

    uint64 constant PRECISION_18 = 1e18; // 18 decimals
    uint32 constant PRECISION_6 = 1e6; // 6 decimals
    uint8 constant PRECISION_2 = 1e2; // 2 decimals

    address public usdc;

    IOstiumRegistry public registry;

    uint256 public devFees; // PRECISION_6 (USDC)
    uint32 public totalOpenTradesCount;
    uint8 public maxTradesPerPair;
    uint8 public maxPendingMarketOrders;

    // Trades mappings
    mapping(address trader => mapping(uint16 pairIndex => mapping(uint8 tradeIndex => IOstiumTradingStorage.Trade)))
        public openTrades;
    mapping(address trader => mapping(uint16 pairIndex => mapping(uint8 tradeIndex => TradeInfo))) public openTradesInfo;
    mapping(address trader => mapping(uint16 pairIndex => uint32)) public openTradesCount;

    // Limit orders mappings
    mapping(address trader => mapping(uint16 pairIndex => mapping(uint8 orderIndex => uint256))) public
        openLimitOrderIds;
    mapping(address trader => mapping(uint16 pairIndex => uint8)) public openLimitOrdersCount;
    mapping(
        address trader
            => mapping(
                uint16 pairIndex
                    => mapping(uint8 index => mapping(IOstiumTradingStorage.LimitOrder orderType => uint256))
            )
    ) public orderTriggerBlock;
    mapping(uint16 pairIndex => OpenLimitOrder[]) public pairLimitOrders;

    // Pending orders mappings
    mapping(uint256 orderId => PendingMarketOrder) public reqID_pendingMarketOrder;
    mapping(uint256 orderId => PendingAutomationOrder) public reqID_pendingAutomationOrder;

    mapping(address trader => uint256[]) public pendingOrderIds;
    mapping(address trader => mapping(uint16 pairIndex => uint8)) public pendingMarketOpenCount;
    mapping(address trader => mapping(uint16 pairIndex => uint8)) public pendingMarketCloseCount;

    // List of open trades & limit orders
    mapping(uint16 pairIndex => address[]) public pairTraders;
    mapping(address trader => mapping(uint16 pairIndex => uint256)) public pairTradersId;

    // Current and max open interests for each pair
    mapping(uint16 pairIndex => uint256[3]) public openInterest; // [ notional long (18 dec), notional short (18 dec), $ max (6 dec)]

    constructor() {
        _disableInitializers();
    }

    function initialize(IOstiumRegistry _registry, address _usdc) external initializer {
        if (address(_registry) == address(0) || address(_usdc) == address(0)) revert NullAddr();

        usdc = _usdc;
        registry = _registry;
        _setMaxTradesPerPair(10);
        _setMaxPendingMarketOrders(50);
    }

    modifier onlyGov() {
        _onlyGov();
        _;
    }

    function _onlyGov() internal view {
        if (msg.sender != registry.gov()) revert NotGov(msg.sender);
    }

    modifier onlyTrading() {
        _onlyTrading();
        _;
    }

    function _onlyTrading() internal view {
        if (msg.sender != registry.getContractAddress('trading')) revert NotTrading(msg.sender);
    }

    modifier onlyCallbacks() {
        _onlyCallbacks();
        _;
    }

    function _onlyCallbacks() internal view {
        if (msg.sender != registry.getContractAddress('callbacks')) revert NotCallbacks(msg.sender);
    }

    modifier onlyTradingOrCallbacks() {
        _onlyTradingOrCallbacks();
        _;
    }

    modifier onlyManager() {
        _onlyManager();
        _;
    }

    function _onlyManager() internal view {
        if (msg.sender != registry.manager()) revert NotManager(msg.sender);
    }

    function _onlyTradingOrCallbacks() internal view {
        if (
            msg.sender != registry.getContractAddress('trading')
                && msg.sender != registry.getContractAddress('callbacks')
        ) revert NotTradingOrCallbacks(msg.sender);
    }

    function setMaxTradesPerPair(uint256 _maxTradesPerPair) external onlyGov {
        _setMaxTradesPerPair(_maxTradesPerPair);
    }

    function _setMaxTradesPerPair(uint256 _maxTradesPerPair) private {
        if (_maxTradesPerPair == 0 || _maxTradesPerPair > type(uint8).max) revert WrongParams();
        maxTradesPerPair = _maxTradesPerPair.toUint8();
        emit MaxTradesPerPairUpdated(_maxTradesPerPair);
    }

    function setMaxPendingMarketOrders(uint256 _maxPendingMarketOrders) external onlyGov {
        _setMaxPendingMarketOrders(_maxPendingMarketOrders);
    }

    function _setMaxPendingMarketOrders(uint256 _maxPendingMarketOrders) private {
        if (_maxPendingMarketOrders == 0 || _maxPendingMarketOrders > type(uint8).max) revert WrongParams();
        maxPendingMarketOrders = _maxPendingMarketOrders.toUint8();
        emit MaxPendingMarketOrdersUpdated(_maxPendingMarketOrders);
    }

    function setMaxOpenInterest(uint16 _pairIndex, uint256 _newMaxOpenInterest) public onlyManager {
        openInterest[_pairIndex][2] = _newMaxOpenInterest;
        emit MaxOpenInterestUpdated(_pairIndex, _newMaxOpenInterest);
    }

    function setMaxOpenInterestArray(uint16[] calldata _indices, uint256[] calldata _newMaxOpenInterests)
        external
        onlyManager
    {
        if (_indices.length != _newMaxOpenInterests.length) {
            revert WrongParams();
        }
        for (uint256 i = 0; i < _indices.length; i++) {
            setMaxOpenInterest(_indices[i], _newMaxOpenInterests[i]);
        }
    }

    function storeTrade(Trade memory _trade, TradeInfo memory _tradeInfo) external onlyCallbacks {
        _trade.index = firstEmptyTradeIndex(_trade.trader, _trade.pairIndex);
        openTrades[_trade.trader][_trade.pairIndex][_trade.index] = _trade;

        ++openTradesCount[_trade.trader][_trade.pairIndex];
        ++totalOpenTradesCount;

        if (openTradesCount[_trade.trader][_trade.pairIndex] == 1) {
            pairTradersId[_trade.trader][_trade.pairIndex] = pairTraders[_trade.pairIndex].length;
            pairTraders[_trade.pairIndex].push(_trade.trader);
        }

        _tradeInfo.beingMarketClosed = false;
        openTradesInfo[_trade.trader][_trade.pairIndex][_trade.index] = _tradeInfo;

        updateOpenInterest(_trade.pairIndex, _tradeInfo.oiNotional, true, _trade.buy);
    }

    function unregisterTrade(address _trader, uint16 _pairIndex, uint8 _index) external onlyCallbacks {
        Trade storage t = openTrades[_trader][_pairIndex][_index];
        TradeInfo storage i = openTradesInfo[_trader][_pairIndex][_index];
        if (t.leverage == 0) return;

        updateOpenInterest(_pairIndex, i.oiNotional, false, t.buy);

        if (openTradesCount[_trader][_pairIndex] == 1) {
            uint256 _pairTradersId = pairTradersId[_trader][_pairIndex];
            address[] storage p = pairTraders[_pairIndex];

            p[_pairTradersId] = p[p.length - 1];
            pairTradersId[p[_pairTradersId]][_pairIndex] = _pairTradersId;

            delete pairTradersId[_trader][_pairIndex];
            p.pop();
        }

        delete openTrades[_trader][_pairIndex][_index];
        delete openTradesInfo[_trader][_pairIndex][_index];

        --openTradesCount[_trader][_pairIndex];
        --totalOpenTradesCount;
    }

    function storePendingMarketOrder(PendingMarketOrder calldata _order, uint256 _id, bool _open)
        external
        onlyTrading
    {
        pendingOrderIds[_order.trade.trader].push(_id);

        reqID_pendingMarketOrder[_id] = _order;
        reqID_pendingMarketOrder[_id].block = ChainUtils.getBlockNumber();

        if (_open) {
            pendingMarketOpenCount[_order.trade.trader][_order.trade.pairIndex]++;
        } else {
            pendingMarketCloseCount[_order.trade.trader][_order.trade.pairIndex]++;
            openTradesInfo[_order.trade.trader][_order.trade.pairIndex][_order.trade.index].beingMarketClosed = true;
        }
    }

    function unregisterPendingMarketOrder(uint256 _id, bool _open) external onlyTradingOrCallbacks {
        PendingMarketOrder memory _order = reqID_pendingMarketOrder[_id];
        uint256[] storage orderIds = pendingOrderIds[_order.trade.trader];

        for (uint256 i = 0; i < orderIds.length; i++) {
            if (orderIds[i] == _id) {
                if (_open) {
                    pendingMarketOpenCount[_order.trade.trader][_order.trade.pairIndex]--;
                } else {
                    pendingMarketCloseCount[_order.trade.trader][_order.trade.pairIndex]--;
                    openTradesInfo[_order.trade.trader][_order.trade.pairIndex][_order.trade.index].beingMarketClosed =
                        false;
                }

                orderIds[i] = orderIds[orderIds.length - 1];
                orderIds.pop();

                delete reqID_pendingMarketOrder[_id];
                return;
            }
        }
    }

    function updateOpenInterest(uint16 _pairIndex, uint256 _oiNotional, bool _open, bool _long) private {
        uint256 index = _long ? 0 : 1;
        uint256[3] storage o = openInterest[_pairIndex];
        o[index] = _open ? o[index] + _oiNotional : o[index] - _oiNotional;
    }

    function storeOpenLimitOrder(OpenLimitOrder calldata o) external onlyTrading {
        pairLimitOrders[o.pairIndex].push(o);
        openLimitOrderIds[o.trader][o.pairIndex][o.index] = pairLimitOrders[o.pairIndex].length - 1;
        openLimitOrdersCount[o.trader][o.pairIndex]++;
    }

    function updateOpenLimitOrder(OpenLimitOrder calldata _o) external onlyTrading {
        if (!hasOpenLimitOrder(_o.trader, _o.pairIndex, _o.index)) return;
        OpenLimitOrder storage o = pairLimitOrders[_o.pairIndex][openLimitOrderIds[_o.trader][_o.pairIndex][_o.index]];
        o.collateral = _o.collateral;
        o.buy = _o.buy;
        o.leverage = _o.leverage;
        o.tp = _o.tp;
        o.sl = _o.sl;
        o.targetPrice = _o.targetPrice;
        o.orderType = _o.orderType;
        o.lastUpdated = ChainUtils.getBlockNumber().toUint32();
    }

    function unregisterOpenLimitOrder(address _trader, uint16 _pairIndex, uint8 _index)
        external
        onlyTradingOrCallbacks
    {
        if (!hasOpenLimitOrder(_trader, _pairIndex, _index)) return;

        uint256 id = openLimitOrderIds[_trader][_pairIndex][_index];
        pairLimitOrders[_pairIndex][id] = pairLimitOrders[_pairIndex][pairLimitOrders[_pairIndex].length - 1];
        openLimitOrderIds[pairLimitOrders[_pairIndex][id].trader][pairLimitOrders[_pairIndex][id].pairIndex][pairLimitOrders[_pairIndex][id]
            .index] = id;

        delete openLimitOrderIds[_trader][_pairIndex][_index];
        pairLimitOrders[_pairIndex].pop();

        openLimitOrdersCount[_trader][_pairIndex]--;
    }

    function setTrigger(address _trader, uint16 _pairIndex, uint8 _index, IOstiumTradingStorage.LimitOrder _orderType)
        external
        onlyTrading
    {
        orderTriggerBlock[_trader][_pairIndex][_index][_orderType] = ChainUtils.getBlockNumber();
    }

    function unregisterTrigger(
        address _trader,
        uint16 _pairIndex,
        uint8 _index,
        IOstiumTradingStorage.LimitOrder _orderType
    ) external onlyCallbacks {
        delete orderTriggerBlock[_trader][_pairIndex][_index][_orderType];
    }

    function storePendingAutomationOrder(PendingAutomationOrder calldata _automationOrder, uint256 _orderId)
        external
        onlyTrading
    {
        reqID_pendingAutomationOrder[_orderId] = _automationOrder;
    }

    function unregisterPendingAutomationOrder(uint256 _orderId) external onlyCallbacks {
        delete reqID_pendingAutomationOrder[_orderId];
    }

    function updateSl(address _trader, uint16 _pairIndex, uint8 _index, uint256 _newSl) external onlyTrading {
        if (_newSl > type(uint192).max) {
            revert WrongParams();
        }
        IOstiumTradingStorage.Trade storage t = openTrades[_trader][_pairIndex][_index];
        TradeInfo storage i = openTradesInfo[_trader][_pairIndex][_index];
        if (t.leverage == 0) {
            return;
        }
        t.sl = _newSl.toUint192();
        i.slLastUpdated = ChainUtils.getBlockNumber().toUint32();
    }

    function updateTp(address _trader, uint16 _pairIndex, uint8 _index, uint256 _newTp) external onlyTrading {
        if (_newTp > type(uint192).max) {
            revert WrongParams();
        }
        Trade storage t = openTrades[_trader][_pairIndex][_index];
        TradeInfo storage i = openTradesInfo[_trader][_pairIndex][_index];
        if (t.leverage == 0) return;
        t.tp = _newTp.toUint192();
        i.tpLastUpdated = ChainUtils.getBlockNumber().toUint32();
    }

    function updateTrade(Trade calldata _t) external onlyTradingOrCallbacks {
        IOstiumTradingStorage.Trade storage t = openTrades[_t.trader][_t.pairIndex][_t.index];
        if (t.leverage == 0) {
            return;
        }
        t.collateral = _t.collateral;
        t.openPrice = _t.openPrice;
        t.leverage = _t.leverage;
    }

    function handleOpeningFees(
        uint16 _pairIndex,
        uint256 latestPrice,
        uint256 _leveragedPositionSize,
        uint32 leverage,
        bool isBuy
    ) external onlyCallbacks returns (uint256 devFee, uint256 vaultFee) {
        uint256 oiCap = openInterest[_pairIndex][2];
        uint256 oiLong = openInterest[_pairIndex][0] * latestPrice / PRECISION_18 / 1e12;
        uint256 oiShort = openInterest[_pairIndex][1] * latestPrice / PRECISION_18 / 1e12;

        uint256 openInterestMax = oiLong > oiShort ? oiLong : oiShort;
        oiCap = openInterestMax > oiCap ? openInterestMax : oiCap;

        int256 oiDelta = oiLong.toInt256() - oiShort.toInt256();
        uint256 usageOi = isBuy ? oiLong : oiShort;

        (devFee, vaultFee) = IOstiumPairInfos(registry.getContractAddress('pairInfos')).getOpeningFee(
            _pairIndex,
            isBuy ? _leveragedPositionSize.toInt256() : -_leveragedPositionSize.toInt256(),
            leverage,
            oiDelta,
            oiCap,
            usageOi
        );

        devFees += devFee;
    }

    function handleOracleFees(uint16 _pairIndex, bool _fullFee) external onlyCallbacks returns (uint256 fee) {
        fee = IOstiumPairsStorage(registry.getContractAddress('pairsStorage')).pairOracleFee(_pairIndex);
        if (!_fullFee) fee /= 2;

        devFees += fee;
    }

    function claimFees() external onlyGov {
        uint256 _devFees = devFees;
        devFees = 0;

        SafeERC20.safeTransfer(IERC20(usdc), registry.dev(), _devFees);
    }

    function transferUsdc(address _from, address _to, uint256 _amount) external onlyTradingOrCallbacks {
        if (_from == address(this)) {
            SafeERC20.safeTransfer(IERC20(usdc), _to, _amount);
        } else {
            SafeERC20.safeTransferFrom(IERC20(usdc), _from, _to, _amount);
        }
    }

    function firstEmptyTradeIndex(address _trader, uint16 _pairIndex) public view returns (uint8) {
        for (uint8 i = 0; i < maxTradesPerPair; i++) {
            if (openTrades[_trader][_pairIndex][i].leverage == 0) {
                return i;
            }
        }
        revert NotEmptyIndex();
    }

    function firstEmptyOpenLimitIndex(address _trader, uint16 _pairIndex) external view returns (uint8) {
        for (uint8 i = 0; i < maxTradesPerPair; i++) {
            if (!hasOpenLimitOrder(_trader, _pairIndex, i)) {
                return i;
            }
        }
        revert NotEmptyIndex();
    }

    function hasOpenLimitOrder(address _trader, uint16 _pairIndex, uint8 _index) public view returns (bool) {
        if (pairLimitOrders[_pairIndex].length == 0) return false;
        OpenLimitOrder storage o = pairLimitOrders[_pairIndex][openLimitOrderIds[_trader][_pairIndex][_index]];
        return o.trader == _trader && o.pairIndex == _pairIndex && o.index == _index;
    }

    function pairTradersArray(uint16 _pairIndex) external view returns (address[] memory) {
        return pairTraders[_pairIndex];
    }

    function getPendingOrderIds(address _trader) external view returns (uint256[] memory) {
        return pendingOrderIds[_trader];
    }

    function pendingOrderIdsCount(address _trader) external view returns (uint256) {
        return pendingOrderIds[_trader].length;
    }

    function getOpenLimitOrder(address _trader, uint16 _pairIndex, uint8 _index)
        external
        view
        returns (OpenLimitOrder memory)
    {
        if (!hasOpenLimitOrder(_trader, _pairIndex, _index)) {
            revert NoOpenLimitOrder(_trader, _pairIndex, _index);
        }
        return pairLimitOrders[_pairIndex][openLimitOrderIds[_trader][_pairIndex][_index]];
    }

    function getOpenLimitOrderByIndex(uint16 _pairIndex, uint256 _index)
        external
        view
        returns (OpenLimitOrder memory)
    {
        if (_index >= pairLimitOrders[_pairIndex].length) {
            revert WrongParams();
        }
        return pairLimitOrders[_pairIndex][_index];
    }

    function getOpenLimitOrders(uint16 _pairIndex) external view returns (OpenLimitOrder[] memory) {
        return pairLimitOrders[_pairIndex];
    }

    function getOpenTrade(address _trader, uint16 _pairIndex, uint8 _index) external view returns (Trade memory) {
        return openTrades[_trader][_pairIndex][_index];
    }

    function getOpenTradeInfo(address _trader, uint16 _pairIndex, uint8 _index)
        external
        view
        returns (TradeInfo memory)
    {
        return openTradesInfo[_trader][_pairIndex][_index];
    }

    function getPairOpeningInterestInfo(uint16 _pairIndex) external view returns (uint256, uint256, uint256) {
        return (openInterest[_pairIndex][0], openInterest[_pairIndex][1], openInterest[_pairIndex][2]);
    }

    function totalOpenLimitOrders(uint16 pairIndex) external view returns (uint256) {
        return pairLimitOrders[pairIndex].length;
    }
}