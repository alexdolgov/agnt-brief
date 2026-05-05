// ============================================================
// FILE: @openzeppelin/contracts/interfaces/IERC3156FlashBorrower.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/IERC3156FlashBorrower.sol)

pragma solidity ^0.8.20;

/**
 * @dev Interface of the ERC-3156 FlashBorrower, as defined in
 * https://eips.ethereum.org/EIPS/eip-3156[ERC-3156].
 */
interface IERC3156FlashBorrower {
    /**
     * @dev Receive a flash loan.
     * @param initiator The initiator of the loan.
     * @param token The loan currency.
     * @param amount The amount of tokens lent.
     * @param fee The additional amount of tokens to repay.
     * @param data Arbitrary data structure, intended to contain user-defined parameters.
     * @return The keccak256 hash of "ERC3156FlashBorrower.onFlashLoan"
     */
    function onFlashLoan(
        address initiator,
        address token,
        uint256 amount,
        uint256 fee,
        bytes calldata data
    ) external returns (bytes32);
}

// ============================================================
// FILE: @openzeppelin/contracts/interfaces/IERC3156FlashLender.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/IERC3156FlashLender.sol)

pragma solidity ^0.8.20;

import {IERC3156FlashBorrower} from "./IERC3156FlashBorrower.sol";

/**
 * @dev Interface of the ERC-3156 FlashLender, as defined in
 * https://eips.ethereum.org/EIPS/eip-3156[ERC-3156].
 */
interface IERC3156FlashLender {
    /**
     * @dev The amount of currency available to be lended.
     * @param token The loan currency.
     * @return The amount of `token` that can be borrowed.
     */
    function maxFlashLoan(address token) external view returns (uint256);

    /**
     * @dev The fee to be charged for a given loan.
     * @param token The loan currency.
     * @param amount The amount of tokens lent.
     * @return The amount of `token` to be charged for the loan, on top of the returned principal.
     */
    function flashFee(address token, uint256 amount) external view returns (uint256);

    /**
     * @dev Initiate a flash loan.
     * @param receiver The receiver of the tokens in the loan, and the receiver of the callback.
     * @param token The loan currency.
     * @param amount The amount of tokens lent.
     * @param data Arbitrary data structure, intended to contain user-defined parameters.
     */
    function flashLoan(
        IERC3156FlashBorrower receiver,
        address token,
        uint256 amount,
        bytes calldata data
    ) external returns (bool);
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/extensions/IERC20Permit.sol)

pragma solidity ^0.8.20;

/**
 * @dev Interface of the ERC-20 Permit extension allowing approvals to be made via signatures, as defined in
 * https://eips.ethereum.org/EIPS/eip-2612[ERC-2612].
 *
 * Adds the {permit} method, which can be used to change an account's ERC-20 allowance (see {IERC20-allowance}) by
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

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.20;

/**
 * @dev Interface of the ERC-20 standard as defined in the ERC.
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

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/utils/SafeERC20.sol)

pragma solidity ^0.8.20;

import {IERC20} from "../IERC20.sol";
import {IERC20Permit} from "../extensions/IERC20Permit.sol";
import {Address} from "../../../utils/Address.sol";

/**
 * @title SafeERC20
 * @dev Wrappers around ERC-20 operations that throw on failure (when the token
 * contract returns false). Tokens that return no value (and instead revert or
 * throw on failure) are also supported, non-reverting calls are assumed to be
 * successful.
 * To use this library you can add a `using SafeERC20 for IERC20;` statement to your contract,
 * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
 */
library SafeERC20 {
    using Address for address;

    /**
     * @dev An operation with an ERC-20 token failed.
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

// ============================================================
// FILE: @openzeppelin/contracts/utils/Address.sol
// ============================================================

// SPDX-License-Identifier: MIT
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

// ============================================================
// FILE: kernel/interfaces/IERC7579Account.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import {CallType, ExecType, ExecMode} from "../utils/ExecLib.sol";
import {PackedUserOperation} from "./PackedUserOperation.sol";

struct Execution {
    address target;
    uint256 value;
    bytes callData;
}

interface IERC7579Account {
    event ModuleInstalled(uint256 moduleTypeId, address module);
    event ModuleUninstalled(uint256 moduleTypeId, address module);

    /**
     * @dev Executes a transaction on behalf of the account.
     *         This function is intended to be called by ERC-4337 EntryPoint.sol
     * @dev Ensure adequate authorization control: i.e. onlyEntryPointOrSelf
     *
     * @dev MSA MUST implement this function signature.
     * If a mode is requested that is not supported by the Account, it MUST revert
     * @param mode The encoded execution mode of the transaction. See ModeLib.sol for details
     * @param executionCalldata The encoded execution call data
     */
    function execute(ExecMode mode, bytes calldata executionCalldata) external payable;

    /**
     * @dev Executes a transaction on behalf of the account.
     *         This function is intended to be called by Executor Modules
     * @dev Ensure adequate authorization control: i.e. onlyExecutorModule
     *
     * @dev MSA MUST implement this function signature.
     * If a mode is requested that is not supported by the Account, it MUST revert
     * @param mode The encoded execution mode of the transaction. See ModeLib.sol for details
     * @param executionCalldata The encoded execution call data
     */
    function executeFromExecutor(ExecMode mode, bytes calldata executionCalldata)
        external
        payable
        returns (bytes[] memory returnData);

    /**
     * @dev ERC-1271 isValidSignature
     *         This function is intended to be used to validate a smart account signature
     * and may forward the call to a validator module
     *
     * @param hash The hash of the data that is signed
     * @param data The data that is signed
     */
    function isValidSignature(bytes32 hash, bytes calldata data) external view returns (bytes4);

    /**
     * @dev installs a Module of a certain type on the smart account
     * @dev Implement Authorization control of your chosing
     * @param moduleTypeId the module type ID according the ERC-7579 spec
     * @param module the module address
     * @param initData arbitrary data that may be required on the module during `onInstall`
     * initialization.
     */
    function installModule(uint256 moduleTypeId, address module, bytes calldata initData) external payable;

    /**
     * @dev uninstalls a Module of a certain type on the smart account
     * @dev Implement Authorization control of your chosing
     * @param moduleTypeId the module type ID according the ERC-7579 spec
     * @param module the module address
     * @param deInitData arbitrary data that may be required on the module during `onUninstall`
     * de-initialization.
     */
    function uninstallModule(uint256 moduleTypeId, address module, bytes calldata deInitData) external payable;

    /**
     * Function to check if the account supports a certain CallType or ExecType (see ModeLib.sol)
     * @param encodedMode the encoded mode
     */
    function supportsExecutionMode(ExecMode encodedMode) external view returns (bool);

    /**
     * Function to check if the account supports installation of a certain module type Id
     * @param moduleTypeId the module type ID according the ERC-7579 spec
     */
    function supportsModule(uint256 moduleTypeId) external view returns (bool);

    /**
     * Function to check if the account has a certain module installed
     * @param moduleTypeId the module type ID according the ERC-7579 spec
     *      Note: keep in mind that some contracts can be multiple module types at the same time. It
     *            thus may be necessary to query multiple module types
     * @param module the module address
     * @param additionalContext additional context data that the smart account may interpret to
     *                          identifiy conditions under which the module is installed.
     *                          usually this is not necessary, but for some special hooks that
     *                          are stored in mappings, this param might be needed
     */
    function isModuleInstalled(uint256 moduleTypeId, address module, bytes calldata additionalContext)
        external
        view
        returns (bool);

    /**
     * @dev Returns the account id of the smart account
     * @return accountImplementationId the account id of the smart account
     * the accountId should be structured like so:
     *        "vendorname.accountname.semver"
     */
    function accountId() external view returns (string memory accountImplementationId);
}

// ============================================================
// FILE: kernel/interfaces/IERC7579Modules.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import {PackedUserOperation} from "./PackedUserOperation.sol";

interface IModule {
    error AlreadyInitialized(address smartAccount);
    error NotInitialized(address smartAccount);

    /**
     * @dev This function is called by the smart account during installation of the module
     * @param data arbitrary data that may be required on the module during `onInstall`
     * initialization
     *
     * MUST revert on error (i.e. if module is already enabled)
     */
    function onInstall(bytes calldata data) external payable;

    /**
     * @dev This function is called by the smart account during uninstallation of the module
     * @param data arbitrary data that may be required on the module during `onUninstall`
     * de-initialization
     *
     * MUST revert on error
     */
    function onUninstall(bytes calldata data) external payable;

    /**
     * @dev Returns boolean value if module is a certain type
     * @param moduleTypeId the module type ID according the ERC-7579 spec
     *
     * MUST return true if the module is of the given type and false otherwise
     */
    function isModuleType(uint256 moduleTypeId) external view returns (bool);

    /**
     * @dev Returns if the module was already initialized for a provided smartaccount
     */
    function isInitialized(address smartAccount) external view returns (bool);
}

interface IValidator is IModule {
    error InvalidTargetAddress(address target);

    /**
     * @dev Validates a transaction on behalf of the account.
     *         This function is intended to be called by the MSA during the ERC-4337 validaton phase
     *         Note: solely relying on bytes32 hash and signature is not suffcient for some
     * validation implementations (i.e. SessionKeys often need access to userOp.calldata)
     * @param userOp The user operation to be validated. The userOp MUST NOT contain any metadata.
     * The MSA MUST clean up the userOp before sending it to the validator.
     * @param userOpHash The hash of the user operation to be validated
     * @return return value according to ERC-4337
     */
    function validateUserOp(PackedUserOperation calldata userOp, bytes32 userOpHash)
        external
        payable
        returns (uint256);

    /**
     * Validator can be used for ERC-1271 validation
     */
    function isValidSignatureWithSender(address sender, bytes32 hash, bytes calldata data)
        external
        view
        returns (bytes4);
}

interface IExecutor is IModule {}

interface IHook is IModule {
    /**
     * @dev Called by the smart account before execution
     * @param msgSender the address that called the smart account
     * @param value the value that was sent to the smart account
     * @param msgData the data that was sent to the smart account
     *
     * MAY return arbitrary data in the `hookData` return value
     */
    function preCheck(address msgSender, uint256 value, bytes calldata msgData)
        external
        payable
        returns (bytes memory hookData);

    /**
     * @dev Called by the smart account after execution
     * @param hookData the data that was returned by the `preCheck` function
     * @param executionSuccess whether the execution(s) was (were) successful
     * @param executionReturn the return/revert data of the execution(s)
     *
     * MAY validate the `hookData` to validate transaction context of the `preCheck` function
     */
    function postCheck(bytes calldata hookData, bool executionSuccess, bytes calldata executionReturn)
        external
        payable;
}

interface IFallback is IModule {}

interface IPolicy is IModule {
    function checkUserOpPolicy(bytes32 id, PackedUserOperation calldata userOp) external payable returns (uint256);
    function checkSignaturePolicy(bytes32 id, address sender, bytes32 hash, bytes calldata sig)
        external
        view
        returns (uint256);
}

interface ISigner is IModule {
    function checkUserOpSignature(bytes32 id, PackedUserOperation calldata userOp, bytes32 userOpHash)
        external
        payable
        returns (uint256);
    function checkSignature(bytes32 id, address sender, bytes32 hash, bytes calldata sig)
        external
        view
        returns (bytes4);
}

// ============================================================
// FILE: kernel/interfaces/PackedUserOperation.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.5;

/**
 * User Operation struct
 * @param sender                - The sender account of this request.
 * @param nonce                 - Unique value the sender uses to verify it is not a replay.
 * @param initCode              - If set, the account contract will be created by this constructor/
 * @param callData              - The method call to execute on this account.
 * @param accountGasLimits      - Packed gas limits for validateUserOp and gas limit passed to the callData method call.
 * @param preVerificationGas    - Gas not calculated by the handleOps method, but added to the gas paid.
 *                                Covers batch overhead.
 * @param gasFees                - packed gas fields maxFeePerGas and maxPriorityFeePerGas - Same as EIP-1559 gas parameter.
 * @param paymasterAndData      - If set, this field holds the paymaster address, verification gas limit, postOp gas limit and paymaster-specific extra data
 *                                The paymaster will pay for the transaction instead of the sender.
 * @param signature             - Sender-verified signature over the entire request, the EntryPoint address and the chain ID.
 */
struct PackedUserOperation {
    address sender;
    uint256 nonce;
    bytes initCode;
    bytes callData;
    bytes32 accountGasLimits;
    uint256 preVerificationGas;
    bytes32 gasFees; //maxPriorityFee and maxFeePerGas;
    bytes paymasterAndData;
    bytes signature;
}

// ============================================================
// FILE: kernel/types/Constants.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import {CallType, ExecType, ExecModeSelector} from "./Types.sol";
import {PassFlag, ValidationMode, ValidationType} from "./Types.sol";
import {ValidationData} from "./Types.sol";

// --- ERC7579 calltypes ---
// Default CallType
CallType constant CALLTYPE_SINGLE = CallType.wrap(0x00);
// Batched CallType
CallType constant CALLTYPE_BATCH = CallType.wrap(0x01);
CallType constant CALLTYPE_STATIC = CallType.wrap(0xFE);
// @dev Implementing delegatecall is OPTIONAL!
// implement delegatecall with extreme care.
CallType constant CALLTYPE_DELEGATECALL = CallType.wrap(0xFF);

// --- ERC7579 exectypes ---
// @dev default behavior is to revert on failure
// To allow very simple accounts to use mode encoding, the default behavior is to revert on failure
// Since this is value 0x00, no additional encoding is required for simple accounts
ExecType constant EXECTYPE_DEFAULT = ExecType.wrap(0x00);
// @dev account may elect to change execution behavior. For example "try exec" / "allow fail"
ExecType constant EXECTYPE_TRY = ExecType.wrap(0x01);

// --- ERC7579 mode selector ---
ExecModeSelector constant EXEC_MODE_DEFAULT = ExecModeSelector.wrap(bytes4(0x00000000));

// --- Kernel permission skip flags ---
PassFlag constant SKIP_USEROP = PassFlag.wrap(0x0001);
PassFlag constant SKIP_SIGNATURE = PassFlag.wrap(0x0002);

// --- Kernel validation modes ---
ValidationMode constant VALIDATION_MODE_DEFAULT = ValidationMode.wrap(0x00);
ValidationMode constant VALIDATION_MODE_ENABLE = ValidationMode.wrap(0x01);
ValidationMode constant VALIDATION_MODE_INSTALL = ValidationMode.wrap(0x02);

// --- Kernel validation types ---
ValidationType constant VALIDATION_TYPE_ROOT = ValidationType.wrap(0x00);
ValidationType constant VALIDATION_TYPE_VALIDATOR = ValidationType.wrap(0x01);
ValidationType constant VALIDATION_TYPE_PERMISSION = ValidationType.wrap(0x02);

// --- storage slots ---
// bytes32(uint256(keccak256('kernel.v3.selector')) - 1)
bytes32 constant SELECTOR_MANAGER_STORAGE_SLOT = 0x7c341349a4360fdd5d5bc07e69f325dc6aaea3eb018b3e0ea7e53cc0bb0d6f3b;
// bytes32(uint256(keccak256('kernel.v3.executor')) - 1)
bytes32 constant EXECUTOR_MANAGER_STORAGE_SLOT = 0x1bbee3173dbdc223633258c9f337a0fff8115f206d302bea0ed3eac003b68b86;
// bytes32(uint256(keccak256('kernel.v3.hook')) - 1)
bytes32 constant HOOK_MANAGER_STORAGE_SLOT = 0x4605d5f70bb605094b2e761eccdc27bed9a362d8612792676bf3fb9b12832ffc;
// bytes32(uint256(keccak256('kernel.v3.validation')) - 1)
bytes32 constant VALIDATION_MANAGER_STORAGE_SLOT = 0x7bcaa2ced2a71450ed5a9a1b4848e8e5206dbc3f06011e595f7f55428cc6f84f;
bytes32 constant ERC1967_IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;

// --- Kernel validation nonce incremental size limit ---
uint32 constant MAX_NONCE_INCREMENT_SIZE = 10;

// -- EIP712 type hash ---
bytes32 constant ENABLE_TYPE_HASH = 0xb17ab1224aca0d4255ef8161acaf2ac121b8faa32a4b2258c912cc5f8308c505;
bytes32 constant KERNEL_WRAPPER_TYPE_HASH = 0x1547321c374afde8a591d972a084b071c594c275e36724931ff96c25f2999c83;

// --- ERC constants ---
// ERC4337 constants
uint256 constant SIG_VALIDATION_FAILED_UINT = 1;
uint256 constant SIG_VALIDATION_SUCCESS_UINT = 0;
ValidationData constant SIG_VALIDATION_FAILED = ValidationData.wrap(SIG_VALIDATION_FAILED_UINT);

// ERC-1271 constants
bytes4 constant ERC1271_MAGICVALUE = 0x1626ba7e;
bytes4 constant ERC1271_INVALID = 0xffffffff;

uint256 constant MODULE_TYPE_VALIDATOR = 1;
uint256 constant MODULE_TYPE_EXECUTOR = 2;
uint256 constant MODULE_TYPE_FALLBACK = 3;
uint256 constant MODULE_TYPE_HOOK = 4;
uint256 constant MODULE_TYPE_POLICY = 5;
uint256 constant MODULE_TYPE_SIGNER = 6;

// ============================================================
// FILE: kernel/types/Structs.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

struct Execution {
    address target;
    uint256 value;
    bytes callData;
}

// ============================================================
// FILE: kernel/types/Types.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.23;

// Custom type for improved developer experience
type ExecMode is bytes32;

type CallType is bytes1;

type ExecType is bytes1;

type ExecModeSelector is bytes4;

type ExecModePayload is bytes22;

using {eqModeSelector as ==} for ExecModeSelector global;
using {eqCallType as ==} for CallType global;
using {notEqCallType as !=} for CallType global;
using {eqExecType as ==} for ExecType global;

function eqCallType(CallType a, CallType b) pure returns (bool) {
    return CallType.unwrap(a) == CallType.unwrap(b);
}

function notEqCallType(CallType a, CallType b) pure returns (bool) {
    return CallType.unwrap(a) != CallType.unwrap(b);
}

function eqExecType(ExecType a, ExecType b) pure returns (bool) {
    return ExecType.unwrap(a) == ExecType.unwrap(b);
}

function eqModeSelector(ExecModeSelector a, ExecModeSelector b) pure returns (bool) {
    return ExecModeSelector.unwrap(a) == ExecModeSelector.unwrap(b);
}

type ValidationMode is bytes1;

type ValidationId is bytes21;

type ValidationType is bytes1;

type PermissionId is bytes4;

type PolicyData is bytes22; // 2bytes for flag on skip, 20 bytes for validator address

type PassFlag is bytes2;

using {vModeEqual as ==} for ValidationMode global;
using {vTypeEqual as ==} for ValidationType global;
using {vIdentifierEqual as ==} for ValidationId global;
using {vModeNotEqual as !=} for ValidationMode global;
using {vTypeNotEqual as !=} for ValidationType global;
using {vIdentifierNotEqual as !=} for ValidationId global;

// nonce = uint192(key) + nonce
// key = mode + (vtype + validationDataWithoutType) + 2bytes parallelNonceKey
// key = 0x00 + 0x00 + 0x000 .. 00 + 0x0000
// key = 0x00 + 0x01 + 0x1234...ff + 0x0000
// key = 0x00 + 0x02 + ( ) + 0x000

function vModeEqual(ValidationMode a, ValidationMode b) pure returns (bool) {
    return ValidationMode.unwrap(a) == ValidationMode.unwrap(b);
}

function vModeNotEqual(ValidationMode a, ValidationMode b) pure returns (bool) {
    return ValidationMode.unwrap(a) != ValidationMode.unwrap(b);
}

function vTypeEqual(ValidationType a, ValidationType b) pure returns (bool) {
    return ValidationType.unwrap(a) == ValidationType.unwrap(b);
}

function vTypeNotEqual(ValidationType a, ValidationType b) pure returns (bool) {
    return ValidationType.unwrap(a) != ValidationType.unwrap(b);
}

function vIdentifierEqual(ValidationId a, ValidationId b) pure returns (bool) {
    return ValidationId.unwrap(a) == ValidationId.unwrap(b);
}

function vIdentifierNotEqual(ValidationId a, ValidationId b) pure returns (bool) {
    return ValidationId.unwrap(a) != ValidationId.unwrap(b);
}

type ValidationData is uint256;

type ValidAfter is uint48;

type ValidUntil is uint48;

function getValidationResult(ValidationData validationData) pure returns (address result) {
    assembly {
        result := validationData
    }
}

function packValidationData(ValidAfter validAfter, ValidUntil validUntil) pure returns (uint256) {
    return uint256(ValidAfter.unwrap(validAfter)) << 208 | uint256(ValidUntil.unwrap(validUntil)) << 160;
}

function parseValidationData(uint256 validationData)
    pure
    returns (ValidAfter validAfter, ValidUntil validUntil, address result)
{
    assembly {
        result := validationData
        validUntil := and(shr(160, validationData), 0xffffffffffff)
        switch iszero(validUntil)
        case 1 { validUntil := 0xffffffffffff }
        validAfter := shr(208, validationData)
    }
}

// ============================================================
// FILE: kernel/utils/ExecLib.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import {ExecMode, CallType, ExecType, ExecModeSelector, ExecModePayload} from "../types/Types.sol";
import {
    CALLTYPE_SINGLE,
    CALLTYPE_BATCH,
    EXECTYPE_DEFAULT,
    EXEC_MODE_DEFAULT,
    EXECTYPE_TRY,
    CALLTYPE_DELEGATECALL
} from "../types/Constants.sol";
import {Execution} from "../types/Structs.sol";

/**
 * @dev ExecLib is a helper library for execution
 */
library ExecLib {
    error ExecutionFailed();

    event TryExecuteUnsuccessful(uint256 batchExecutionindex, bytes result);

    function execute(ExecMode execMode, bytes calldata executionCalldata)
        internal
        returns (bytes[] memory returnData)
    {
        (CallType callType, ExecType execType,,) = decode(execMode);

        // check if calltype is batch or single
        if (callType == CALLTYPE_BATCH) {
            // destructure executionCallData according to batched exec
            Execution[] calldata executions = decodeBatch(executionCalldata);
            // check if execType is revert or try
            if (execType == EXECTYPE_DEFAULT) returnData = execute(executions);
            else if (execType == EXECTYPE_TRY) returnData = tryExecute(executions);
            else revert("Unsupported");
        } else if (callType == CALLTYPE_SINGLE) {
            // destructure executionCallData according to single exec
            (address target, uint256 value, bytes calldata callData) = decodeSingle(executionCalldata);
            returnData = new bytes[](1);
            bool success;
            // check if execType is revert or try
            if (execType == EXECTYPE_DEFAULT) {
                returnData[0] = execute(target, value, callData);
            } else if (execType == EXECTYPE_TRY) {
                (success, returnData[0]) = tryExecute(target, value, callData);
                if (!success) emit TryExecuteUnsuccessful(0, returnData[0]);
            } else {
                revert("Unsupported");
            }
        } else if (callType == CALLTYPE_DELEGATECALL) {
            address delegate = address(bytes20(executionCalldata[0:20]));
            bytes calldata callData = executionCalldata[20:];
            executeDelegatecall(delegate, callData);
        } else {
            revert("Unsupported");
        }
    }

    function execute(Execution[] calldata executions) internal returns (bytes[] memory result) {
        uint256 length = executions.length;
        result = new bytes[](length);

        for (uint256 i; i < length; i++) {
            Execution calldata _exec = executions[i];
            result[i] = execute(_exec.target, _exec.value, _exec.callData);
        }
    }

    function tryExecute(Execution[] calldata executions) internal returns (bytes[] memory result) {
        uint256 length = executions.length;
        result = new bytes[](length);

        for (uint256 i; i < length; i++) {
            Execution calldata _exec = executions[i];
            bool success;
            (success, result[i]) = tryExecute(_exec.target, _exec.value, _exec.callData);
            if (!success) emit TryExecuteUnsuccessful(i, result[i]);
        }
    }

    function execute(address target, uint256 value, bytes calldata callData) internal returns (bytes memory result) {
        /// @solidity memory-safe-assembly
        assembly {
            result := mload(0x40)
            calldatacopy(result, callData.offset, callData.length)
            if iszero(call(gas(), target, value, result, callData.length, codesize(), 0x00)) {
                // Bubble up the revert if the call reverts.
                returndatacopy(result, 0x00, returndatasize())
                revert(result, returndatasize())
            }
            mstore(result, returndatasize()) // Store the length.
            let o := add(result, 0x20)
            returndatacopy(o, 0x00, returndatasize()) // Copy the returndata.
            mstore(0x40, add(o, returndatasize())) // Allocate the memory.
        }
    }

    function tryExecute(address target, uint256 value, bytes calldata callData)
        internal
        returns (bool success, bytes memory result)
    {
        /// @solidity memory-safe-assembly
        assembly {
            result := mload(0x40)
            calldatacopy(result, callData.offset, callData.length)
            success := call(gas(), target, value, result, callData.length, codesize(), 0x00)
            mstore(result, returndatasize()) // Store the length.
            let o := add(result, 0x20)
            returndatacopy(o, 0x00, returndatasize()) // Copy the returndata.
            mstore(0x40, add(o, returndatasize())) // Allocate the memory.
        }
    }

    /// @dev Execute a delegatecall with `delegate` on this account.
    function executeDelegatecall(address delegate, bytes calldata callData)
        internal
        returns (bool success, bytes memory result)
    {
        /// @solidity memory-safe-assembly
        assembly {
            result := mload(0x40)
            calldatacopy(result, callData.offset, callData.length)
            // Forwards the `data` to `delegate` via delegatecall.
            success := delegatecall(gas(), delegate, result, callData.length, codesize(), 0x00)
            mstore(result, returndatasize()) // Store the length.
            let o := add(result, 0x20)
            returndatacopy(o, 0x00, returndatasize()) // Copy the returndata.
            mstore(0x40, add(o, returndatasize())) // Allocate the memory.
        }
    }

    function decode(ExecMode mode)
        internal
        pure
        returns (CallType _calltype, ExecType _execType, ExecModeSelector _modeSelector, ExecModePayload _modePayload)
    {
        assembly {
            _calltype := mode
            _execType := shl(8, mode)
            _modeSelector := shl(48, mode)
            _modePayload := shl(80, mode)
        }
    }

    function encode(CallType callType, ExecType execType, ExecModeSelector mode, ExecModePayload payload)
        internal
        pure
        returns (ExecMode)
    {
        return ExecMode.wrap(
            bytes32(abi.encodePacked(callType, execType, bytes4(0), ExecModeSelector.unwrap(mode), payload))
        );
    }

    function encodeSimpleBatch() internal pure returns (ExecMode mode) {
        mode = encode(CALLTYPE_BATCH, EXECTYPE_DEFAULT, EXEC_MODE_DEFAULT, ExecModePayload.wrap(0x00));
    }

    function encodeSimpleSingle() internal pure returns (ExecMode mode) {
        mode = encode(CALLTYPE_SINGLE, EXECTYPE_DEFAULT, EXEC_MODE_DEFAULT, ExecModePayload.wrap(0x00));
    }

    function getCallType(ExecMode mode) internal pure returns (CallType calltype) {
        assembly {
            calltype := mode
        }
    }

    function decodeBatch(bytes calldata callData) internal pure returns (Execution[] calldata executionBatch) {
        /*
         * Batch Call Calldata Layout
         * Offset (in bytes)    | Length (in bytes) | Contents
         * 0x0                  | 0x4               | bytes4 function selector
        *  0x4                  | -                 |
        abi.encode(IERC7579Execution.Execution[])
         */
        // solhint-disable-next-line no-inline-assembly
        assembly ("memory-safe") {
            let dataPointer := add(callData.offset, calldataload(callData.offset))

            // Extract the ERC7579 Executions
            executionBatch.offset := add(dataPointer, 32)
            executionBatch.length := calldataload(dataPointer)
        }
    }

    function encodeBatch(Execution[] memory executions) internal pure returns (bytes memory callData) {
        callData = abi.encode(executions);
    }

    function decodeSingle(bytes calldata executionCalldata)
        internal
        pure
        returns (address target, uint256 value, bytes calldata callData)
    {
        target = address(bytes20(executionCalldata[0:20]));
        value = uint256(bytes32(executionCalldata[20:52]));
        callData = executionCalldata[52:];
    }

    function encodeSingle(address target, uint256 value, bytes memory callData)
        internal
        pure
        returns (bytes memory userOpCalldata)
    {
        userOpCalldata = abi.encodePacked(target, value, callData);
    }

    function doFallback2771Static(address fallbackHandler) internal view returns (bool success, bytes memory result) {
        assembly {
            function allocate(length) -> pos {
                pos := mload(0x40)
                mstore(0x40, add(pos, length))
            }

            let calldataPtr := allocate(calldatasize())
            calldatacopy(calldataPtr, 0, calldatasize())

            // The msg.sender address is shifted to the left by 12 bytes to remove the padding
            // Then the address without padding is stored right after the calldata
            let senderPtr := allocate(20)
            mstore(senderPtr, shl(96, caller()))

            // Add 20 bytes for the address appended add the end
            success := staticcall(gas(), fallbackHandler, calldataPtr, add(calldatasize(), 20), 0, 0)

            result := mload(0x40)
            mstore(result, returndatasize()) // Store the length.
            let o := add(result, 0x20)
            returndatacopy(o, 0x00, returndatasize()) // Copy the returndata.
            mstore(0x40, add(o, returndatasize())) // Allocate the memory.
        }
    }

    function doFallback2771Call(address target) internal returns (bool success, bytes memory result) {
        assembly {
            function allocate(length) -> pos {
                pos := mload(0x40)
                mstore(0x40, add(pos, length))
            }

            let calldataPtr := allocate(calldatasize())
            calldatacopy(calldataPtr, 0, calldatasize())

            // The msg.sender address is shifted to the left by 12 bytes to remove the padding
            // Then the address without padding is stored right after the calldata
            let senderPtr := allocate(20)
            mstore(senderPtr, shl(96, caller()))

            // Add 20 bytes for the address appended add the end
            success := call(gas(), target, 0, calldataPtr, add(calldatasize(), 20), 0, 0)

            result := mload(0x40)
            mstore(result, returndatasize()) // Store the length.
            let o := add(result, 0x20)
            returndatacopy(o, 0x00, returndatasize()) // Copy the returndata.
            mstore(0x40, add(o, returndatasize())) // Allocate the memory.
        }
    }
}

// ============================================================
// FILE: src/components/SwapAggregator.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

struct SwapParams {
    // The executor contract to use
    uint8 executorIndex;
    // The token to sell
    IERC20 tokenIn;
    // The token to buy
    IERC20 tokenOut;
    // The amount to sell
    uint256 amountIn;
    // The beneficiary of the swap
    address receiver;
    // The aggregator's call that will perform the swap.
    // Check `SwapAggregator.EXECUTOR` to see which swapper/aggregator contract will be called.
    bytes callData;
}

/// @title Component delegate calls wrapper
library SwapAggregatorDelegateCalls {
    using Address for address;

    function delegateSwap(
        SwapAggregator aggregator_,
        SwapParams memory swapParams_
    ) internal returns (uint256 _amountIn, uint256 _amountOut) {
        bytes memory _ret = address(aggregator_).functionDelegateCall(
            abi.encodeWithSelector(SwapAggregator.swap.selector, swapParams_)
        );
        return abi.decode(_ret, (uint256, uint256));
    }
}

/// @title Swap aggregator component
contract SwapAggregator {
    using Address for address;
    using SafeERC20 for IERC20;

    /// @notice The swapper contract (e.g., aggregator for 1-inch, AllowanceHolder for Matcha/0x, etc).
    /// @dev To avoid misuse of the `callData`, the swap aggregator mustn't allow more than one swap in the same call.
    /// Otherwise the user could transfer funds out bypassing the strategies safe-guards.
    /// On top of the swap call itself, we perform validations using metadata to ensure the call is executing the intended swap.
    address public immutable EXECUTOR_0;
    address public immutable EXECUTOR_1;
    address public immutable EXECUTOR_2;

    error NoCallData();
    error SwapWasNotExecuted();
    error AddressIsNull();
    error InvalidExecutor();

    constructor(address executor0_, address executor1_, address executor2_) {
        if (executor0_ == address(0)) revert AddressIsNull();

        EXECUTOR_0 = executor0_;
        EXECUTOR_1 = executor1_;
        EXECUTOR_2 = executor2_;
    }

    /// @notice Execute a swap
    /// The actual swap must correspond the metadata set in parameters otherwise the call will revert.
    /// @param swapParams_ The swap params
    function swap(SwapParams calldata swapParams_) external returns (uint256 _amountIn, uint256 _amountOut) {
        if (swapParams_.callData.length == 0) revert NoCallData();
        if (swapParams_.receiver == address(0)) revert AddressIsNull();

        address _executor = _getExecutor(swapParams_.executorIndex);

        uint256 _inBefore = swapParams_.tokenIn.balanceOf(address(this));
        uint256 _outBefore = swapParams_.tokenOut.balanceOf(swapParams_.receiver);

        swapParams_.tokenIn.forceApprove(_executor, swapParams_.amountIn);
        _executor.functionCall(swapParams_.callData);

        uint256 _inAfter = swapParams_.tokenIn.balanceOf(address(this));
        uint256 _outAfter = swapParams_.tokenOut.balanceOf(swapParams_.receiver);

        if (_inAfter >= _inBefore || _inBefore - _inAfter != swapParams_.amountIn || _outAfter <= _outBefore)
            revert SwapWasNotExecuted();

        _amountIn = _inBefore - _inAfter;
        _amountOut = _outAfter - _outBefore;
    }

    function _getExecutor(uint256 index_) private view returns (address _executor) {
        if (index_ == 0) _executor = EXECUTOR_0;
        else if (index_ == 1) _executor = EXECUTOR_1;
        else if (index_ == 2) _executor = EXECUTOR_2;

        if (_executor == address(0)) revert InvalidExecutor();
    }
}

// ============================================================
// FILE: src/FlashLoanExecutor.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC3156FlashLender} from "@openzeppelin/contracts/interfaces/IERC3156FlashLender.sol";
import {IERC3156FlashBorrower} from "@openzeppelin/contracts/interfaces/IERC3156FlashBorrower.sol";
import {IExecutor, IModule} from "kernel/interfaces/IERC7579Modules.sol";
import {MODULE_TYPE_EXECUTOR} from "kernel/types/Constants.sol";
import {IERC7579Account} from "kernel/interfaces/IERC7579Account.sol";
import {ExecLib} from "kernel/utils/ExecLib.sol";
import {Execution} from "kernel/types/Structs.sol";
import {ERC3156Lib} from "src/libraries/ERC3156Lib.sol";
import {SwapParams, SwapAggregator, SwapAggregatorDelegateCalls} from "src/components/SwapAggregator.sol";

/**
 * @title Flash-loan executor
 * @notice A ERC7579 module implementation to perform flash loan on behalf of the smart account
 */
contract FlashLoanExecutor is IExecutor, IERC3156FlashBorrower {
    using Address for address;
    using SafeERC20 for IERC20;
    using SwapAggregatorDelegateCalls for SwapAggregator;

    /// @inheritdoc IModule
    mapping(address smartAccount => bool) public override isInitialized;

    SwapAggregator immutable swapAggregator;

    /// @notice The flash lenders components
    struct FlashLender {
        address callbackSender;
        address component;
    }

    FlashLender[] public lenders;
    mapping(address callbackSender => address component) public flashLoanComponentBySender;

    error AddressIsNull();
    error CouldNotFillFlashLoan();
    error CanNotRepayFlashLoan(uint256 expected, uint256 actual);
    error SenderIsNotTheOwner();
    error LendersListIsEmpty();
    error SenderIsNotValidComponent();
    error InvalidSender();
    error InvalidInitiator();
    error TokenNotSupported();
    error InvalidSwapParams();

    /*////////////////////////////////////////////////////////////////////////// 
                                     CONFIG
    //////////////////////////////////////////////////////////////////////////*/

    /// @inheritdoc IModule
    function onInstall(bytes calldata /*data_*/) external payable virtual override {
        if (isInitialized[msg.sender]) revert AlreadyInitialized(msg.sender);
        isInitialized[msg.sender] = true;
    }

    /// @inheritdoc IModule
    function onUninstall(bytes calldata /*data_*/) external payable virtual override {
        if (!isInitialized[msg.sender]) revert NotInitialized(msg.sender);
        delete isInitialized[msg.sender];
    }

    /*//////////////////////////////////////////////////////////////////////////
                                     MODULE LOGIC
    //////////////////////////////////////////////////////////////////////////*/

    constructor(SwapAggregator swapAggregator_, FlashLender[] memory lenders_) {
        if (address(swapAggregator_) == address(0)) revert AddressIsNull();

        swapAggregator = swapAggregator_;

        uint256 _len = lenders_.length;
        if (_len == 0) revert LendersListIsEmpty();

        for (uint256 i; i < _len; ++i) {
            FlashLender memory _lender = lenders_[i];

            if (address(_lender.component) == address(0) || address(_lender.callbackSender) == address(0))
                revert AddressIsNull();

            lenders.push(_lender);
            flashLoanComponentBySender[_lender.callbackSender] = _lender.component;
        }
    }

    /// @notice Get flash-loan repayment amount
    /// @param borrowToken_ The borrow token
    /// @param borrowAmount_ The amount to borrow
    /// @return The amount to repay
    function getRepayAmount(address borrowToken_, uint256 borrowAmount_) external view returns (uint256) {
        uint256 _len = lenders.length;
        for (uint256 i; i < _len; ++i) {
            try IERC3156FlashLender(lenders[i].component).flashFee(borrowToken_, borrowAmount_) returns (
                uint256 _flashFee
            ) {
                return borrowAmount_ + _flashFee;
            } catch {}
        }

        revert TokenNotSupported();
    }

    /// @notice Do a flash-loan
    /// @param borrowToken_ The token to flash borrow
    /// @param borrowAmount_ The amount to flash borrow
    /// @param beneficiary_ The `borrowAmount_` receiver (i.e., position address)
    /// @param zapInParams_ Swap parameters for the case `beneficiary_` needs to receive a token other than the `borrowToken_`
    /// @param executions_ The smart account executions with the flash loan logic (at some point the repay amount must be transferred back to this contract)
    function start(
        IERC20 borrowToken_,
        uint256 borrowAmount_,
        address beneficiary_,
        SwapParams memory zapInParams_,
        Execution[] memory executions_
    ) external {
        address _smartAccount = msg.sender;

        if (!isInitialized[_smartAccount]) revert NotInitialized(_smartAccount);

        bytes memory _data = abi.encode(_smartAccount, beneficiary_, zapInParams_, executions_);

        // 1. Initialize flash loan
        // Go over the protocols preference (usually ordered by fee asc)
        uint256 _len = lenders.length;
        for (uint256 i; i < _len; ++i) {
            bytes memory _filled = lenders[i].component.functionDelegateCall(
                abi.encodeWithSelector(
                    IERC3156FlashLender.flashLoan.selector,
                    address(this),
                    borrowToken_,
                    borrowAmount_,
                    _data
                )
            );

            if (abi.decode(_filled, (bool))) return;
        }

        revert CouldNotFillFlashLoan();
    }

    /// @inheritdoc IERC3156FlashBorrower
    /// @dev This function is called from a delegated call context, so the sender is `address(this)`
    function onFlashLoan(
        address /*initiator_*/,
        address token_,
        uint256 amount_,
        uint256 fee_,
        bytes calldata data_
    ) external override returns (bytes32) {
        if (msg.sender != address(this)) revert InvalidSender();

        (
            IERC7579Account _smartAccount,
            address _beneficiary,
            SwapParams memory _zapInParams,
            Execution[] memory _executions
        ) = abi.decode(data_, (IERC7579Account, address, SwapParams, Execution[]));

        // 1. Transfer flash borrowed amount
        if (_zapInParams.callData.length == 0) {
            IERC20(token_).safeTransfer(_beneficiary, amount_);
        } else {
            if (_zapInParams.receiver != _beneficiary) revert InvalidSwapParams();
            if (_zapInParams.amountIn != amount_) revert InvalidSwapParams();
            if (_zapInParams.tokenIn != IERC20(token_)) revert InvalidSwapParams();

            swapAggregator.delegateSwap(_zapInParams);
        }

        // 2. Execute logic
        _smartAccount.executeFromExecutor(ExecLib.encodeSimpleBatch(), ExecLib.encodeBatch(_executions));

        uint256 _repayAmount = amount_ + fee_;
        uint256 _balance = IERC20(token_).balanceOf(address(this));

        if (_balance < _repayAmount) revert CanNotRepayFlashLoan(_repayAmount, _balance);

        // 3. Transfer any excess to the smart account
        uint256 _excess = _balance - _repayAmount;
        if (_excess > 0) {
            IERC20(token_).safeTransfer(address(_smartAccount), _excess);
        }

        return ERC3156Lib.CALLBACK_SUCCESS;
    }

    /*//////////////////////////////////////////////////////////////////////////
                                     METADATA
    //////////////////////////////////////////////////////////////////////////*/

    /// @inheritdoc IModule
    function isModuleType(uint256 typeID) external pure override returns (bool) {
        return typeID == MODULE_TYPE_EXECUTOR;
    }

    /// @notice The name of the module
    function name() external pure returns (string memory) {
        return "FlashLoanExecutor";
    }

    /// @notice The version of the module
    function version() external pure returns (string memory) {
        return "0.0.1";
    }

    /*//////////////////////////////////////////////////////////////
                                FALLBACK
    //////////////////////////////////////////////////////////////*/

    /// @dev Redirects flash loan callback data to the initiator component
    fallback() external virtual {
        address _component = flashLoanComponentBySender[msg.sender];

        if (_component == address(0)) revert SenderIsNotValidComponent();

        _delegate(_component);
    }

    /// @dev Delegates the current call to `target_`.
    /// Note: Copied from `openzeppelin-contracts/contracts/proxy/Proxy.sol`
    function _delegate(address target_) internal virtual {
        assembly {
            // Copy msg.data. We take full control of memory in this inline assembly
            // block because it will not return to Solidity code. We overwrite the
            // Solidity scratch pad at memory position 0.
            calldatacopy(0, 0, calldatasize())

            // Call the target.
            // out and outsize are 0 because we don't know the size yet.
            let result := delegatecall(gas(), target_, 0, calldatasize(), 0, 0)

            // Copy the returned data.
            returndatacopy(0, 0, returndatasize())

            switch result
            // delegatecall returns 0 on error.
            case 0 {
                revert(0, returndatasize())
            }
            default {
                return(0, returndatasize())
            }
        }
    }
}

// ============================================================
// FILE: src/libraries/ERC3156Lib.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

library ERC3156Lib {
    bytes32 public constant CALLBACK_SUCCESS = keccak256("ERC3156FlashBorrower.onFlashLoan");
}
