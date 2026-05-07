// ============================================================
// FILE: @openzeppelin/contracts/access/IAccessControl.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (access/IAccessControl.sol)

pragma solidity ^0.8.0;

/**
 * @dev External interface of AccessControl declared to support ERC165 detection.
 */
interface IAccessControl {
    /**
     * @dev Emitted when `newAdminRole` is set as ``role``'s admin role, replacing `previousAdminRole`
     *
     * `DEFAULT_ADMIN_ROLE` is the starting admin for all roles, despite
     * {RoleAdminChanged} not being emitted signaling this.
     *
     * _Available since v3.1._
     */
    event RoleAdminChanged(bytes32 indexed role, bytes32 indexed previousAdminRole, bytes32 indexed newAdminRole);

    /**
     * @dev Emitted when `account` is granted `role`.
     *
     * `sender` is the account that originated the contract call, an admin role
     * bearer except when using {AccessControl-_setupRole}.
     */
    event RoleGranted(bytes32 indexed role, address indexed account, address indexed sender);

    /**
     * @dev Emitted when `account` is revoked `role`.
     *
     * `sender` is the account that originated the contract call:
     *   - if using `revokeRole`, it is the admin role bearer
     *   - if using `renounceRole`, it is the role bearer (i.e. `account`)
     */
    event RoleRevoked(bytes32 indexed role, address indexed account, address indexed sender);

    /**
     * @dev Returns `true` if `account` has been granted `role`.
     */
    function hasRole(bytes32 role, address account) external view returns (bool);

    /**
     * @dev Returns the admin role that controls `role`. See {grantRole} and
     * {revokeRole}.
     *
     * To change a role's admin, use {AccessControl-_setRoleAdmin}.
     */
    function getRoleAdmin(bytes32 role) external view returns (bytes32);

    /**
     * @dev Grants `role` to `account`.
     *
     * If `account` had not been already granted `role`, emits a {RoleGranted}
     * event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     */
    function grantRole(bytes32 role, address account) external;

    /**
     * @dev Revokes `role` from `account`.
     *
     * If `account` had been granted `role`, emits a {RoleRevoked} event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     */
    function revokeRole(bytes32 role, address account) external;

    /**
     * @dev Revokes `role` from the calling account.
     *
     * Roles are often managed via {grantRole} and {revokeRole}: this function's
     * purpose is to provide a mechanism for accounts to lose their privileges
     * if they are compromised (such as when a trusted device is misplaced).
     *
     * If the calling account had been granted `role`, emits a {RoleRevoked}
     * event.
     *
     * Requirements:
     *
     * - the caller must be `account`.
     */
    function renounceRole(bytes32 role, address account) external;
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol
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
// FILE: @openzeppelin/contracts/token/ERC20/IERC20.sol
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
// FILE: @openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol
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
// FILE: @openzeppelin/contracts/utils/Address.sol
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
// FILE: @venusprotocol/governance-contracts/contracts/Governance/IAccessControlManagerV8.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity ^0.8.25;

import "@openzeppelin/contracts/access/IAccessControl.sol";

/**
 * @title IAccessControlManagerV8
 * @author Venus
 * @notice Interface implemented by the `AccessControlManagerV8` contract.
 */
interface IAccessControlManagerV8 is IAccessControl {
    function giveCallPermission(address contractAddress, string calldata functionSig, address accountToPermit) external;

    function revokeCallPermission(
        address contractAddress,
        string calldata functionSig,
        address accountToRevoke
    ) external;

    function isAllowedToCall(address account, string calldata functionSig) external view returns (bool);

    function hasPermission(
        address account,
        address contractAddress,
        string calldata functionSig
    ) external view returns (bool);
}

// ============================================================
// FILE: @venusprotocol/oracle/contracts/interfaces/OracleInterface.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity ^0.8.25;

interface OracleInterface {
    function getPrice(address asset) external view returns (uint256);
}

interface ResilientOracleInterface is OracleInterface {
    function updatePrice(address vToken) external;

    function updateAssetPrice(address asset) external;

    function getUnderlyingPrice(address vToken) external view returns (uint256);
}

interface TwapInterface is OracleInterface {
    function updateTwap(address asset) external returns (uint256);
}

interface BoundValidatorInterface {
    function validatePriceWithAnchorPrice(
        address asset,
        uint256 reporterPrice,
        uint256 anchorPrice
    ) external view returns (bool);
}

// ============================================================
// FILE: @venusprotocol/solidity-utilities/contracts/constants.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity ^0.8.25;

/// @dev Base unit for computations, usually used in scaling (multiplications, divisions)
uint256 constant EXP_SCALE = 1e18;

/// @dev A unit (literal one) in EXP_SCALE, usually used in additions/subtractions
uint256 constant MANTISSA_ONE = EXP_SCALE;

/// @dev The approximate number of seconds per year
uint256 constant SECONDS_PER_YEAR = 31_536_000;

// ============================================================
// FILE: contracts/Comptroller/ComptrollerInterface.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause

pragma solidity 0.8.25;

import { ResilientOracleInterface } from "@venusprotocol/oracle/contracts/interfaces/OracleInterface.sol";

import { VToken } from "../Tokens/VTokens/VToken.sol";
import { VAIControllerInterface } from "../Tokens/VAI/VAIControllerInterface.sol";
import { WeightFunction } from "./Diamond/interfaces/IFacetBase.sol";

enum Action {
    MINT,
    REDEEM,
    BORROW,
    REPAY,
    SEIZE,
    LIQUIDATE,
    TRANSFER,
    ENTER_MARKET,
    EXIT_MARKET
}

interface ComptrollerInterface {
    /// @notice Indicator that this is a Comptroller contract (for inspection)
    function isComptroller() external pure returns (bool);

    /*** Assets You Are In ***/

    function enterMarkets(address[] calldata vTokens) external returns (uint[] memory);

    function exitMarket(address vToken) external returns (uint);

    /*** Policy Hooks ***/

    function mintAllowed(address vToken, address minter, uint mintAmount) external returns (uint);

    function mintVerify(address vToken, address minter, uint mintAmount, uint mintTokens) external;

    function redeemAllowed(address vToken, address redeemer, uint redeemTokens) external returns (uint);

    function redeemVerify(address vToken, address redeemer, uint redeemAmount, uint redeemTokens) external;

    function borrowAllowed(address vToken, address borrower, uint borrowAmount) external returns (uint);

    function borrowVerify(address vToken, address borrower, uint borrowAmount) external;

    function executeFlashLoan(
        address payable onBehalf,
        address payable receiver,
        VToken[] calldata vTokens,
        uint256[] calldata underlyingAmounts,
        bytes calldata param
    ) external;

    function repayBorrowAllowed(
        address vToken,
        address payer,
        address borrower,
        uint repayAmount
    ) external returns (uint);

    function repayBorrowVerify(
        address vToken,
        address payer,
        address borrower,
        uint repayAmount,
        uint borrowerIndex
    ) external;

    function liquidateBorrowAllowed(
        address vTokenBorrowed,
        address vTokenCollateral,
        address liquidator,
        address borrower,
        uint repayAmount
    ) external returns (uint);

    function liquidateBorrowVerify(
        address vTokenBorrowed,
        address vTokenCollateral,
        address liquidator,
        address borrower,
        uint repayAmount,
        uint seizeTokens
    ) external;

    function seizeAllowed(
        address vTokenCollateral,
        address vTokenBorrowed,
        address liquidator,
        address borrower,
        uint seizeTokens
    ) external returns (uint);

    function seizeVerify(
        address vTokenCollateral,
        address vTokenBorrowed,
        address liquidator,
        address borrower,
        uint seizeTokens
    ) external;

    function transferAllowed(address vToken, address src, address dst, uint transferTokens) external returns (uint);

    function transferVerify(address vToken, address src, address dst, uint transferTokens) external;

    /*** Liquidity/Liquidation Calculations ***/

    function liquidateCalculateSeizeTokens(
        address vTokenBorrowed,
        address vTokenCollateral,
        uint repayAmount
    ) external view returns (uint, uint);

    function liquidateCalculateSeizeTokens(
        address borrower,
        address vTokenBorrowed,
        address vTokenCollateral,
        uint repayAmount
    ) external view returns (uint, uint);

    function setMintedVAIOf(address owner, uint amount) external returns (uint);

    function liquidateVAICalculateSeizeTokens(
        address vTokenCollateral,
        uint repayAmount
    ) external view returns (uint, uint);

    function getXVSAddress() external view returns (address);

    function markets(address) external view returns (bool, uint, bool, uint, uint, uint96, bool);

    function oracle() external view returns (ResilientOracleInterface);

    function getAccountLiquidity(address) external view returns (uint, uint, uint);

    function getAssetsIn(address) external view returns (VToken[] memory);

    function claimVenus(address) external;

    function venusAccrued(address) external view returns (uint);

    function venusSupplySpeeds(address) external view returns (uint);

    function venusBorrowSpeeds(address) external view returns (uint);

    function getAllMarkets() external view returns (VToken[] memory);

    function venusSupplierIndex(address, address) external view returns (uint);

    function venusInitialIndex() external view returns (uint224);

    function venusBorrowerIndex(address, address) external view returns (uint);

    function venusBorrowState(address) external view returns (uint224, uint32);

    function venusSupplyState(address) external view returns (uint224, uint32);

    function approvedDelegates(address borrower, address delegate) external view returns (bool);

    function vaiController() external view returns (VAIControllerInterface);

    function protocolPaused() external view returns (bool);

    function actionPaused(address market, Action action) external view returns (bool);

    function mintedVAIs(address user) external view returns (uint);

    function vaiMintRate() external view returns (uint);

    function authorizedFlashLoan(address account) external view returns (bool);

    function userPoolId(address account) external view returns (uint96);

    function getLiquidationIncentive(address vToken) external view returns (uint256);

    function getEffectiveLiquidationIncentive(address account, address vToken) external view returns (uint256);

    function getEffectiveLtvFactor(
        address account,
        address vToken,
        WeightFunction weightingStrategy
    ) external view returns (uint256);

    function lastPoolId() external view returns (uint96);

    function corePoolId() external pure returns (uint96);

    function pools(
        uint96 poolId
    ) external view returns (string memory label, bool isActive, bool allowCorePoolFallback);

    function getPoolVTokens(uint96 poolId) external view returns (address[] memory);

    function poolMarkets(
        uint96 poolId,
        address vToken
    )
        external
        view
        returns (
            bool isListed,
            uint256 collateralFactorMantissa,
            bool isVenus,
            uint256 liquidationThresholdMantissa,
            uint256 liquidationIncentiveMantissa,
            uint96 marketPoolId,
            bool isBorrowAllowed
        );

    function isFlashLoanPaused() external view returns (bool);
}

interface IVAIVault {
    function updatePendingRewards() external;
}

interface IComptroller {
    /*** Treasury Data ***/
    function treasuryAddress() external view returns (address);

    function treasuryPercent() external view returns (uint);
}

// ============================================================
// FILE: contracts/Comptroller/Diamond/interfaces/IFacetBase.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause

pragma solidity 0.8.25;

import { Action } from "../../../Comptroller/ComptrollerInterface.sol";
import { PoolMarketId } from "../../../Comptroller/Types/PoolMarketId.sol";

enum WeightFunction {
    /// @notice Use the collateral factor of the asset for weighting
    USE_COLLATERAL_FACTOR,
    /// @notice Use the liquidation threshold of the asset for weighting
    USE_LIQUIDATION_THRESHOLD
}

interface IFacetBase {
    /**
     * @notice The initial XVS rewards index for a market
     */
    function venusInitialIndex() external pure returns (uint224);

    /**
     * @notice Checks if a certain action is paused on a market
     * @param action Action id
     * @param market vToken address
     */
    function actionPaused(address market, Action action) external view returns (bool);

    /**
     * @notice Returns the XVS address
     * @return The address of XVS token
     */
    function getXVSAddress() external view returns (address);

    function getPoolMarketIndex(uint96 poolId, address vToken) external pure returns (PoolMarketId);

    function corePoolId() external pure returns (uint96);
}

// ============================================================
// FILE: contracts/Comptroller/Types/PoolMarketId.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause

pragma solidity 0.8.25;

/// @notice Strongly-typed identifier for pool markets mapping keys
/// @dev Underlying storage is bytes32: first 12 bytes (96 bits) = poolId, last 20 bytes = vToken address
type PoolMarketId is bytes32;

// ============================================================
// FILE: contracts/external/IProtocolShareReserve.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause

pragma solidity 0.8.25;

interface IProtocolShareReserve {
    enum IncomeType {
        SPREAD,
        LIQUIDATION,
        ERC4626_WRAPPER_REWARDS,
        FLASHLOAN
    }

    function updateAssetsState(address comptroller, address asset, IncomeType incomeType) external;
}

// ============================================================
// FILE: contracts/InterestRateModels/InterestRateModelV8.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

/**
 * @title Venus's InterestRateModelV8 Interface
 * @author Venus
 */
abstract contract InterestRateModelV8 {
    /// @notice Indicator that this is an InterestRateModel contract (for inspection)
    bool public constant isInterestRateModel = true;

    /**
     * @notice Calculates the current borrow interest rate per block
     * @param cash The total amount of cash the market has
     * @param borrows The total amount of borrows the market has outstanding
     * @param reserves The total amnount of reserves the market has
     * @return The borrow rate per block (as a percentage, and scaled by 1e18)
     */
    function getBorrowRate(uint256 cash, uint256 borrows, uint256 reserves) external view virtual returns (uint256);

    /**
     * @notice Calculates the current supply interest rate per block
     * @param cash The total amount of cash the market has
     * @param borrows The total amount of borrows the market has outstanding
     * @param reserves The total amnount of reserves the market has
     * @param reserveFactorMantissa The current reserve factor the market has
     * @return The supply rate per block (as a percentage, and scaled by 1e18)
     */
    function getSupplyRate(
        uint256 cash,
        uint256 borrows,
        uint256 reserves,
        uint256 reserveFactorMantissa
    ) external view virtual returns (uint256);
}

// ============================================================
// FILE: contracts/Tokens/VAI/VAIControllerInterface.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause

pragma solidity 0.8.25;

import { VTokenInterface } from "../VTokens/VTokenInterfaces.sol";

interface VAIControllerInterface {
    function mintVAI(uint256 mintVAIAmount) external returns (uint256);

    function repayVAI(uint256 amount) external returns (uint256, uint256);

    function repayVAIBehalf(address borrower, uint256 amount) external returns (uint256, uint256);

    function liquidateVAI(
        address borrower,
        uint256 repayAmount,
        VTokenInterface vTokenCollateral
    ) external returns (uint256, uint256);

    function getMintableVAI(address minter) external view returns (uint256, uint256);

    function getVAIAddress() external view returns (address);

    function getVAIRepayAmount(address account) external view returns (uint256);
}

// ============================================================
// FILE: contracts/Tokens/VTokens/VBep20.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause

pragma solidity 0.8.25;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { ComptrollerInterface } from "../../Comptroller/ComptrollerInterface.sol";
import { InterestRateModelV8 } from "../../InterestRateModels/InterestRateModelV8.sol";
import { VBep20Interface, VTokenInterface } from "./VTokenInterfaces.sol";
import { VToken } from "./VToken.sol";

/**
 * @title Venus's VBep20 Contract
 * @notice vTokens which wrap an ERC-20 underlying
 * @author Venus
 */
contract VBep20 is VToken, VBep20Interface {
    using SafeERC20 for IERC20;

    /*** User Interface ***/

    /**
     * @notice Sender supplies assets into the market and receives vTokens in exchange
     * @dev Accrues interest whether or not the operation succeeds, unless reverted
     * @param mintAmount The amount of the underlying asset to supply
     * @return uint Returns 0 on success, otherwise returns a failure code (see ErrorReporter.sol for details).
     */
    // @custom:event Emits Transfer event
    // @custom:event Emits Mint event
    function mint(uint mintAmount) external returns (uint) {
        (uint err, ) = mintInternal(mintAmount);
        return err;
    }

    /**
     * @notice Sender supplies assets into the market and receiver receives vTokens in exchange
     * @dev Accrues interest whether or not the operation succeeds, unless reverted
     * @param receiver The account which is receiving the vTokens
     * @param mintAmount The amount of the underlying asset to supply
     * @return uint Returns 0 on success, otherwise returns a failure code (see ErrorReporter.sol for details).
     */
    // @custom:event Emits Transfer event
    // @custom:event Emits MintBehalf event
    function mintBehalf(address receiver, uint mintAmount) external returns (uint) {
        (uint err, ) = mintBehalfInternal(receiver, mintAmount);
        return err;
    }

    /**
     * @notice Sender redeems vTokens in exchange for the underlying asset
     * @dev Accrues interest whether or not the operation succeeds, unless reverted
     * @param redeemTokens The number of vTokens to redeem into underlying
     * @return uint Returns 0 on success, otherwise returns a failure code (see ErrorReporter.sol for details).
     */
    // @custom:event Emits Redeem event on success
    // @custom:event Emits Transfer event on success
    // @custom:event Emits RedeemFee when fee is charged by the treasury
    function redeem(uint redeemTokens) external returns (uint) {
        return redeemInternal(msg.sender, payable(msg.sender), redeemTokens);
    }

    /**
     * @notice Sender redeems assets on behalf of some other address. This function is only available
     *   for senders, explicitly marked as delegates of the supplier using `comptroller.updateDelegate`
     * @dev Accrues interest whether or not the operation succeeds, unless reverted
     * @param redeemer The user on behalf of whom to redeem
     * @param redeemTokens The number of vTokens to redeem into underlying
     * @return uint Returns 0 on success, otherwise returns a failure code (see ErrorReporter.sol for details).
     */
    // @custom:event Emits Redeem event on success
    // @custom:event Emits Transfer event on success
    // @custom:event Emits RedeemFee when fee is charged by the treasury
    function redeemBehalf(address redeemer, uint redeemTokens) external returns (uint) {
        require(comptroller.approvedDelegates(redeemer, msg.sender), "not an approved delegate");

        return redeemInternal(redeemer, payable(msg.sender), redeemTokens);
    }

    /**
     * @notice Sender redeems vTokens in exchange for a specified amount of underlying asset
     * @dev Accrues interest whether or not the operation succeeds, unless reverted
     * @param redeemAmount The amount of underlying to redeem
     * @return uint Returns 0 on success, otherwise returns a failure code (see ErrorReporter.sol for details).
     */
    // @custom:event Emits Redeem event on success
    // @custom:event Emits Transfer event on success
    // @custom:event Emits RedeemFee when fee is charged by the treasury
    function redeemUnderlying(uint redeemAmount) external returns (uint) {
        return redeemUnderlyingInternal(msg.sender, payable(msg.sender), redeemAmount);
    }

    /**
     * @notice Sender redeems underlying assets on behalf of some other address. This function is only available
     *   for senders, explicitly marked as delegates of the supplier using `comptroller.updateDelegate`
     * @dev Accrues interest whether or not the operation succeeds, unless reverted
     * @param redeemer, on behalf of whom to redeem
     * @param redeemAmount The amount of underlying to receive from redeeming vTokens
     * @return uint Returns 0 on success, otherwise returns a failure code (see ErrorReporter.sol for details).
     */
    // @custom:event Emits Redeem event on success
    // @custom:event Emits Transfer event on success
    // @custom:event Emits RedeemFee when fee is charged by the treasury
    function redeemUnderlyingBehalf(address redeemer, uint redeemAmount) external returns (uint) {
        require(comptroller.approvedDelegates(redeemer, msg.sender), "not an approved delegate");

        return redeemUnderlyingInternal(redeemer, payable(msg.sender), redeemAmount);
    }

    /**
     * @notice Sender borrows assets from the protocol to their own address
     * @param borrowAmount The amount of the underlying asset to borrow
     * @return uint Returns 0 on success, otherwise returns a failure code (see ErrorReporter.sol for details).
     */
    // @custom:event Emits Borrow event on success
    function borrow(uint borrowAmount) external returns (uint) {
        return borrowInternal(msg.sender, payable(msg.sender), borrowAmount);
    }

    /**
     * @notice Sender borrows assets on behalf of some other address. This function is only available
     *   for senders, explicitly marked as delegates of the borrower using `comptroller.updateDelegate`
     * @param borrower The borrower, on behalf of whom to borrow.
     * @param borrowAmount The amount of the underlying asset to borrow
     * @return uint Returns 0 on success, otherwise returns a failure code (see ErrorReporter.sol for details).
     */
    // @custom:event Emits Borrow event on success
    function borrowBehalf(address borrower, uint borrowAmount) external returns (uint) {
        require(comptroller.approvedDelegates(borrower, msg.sender), "not an approved delegate");
        return borrowInternal(borrower, payable(msg.sender), borrowAmount);
    }

    /**
     * @notice Sender repays their own borrow
     * @param repayAmount The amount to repay
     * @return uint Returns 0 on success, otherwise returns a failure code (see ErrorReporter.sol for details).
     */
    // @custom:event Emits RepayBorrow event on success
    function repayBorrow(uint repayAmount) external returns (uint) {
        (uint err, ) = repayBorrowInternal(repayAmount);
        return err;
    }

    /**
     * @notice Sender repays a borrow belonging to another borrowing account
     * @param borrower The account with the debt being payed off
     * @param repayAmount The amount to repay
     * @return uint Returns 0 on success, otherwise returns a failure code (see ErrorReporter.sol for details).
     */
    // @custom:event Emits RepayBorrow event on success
    function repayBorrowBehalf(address borrower, uint repayAmount) external returns (uint) {
        (uint err, ) = repayBorrowBehalfInternal(borrower, repayAmount);
        return err;
    }

    /**
     * @notice The sender liquidates the borrowers collateral.
     *  The collateral seized is transferred to the liquidator.
     * @param borrower The borrower of this vToken to be liquidated
     * @param repayAmount The amount of the underlying borrowed asset to repay
     * @param vTokenCollateral The market in which to seize collateral from the borrower
     * @return uint Returns 0 on success, otherwise returns a failure code (see ErrorReporter.sol for details).
     */
    // @custom:event Emit LiquidateBorrow event on success
    function liquidateBorrow(
        address borrower,
        uint repayAmount,
        VTokenInterface vTokenCollateral
    ) external returns (uint) {
        (uint err, ) = liquidateBorrowInternal(borrower, repayAmount, vTokenCollateral);
        return err;
    }

    /**
     * @notice The sender adds to reserves.
     * @param addAmount The amount of underlying tokens to add as reserves
     * @return uint Returns 0 on success, otherwise returns a failure code (see ErrorReporter.sol for details).
     */
    // @custom:event Emits ReservesAdded event
    function _addReserves(uint addAmount) external returns (uint) {
        return _addReservesInternal(addAmount);
    }

    /**
     * @notice Initialize the new money market
     * @param underlying_ The address of the underlying asset
     * @param comptroller_ The address of the Comptroller
     * @param interestRateModel_ The address of the interest rate model
     * @param initialExchangeRateMantissa_ The initial exchange rate, scaled by 1e18
     * @param name_ BEP-20 name of this token
     * @param symbol_ BEP-20 symbol of this token
     * @param decimals_ BEP-20 decimal precision of this token
     */
    function initialize(
        address underlying_,
        ComptrollerInterface comptroller_,
        InterestRateModelV8 interestRateModel_,
        uint initialExchangeRateMantissa_,
        string memory name_,
        string memory symbol_,
        uint8 decimals_
    ) public {
        // VToken initialize does the bulk of the work
        super.initialize(comptroller_, interestRateModel_, initialExchangeRateMantissa_, name_, symbol_, decimals_);

        // Set underlying and sanity check it
        underlying = underlying_;
        IERC20(underlying).totalSupply();
    }

    /*** Safe Token ***/

    /**
     * @dev Similar to ERC-20 transfer, but handles tokens that have transfer fees.
     *      This function returns the actual amount received,
     *      which may be less than `amount` if there is a fee attached to the transfer.
     *      Increments `internalCash` by the actual amount received.
     * @param from Sender of the underlying tokens
     * @param amount Amount of underlying to transfer
     * @return Actual amount received
     */
    function doTransferIn(address from, uint256 amount) internal virtual override returns (uint256) {
        IERC20 token = IERC20(underlying);
        uint256 balanceBefore = token.balanceOf(address(this));
        token.safeTransferFrom(from, address(this), amount);
        uint256 balanceAfter = token.balanceOf(address(this));
        uint256 actualAmount = balanceAfter - balanceBefore;
        internalCash += actualAmount;
        // Return the amount that was *actually* transferred
        return actualAmount;
    }

    /**
     * @dev Just a regular ERC-20 transfer, reverts on failure.
     *      Decrements `internalCash` by `amount` before transferring.
     * @param to Receiver of the underlying tokens
     * @param amount Amount of underlying to transfer
     */
    function doTransferOut(address payable to, uint256 amount) internal virtual override {
        internalCash -= amount;
        IERC20 token = IERC20(underlying);
        token.safeTransfer(to, amount);
    }

    /**
     * @notice Gets the tracked internal cash balance of this contract
     * @dev Returns `internalCash` rather than the actual token balance, making it immune to donation attacks.
     * @return The internally tracked cash balance of underlying tokens
     */
    function getCashPrior() internal view override returns (uint) {
        return internalCash;
    }

    /**
     * @notice Transfer excess tokens to caller and sync internalCash with actual balance
     * @dev Admin-only. For migration: pass 0 (just syncs). For sweep: pass the excess amount.
     *      Transfers `transferAmount` of underlying to msg.sender, then sets internalCash = balanceOf(address(this)).
     * @param transferAmount Amount of underlying to transfer to msg.sender before syncing
     */
    function sweepTokenAndSync(uint256 transferAmount) external {
        require(msg.sender == admin);

        if (transferAmount > 0) {
            IERC20(underlying).safeTransfer(msg.sender, transferAmount);
            emit TokenSwept(msg.sender, transferAmount);
        }

        uint256 oldInternalCash = internalCash;
        internalCash = IERC20(underlying).balanceOf(address(this));
        emit CashSynced(oldInternalCash, internalCash);
    }
}

// ============================================================
// FILE: contracts/Tokens/VTokens/VBep20Delegate.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause

pragma solidity 0.8.25;

import { VBep20 } from "./VBep20.sol";
import { VDelegateInterface } from "./VTokenInterfaces.sol";

/**
 * @title Venus's VBep20Delegate Contract
 * @notice VTokens which wrap an EIP-20 underlying and are delegated to
 * @author Venus
 */
contract VBep20Delegate is VBep20, VDelegateInterface {
    /**
     * @notice Construct an empty delegate
     */
    constructor() {}

    /**
     * @notice Called by the delegator on a delegate to initialize it for duty
     * @param data The encoded bytes data for any initialization
     */
    function _becomeImplementation(bytes memory data) public {
        // Shh -- currently unused
        data;

        // Shh -- we don't ever want this hook to be marked pure
        if (false) {
            implementation = address(0);
        }

        require(msg.sender == admin, "only the admin may call _becomeImplementation");
    }

    /**
     * @notice Called by the delegator on a delegate to forfeit its responsibility
     */
    function _resignImplementation() public {
        // Shh -- we don't ever want this hook to be marked pure
        if (false) {
            implementation = address(0);
        }

        require(msg.sender == admin, "only the admin may call _resignImplementation");
    }
}

// ============================================================
// FILE: contracts/Tokens/VTokens/VToken.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause

pragma solidity 0.8.25;

import { IAccessControlManagerV8 } from "@venusprotocol/governance-contracts/contracts/Governance/IAccessControlManagerV8.sol";
import { IProtocolShareReserve } from "../../external/IProtocolShareReserve.sol";
import { ComptrollerInterface, IComptroller } from "../../Comptroller/ComptrollerInterface.sol";
import { TokenErrorReporter } from "../../Utils/ErrorReporter.sol";
import { Exponential } from "../../Utils/Exponential.sol";
import { InterestRateModelV8 } from "../../InterestRateModels/InterestRateModelV8.sol";
import { VTokenInterface } from "./VTokenInterfaces.sol";
import { MANTISSA_ONE } from "@venusprotocol/solidity-utilities/contracts/constants.sol";

/**
 * @title Venus's vToken Contract
 * @notice Abstract base for vTokens
 * @author Venus
 */
abstract contract VToken is VTokenInterface, Exponential, TokenErrorReporter {
    struct MintLocalVars {
        MathError mathErr;
        uint exchangeRateMantissa;
        uint mintTokens;
        uint totalSupplyNew;
        uint accountTokensNew;
        uint actualMintAmount;
    }

    struct RedeemLocalVars {
        MathError mathErr;
        uint exchangeRateMantissa;
        uint redeemTokens;
        uint redeemAmount;
        uint totalSupplyNew;
        uint accountTokensNew;
    }

    struct BorrowLocalVars {
        MathError mathErr;
        uint accountBorrows;
        uint accountBorrowsNew;
        uint totalBorrowsNew;
    }

    struct RepayBorrowLocalVars {
        Error err;
        MathError mathErr;
        uint repayAmount;
        uint borrowerIndex;
        uint accountBorrows;
        uint accountBorrowsNew;
        uint totalBorrowsNew;
        uint actualRepayAmount;
    }

    /*** Reentrancy Guard ***/

    /**
     * @dev Prevents a contract from calling itself, directly or indirectly.
     */
    modifier nonReentrant() {
        require(_notEntered, "re-entered");
        _notEntered = false;
        _;
        _notEntered = true; // get a gas-refund post-Istanbul
    }

    /**
     * @notice Transfer `amount` tokens from `msg.sender` to `dst`
     * @param dst The address of the destination account
     * @param amount The number of tokens to transfer
     * @return Whether or not the transfer succeeded
     */
    // @custom:event Emits Transfer event
    function transfer(address dst, uint256 amount) external override nonReentrant returns (bool) {
        return transferTokens(msg.sender, msg.sender, dst, amount) == uint(Error.NO_ERROR);
    }

    /**
     * @notice Transfer `amount` tokens from `src` to `dst`
     * @param src The address of the source account
     * @param dst The address of the destination account
     * @param amount The number of tokens to transfer
     * @return Whether or not the transfer succeeded
     */
    // @custom:event Emits Transfer event
    function transferFrom(address src, address dst, uint256 amount) external override nonReentrant returns (bool) {
        return transferTokens(msg.sender, src, dst, amount) == uint(Error.NO_ERROR);
    }

    /**
     * @notice Approve `spender` to transfer up to `amount` from `src`
     * @dev This will overwrite the approval amount for `spender`
     *  and is subject to issues noted [here](https://eips.ethereum.org/EIPS/eip-20#approve)
     * @param spender The address of the account which may transfer tokens
     * @param amount The number of tokens that are approved (type(uint256).max means infinite)
     * @return Whether or not the approval succeeded
     */
    // @custom:event Emits Approval event on successful approve
    function approve(address spender, uint256 amount) external override returns (bool) {
        transferAllowances[msg.sender][spender] = amount;
        emit Approval(msg.sender, spender, amount);
        return true;
    }

    /**
     * @notice Get the underlying balance of the `owner`
     * @dev This also accrues interest in a transaction
     * @param owner The address of the account to query
     * @return The amount of underlying owned by `owner`
     */
    function balanceOfUnderlying(address owner) external override returns (uint) {
        Exp memory exchangeRate = Exp({ mantissa: exchangeRateCurrent() });
        (MathError mErr, uint balance) = mulScalarTruncate(exchangeRate, accountTokens[owner]);
        ensureNoMathError(mErr);
        return balance;
    }

    /**
     * @notice Returns the current total borrows plus accrued interest
     * @return The total borrows with interest
     */
    function totalBorrowsCurrent() external override nonReentrant returns (uint) {
        require(accrueInterest() == uint(Error.NO_ERROR), "accrue interest failed");
        return totalBorrows;
    }

    /**
     * @notice Accrue interest to updated borrowIndex and then calculate account's borrow balance using the updated borrowIndex
     * @param account The address whose balance should be calculated after updating borrowIndex
     * @return The calculated balance
     */
    function borrowBalanceCurrent(address account) external override nonReentrant returns (uint) {
        require(accrueInterest() == uint(Error.NO_ERROR), "accrue interest failed");
        return borrowBalanceStored(account);
    }

    /**
     * @notice Transfers collateral tokens (this market) to the liquidator.
     * @dev Will fail unless called by another vToken during the process of liquidation.
     *  Its absolutely critical to use msg.sender as the borrowed vToken and not a parameter.
     * @param liquidator The account receiving seized collateral
     * @param borrower The account having collateral seized
     * @param seizeTokens The number of vTokens to seize
     * @return uint Returns 0 on success, otherwise returns a failure code (see ErrorReporter.sol for details).
     */
    // @custom:event Emits Transfer event
    function seize(
        address liquidator,
        address borrower,
        uint seizeTokens
    ) external override nonReentrant returns (uint) {
        return seizeInternal(msg.sender, liquidator, borrower, seizeTokens);
    }

    /**
     * @notice Begins transfer of admin rights. The newPendingAdmin must call `_acceptAdmin` to finalize the transfer.
     * @dev Admin function to begin change of admin. The newPendingAdmin must call `_acceptAdmin` to finalize the transfer.
     * @param newPendingAdmin New pending admin.
     * @return uint Returns 0 on success, otherwise returns a failure code (see ErrorReporter.sol for details).
     */
    // @custom:event Emits NewPendingAdmin event with old and new admin addresses
    function _setPendingAdmin(address payable newPendingAdmin) external override returns (uint) {
        // Check caller = admin
        ensureAdmin(msg.sender);

        // Save current value, if any, for inclusion in log
        address oldPendingAdmin = pendingAdmin;

        // Store pendingAdmin with value newPendingAdmin
        pendingAdmin = newPendingAdmin;

        // Emit NewPendingAdmin(oldPendingAdmin, newPendingAdmin)
        emit NewPendingAdmin(oldPendingAdmin, newPendingAdmin);

        return uint(Error.NO_ERROR);
    }

    /**
     * @notice Accepts transfer of admin rights. msg.sender must be pendingAdmin
     * @dev Admin function for pending admin to accept role and update admin
     * @return uint Returns 0 on success, otherwise returns a failure code (see ErrorReporter.sol for details).
     */
    // @custom:event Emits NewAdmin event on successful acceptance
    // @custom:event Emits NewPendingAdmin event with null new pending admin
    function _acceptAdmin() external override returns (uint) {
        // Check caller is pendingAdmin
        if (msg.sender != pendingAdmin) {
            return fail(Error.UNAUTHORIZED, FailureInfo.ACCEPT_ADMIN_PENDING_ADMIN_CHECK);
        }

        // Save current values for inclusion in log
        address oldAdmin = admin;
        address oldPendingAdmin = pendingAdmin;

        // Store admin with value pendingAdmin
        admin = pendingAdmin;

        // Clear the pending value
        pendingAdmin = payable(address(0));

        emit NewAdmin(oldAdmin, admin);
        emit NewPendingAdmin(oldPendingAdmin, pendingAdmin);

        return uint(Error.NO_ERROR);
    }

    /**
     * @notice accrues interest and sets a new reserve factor for the protocol using `_setReserveFactorFresh`
     * @dev Governor function to accrue interest and set a new reserve factor
     * @return uint Returns 0 on success, otherwise returns a failure code (see ErrorReporter.sol for details).
     */
    // @custom:event Emits NewReserveFactor event
    function _setReserveFactor(uint newReserveFactorMantissa_) external override nonReentrant returns (uint) {
        ensureAllowed("_setReserveFactor(uint256)");
        uint error = accrueInterest();
        if (error != uint(Error.NO_ERROR)) {
            // accrueInterest emits logs on errors, but on top of that we want to log the fact that an attempted reserve factor change failed.
            return fail(Error(error), FailureInfo.SET_RESERVE_FACTOR_ACCRUE_INTEREST_FAILED);
        }

        // _setReserveFactorFresh emits reserve-factor-specific logs on errors, so we don't need to.
        return _setReserveFactorFresh(newReserveFactorMantissa_);
    }

    /**
     * @notice Sets the address of the access control manager of this contract
     * @dev Admin function to set the access control address
     * @param newAccessControlManagerAddress New address for the access control
     * @return uint 0=success, otherwise will revert
     */
    function setAccessControlManager(address newAccessControlManagerAddress) external returns (uint) {
        // Check caller is admin
        ensureAdmin(msg.sender);

        ensureNonZeroAddress(newAccessControlManagerAddress);

        emit NewAccessControlManager(accessControlManager, newAccessControlManagerAddress);
        accessControlManager = newAccessControlManagerAddress;

        return uint(Error.NO_ERROR);
    }

    /**
     * @notice Accrues interest and reduces reserves by transferring to protocol share reserve
     * @param reduceAmount_ Amount of reduction to reserves
     * @return uint Returns 0 on success, otherwise returns a failure code (see ErrorReporter.sol for details).
     */
    // @custom:event Emits ReservesReduced event
    function _reduceReserves(uint reduceAmount_) external virtual override nonReentrant returns (uint) {
        ensureAllowed("_reduceReserves(uint256)");
        uint error = accrueInterest();
        if (error != uint(Error.NO_ERROR)) {
            // accrueInterest emits logs on errors, but on top of that we want to log the fact that an attempted reduce reserves failed.
            return fail(Error(error), FailureInfo.REDUCE_RESERVES_ACCRUE_INTEREST_FAILED);
        }

        // If reserves were reduced in accrueInterest
        if (reduceReservesBlockNumber == block.number) return (uint(Error.NO_ERROR));
        // _reduceReservesFresh emits reserve-reduction-specific logs on errors, so we don't need to.
        return _reduceReservesFresh(reduceAmount_);
    }

    /**
     * @notice Get the current allowance from `owner` for `spender`
     * @param owner The address of the account which owns the tokens to be spent
     * @param spender The address of the account which may transfer tokens
     * @return The number of tokens allowed to be spent (type(uint256).max means infinite)
     */
    function allowance(address owner, address spender) external view override returns (uint256) {
        return transferAllowances[owner][spender];
    }

    /**
     * @notice Get the token balance of the `owner`
     * @param owner The address of the account to query
     * @return The number of tokens owned by `owner`
     */
    function balanceOf(address owner) external view override returns (uint256) {
        return accountTokens[owner];
    }

    /**
     * @notice Get a snapshot of the account's balances, and the cached exchange rate
     * @dev This is used by comptroller to more efficiently perform liquidity checks.
     * @param account Address of the account to snapshot
     * @return (possible error, token balance, borrow balance, exchange rate mantissa)
     */
    function getAccountSnapshot(address account) external view override returns (uint, uint, uint, uint) {
        uint borrowBalance;
        uint exchangeRateMantissa;

        MathError mErr;

        (mErr, borrowBalance) = borrowBalanceStoredInternal(account);
        if (mErr != MathError.NO_ERROR) {
            return (uint(Error.MATH_ERROR), 0, 0, 0);
        }

        (mErr, exchangeRateMantissa) = exchangeRateStoredInternal();
        if (mErr != MathError.NO_ERROR) {
            return (uint(Error.MATH_ERROR), 0, 0, 0);
        }

        return (uint(Error.NO_ERROR), accountTokens[account], borrowBalance, exchangeRateMantissa);
    }

    /**
     * @notice Returns the current per-block supply interest rate for this vToken
     * @dev The calculation includes `flashLoanAmount` in the cash balance to account for active flash loans.
     * @return The supply interest rate per block, scaled by 1e18
     */
    function supplyRatePerBlock() external view override returns (uint) {
        return
            interestRateModel.getSupplyRate(
                _getCashPriorWithFlashLoan(),
                totalBorrows,
                totalReserves,
                reserveFactorMantissa
            );
    }

    /**
     * @notice Returns the current per-block borrow interest rate for this vToken
     * @dev The calculation includes `flashLoanAmount` in the cash balance to account for active flash loans.
     * @return The borrow interest rate per block, scaled by 1e18
     */
    function borrowRatePerBlock() external view override returns (uint) {
        return interestRateModel.getBorrowRate(_getCashPriorWithFlashLoan(), totalBorrows, totalReserves);
    }

    /**
     * @notice Get cash balance of this vToken in the underlying asset
     * @return The quantity of underlying asset owned by this contract
     */
    function getCash() external view override returns (uint) {
        return getCashPrior();
    }

    /**
     * @notice Governance function to set new threshold of block difference after which funds will be sent to the protocol share reserve
     * @param newReduceReservesBlockDelta_ block difference value
     */
    function setReduceReservesBlockDelta(uint256 newReduceReservesBlockDelta_) external {
        require(newReduceReservesBlockDelta_ > 0, "Invalid Input");
        ensureAllowed("setReduceReservesBlockDelta(uint256)");
        emit NewReduceReservesBlockDelta(reduceReservesBlockDelta, newReduceReservesBlockDelta_);
        reduceReservesBlockDelta = newReduceReservesBlockDelta_;
    }

    /**
     * @notice Sets protocol share reserve contract address
     * @param protcolShareReserve_ The address of protocol share reserve contract
     */
    function setProtocolShareReserve(address payable protcolShareReserve_) external {
        // Check caller is admin
        ensureAdmin(msg.sender);
        ensureNonZeroAddress(protcolShareReserve_);
        emit NewProtocolShareReserve(protocolShareReserve, protcolShareReserve_);
        protocolShareReserve = protcolShareReserve_;
    }

    /**
     * @notice Transfers the underlying asset to the specified address for flash loan purposes.
     * @dev Can only be called by the Comptroller contract. This function performs the actual transfer of the underlying
     *      asset by calling the `doTransferOut` internal function.
     *      - The caller must be the Comptroller contract.
     *      - Sets the flashLoanAmount to track the borrowed amount during the flash loan process.
     * @param to The address to which the underlying asset is to be transferred.
     * @param amount The amount of the underlying asset to transfer.
     * @custom:error InvalidComptroller is thrown if the caller is not the Comptroller.
     * @custom:error FlashLoanAlreadyActive is thrown if there is already an active flash loan.
     * @custom:error InsufficientCash is thrown when the vToken does not have enough cash to lend
     * @custom:event Emits TransferOutUnderlyingFlashLoan event on successful transfer of amount to receiver
     */
    function transferOutUnderlyingFlashLoan(address payable to, uint256 amount) external nonReentrant {
        if (msg.sender != address(comptroller)) {
            revert InvalidComptroller();
        }

        if (flashLoanAmount > 0) {
            revert FlashLoanAlreadyActive();
        }

        if (getCashPrior() < amount) {
            revert InsufficientCash();
        }
        flashLoanAmount = amount;
        doTransferOut(to, amount);
        emit TransferOutUnderlyingFlashLoan(underlying, to, amount);
    }

    /**
     * @notice Transfers the underlying asset from the specified address during flash loan repayment.
     * @dev Can only be called by the Comptroller contract. This function performs the actual transfer of the underlying
     *      asset by calling the `doTransferIn` internal function and handles protocol fee distribution.
     *      - The caller must be the Comptroller contract.
     *      - Transfers the protocol fee to the protocol share reserve.
     *      - Resets the flashLoanAmount to 0 to complete the flash loan cycle.
     * @param from The address from which the underlying asset is to be transferred.
     * @param repaymentAmount The amount of the underlying asset being repaid by the receiver.
     * @param totalFee The total fee amount for the flash loan.
     * @param protocolFee The protocol fee amount to be transferred to the protocol share reserve.
     * @return actualAmountTransferred The actual amount transferred in from the receiver.
     * @custom:error InvalidComptroller is thrown if the caller is not the Comptroller.
     * @custom:error InsufficientRepayment is thrown when the repayment amount is insufficient to cover the total fee
     * @custom:event Emits TransferInUnderlyingFlashLoan event on successful transfer of amount from the receiver to the vToken
     */
    function transferInUnderlyingFlashLoan(
        address payable from,
        uint256 repaymentAmount,
        uint256 totalFee,
        uint256 protocolFee
    ) external nonReentrant returns (uint256) {
        if (msg.sender != address(comptroller)) {
            revert InvalidComptroller();
        }

        uint256 actualAmountTransferred = doTransferIn(from, repaymentAmount);

        if (actualAmountTransferred < totalFee) {
            revert InsufficientRepayment(actualAmountTransferred, totalFee);
        }

        // Transfer protocol fee to protocol share reserve
        doTransferOut(protocolShareReserve, protocolFee);

        IProtocolShareReserve(protocolShareReserve).updateAssetsState(
            address(comptroller),
            underlying,
            IProtocolShareReserve.IncomeType.FLASHLOAN
        );

        // Reset flashLoanAmount to complete the flash loan cycle
        flashLoanAmount = 0;

        emit TransferInUnderlyingFlashLoan(underlying, from, actualAmountTransferred, totalFee, protocolFee);
        return actualAmountTransferred;
    }

    /**
     * @notice Sets flash loan status for the market
     * @param enabled True to enable flash loans, false to disable
     * @return uint Returns 0 on success, otherwise returns a failure code (see ErrorReporter.sol for details).
     * @custom:access Only Governance
     * @custom:event Emits FlashLoanStatusChanged event on success
     */
    function setFlashLoanEnabled(bool enabled) external returns (uint256) {
        ensureAllowed("setFlashLoanEnabled(bool)");

        if (isFlashLoanEnabled != enabled) {
            emit FlashLoanStatusChanged(isFlashLoanEnabled, enabled);
            isFlashLoanEnabled = enabled;
        }

        return uint(Error.NO_ERROR);
    }

    /**
     * @notice Update flashLoan fee mantissa
     * @param flashLoanFeeMantissa_  FlashLoan fee, scaled by 1e18
     * @param flashLoanProtocolShare_ FlashLoan protocol fee share, transferred to protocol share reserve
     * @return uint Returns 0 on success, otherwise returns a failure code (see ErrorReporter.sol for details).
     * @custom:access Only Governance
     * @custom:error FlashLoanFeeTooHigh is thrown when flash loan fee exceeds maximum allowed
     * @custom:error FlashLoanProtocolShareTooHigh is thrown when flash loan fee protocol share exceeds maximum allowed
     * @custom:event Emits FlashLoanFeeUpdated event on success
     */
    function setFlashLoanFeeMantissa(
        uint256 flashLoanFeeMantissa_,
        uint256 flashLoanProtocolShare_
    ) external returns (uint256) {
        ensureAllowed("setFlashLoanFeeMantissa(uint256,uint256)");

        if (flashLoanFeeMantissa_ > MANTISSA_ONE) {
            revert FlashLoanFeeTooHigh(flashLoanFeeMantissa_, MANTISSA_ONE);
        }

        if (flashLoanProtocolShare_ > MANTISSA_ONE) {
            revert FlashLoanProtocolShareTooHigh(flashLoanProtocolShare_, MANTISSA_ONE);
        }

        // Only proceed if values are changing
        if (
            flashLoanFeeMantissa != flashLoanFeeMantissa_ || flashLoanProtocolShareMantissa != flashLoanProtocolShare_
        ) {
            emit FlashLoanFeeUpdated(
                flashLoanFeeMantissa,
                flashLoanFeeMantissa_,
                flashLoanProtocolShareMantissa,
                flashLoanProtocolShare_
            );

            flashLoanFeeMantissa = flashLoanFeeMantissa_;
            flashLoanProtocolShareMantissa = flashLoanProtocolShare_;
        }

        return uint(Error.NO_ERROR);
    }

    /**
     * @notice Initialize the money market
     * @param comptroller_ The address of the Comptroller
     * @param interestRateModel_ The address of the interest rate model
     * @param initialExchangeRateMantissa_ The initial exchange rate, scaled by 1e18
     * @param name_ EIP-20 name of this token
     * @param symbol_ EIP-20 symbol of this token
     * @param decimals_ EIP-20 decimal precision of this token
     */
    function initialize(
        ComptrollerInterface comptroller_,
        InterestRateModelV8 interestRateModel_,
        uint initialExchangeRateMantissa_,
        string memory name_,
        string memory symbol_,
        uint8 decimals_
    ) public {
        ensureAdmin(msg.sender);
        require(accrualBlockNumber == 0 && borrowIndex == 0, "market may only be initialized once");

        // Set initial exchange rate
        initialExchangeRateMantissa = initialExchangeRateMantissa_;
        require(initialExchangeRateMantissa > 0, "initial exchange rate must be greater than zero.");

        // Set the comptroller
        uint err = _setComptroller(comptroller_);
        require(err == uint(Error.NO_ERROR), "setting comptroller failed");

        // Initialize block number and borrow index (block number mocks depend on comptroller being set)
        accrualBlockNumber = block.number;
        borrowIndex = mantissaOne;

        // Set the interest rate model (depends on block number / borrow index)
        err = _setInterestRateModelFresh(interestRateModel_);
        require(err == uint(Error.NO_ERROR), "setting interest rate model failed");

        name = name_;
        symbol = symbol_;
        decimals = decimals_;

        // The counter starts true to prevent changing it from zero to non-zero (i.e. smaller cost/refund)
        _notEntered = true;
    }

    /**
     * @notice Accrue interest then return the up-to-date exchange rate
     * @return Calculated exchange rate scaled by 1e18
     */
    function exchangeRateCurrent() public override nonReentrant returns (uint) {
        require(accrueInterest() == uint(Error.NO_ERROR), "accrue interest failed");
        return exchangeRateStored();
    }

    /**
     * @notice Applies accrued interest to total borrows and reserves
     * @dev This calculates interest accrued from the last checkpointed block
     * up to the current block and writes new checkpoint to storage and
     * reduce spread reserves to protocol share reserve
     * if currentBlock - reduceReservesBlockNumber >= blockDelta
     */
    // @custom:event Emits AccrueInterest event
    function accrueInterest() public virtual override returns (uint) {
        /* Remember the initial block number */
        uint currentBlockNumber = block.number;
        uint accrualBlockNumberPrior = accrualBlockNumber;

        /* Short-circuit accumulating 0 interest */
        if (accrualBlockNumberPrior == currentBlockNumber) {
            return uint(Error.NO_ERROR);
        }

        /* Read the previous values out of storage */
        uint cashPrior = _getCashPriorWithFlashLoan();
        uint borrowsPrior = totalBorrows;
        uint reservesPrior = totalReserves;
        uint borrowIndexPrior = borrowIndex;

        /* Calculate the current borrow interest rate */
        uint borrowRateMantissa = interestRateModel.getBorrowRate(cashPrior, borrowsPrior, reservesPrior);
        require(borrowRateMantissa <= borrowRateMaxMantissa, "borrow rate is absurdly high");

        /* Calculate the number of blocks elapsed since the last accrual */
        (MathError mathErr, uint blockDelta) = subUInt(currentBlockNumber, accrualBlockNumberPrior);
        ensureNoMathError(mathErr);

        /*
         * Calculate the interest accumulated into borrows and reserves and the new index:
         *  simpleInterestFactor = borrowRate * blockDelta
         *  interestAccumulated = simpleInterestFactor * totalBorrows
         *  totalBorrowsNew = interestAccumulated + totalBorrows
         *  totalReservesNew = interestAccumulated * reserveFactor + totalReserves
         *  borrowIndexNew = simpleInterestFactor * borrowIndex + borrowIndex
         */

        Exp memory simpleInterestFactor;
        uint interestAccumulated;
        uint totalBorrowsNew;
        uint totalReservesNew;
        uint borrowIndexNew;

        (mathErr, simpleInterestFactor) = mulScalar(Exp({ mantissa: borrowRateMantissa }), blockDelta);
        if (mathErr != MathError.NO_ERROR) {
            return
                failOpaque(
                    Error.MATH_ERROR,
                    FailureInfo.ACCRUE_INTEREST_SIMPLE_INTEREST_FACTOR_CALCULATION_FAILED,
                    uint(mathErr)
                );
        }

        (mathErr, interestAccumulated) = mulScalarTruncate(simpleInterestFactor, borrowsPrior);
        if (mathErr != MathError.NO_ERROR) {
            return
                failOpaque(
                    Error.MATH_ERROR,
                    FailureInfo.ACCRUE_INTEREST_ACCUMULATED_INTEREST_CALCULATION_FAILED,
                    uint(mathErr)
                );
        }

        (mathErr, totalBorrowsNew) = addUInt(interestAccumulated, borrowsPrior);
        if (mathErr != MathError.NO_ERROR) {
            return
                failOpaque(
                    Error.MATH_ERROR,
                    FailureInfo.ACCRUE_INTEREST_NEW_TOTAL_BORROWS_CALCULATION_FAILED,
                    uint(mathErr)
                );
        }

        (mathErr, totalReservesNew) = mulScalarTruncateAddUInt(
            Exp({ mantissa: reserveFactorMantissa }),
            interestAccumulated,
            reservesPrior
        );
        if (mathErr != MathError.NO_ERROR) {
            return
                failOpaque(
                    Error.MATH_ERROR,
                    FailureInfo.ACCRUE_INTEREST_NEW_TOTAL_RESERVES_CALCULATION_FAILED,
                    uint(mathErr)
                );
        }

        (mathErr, borrowIndexNew) = mulScalarTruncateAddUInt(simpleInterestFactor, borrowIndexPrior, borrowIndexPrior);
        if (mathErr != MathError.NO_ERROR) {
            return
                failOpaque(
                    Error.MATH_ERROR,
                    FailureInfo.ACCRUE_INTEREST_NEW_BORROW_INDEX_CALCULATION_FAILED,
                    uint(mathErr)
                );
        }

        /////////////////////////
        // EFFECTS & INTERACTIONS
        // (No safe failures beyond this point)

        /* We write the previously calculated values into storage */
        accrualBlockNumber = currentBlockNumber;
        borrowIndex = borrowIndexNew;
        totalBorrows = totalBorrowsNew;
        totalReserves = totalReservesNew;

        (mathErr, blockDelta) = subUInt(currentBlockNumber, reduceReservesBlockNumber);
        ensureNoMathError(mathErr);
        if (blockDelta >= reduceReservesBlockDelta) {
            reduceReservesBlockNumber = currentBlockNumber;
            uint actualCash = getCashPrior();
            if (actualCash < totalReservesNew) {
                _reduceReservesFresh(actualCash);
            } else {
                _reduceReservesFresh(totalReservesNew);
            }
        }

        /* We emit an AccrueInterest event */
        emit AccrueInterest(cashPrior, interestAccumulated, borrowIndexNew, totalBorrowsNew);

        return uint(Error.NO_ERROR);
    }

    /**
     * @notice Sets a new comptroller for the market
     * @dev Admin function to set a new comptroller
     * @return uint Returns 0 on success, otherwise returns a failure code (see ErrorReporter.sol for details).
     */
    // @custom:event Emits NewComptroller event
    function _setComptroller(ComptrollerInterface newComptroller) public override returns (uint) {
        // Check caller is admin
        ensureAdmin(msg.sender);

        // Ensure invoke comptroller.isComptroller() returns true
        require(newComptroller.isComptroller(), "marker method returned false");

        // Emit NewComptroller(oldComptroller, newComptroller)
        emit NewComptroller(comptroller, newComptroller);

        // Set market's comptroller to newComptroller
        comptroller = newComptroller;

        return uint(Error.NO_ERROR);
    }

    /**
     * @notice Accrues interest and updates the interest rate model using _setInterestRateModelFresh
     * @dev Governance function to accrue interest and update the interest rate model
     * @param newInterestRateModel_ The new interest rate model to use
     * @return uint Returns 0 on success, otherwise returns a failure code (see ErrorReporter.sol for details).
     */
    function _setInterestRateModel(InterestRateModelV8 newInterestRateModel_) public override returns (uint) {
        ensureAllowed("_setInterestRateModel(address)");
        uint error = accrueInterest();
        if (error != uint(Error.NO_ERROR)) {
            // accrueInterest emits logs on errors, but on top of that we want to log the fact that an attempted change of interest rate model failed
            return fail(Error(error), FailureInfo.SET_INTEREST_RATE_MODEL_ACCRUE_INTEREST_FAILED);
        }

        // _setInterestRateModelFresh emits interest-rate-model-update-specific logs on errors, so we don't need to.
        return _setInterestRateModelFresh(newInterestRateModel_);
    }

    /**
     * @notice Calculates the exchange rate from the underlying to the VToken
     * @dev This function does not accrue interest before calculating the exchange rate
     * @return Calculated exchange rate scaled by 1e18
     */
    function exchangeRateStored() public view override returns (uint) {
        (MathError err, uint result) = exchangeRateStoredInternal();
        ensureNoMathError(err);
        return result;
    }

    /**
     * @notice Return the borrow balance of account based on stored data
     * @param account The address whose balance should be calculated
     * @return The calculated balance
     */
    function borrowBalanceStored(address account) public view override returns (uint) {
        (MathError err, uint result) = borrowBalanceStoredInternal(account);
        ensureNoMathError(err);
        return result;
    }

    /**
     * @notice Opens a debt position for the borrower as part of flash loan repayment
     * @dev This function is specifically called during flash loan operations when the repayment
     *      is insufficient to cover the full borrowed amount plus fees. It creates a debt position
     *      for the unpaid balance. The function checks if the borrow is allowed, accrues interest,
     *      and updates the borrower's balance. It also emits a Borrow event and calls the
     *      comptroller's borrowVerify function. It reverts if the borrow is not allowed or
     *      if the market's block number is not current.
     * @param borrower The address of the borrower who will have the debt position created
     * @param borrowAmount The amount of underlying asset that becomes debt (unpaid flash loan balance)
     * @return uint Returns 0 on success, otherwise returns a failure code (see ErrorReporter.sol for details).
     * @custom:error InvalidComptroller is thrown if the caller is not the Comptroller.
     */
    function flashLoanDebtPosition(address borrower, uint borrowAmount) external nonReentrant returns (uint256) {
        // Reverts if the caller is not the comptroller
        if (msg.sender != address(comptroller)) {
            revert InvalidComptroller();
        }

        uint error = accrueInterest();
        if (error != uint(Error.NO_ERROR)) {
            // accrueInterest emits logs on errors.
            return fail(Error(error), FailureInfo.BORROW_ACCRUE_INTEREST_FAILED);
        }

        // borrowFresh emits borrow-specific logs on errors, so we don't need to
        return borrowFresh(borrower, payable(address(0)), borrowAmount, false);
    }

    /**
     * @notice Calculates the total fee and protocol fee for a flash loan..
     * @param amount The amount of the flash loan.
     * @return totalFee The total fee for the flash loan.
     * @return protocolFee The portion of the total fee allocated to the protocol.
     */
    function calculateFlashLoanFee(uint256 amount) public view returns (uint256, uint256) {
        MathError mErr;
        uint256 totalFee;
        uint256 protocolFee;

        (mErr, totalFee) = mulScalarTruncate(Exp({ mantissa: amount }), flashLoanFeeMantissa);
        ensureNoMathError(mErr);

        (mErr, protocolFee) = mulScalarTruncate(Exp({ mantissa: totalFee }), flashLoanProtocolShareMantissa);
        ensureNoMathError(mErr);

        return (totalFee, protocolFee);
    }

    /**
     * @notice Transfers `tokens` tokens from `src` to `dst` by `spender`
     * @dev Called by both `transfer` and `transferFrom` internally
     * @param spender The address of the account performing the transfer
     * @param src The address of the source account
     * @param dst The address of the destination account
     * @param tokens The number of tokens to transfer
     * @return Whether or not the transfer succeeded
     */
    function transferTokens(address spender, address src, address dst, uint tokens) internal returns (uint) {
        /* Fail if transfer not allowed */
        uint allowed = comptroller.transferAllowed(address(this), src, dst, tokens);
        if (allowed != 0) {
            return failOpaque(Error.COMPTROLLER_REJECTION, FailureInfo.TRANSFER_COMPTROLLER_REJECTION, allowed);
        }

        /* Do not allow self-transfers */
        if (src == dst) {
            return fail(Error.BAD_INPUT, FailureInfo.TRANSFER_NOT_ALLOWED);
        }

        /* Get the allowance, infinite for the account owner */
        uint startingAllowance = 0;
        if (spender == src) {
            startingAllowance = type(uint256).max;
        } else {
            startingAllowance = transferAllowances[src][spender];
        }

        /* Do the calculations, checking for {under,over}flow */
        MathError mathErr;
        uint allowanceNew;
        uint srvTokensNew;
        uint dstTokensNew;

        (mathErr, allowanceNew) = subUInt(startingAllowance, tokens);
        if (mathErr != MathError.NO_ERROR) {
            return fail(Error.MATH_ERROR, FailureInfo.TRANSFER_NOT_ALLOWED);
        }

        (mathErr, srvTokensNew) = subUInt(accountTokens[src], tokens);
        if (mathErr != MathError.NO_ERROR) {
            return fail(Error.MATH_ERROR, FailureInfo.TRANSFER_NOT_ENOUGH);
        }

        (mathErr, dstTokensNew) = addUInt(accountTokens[dst], tokens);
        if (mathErr != MathError.NO_ERROR) {
            return fail(Error.MATH_ERROR, FailureInfo.TRANSFER_TOO_MUCH);
        }

        /////////////////////////
        // EFFECTS & INTERACTIONS
        // (No safe failures beyond this point)

        accountTokens[src] = srvTokensNew;
        accountTokens[dst] = dstTokensNew;

        /* Eat some of the allowance (if necessary) */
        if (startingAllowance != type(uint256).max) {
            transferAllowances[src][spender] = allowanceNew;
        }

        /* We emit a Transfer event */
        emit Transfer(src, dst, tokens);

        comptroller.transferVerify(address(this), src, dst, tokens);

        return uint(Error.NO_ERROR);
    }

    /**
     * @notice Sender supplies assets into the market and receives vTokens in exchange
     * @dev Accrues interest whether or not the operation succeeds, unless reverted
     * @param mintAmount The amount of the underlying asset to supply
     * @return (uint, uint) An error code (0=success, otherwise a failure, see ErrorReporter.sol), and the actual mint amount.
     */
    function mintInternal(uint mintAmount) internal nonReentrant returns (uint, uint) {
        uint error = accrueInterest();
        if (error != uint(Error.NO_ERROR)) {
            // accrueInterest emits logs on errors, but we still want to log the fact that an attempted mint failed
            return (fail(Error(error), FailureInfo.MINT_ACCRUE_INTEREST_FAILED), 0);
        }

        // mintFresh emits the actual Mint event if successful and logs on errors, so we don't need to
        return mintFresh(msg.sender, mintAmount);
    }

    /**
     * @notice User supplies assets into the market and receives vTokens in exchange
     * @dev Assumes interest has already been accrued up to the current block
     * @param minter The address of the account which is supplying the assets
     * @param mintAmount The amount of the underlying asset to supply
     * @return (uint, uint) An error code (0=success, otherwise a failure, see ErrorReporter.sol), and the actual mint amount.
     */
    function mintFresh(address minter, uint mintAmount) internal returns (uint, uint) {
        /* Fail if mint not allowed */
        uint allowed = comptroller.mintAllowed(address(this), minter, mintAmount);
        if (allowed != 0) {
            return (failOpaque(Error.COMPTROLLER_REJECTION, FailureInfo.MINT_COMPTROLLER_REJECTION, allowed), 0);
        }

        /* Verify market's block number equals current block number */
        if (accrualBlockNumber != block.number) {
            return (fail(Error.MARKET_NOT_FRESH, FailureInfo.MINT_FRESHNESS_CHECK), 0);
        }

        MintLocalVars memory vars;

        (vars.mathErr, vars.exchangeRateMantissa) = exchangeRateStoredInternal();
        if (vars.mathErr != MathError.NO_ERROR) {
            return (failOpaque(Error.MATH_ERROR, FailureInfo.MINT_EXCHANGE_RATE_READ_FAILED, uint(vars.mathErr)), 0);
        }

        /////////////////////////
        // EFFECTS & INTERACTIONS
        // (No safe failures beyond this point)

        /*
         *  We call `doTransferIn` for the minter and the mintAmount.
         *  Note: The vToken must handle variations between BEP-20 and BNB underlying.
         *  `doTransferIn` reverts if anything goes wrong, since we can't be sure if
         *  side-effects occurred. The function returns the amount actually transferred,
         *  in case of a fee. On success, the vToken holds an additional `actualMintAmount`
         *  of cash.
         */
        vars.actualMintAmount = doTransferIn(minter, mintAmount);

        /*
         * We get the current exchange rate and calculate the number of vTokens to be minted:
         *  mintTokens = actualMintAmount / exchangeRate
         */

        (vars.mathErr, vars.mintTokens) = divScalarByExpTruncate(
            vars.actualMintAmount,
            Exp({ mantissa: vars.exchangeRateMantissa })
        );
        ensureNoMathError(vars.mathErr);

        /*
         * We calculate the new total supply of vTokens and minter token balance, checking for overflow:
         *  totalSupplyNew = totalSupply + mintTokens
         *  accountTokensNew = accountTokens[minter] + mintTokens
         */
        (vars.mathErr, vars.totalSupplyNew) = addUInt(totalSupply, vars.mintTokens);
        ensureNoMathError(vars.mathErr);
        (vars.mathErr, vars.accountTokensNew) = addUInt(accountTokens[minter], vars.mintTokens);
        ensureNoMathError(vars.mathErr);

        /* We write previously calculated values into storage */
        totalSupply = vars.totalSupplyNew;
        accountTokens[minter] = vars.accountTokensNew;

        /* We emit a Mint event, and a Transfer event */
        emit Mint(minter, vars.actualMintAmount, vars.mintTokens, vars.accountTokensNew);
        emit Transfer(address(this), minter, vars.mintTokens);

        /* We call the defense and prime accrue interest hook */
        comptroller.mintVerify(address(this), minter, vars.actualMintAmount, vars.mintTokens);

        return (uint(Error.NO_ERROR), vars.actualMintAmount);
    }

    /**
     * @notice Sender supplies assets into the market and receiver receives vTokens in exchange
     * @dev Accrues interest whether or not the operation succeeds, unless reverted
     * @param receiver The address of the account which is receiving the vTokens
     * @param mintAmount The amount of the underlying asset to supply
     * @return (uint, uint) An error code (0=success, otherwise a failure, see ErrorReporter.sol), and the actual mint amount.
     */
    function mintBehalfInternal(address receiver, uint mintAmount) internal nonReentrant returns (uint, uint) {
        uint error = accrueInterest();
        if (error != uint(Error.NO_ERROR)) {
            // accrueInterest emits logs on errors, but we still want to log the fact that an attempted mintBehalf failed
            return (fail(Error(error), FailureInfo.MINT_ACCRUE_INTEREST_FAILED), 0);
        }

        // mintBehalfFresh emits the actual Mint event if successful and logs on errors, so we don't need to
        return mintBehalfFresh(msg.sender, receiver, mintAmount);
    }

    /**
     * @notice Payer supplies assets into the market and receiver receives vTokens in exchange
     * @dev Assumes interest has already been accrued up to the current block
     * @param payer The address of the account which is paying the underlying token
     * @param receiver The address of the account which is receiving vToken
     * @param mintAmount The amount of the underlying asset to supply
     * @return (uint, uint) An error code (0=success, otherwise a failure, see ErrorReporter.sol), and the actual mint amount.
     */
    function mintBehalfFresh(address payer, address receiver, uint mintAmount) internal returns (uint, uint) {
        ensureNonZeroAddress(receiver);
        /* Fail if mint not allowed */
        uint allowed = comptroller.mintAllowed(address(this), receiver, mintAmount);
        if (allowed != 0) {
            return (failOpaque(Error.COMPTROLLER_REJECTION, FailureInfo.MINT_COMPTROLLER_REJECTION, allowed), 0);
        }

        /* Verify market's block number equals current block number */
        if (accrualBlockNumber != block.number) {
            return (fail(Error.MARKET_NOT_FRESH, FailureInfo.MINT_FRESHNESS_CHECK), 0);
        }

        MintLocalVars memory vars;

        (vars.mathErr, vars.exchangeRateMantissa) = exchangeRateStoredInternal();
        if (vars.mathErr != MathError.NO_ERROR) {
            return (failOpaque(Error.MATH_ERROR, FailureInfo.MINT_EXCHANGE_RATE_READ_FAILED, uint(vars.mathErr)), 0);
        }

        /////////////////////////
        // EFFECTS & INTERACTIONS
        // (No safe failures beyond this point)

        /*
         *  We call `doTransferIn` for the payer and the mintAmount.
         *  Note: The vToken must handle variations between BEP-20 and BNB underlying.
         *  `doTransferIn` reverts if anything goes wrong, since we can't be sure if
         *  side-effects occurred. The function returns the amount actually transferred,
         *  in case of a fee. On success, the vToken holds an additional `actualMintAmount`
         *  of cash.
         */
        vars.actualMintAmount = doTransferIn(payer, mintAmount);

        /*
         * We get the current exchange rate and calculate the number of vTokens to be minted:
         *  mintTokens = actualMintAmount / exchangeRate
         */

        (vars.mathErr, vars.mintTokens) = divScalarByExpTruncate(
            vars.actualMintAmount,
            Exp({ mantissa: vars.exchangeRateMantissa })
        );
        ensureNoMathError(vars.mathErr);

        /*
         * We calculate the new total supply of vTokens and receiver token balance, checking for overflow:
         *  totalSupplyNew = totalSupply + mintTokens
         *  accountTokensNew = accountTokens[receiver] + mintTokens
         */
        (vars.mathErr, vars.totalSupplyNew) = addUInt(totalSupply, vars.mintTokens);
        ensureNoMathError(vars.mathErr);

        (vars.mathErr, vars.accountTokensNew) = addUInt(accountTokens[receiver], vars.mintTokens);
        ensureNoMathError(vars.mathErr);

        /* We write previously calculated values into storage */
        totalSupply = vars.totalSupplyNew;
        accountTokens[receiver] = vars.accountTokensNew;

        /* We emit a MintBehalf event, and a Transfer event */
        emit MintBehalf(payer, receiver, vars.actualMintAmount, vars.mintTokens, vars.accountTokensNew);
        emit Transfer(address(this), receiver, vars.mintTokens);

        /* We call the defense and prime accrue interest hook */
        comptroller.mintVerify(address(this), receiver, vars.actualMintAmount, vars.mintTokens);

        return (uint(Error.NO_ERROR), vars.actualMintAmount);
    }

    /**
     * @notice Redeemer redeems vTokens in exchange for the underlying assets, transferred to the receiver. Redeemer and receiver can be the same
     *   address, or different addresses if the receiver was previously approved by the redeemer as a valid delegate (see MarketFacet.updateDelegate)
     * @dev Accrues interest whether or not the operation succeeds, unless reverted
     * @param redeemer The address of the account which is redeeming the tokens
     * @param receiver The receiver of the tokens
     * @param redeemTokens The number of vTokens to redeem into underlying
     * @return uint Returns 0 on success, otherwise returns a failure code (see ErrorReporter.sol for details).
     */
    function redeemInternal(
        address redeemer,
        address payable receiver,
        uint redeemTokens
    ) internal nonReentrant returns (uint) {
        uint error = accrueInterest();
        if (error != uint(Error.NO_ERROR)) {
            // accrueInterest emits logs on errors, but we still want to log the fact that an attempted redeem failed
            return fail(Error(error), FailureInfo.REDEEM_ACCRUE_INTEREST_FAILED);
        }

        // redeemFresh emits redeem-specific logs on errors, so we don't need to
        return redeemFresh(redeemer, receiver, redeemTokens, 0);
    }

    /**
     * @notice Sender redeems underlying assets on behalf of some other address. This function is only available
     *   for senders, explicitly marked as delegates of the supplier using `comptroller.updateDelegate`
     * @dev Accrues interest whether or not the operation succeeds, unless reverted
     * @param redeemer The address of the account which is redeeming the tokens
     * @param receiver The receiver of the tokens, if called by a delegate
     * @param redeemAmount The amount of underlying to receive from redeeming vTokens
     * @return uint Returns 0 on success, otherwise returns a failure code (see ErrorReporter.sol for details).
     */
    function redeemUnderlyingInternal(
        address redeemer,
        address payable receiver,
        uint redeemAmount
    ) internal nonReentrant returns (uint) {
        uint error = accrueInterest();
        if (error != uint(Error.NO_ERROR)) {
            // accrueInterest emits logs on errors, but we still want to log the fact that an attempted redeem failed
            return fail(Error(error), FailureInfo.REDEEM_ACCRUE_INTEREST_FAILED);
        }

        // redeemFresh emits redeem-specific logs on errors, so we don't need to
        return redeemFresh(redeemer, receiver, 0, redeemAmount);
    }

    /**
     * @notice Redeemer redeems vTokens in exchange for the underlying assets, transferred to the receiver. Redeemer and receiver can be the same
     *   address, or different addresses if the receiver was previously approved by the redeemer as a valid delegate (see MarketFacet.updateDelegate)
     * @dev Assumes interest has already been accrued up to the current block
     * @param redeemer The address of the account which is redeeming the tokens
     * @param receiver The receiver of the tokens
     * @param redeemTokensIn The number of vTokens to redeem into underlying (only one of redeemTokensIn or redeemAmountIn may be non-zero)
     * @param redeemAmountIn The number of underlying tokens to receive from redeeming vTokens (only one of redeemTokensIn or redeemAmountIn may be non-zero)
     * @return uint Returns 0 on success, otherwise returns a failure code (see ErrorReporter.sol for details).
     */
    // solhint-disable-next-line code-complexity
    function redeemFresh(
        address redeemer,
        address payable receiver,
        uint redeemTokensIn,
        uint redeemAmountIn
    ) internal returns (uint) {
        require(redeemTokensIn == 0 || redeemAmountIn == 0, "one of redeemTokensIn or redeemAmountIn must be zero");

        RedeemLocalVars memory vars;

        /* exchangeRate = invoke Exchange Rate Stored() */
        (vars.mathErr, vars.exchangeRateMantissa) = exchangeRateStoredInternal();
        ensureNoMathError(vars.mathErr);

        /* If redeemTokensIn > 0: */
        if (redeemTokensIn > 0) {
            /*
             * We calculate the exchange rate and the amount of underlying to be redeemed:
             *  redeemTokens = redeemTokensIn
             *  redeemAmount = redeemTokensIn x exchangeRateCurrent
             */
            vars.redeemTokens = redeemTokensIn;

            (vars.mathErr, vars.redeemAmount) = mulScalarTruncate(
                Exp({ mantissa: vars.exchangeRateMantissa }),
                redeemTokensIn
            );
            ensureNoMathError(vars.mathErr);
        } else {
            /*
             * We get the current exchange rate and calculate the amount to be redeemed:
             *  redeemTokens = redeemAmountIn / exchangeRate
             *  redeemAmount = redeemAmountIn
             */

            (vars.mathErr, vars.redeemTokens) = divScalarByExpTruncate(
                redeemAmountIn,
                Exp({ mantissa: vars.exchangeRateMantissa })
            );
            ensureNoMathError(vars.mathErr);

            vars.redeemAmount = redeemAmountIn;
        }

        /* Fail if redeem not allowed */
        uint allowed = comptroller.redeemAllowed(address(this), redeemer, vars.redeemTokens);
        if (allowed != 0) {
            revert("math error");
        }

        /* Verify market's block number equals current block number */
        if (accrualBlockNumber != block.number) {
            revert("math error");
        }

        /*
         * We calculate the new total supply and redeemer balance, checking for underflow:
         *  totalSupplyNew = totalSupply - redeemTokens
         *  accountTokensNew = accountTokens[redeemer] - redeemTokens
         */
        (vars.mathErr, vars.totalSupplyNew) = subUInt(totalSupply, vars.redeemTokens);
        ensureNoMathError(vars.mathErr);

        (vars.mathErr, vars.accountTokensNew) = subUInt(accountTokens[redeemer], vars.redeemTokens);
        ensureNoMathError(vars.mathErr);

        /* Fail gracefully if protocol has insufficient cash */
        if (getCashPrior() < vars.redeemAmount) {
            revert("math error");
        }

        /////////////////////////
        // EFFECTS & INTERACTIONS
        // (No safe failures beyond this point)

        /* We write previously calculated values into storage */
        totalSupply = vars.totalSupplyNew;
        accountTokens[redeemer] = vars.accountTokensNew;

        /*
         * We invoke doTransferOut for the receiver and the redeemAmount.
         *  Note: The vToken must handle variations between BEP-20 and BNB underlying.
         *  On success, the vToken has redeemAmount less of cash.
         *  doTransferOut reverts if anything goes wrong, since we can't be sure if side effects occurred.
         */

        uint feeAmount;
        uint remainedAmount;
        if (IComptroller(address(comptroller)).treasuryPercent() != 0) {
            (vars.mathErr, feeAmount) = mulUInt(
                vars.redeemAmount,
                IComptroller(address(comptroller)).treasuryPercent()
            );
            ensureNoMathError(vars.mathErr);

            (vars.mathErr, feeAmount) = divUInt(feeAmount, MANTISSA_ONE);
            ensureNoMathError(vars.mathErr);

            (vars.mathErr, remainedAmount) = subUInt(vars.redeemAmount, feeAmount);
            ensureNoMathError(vars.mathErr);

            address payable treasuryAddress = payable(IComptroller(address(comptroller)).treasuryAddress());
            doTransferOut(treasuryAddress, feeAmount);

            emit RedeemFee(redeemer, feeAmount, vars.redeemTokens);
        } else {
            remainedAmount = vars.redeemAmount;
        }

        doTransferOut(receiver, remainedAmount);

        /* We emit a Transfer event, and a Redeem event */
        emit Transfer(redeemer, address(this), vars.redeemTokens);
        emit Redeem(redeemer, remainedAmount, vars.redeemTokens, vars.accountTokensNew);

        /* We call the defense and prime accrue interest hook */
        comptroller.redeemVerify(address(this), redeemer, vars.redeemAmount, vars.redeemTokens);

        return uint(Error.NO_ERROR);
    }

    /**
     * @notice Receiver gets the borrow on behalf of the borrower address
     * @param borrower The borrower, on behalf of whom to borrow
     * @param receiver The account that would receive the funds (can be the same as the borrower)
     * @param borrowAmount The amount of the underlying asset to borrow
     * @return uint Returns 0 on success, otherwise returns a failure code (see ErrorReporter.sol for details).
     */
    function borrowInternal(
        address borrower,
        address payable receiver,
        uint borrowAmount
    ) internal nonReentrant returns (uint) {
        uint error = accrueInterest();
        if (error != uint(Error.NO_ERROR)) {
            // accrueInterest emits logs on errors, but we still want to log the fact that an attempted borrow failed
            return fail(Error(error), FailureInfo.BORROW_ACCRUE_INTEREST_FAILED);
        }

        // borrowFresh emits borrow-specific logs on errors, so we don't need to
        return borrowFresh(borrower, receiver, borrowAmount, true);
    }

    /**
     * @notice Receiver gets the borrow on behalf of the borrower address, controls whether to do the transfer
     * @dev Before calling this function, ensure that the interest has been accrued
     * @param borrower The borrower, on behalf of whom to borrow
     * @param receiver The account that would receive the funds (can be the same as the borrower)
     * @param borrowAmount The amount of the underlying asset to borrow
     * @param shouldTransfer Whether to call doTransferOut for the receiver
     * @return uint Returns 0 on success, otherwise revert (see ErrorReporter.sol for details).
     */
    function borrowFresh(
        address borrower,
        address payable receiver,
        uint borrowAmount,
        bool shouldTransfer
    ) internal returns (uint) {
        /* Revert if borrow not allowed */
        uint allowed = comptroller.borrowAllowed(address(this), borrower, borrowAmount);

        if (allowed != 0) {
            revert("math error");
        }

        /* Verify market's block number equals current block number */
        if (accrualBlockNumber != block.number) {
            revert("math error");
        }

        /* Revert if protocol has insufficient underlying cash */
        if (shouldTransfer && getCashPrior() < borrowAmount) {
            revert("math error");
        }

        BorrowLocalVars memory vars;

        /*
         * We calculate the new borrower and total borrow balances, failing on overflow:
         *  accountBorrowsNew = accountBorrows + borrowAmount
         *  totalBorrowsNew = totalBorrows + borrowAmount
         */
        (vars.mathErr, vars.accountBorrows) = borrowBalanceStoredInternal(borrower);
        ensureNoMathError(vars.mathErr);

        (vars.mathErr, vars.accountBorrowsNew) = addUInt(vars.accountBorrows, borrowAmount);
        ensureNoMathError(vars.mathErr);

        (vars.mathErr, vars.totalBorrowsNew) = addUInt(totalBorrows, borrowAmount);
        ensureNoMathError(vars.mathErr);

        /////////////////////////
        // EFFECTS & INTERACTIONS
        // (No safe failures beyond this point)

        /* We write the previously calculated values into storage */
        accountBorrows[borrower].principal = vars.accountBorrowsNew;
        accountBorrows[borrower].interestIndex = borrowIndex;
        totalBorrows = vars.totalBorrowsNew;

        if (shouldTransfer) {
            /*
             * We invoke doTransferOut for the receiver and the borrowAmount.
             *  Note: The vToken must handle variations between BEP-20 and BNB underlying.
             *  On success, the vToken borrowAmount less of cash.
             *  doTransferOut reverts if anything goes wrong, since we can't be sure if side effects occurred.
             */
            doTransferOut(receiver, borrowAmount);
        }

        /* We emit a Borrow event */
        emit Borrow(borrower, borrowAmount, vars.accountBorrowsNew, vars.totalBorrowsNew);

        /* We call the defense and prime accrue interest hook */
        comptroller.borrowVerify(address(this), borrower, borrowAmount);

        return uint(Error.NO_ERROR);
    }

    /**
     * @notice Sender repays their own borrow
     * @param repayAmount The amount to repay
     * @return (uint, uint) An error code (0=success, otherwise a failure, see ErrorReporter.sol), and the actual repayment amount.
     */
    function repayBorrowInternal(uint repayAmount) internal nonReentrant returns (uint, uint) {
        uint error = accrueInterest();
        if (error != uint(Error.NO_ERROR)) {
            // accrueInterest emits logs on errors, but we still want to log the fact that an attempted borrow failed
            return (fail(Error(error), FailureInfo.REPAY_BORROW_ACCRUE_INTEREST_FAILED), 0);
        }

        // repayBorrowFresh emits repay-borrow-specific logs on errors, so we don't need to
        return repayBorrowFresh(msg.sender, msg.sender, repayAmount);
    }

    /**
     * @notice Sender repays a borrow belonging to another borrowing account
     * @param borrower The account with the debt being payed off
     * @param repayAmount The amount to repay
     * @return (uint, uint) An error code (0=success, otherwise a failure, see ErrorReporter.sol), and the actual repayment amount.
     */
    function repayBorrowBehalfInternal(address borrower, uint repayAmount) internal nonReentrant returns (uint, uint) {
        uint error = accrueInterest();
        if (error != uint(Error.NO_ERROR)) {
            // accrueInterest emits logs on errors, but we still want to log the fact that an attempted borrow failed
            return (fail(Error(error), FailureInfo.REPAY_BEHALF_ACCRUE_INTEREST_FAILED), 0);
        }

        // repayBorrowFresh emits repay-borrow-specific logs on errors, so we don't need to
        return repayBorrowFresh(msg.sender, borrower, repayAmount);
    }

    /**
     * @notice Borrows are repaid by another user (possibly the borrower).
     * @param payer The account paying off the borrow
     * @param borrower The account with the debt being payed off
     * @param repayAmount The amount of undelrying tokens being returned
     * @return (uint, uint) An error code (0=success, otherwise a failure, see ErrorReporter.sol), and the actual repayment amount.
     */
    function repayBorrowFresh(address payer, address borrower, uint repayAmount) internal returns (uint, uint) {
        /* Fail if repayBorrow not allowed */
        uint allowed = comptroller.repayBorrowAllowed(address(this), payer, borrower, repayAmount);
        if (allowed != 0) {
            return (
                failOpaque(Error.COMPTROLLER_REJECTION, FailureInfo.REPAY_BORROW_COMPTROLLER_REJECTION, allowed),
                0
            );
        }

        /* Verify market's block number equals current block number */
        if (accrualBlockNumber != block.number) {
            return (fail(Error.MARKET_NOT_FRESH, FailureInfo.REPAY_BORROW_FRESHNESS_CHECK), 0);
        }

        RepayBorrowLocalVars memory vars;

        /* We remember the original borrowerIndex for verification purposes */
        vars.borrowerIndex = accountBorrows[borrower].interestIndex;

        /* We fetch the amount the borrower owes, with accumulated interest */
        (vars.mathErr, vars.accountBorrows) = borrowBalanceStoredInternal(borrower);
        if (vars.mathErr != MathError.NO_ERROR) {
            return (
                failOpaque(
                    Error.MATH_ERROR,
                    FailureInfo.REPAY_BORROW_ACCUMULATED_BALANCE_CALCULATION_FAILED,
                    uint(vars.mathErr)
                ),
                0
            );
        }

        // caps the repayAmount to the actual owed amount
        vars.repayAmount = repayAmount >= vars.accountBorrows ? vars.accountBorrows : repayAmount;

        /////////////////////////
        // EFFECTS & INTERACTIONS
        // (No safe failures beyond this point)

        /*
         * We call doTransferIn for the payer and the repayAmount
         *  Note: The vToken must handle variations between BEP-20 and BNB underlying.
         *  On success, the vToken holds an additional repayAmount of cash.
         *  doTransferIn reverts if anything goes wrong, since we can't be sure if side effects occurred.
         *   it returns the amount actually transferred, in case of a fee.
         */
        vars.actualRepayAmount = doTransferIn(payer, vars.repayAmount);

        /*
         * We calculate the new borrower and total borrow balances, failing on underflow:
         *  accountBorrowsNew = accountBorrows - actualRepayAmount
         *  totalBorrowsNew = totalBorrows - actualRepayAmount
         */
        (vars.mathErr, vars.accountBorrowsNew) = subUInt(vars.accountBorrows, vars.actualRepayAmount);
        ensureNoMathError(vars.mathErr);

        (vars.mathErr, vars.totalBorrowsNew) = subUInt(totalBorrows, vars.actualRepayAmount);
        ensureNoMathError(vars.mathErr);

        /* We write the previously calculated values into storage */
        accountBorrows[borrower].principal = vars.accountBorrowsNew;
        accountBorrows[borrower].interestIndex = borrowIndex;
        totalBorrows = vars.totalBorrowsNew;

        /* We emit a RepayBorrow event */
        emit RepayBorrow(payer, borrower, vars.actualRepayAmount, vars.accountBorrowsNew, vars.totalBorrowsNew);

        /* We call the defense and prime accrue interest hook */
        comptroller.repayBorrowVerify(address(this), payer, borrower, vars.actualRepayAmount, vars.borrowerIndex);

        return (uint(Error.NO_ERROR), vars.actualRepayAmount);
    }

    /**
     * @notice The sender liquidates the borrowers collateral.
     *  The collateral seized is transferred to the liquidator.
     * @param borrower The borrower of this vToken to be liquidated
     * @param vTokenCollateral The market in which to seize collateral from the borrower
     * @param repayAmount The amount of the underlying borrowed asset to repay
     * @return (uint, uint) An error code (0=success, otherwise a failure, see ErrorReporter.sol), and the actual repayment amount.
     */
    function liquidateBorrowInternal(
        address borrower,
        uint repayAmount,
        VTokenInterface vTokenCollateral
    ) internal nonReentrant returns (uint, uint) {
        uint error = accrueInterest();
        if (error != uint(Error.NO_ERROR)) {
            // accrueInterest emits logs on errors, but we still want to log the fact that an attempted liquidation failed
            return (fail(Error(error), FailureInfo.LIQUIDATE_ACCRUE_BORROW_INTEREST_FAILED), 0);
        }

        error = vTokenCollateral.accrueInterest();
        if (error != uint(Error.NO_ERROR)) {
            // accrueInterest emits logs on errors, but we still want to log the fact that an attempted liquidation failed
            return (fail(Error(error), FailureInfo.LIQUIDATE_ACCRUE_COLLATERAL_INTEREST_FAILED), 0);
        }

        // liquidateBorrowFresh emits borrow-specific logs on errors, so we don't need to
        return liquidateBorrowFresh(msg.sender, borrower, repayAmount, vTokenCollateral);
    }

    /**
     * @notice The liquidator liquidates the borrowers collateral.
     *  The collateral seized is transferred to the liquidator.
     * @param borrower The borrower of this vToken to be liquidated
     * @param liquidator The address repaying the borrow and seizing collateral
     * @param vTokenCollateral The market in which to seize collateral from the borrower
     * @param repayAmount The amount of the underlying borrowed asset to repay
     * @return (uint, uint) An error code (0=success, otherwise a failure, see ErrorReporter.sol), and the actual repayment amount.
     */
    // solhint-disable-next-line code-complexity
    function liquidateBorrowFresh(
        address liquidator,
        address borrower,
        uint repayAmount,
        VTokenInterface vTokenCollateral
    ) internal returns (uint, uint) {
        /* Fail if liquidate not allowed */
        uint allowed = comptroller.liquidateBorrowAllowed(
            address(this),
            address(vTokenCollateral),
            liquidator,
            borrower,
            repayAmount
        );
        if (allowed != 0) {
            return (failOpaque(Error.COMPTROLLER_REJECTION, FailureInfo.LIQUIDATE_COMPTROLLER_REJECTION, allowed), 0);
        }

        /* Verify market's block number equals current block number */
        if (accrualBlockNumber != block.number) {
            return (fail(Error.MARKET_NOT_FRESH, FailureInfo.LIQUIDATE_FRESHNESS_CHECK), 0);
        }

        /* Verify vTokenCollateral market's block number equals current block number */
        if (vTokenCollateral.accrualBlockNumber() != block.number) {
            return (fail(Error.MARKET_NOT_FRESH, FailureInfo.LIQUIDATE_COLLATERAL_FRESHNESS_CHECK), 0);
        }

        /* Fail if borrower = liquidator */
        if (borrower == liquidator) {
            return (fail(Error.INVALID_ACCOUNT_PAIR, FailureInfo.LIQUIDATE_LIQUIDATOR_IS_BORROWER), 0);
        }

        /* Fail if repayAmount = 0 */
        if (repayAmount == 0) {
            return (fail(Error.INVALID_CLOSE_AMOUNT_REQUESTED, FailureInfo.LIQUIDATE_CLOSE_AMOUNT_IS_ZERO), 0);
        }

        /* Fail if repayAmount = type(uint256).max */
        if (repayAmount == type(uint256).max) {
            return (fail(Error.INVALID_CLOSE_AMOUNT_REQUESTED, FailureInfo.LIQUIDATE_CLOSE_AMOUNT_IS_UINT_MAX), 0);
        }

        /* Fail if repayBorrow fails */
        (uint repayBorrowError, uint actualRepayAmount) = repayBorrowFresh(liquidator, borrower, repayAmount);
        if (repayBorrowError != uint(Error.NO_ERROR)) {
            return (fail(Error(repayBorrowError), FailureInfo.LIQUIDATE_REPAY_BORROW_FRESH_FAILED), 0);
        }

        /////////////////////////
        // EFFECTS & INTERACTIONS
        // (No safe failures beyond this point)

        /* We calculate the number of collateral tokens that will be seized */
        (uint amountSeizeError, uint seizeTokens) = comptroller.liquidateCalculateSeizeTokens(
            borrower,
            address(this),
            address(vTokenCollateral),
            actualRepayAmount
        );

        require(amountSeizeError == uint(Error.NO_ERROR), "LIQUIDATE_COMPTROLLER_CALCULATE_AMOUNT_SEIZE_FAILED");

        /* Revert if borrower collateral token balance < seizeTokens */
        require(vTokenCollateral.balanceOf(borrower) >= seizeTokens, "LIQUIDATE_SEIZE_TOO_MUCH");

        // If this is also the collateral, run seizeInternal to avoid re-entrancy, otherwise make an external call
        uint seizeError;
        if (address(vTokenCollateral) == address(this)) {
            seizeError = seizeInternal(address(this), liquidator, borrower, seizeTokens);
        } else {
            seizeError = vTokenCollateral.seize(liquidator, borrower, seizeTokens);
        }

        /* Revert if seize tokens fails (since we cannot be sure of side effects) */
        require(seizeError == uint(Error.NO_ERROR), "token seizure failed");

        /* We emit a LiquidateBorrow event */
        emit LiquidateBorrow(liquidator, borrower, actualRepayAmount, address(vTokenCollateral), seizeTokens);

        /* We call the defense and prime accrue interest hook */
        comptroller.liquidateBorrowVerify(
            address(this),
            address(vTokenCollateral),
            liquidator,
            borrower,
            actualRepayAmount,
            seizeTokens
        );

        return (uint(Error.NO_ERROR), actualRepayAmount);
    }

    /**
     * @notice Transfers collateral tokens (this market) to the liquidator.
     * @dev Called only during an in-kind liquidation, or by liquidateBorrow during the liquidation of another vToken.
     *  Its absolutely critical to use msg.sender as the seizer vToken and not a parameter.
     * @param seizerToken The contract seizing the collateral (i.e. borrowed vToken)
     * @param liquidator The account receiving seized collateral
     * @param borrower The account having collateral seized
     * @param seizeTokens The number of vTokens to seize
     * @return uint Returns 0 on success, otherwise returns a failure code (see ErrorReporter.sol for details).
     */
    function seizeInternal(
        address seizerToken,
        address liquidator,
        address borrower,
        uint seizeTokens
    ) internal returns (uint) {
        /* Fail if seize not allowed */
        uint allowed = comptroller.seizeAllowed(address(this), seizerToken, liquidator, borrower, seizeTokens);
        if (allowed != 0) {
            return failOpaque(Error.COMPTROLLER_REJECTION, FailureInfo.LIQUIDATE_SEIZE_COMPTROLLER_REJECTION, allowed);
        }

        /* Fail if borrower = liquidator */
        if (borrower == liquidator) {
            return fail(Error.INVALID_ACCOUNT_PAIR, FailureInfo.LIQUIDATE_SEIZE_LIQUIDATOR_IS_BORROWER);
        }

        MathError mathErr;
        uint borrowerTokensNew;
        uint liquidatorTokensNew;

        /*
         * We calculate the new borrower and liquidator token balances, failing on underflow/overflow:
         *  borrowerTokensNew = accountTokens[borrower] - seizeTokens
         *  liquidatorTokensNew = accountTokens[liquidator] + seizeTokens
         */
        (mathErr, borrowerTokensNew) = subUInt(accountTokens[borrower], seizeTokens);
        if (mathErr != MathError.NO_ERROR) {
            return failOpaque(Error.MATH_ERROR, FailureInfo.LIQUIDATE_SEIZE_BALANCE_DECREMENT_FAILED, uint(mathErr));
        }

        (mathErr, liquidatorTokensNew) = addUInt(accountTokens[liquidator], seizeTokens);
        if (mathErr != MathError.NO_ERROR) {
            return failOpaque(Error.MATH_ERROR, FailureInfo.LIQUIDATE_SEIZE_BALANCE_INCREMENT_FAILED, uint(mathErr));
        }

        /////////////////////////
        // EFFECTS & INTERACTIONS
        // (No safe failures beyond this point)

        /* We write the previously calculated values into storage */
        accountTokens[borrower] = borrowerTokensNew;
        accountTokens[liquidator] = liquidatorTokensNew;

        /* Emit a Transfer event */
        emit Transfer(borrower, liquidator, seizeTokens);

        /* We call the defense and prime accrue interest hook */
        comptroller.seizeVerify(address(this), seizerToken, liquidator, borrower, seizeTokens);

        return uint(Error.NO_ERROR);
    }

    /**
     * @notice Sets a new reserve factor for the protocol (requires fresh interest accrual)
     * @dev Governance function to set a new reserve factor
     * @return uint Returns 0 on success, otherwise returns a failure code (see ErrorReporter.sol for details).
     */
    function _setReserveFactorFresh(uint newReserveFactorMantissa) internal returns (uint) {
        // Verify market's block number equals current block number
        if (accrualBlockNumber != block.number) {
            return fail(Error.MARKET_NOT_FRESH, FailureInfo.SET_RESERVE_FACTOR_FRESH_CHECK);
        }

        // Check newReserveFactor ≤ maxReserveFactor
        if (newReserveFactorMantissa > reserveFactorMaxMantissa) {
            return fail(Error.BAD_INPUT, FailureInfo.SET_RESERVE_FACTOR_BOUNDS_CHECK);
        }

        uint oldReserveFactorMantissa = reserveFactorMantissa;
        reserveFactorMantissa = newReserveFactorMantissa;

        emit NewReserveFactor(oldReserveFactorMantissa, newReserveFactorMantissa);

        return uint(Error.NO_ERROR);
    }

    /**
     * @notice Accrues interest and adds reserves by transferring from `msg.sender`
     * @param addAmount Amount of addition to reserves
     * @return uint Returns 0 on success, otherwise returns a failure code (see ErrorReporter.sol for details).
     */
    function _addReservesInternal(uint addAmount) internal nonReentrant returns (uint) {
        uint error = accrueInterest();
        if (error != uint(Error.NO_ERROR)) {
            // accrueInterest emits logs on errors, but on top of that we want to log the fact that an attempted reduce reserves failed.
            return fail(Error(error), FailureInfo.ADD_RESERVES_ACCRUE_INTEREST_FAILED);
        }

        // _addReservesFresh emits reserve-addition-specific logs on errors, so we don't need to.
        (error, ) = _addReservesFresh(addAmount);
        return error;
    }

    /**
     * @notice Add reserves by transferring from caller
     * @dev Requires fresh interest accrual
     * @param addAmount Amount of addition to reserves
     * @return (uint, uint) An error code (0=success, otherwise a failure (see ErrorReporter.sol for details)) and the actual amount added, net token fees
     */
    function _addReservesFresh(uint addAmount) internal returns (uint, uint) {
        // totalReserves + actualAddAmount
        uint totalReservesNew;
        uint actualAddAmount;

        // We fail gracefully unless market's block number equals current block number
        if (accrualBlockNumber != block.number) {
            return (fail(Error.MARKET_NOT_FRESH, FailureInfo.ADD_RESERVES_FRESH_CHECK), actualAddAmount);
        }

        /////////////////////////
        // EFFECTS & INTERACTIONS
        // (No safe failures beyond this point)

        /*
         * We call doTransferIn for the caller and the addAmount
         *  Note: The vToken must handle variations between BEP-20 and BNB underlying.
         *  On success, the vToken holds an additional addAmount of cash.
         *  doTransferIn reverts if anything goes wrong, since we can't be sure if side effects occurred.
         *  it returns the amount actually transferred, in case of a fee.
         */

        actualAddAmount = doTransferIn(msg.sender, addAmount);

        totalReservesNew = totalReserves + actualAddAmount;

        /* Revert on overflow */
        require(totalReservesNew >= totalReserves, "add reserves unexpected overflow");

        // Store reserves[n+1] = reserves[n] + actualAddAmount
        totalReserves = totalReservesNew;

        /* Emit NewReserves(admin, actualAddAmount, reserves[n+1]) */
        emit ReservesAdded(msg.sender, actualAddAmount, totalReservesNew);

        /* Return (NO_ERROR, actualAddAmount) */
        return (uint(Error.NO_ERROR), actualAddAmount);
    }

    /**
     * @notice Reduces reserves by transferring to protocol share reserve contract
     * @dev Requires fresh interest accrual
     * @param reduceAmount Amount of reduction to reserves
     * @return uint Returns 0 on success, otherwise returns a failure code (see ErrorReporter.sol for details).
     */
    function _reduceReservesFresh(uint reduceAmount) internal virtual returns (uint) {
        if (reduceAmount == 0) {
            return uint(Error.NO_ERROR);
        }

        // We fail gracefully unless market's block number equals current block number
        if (accrualBlockNumber != block.number) {
            return fail(Error.MARKET_NOT_FRESH, FailureInfo.REDUCE_RESERVES_FRESH_CHECK);
        }

        // Fail gracefully if protocol has insufficient underlying cash
        if (getCashPrior() < reduceAmount) {
            return fail(Error.TOKEN_INSUFFICIENT_CASH, FailureInfo.REDUCE_RESERVES_CASH_NOT_AVAILABLE);
        }

        // Check reduceAmount ≤ reserves[n] (totalReserves)
        if (reduceAmount > totalReserves) {
            return fail(Error.BAD_INPUT, FailureInfo.REDUCE_RESERVES_VALIDATION);
        }

        /////////////////////////
        // EFFECTS & INTERACTIONS
        // (No safe failures beyond this point)

        // Store reserves[n+1] = reserves[n] - reduceAmount
        totalReserves = totalReserves - reduceAmount;

        // doTransferOut reverts if anything goes wrong, since we can't be sure if side effects occurred.
        doTransferOut(protocolShareReserve, reduceAmount);

        IProtocolShareReserve(protocolShareReserve).updateAssetsState(
            address(comptroller),
            underlying,
            IProtocolShareReserve.IncomeType.SPREAD
        );

        emit ReservesReduced(protocolShareReserve, reduceAmount, totalReserves);

        return uint(Error.NO_ERROR);
    }

    /**
     * @notice updates the interest rate model (requires fresh interest accrual)
     * @dev Governance function to update the interest rate model
     * @param newInterestRateModel the new interest rate model to use
     * @return uint Returns 0 on success, otherwise returns a failure code (see ErrorReporter.sol for details).
     */
    function _setInterestRateModelFresh(InterestRateModelV8 newInterestRateModel) internal returns (uint) {
        // We fail gracefully unless market's block number equals current block number
        if (accrualBlockNumber != block.number) {
            return fail(Error.MARKET_NOT_FRESH, FailureInfo.SET_INTEREST_RATE_MODEL_FRESH_CHECK);
        }

        // Ensure invoke newInterestRateModel.isInterestRateModel() returns true
        require(newInterestRateModel.isInterestRateModel(), "marker method returned false");

        // Emit NewMarketInterestRateModel(oldInterestRateModel, newInterestRateModel)
        emit NewMarketInterestRateModel(interestRateModel, newInterestRateModel);

        // Set the interest rate model to newInterestRateModel
        interestRateModel = newInterestRateModel;

        return uint(Error.NO_ERROR);
    }

    /*** Safe Token ***/

    /**
     * @dev Performs a transfer in, reverting upon failure. Returns the amount actually transferred to the protocol, in case of a fee.
     *  This may revert due to insufficient balance or insufficient allowance.
     */
    function doTransferIn(address from, uint amount) internal virtual returns (uint);

    /**
     * @dev Performs a transfer out, ideally returning an explanatory error code upon failure rather than reverting.
     *  If caller has not called checked protocol's balance, may revert due to insufficient cash held in the contract.
     *  If caller has checked protocol's balance, and verified it is >= amount, this should not revert in normal conditions.
     */
    function doTransferOut(address payable to, uint amount) internal virtual;

    /**
     * @notice Return the borrow balance of account based on stored data
     * @param account The address whose balance should be calculated
     * @return Tuple of error code and the calculated balance or 0 if error code is non-zero
     */
    function borrowBalanceStoredInternal(address account) internal view returns (MathError, uint) {
        /* Note: we do not assert that the market is up to date */
        MathError mathErr;
        uint principalTimesIndex;
        uint result;

        /* Get borrowBalance and borrowIndex */
        BorrowSnapshot storage borrowSnapshot = accountBorrows[account];

        /* If borrowBalance = 0 then borrowIndex is likely also 0.
         * Rather than failing the calculation with a division by 0, we immediately return 0 in this case.
         */
        if (borrowSnapshot.principal == 0) {
            return (MathError.NO_ERROR, 0);
        }

        /* Calculate new borrow balance using the interest index:
         *  recentBorrowBalance = borrower.borrowBalance * market.borrowIndex / borrower.borrowIndex
         */
        (mathErr, principalTimesIndex) = mulUInt(borrowSnapshot.principal, borrowIndex);
        if (mathErr != MathError.NO_ERROR) {
            return (mathErr, 0);
        }

        (mathErr, result) = divUInt(principalTimesIndex, borrowSnapshot.interestIndex);
        if (mathErr != MathError.NO_ERROR) {
            return (mathErr, 0);
        }

        return (MathError.NO_ERROR, result);
    }

    /**
     * @notice Calculates the exchange rate from the underlying to the vToken
     * @dev This function does not accrue interest before calculating the exchange rate
     * @return Tuple of error code and calculated exchange rate scaled by 1e18
     */
    function exchangeRateStoredInternal() internal view virtual returns (MathError, uint) {
        uint _totalSupply = totalSupply;
        if (_totalSupply == 0) {
            /*
             * If there are no tokens minted:
             *  exchangeRate = initialExchangeRate
             */
            return (MathError.NO_ERROR, initialExchangeRateMantissa);
        } else {
            /*
             * Otherwise:
             *  exchangeRate = (totalCash + totalBorrows + flashLoanAmount - totalReserves) / totalSupply
             */
            uint totalCash = _getCashPriorWithFlashLoan();
            uint cashPlusBorrowsMinusReserves;
            Exp memory exchangeRate;
            MathError mathErr;

            (mathErr, cashPlusBorrowsMinusReserves) = addThenSubUInt(totalCash, totalBorrows, totalReserves);
            if (mathErr != MathError.NO_ERROR) {
                return (mathErr, 0);
            }

            (mathErr, exchangeRate) = getExp(cashPlusBorrowsMinusReserves, _totalSupply);
            if (mathErr != MathError.NO_ERROR) {
                return (mathErr, 0);
            }

            return (MathError.NO_ERROR, exchangeRate.mantissa);
        }
    }

    /**
     * @notice Gets balance of this contract including active flash loans
     * @return The quantity of underlying owned by this contract plus active flash loan amount
     */
    function _getCashPriorWithFlashLoan() internal view returns (uint) {
        return getCashPrior() + flashLoanAmount;
    }

    function ensureAllowed(string memory functionSig) private view {
        require(
            IAccessControlManagerV8(accessControlManager).isAllowedToCall(msg.sender, functionSig),
            "access denied"
        );
    }

    function ensureAdmin(address caller_) private view {
        require(caller_ == admin, "Unauthorized");
    }

    function ensureNoMathError(MathError mErr) private pure {
        require(mErr == MathError.NO_ERROR, "math error");
    }

    function ensureNonZeroAddress(address address_) private pure {
        require(address_ != address(0), "zero address");
    }

    /*** Safe Token ***/

    /**
     * @notice Gets balance of this contract in terms of the underlying
     * @dev This excludes the value of the current message, if any
     * @return The quantity of underlying owned by this contract
     */
    function getCashPrior() internal view virtual returns (uint);
}

// ============================================================
// FILE: contracts/Tokens/VTokens/VTokenInterfaces.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause

pragma solidity 0.8.25;

import { ComptrollerInterface } from "../../Comptroller/ComptrollerInterface.sol";
import { InterestRateModelV8 } from "../../InterestRateModels/InterestRateModelV8.sol";

contract VTokenStorageBase {
    /**
     * @notice Container for borrow balance information
     * @member principal Total balance (with accrued interest), after applying the most recent balance-changing action
     * @member interestIndex Global borrowIndex as of the most recent balance-changing action
     */
    struct BorrowSnapshot {
        uint principal;
        uint interestIndex;
    }

    /**
     * @dev Guard variable for re-entrancy checks
     */
    bool internal _notEntered;

    /**
     * @notice EIP-20 token name for this token
     */
    string public name;

    /**
     * @notice EIP-20 token symbol for this token
     */
    string public symbol;

    /**
     * @notice EIP-20 token decimals for this token
     */
    uint8 public decimals;

    /**
     * @notice Maximum borrow rate that can ever be applied (.0005% / block)
     */

    uint internal constant borrowRateMaxMantissa = 0.0005e16;

    /**
     * @notice Maximum fraction of interest that can be set aside for reserves
     */
    uint internal constant reserveFactorMaxMantissa = 1e18;

    /**
     * @notice Administrator for this contract
     */
    address payable public admin;

    /**
     * @notice Pending administrator for this contract
     */
    address payable public pendingAdmin;

    /**
     * @notice Contract which oversees inter-vToken operations
     */
    ComptrollerInterface public comptroller;

    /**
     * @notice Model which tells what the current interest rate should be
     */
    InterestRateModelV8 public interestRateModel;

    /**
     * @notice Initial exchange rate used when minting the first VTokens (used when totalSupply = 0)
     */
    uint internal initialExchangeRateMantissa;

    /**
     * @notice Fraction of interest currently set aside for reserves
     */
    uint public reserveFactorMantissa;

    /**
     * @notice Block number that interest was last accrued at
     */
    uint public accrualBlockNumber;

    /**
     * @notice Accumulator of the total earned interest rate since the opening of the market
     */
    uint public borrowIndex;

    /**
     * @notice Total amount of outstanding borrows of the underlying in this market
     */
    uint public totalBorrows;

    /**
     * @notice Total amount of reserves of the underlying held in this market
     */
    uint public totalReserves;

    /**
     * @notice Total number of tokens in circulation
     */
    uint public totalSupply;

    /**
     * @notice Official record of token balances for each account
     */
    mapping(address => uint) internal accountTokens;

    /**
     * @notice Approved token transfer amounts on behalf of others
     */
    mapping(address => mapping(address => uint)) internal transferAllowances;

    /**
     * @notice Mapping of account addresses to outstanding borrow balances
     */
    mapping(address => BorrowSnapshot) internal accountBorrows;

    /**
     * @notice Underlying asset for this VToken
     */
    address public underlying;

    /**
     * @notice Implementation address for this contract
     */
    address public implementation;

    /**
     * @notice delta block after which reserves will be reduced
     */
    uint public reduceReservesBlockDelta;

    /**
     * @notice last block number at which reserves were reduced
     */
    uint public reduceReservesBlockNumber;

    /**
     * @notice address of protocol share reserve contract
     */
    address payable public protocolShareReserve;

    /**
     * @notice address of accessControlManager
     */

    address public accessControlManager;
}

contract VTokenStorage is VTokenStorageBase {
    /**
     * @notice flashLoan is enabled for this market or not
     */
    bool public isFlashLoanEnabled;

    /**
     * @notice total fee percentage collected on flashLoan (scaled by 1e18)
     */
    uint256 public flashLoanFeeMantissa;

    /**
     * @notice fee percentage of flashLoan that goes to protocol (scaled by 1e18)
     */
    uint256 public flashLoanProtocolShareMantissa;

    /**
     * @notice Amount of flashLoan taken by the receiver
     * @dev This is used to track the amount of flashLoan taken to correctly calculate the exchange rate
     *      during the flashLoan process. It is added to the total cash when calculating the exchange rate.
     */
    uint256 public flashLoanAmount;

    /**
     * @notice Tracked internal cash balance, immune to direct token transfers (donation attacks)
     * @dev Updated only via doTransferIn/doTransferOut. Must be initialized via sweepTokenAndSync() after upgrade.
     */
    uint256 public internalCash;

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[45] private __gap;
}

abstract contract VTokenInterface is VTokenStorage {
    /**
     * @notice Indicator that this is a vToken contract (for inspection)
     */
    bool public constant isVToken = true;

    /*** Market Events ***/

    /**
     * @notice Event emitted when interest is accrued
     */
    event AccrueInterest(uint cashPrior, uint interestAccumulated, uint borrowIndex, uint totalBorrows);

    /**
     * @notice Event emitted when tokens are minted
     */
    event Mint(address minter, uint mintAmount, uint mintTokens, uint256 totalSupply);

    /**
     * @notice Event emitted when tokens are minted behalf by payer to receiver
     */
    event MintBehalf(address payer, address receiver, uint mintAmount, uint mintTokens, uint256 totalSupply);

    /**
     * @notice Event emitted when tokens are redeemed
     */
    event Redeem(address redeemer, uint redeemAmount, uint redeemTokens, uint256 totalSupply);

    /**
     * @notice Event emitted when tokens are redeemed and fee is transferred
     */
    event RedeemFee(address redeemer, uint feeAmount, uint redeemTokens);

    /**
     * @notice Event emitted when underlying is borrowed
     */
    event Borrow(address borrower, uint borrowAmount, uint accountBorrows, uint totalBorrows);

    /**
     * @notice Event emitted when a borrow is repaid
     */
    event RepayBorrow(address payer, address borrower, uint repayAmount, uint accountBorrows, uint totalBorrows);

    /**
     * @notice Event emitted when a borrow is liquidated
     */
    event LiquidateBorrow(
        address liquidator,
        address borrower,
        uint repayAmount,
        address vTokenCollateral,
        uint seizeTokens
    );

    /*** Admin Events ***/

    /**
     * @notice Event emitted when pendingAdmin is changed
     */
    event NewPendingAdmin(address oldPendingAdmin, address newPendingAdmin);

    /**
     * @notice Event emitted when pendingAdmin is accepted, which means admin has been updated
     */
    event NewAdmin(address oldAdmin, address newAdmin);

    /**
     * @notice Event emitted when comptroller is changed
     */
    event NewComptroller(ComptrollerInterface oldComptroller, ComptrollerInterface newComptroller);

    /**
     * @notice Event emitted when interestRateModel is changed
     */
    event NewMarketInterestRateModel(
        InterestRateModelV8 oldInterestRateModel,
        InterestRateModelV8 newInterestRateModel
    );

    /**
     * @notice Event emitted when the reserve factor is changed
     */
    event NewReserveFactor(uint oldReserveFactorMantissa, uint newReserveFactorMantissa);

    /**
     * @notice Event emitted when the reserves are added
     */
    event ReservesAdded(address benefactor, uint addAmount, uint newTotalReserves);

    /**
     * @notice Event emitted when the reserves are reduced
     */
    event ReservesReduced(address protocolShareReserve, uint reduceAmount, uint newTotalReserves);

    /**
     * @notice EIP20 Transfer event
     */
    event Transfer(address indexed from, address indexed to, uint amount);

    /**
     * @notice EIP20 Approval event
     */
    event Approval(address indexed owner, address indexed spender, uint amount);

    /**
     * @notice Event emitted when block delta for reduce reserves get updated
     */
    event NewReduceReservesBlockDelta(uint256 oldReduceReservesBlockDelta, uint256 newReduceReservesBlockDelta);

    /**
     * @notice Event emitted when address of ProtocolShareReserve contract get updated
     */
    event NewProtocolShareReserve(address indexed oldProtocolShareReserve, address indexed newProtocolShareReserve);

    /**
     * @notice Emitted when access control address is changed by admin
     */
    event NewAccessControlManager(address oldAccessControlAddress, address newAccessControlAddress);

    /**
     * @notice Event emitted when flashLoanEnabled status is changed
     */
    event FlashLoanStatusChanged(bool previousStatus, bool newStatus);

    /**
     * @notice Event emitted when asset is transferred to receiver
     */
    event TransferOutUnderlyingFlashLoan(address asset, address receiver, uint256 amount);

    /**
     * @notice Event emitted when asset is transferred from sender and verified
     */
    event TransferInUnderlyingFlashLoan(
        address indexed asset,
        address indexed sender,
        uint256 amount,
        uint256 totalFee,
        uint256 protocolFee
    );

    /**
     * @notice Event emitted when internalCash is synced with actual token balance
     */
    event CashSynced(uint256 oldInternalCash, uint256 newInternalCash);

    /**
     * @notice Event emitted when excess tokens are swept by admin
     */
    event TokenSwept(address indexed recipient, uint256 amount);

    /**
     * @notice Event emitted when flashLoan fee mantissa is updated
     */
    event FlashLoanFeeUpdated(
        uint256 oldFlashLoanFeeMantissa,
        uint256 newFlashLoanFeeMantissa,
        uint256 oldFlashLoanProtocolShare,
        uint256 newFlashLoanProtocolShare
    );

    // @notice Thrown when comptroller is not valid
    error InvalidComptroller();

    // @notice Thrown when there is already an active flashLoan
    error FlashLoanAlreadyActive();

    /// @notice Thrown when flash loan fee exceeds maximum allowed
    error FlashLoanFeeTooHigh(uint256 fee, uint256 maxFee);

    /// @notice Thrown when flash loan fee protocol share exceeds maximum allowed
    error FlashLoanProtocolShareTooHigh(uint256 fee, uint256 maxFee);

    // @notice Thrown when the vToken does not have enough cash to lend
    error InsufficientCash();

    /// @notice Thrown when the repayment amount is insufficient to cover the total fee
    error InsufficientRepayment(uint256 actualAmount, uint256 requiredTotalFee);

    /*** User Interface ***/

    function transfer(address dst, uint amount) external virtual returns (bool);

    function transferFrom(address src, address dst, uint amount) external virtual returns (bool);

    function approve(address spender, uint amount) external virtual returns (bool);

    function balanceOfUnderlying(address owner) external virtual returns (uint);

    function totalBorrowsCurrent() external virtual returns (uint);

    function borrowBalanceCurrent(address account) external virtual returns (uint);

    function seize(address liquidator, address borrower, uint seizeTokens) external virtual returns (uint);

    /*** Admin Function ***/
    function _setPendingAdmin(address payable newPendingAdmin) external virtual returns (uint);

    /*** Admin Function ***/
    function _acceptAdmin() external virtual returns (uint);

    /*** Admin Function ***/
    function _setReserveFactor(uint newReserveFactorMantissa) external virtual returns (uint);

    /*** Admin Function ***/
    function _reduceReserves(uint reduceAmount) external virtual returns (uint);

    function balanceOf(address owner) external view virtual returns (uint);

    function allowance(address owner, address spender) external view virtual returns (uint);

    function getAccountSnapshot(address account) external view virtual returns (uint, uint, uint, uint);

    function borrowRatePerBlock() external view virtual returns (uint);

    function supplyRatePerBlock() external view virtual returns (uint);

    function getCash() external view virtual returns (uint);

    function exchangeRateCurrent() public virtual returns (uint);

    function accrueInterest() public virtual returns (uint);

    /*** Admin Function ***/
    function _setComptroller(ComptrollerInterface newComptroller) public virtual returns (uint);

    /*** Admin Function ***/
    function _setInterestRateModel(InterestRateModelV8 newInterestRateModel) public virtual returns (uint);

    function borrowBalanceStored(address account) public view virtual returns (uint);

    function exchangeRateStored() public view virtual returns (uint);
}

interface VBep20Interface {
    /*** User Interface ***/

    function mint(uint mintAmount) external returns (uint);

    function mintBehalf(address receiver, uint mintAmount) external returns (uint);

    function redeem(uint redeemTokens) external returns (uint);

    function redeemUnderlying(uint redeemAmount) external returns (uint);

    function borrow(uint borrowAmount) external returns (uint);

    function repayBorrow(uint repayAmount) external returns (uint);

    function repayBorrowBehalf(address borrower, uint repayAmount) external returns (uint);

    function liquidateBorrow(
        address borrower,
        uint repayAmount,
        VTokenInterface vTokenCollateral
    ) external returns (uint);

    /*** Admin Functions ***/

    function _addReserves(uint addAmount) external returns (uint);
}

interface VDelegatorInterface {
    /**
     * @notice Emitted when implementation is changed
     */
    event NewImplementation(address oldImplementation, address newImplementation);

    /**
     * @notice Called by the admin to update the implementation of the delegator
     * @param implementation_ The address of the new implementation for delegation
     * @param allowResign Flag to indicate whether to call _resignImplementation on the old implementation
     * @param becomeImplementationData The encoded bytes data to be passed to _becomeImplementation
     */
    function _setImplementation(
        address implementation_,
        bool allowResign,
        bytes memory becomeImplementationData
    ) external;
}

interface VDelegateInterface {
    /**
     * @notice Called by the delegator on a delegate to initialize it for duty
     * @dev Should revert if any issues arise which make it unfit for delegation
     * @param data The encoded bytes data for any initialization
     */
    function _becomeImplementation(bytes memory data) external;

    /**
     * @notice Called by the delegator on a delegate to forfeit its responsibility
     */
    function _resignImplementation() external;
}

// ============================================================
// FILE: contracts/Utils/CarefulMath.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

/**
 * @title Careful Math
 * @author Venus
 * @notice Derived from OpenZeppelin's SafeMath library
 *         https://github.com/OpenZeppelin/openzeppelin-solidity/blob/master/contracts/math/SafeMath.sol
 */
contract CarefulMath {
    /**
     * @dev Possible error codes that we can return
     */
    enum MathError {
        NO_ERROR,
        DIVISION_BY_ZERO,
        INTEGER_OVERFLOW,
        INTEGER_UNDERFLOW
    }

    /**
     * @dev Multiplies two numbers, returns an error on overflow.
     */
    function mulUInt(uint a, uint b) internal pure returns (MathError, uint) {
        if (a == 0) {
            return (MathError.NO_ERROR, 0);
        }

        uint c;
        unchecked {
            c = a * b;
        }

        if (c / a != b) {
            return (MathError.INTEGER_OVERFLOW, 0);
        } else {
            return (MathError.NO_ERROR, c);
        }
    }

    /**
     * @dev Integer division of two numbers, truncating the quotient.
     */
    function divUInt(uint a, uint b) internal pure returns (MathError, uint) {
        if (b == 0) {
            return (MathError.DIVISION_BY_ZERO, 0);
        }

        return (MathError.NO_ERROR, a / b);
    }

    /**
     * @dev Subtracts two numbers, returns an error on overflow (i.e. if subtrahend is greater than minuend).
     */
    function subUInt(uint a, uint b) internal pure returns (MathError, uint) {
        if (b <= a) {
            unchecked {
                return (MathError.NO_ERROR, a - b);
            }
        } else {
            return (MathError.INTEGER_UNDERFLOW, 0);
        }
    }

    /**
     * @dev Adds two numbers, returns an error on overflow.
     */
    function addUInt(uint a, uint b) internal pure returns (MathError, uint) {
        uint c;
        unchecked {
            c = a + b;
        }

        if (c >= a) {
            return (MathError.NO_ERROR, c);
        } else {
            return (MathError.INTEGER_OVERFLOW, 0);
        }
    }

    /**
     * @dev add a and b and then subtract c
     */
    function addThenSubUInt(uint a, uint b, uint c) internal pure returns (MathError, uint) {
        (MathError err0, uint sum) = addUInt(a, b);

        if (err0 != MathError.NO_ERROR) {
            return (err0, 0);
        }

        return subUInt(sum, c);
    }
}

// ============================================================
// FILE: contracts/Utils/ErrorReporter.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

import { WeightFunction } from "../Comptroller/Diamond/interfaces/IFacetBase.sol";

contract ComptrollerErrorReporter {
    /// @notice Thrown when You are already in the selected pool.
    error AlreadyInSelectedPool();

    /// @notice Thrown when One or more of your assets are not compatible with the selected pool.
    error IncompatibleBorrowedAssets();

    /// @notice Thrown when Switching to this pool would fail the liquidity check or lead to liquidation.
    error LiquidityCheckFailed(uint256 errorCode, uint256 shortfall);

    /// @notice Thrown when trying to call pool-specific methods on the Core Pool
    error InvalidOperationForCorePool();

    /// @notice Thrown when input array lengths do not match
    error ArrayLengthMismatch();

    /// @notice Thrown when market trying to add in a pool is not listed in the core pool
    error MarketNotListedInCorePool();

    /// @notice Thrown when market is not set in the _poolMarkets mapping
    error MarketConfigNotFound();

    /// @notice Thrown when borrowing is not allowed in the selected pool for a given market.
    error BorrowNotAllowedInPool();

    /// @notice Thrown when trying to remove a market that is not listed in the given pool.
    error PoolMarketNotFound(uint96 poolId, address vToken);

    /// @notice Thrown when a given pool ID does not exist
    error PoolDoesNotExist(uint96 poolId);

    /// @notice Thrown when the pool label is empty
    error EmptyPoolLabel();

    /// @notice Thrown when a vToken is already listed in the specified pool
    error MarketAlreadyListed(uint96 poolId, address vToken);

    /// @notice Thrown when an invalid weighting strategy is provided
    error InvalidWeightingStrategy(WeightFunction strategy);

    // @notice Thrown when no assets are requested for flash loan
    error NoAssetsRequested();

    // @notice Thrown when invalid flash loan parameters are provided
    error InvalidFlashLoanParams();

    // @notice Thrown when flash loan is not enabled on the vToken
    error FlashLoanNotEnabled();

    // @notice Thrown when the sender is not authorized to use flashloan onBehalfOf
    error SenderNotAuthorizedForFlashLoan(address sender);

    // @notice Thrown when the onBehalfOf didn't approve the contract that receives flashloan
    error NotAnApprovedDelegate();

    // @notice Thrown when executeOperation on the receiver contract fails
    error ExecuteFlashLoanFailed();

    // @notice Thrown when the requested amount is zero
    error InvalidAmount();

    // @notice Thrown when failing to create a debt position in mode 1
    error FailedToCreateDebtPosition();

    /// @notice Thrown when attempting to interact with an inactive pool
    error InactivePool(uint96 poolId);

    /// @notice Thrown when repayment amount is insufficient to cover the fee
    error NotEnoughRepayment(uint256 repaid, uint256 required);

    /// @notice Thrown when the vToken market is not listed
    error MarketNotListed(address vToken);

    /// @notice Thrown when flash loans are paused system-wide
    error FlashLoanPausedSystemWide();

    /// @notice Thrown when too many assets are requested in a single flash loan
    error TooManyAssetsRequested(uint256 requested, uint256 maximum);

    enum Error {
        NO_ERROR,
        UNAUTHORIZED,
        COMPTROLLER_MISMATCH,
        INSUFFICIENT_SHORTFALL,
        INSUFFICIENT_LIQUIDITY,
        INVALID_CLOSE_FACTOR,
        INVALID_COLLATERAL_FACTOR,
        INVALID_LIQUIDATION_INCENTIVE,
        MARKET_NOT_ENTERED, // no longer possible
        MARKET_NOT_LISTED,
        MARKET_ALREADY_LISTED,
        MATH_ERROR,
        NONZERO_BORROW_BALANCE,
        PRICE_ERROR,
        REJECTION,
        SNAPSHOT_ERROR,
        TOO_MANY_ASSETS,
        TOO_MUCH_REPAY,
        INSUFFICIENT_BALANCE_FOR_VAI,
        MARKET_NOT_COLLATERAL,
        INVALID_LIQUIDATION_THRESHOLD
    }

    enum FailureInfo {
        ACCEPT_ADMIN_PENDING_ADMIN_CHECK,
        ACCEPT_PENDING_IMPLEMENTATION_ADDRESS_CHECK,
        EXIT_MARKET_BALANCE_OWED,
        EXIT_MARKET_REJECTION,
        SET_CLOSE_FACTOR_OWNER_CHECK,
        SET_CLOSE_FACTOR_VALIDATION,
        SET_COLLATERAL_FACTOR_OWNER_CHECK,
        SET_COLLATERAL_FACTOR_NO_EXISTS,
        SET_COLLATERAL_FACTOR_VALIDATION,
        SET_COLLATERAL_FACTOR_WITHOUT_PRICE,
        SET_IMPLEMENTATION_OWNER_CHECK,
        SET_LIQUIDATION_INCENTIVE_OWNER_CHECK,
        SET_LIQUIDATION_INCENTIVE_VALIDATION,
        SET_MAX_ASSETS_OWNER_CHECK,
        SET_PENDING_ADMIN_OWNER_CHECK,
        SET_PENDING_IMPLEMENTATION_OWNER_CHECK,
        SET_PRICE_ORACLE_OWNER_CHECK,
        SUPPORT_MARKET_EXISTS,
        SUPPORT_MARKET_OWNER_CHECK,
        SET_PAUSE_GUARDIAN_OWNER_CHECK,
        SET_VAI_MINT_RATE_CHECK,
        SET_VAICONTROLLER_OWNER_CHECK,
        SET_MINTED_VAI_REJECTION,
        SET_TREASURY_OWNER_CHECK,
        UNLIST_MARKET_NOT_LISTED,
        SET_LIQUIDATION_THRESHOLD_VALIDATION,
        COLLATERAL_FACTOR_GREATER_THAN_LIQUIDATION_THRESHOLD
    }

    /**
     * @dev `error` corresponds to enum Error; `info` corresponds to enum FailureInfo, and `detail` is an arbitrary
     * contract-specific code that enables us to report opaque error codes from upgradeable contracts.
     **/
    event Failure(uint error, uint info, uint detail);

    /**
     * @dev use this when reporting a known error from the money market or a non-upgradeable collaborator
     */
    function fail(Error err, FailureInfo info) internal returns (uint) {
        emit Failure(uint(err), uint(info), 0);

        return uint(err);
    }

    /**
     * @dev use this when reporting an opaque error from an upgradeable collaborator contract
     */
    function failOpaque(Error err, FailureInfo info, uint opaqueError) internal returns (uint) {
        emit Failure(uint(err), uint(info), opaqueError);

        return uint(err);
    }
}

contract TokenErrorReporter {
    enum Error {
        NO_ERROR,
        UNAUTHORIZED,
        BAD_INPUT,
        COMPTROLLER_REJECTION,
        COMPTROLLER_CALCULATION_ERROR,
        INTEREST_RATE_MODEL_ERROR,
        INVALID_ACCOUNT_PAIR,
        INVALID_CLOSE_AMOUNT_REQUESTED,
        INVALID_COLLATERAL_FACTOR,
        MATH_ERROR,
        MARKET_NOT_FRESH,
        MARKET_NOT_LISTED,
        TOKEN_INSUFFICIENT_ALLOWANCE,
        TOKEN_INSUFFICIENT_BALANCE,
        TOKEN_INSUFFICIENT_CASH,
        TOKEN_TRANSFER_IN_FAILED,
        TOKEN_TRANSFER_OUT_FAILED,
        TOKEN_PRICE_ERROR
    }

    /*
     * Note: FailureInfo (but not Error) is kept in alphabetical order
     *       This is because FailureInfo grows significantly faster, and
     *       the order of Error has some meaning, while the order of FailureInfo
     *       is entirely arbitrary.
     */
    enum FailureInfo {
        ACCEPT_ADMIN_PENDING_ADMIN_CHECK,
        ACCRUE_INTEREST_ACCUMULATED_INTEREST_CALCULATION_FAILED,
        ACCRUE_INTEREST_BORROW_RATE_CALCULATION_FAILED,
        ACCRUE_INTEREST_NEW_BORROW_INDEX_CALCULATION_FAILED,
        ACCRUE_INTEREST_NEW_TOTAL_BORROWS_CALCULATION_FAILED,
        ACCRUE_INTEREST_NEW_TOTAL_RESERVES_CALCULATION_FAILED,
        ACCRUE_INTEREST_SIMPLE_INTEREST_FACTOR_CALCULATION_FAILED,
        BORROW_ACCUMULATED_BALANCE_CALCULATION_FAILED,
        BORROW_ACCRUE_INTEREST_FAILED,
        BORROW_CASH_NOT_AVAILABLE,
        BORROW_FRESHNESS_CHECK,
        BORROW_NEW_TOTAL_BALANCE_CALCULATION_FAILED,
        BORROW_NEW_ACCOUNT_BORROW_BALANCE_CALCULATION_FAILED,
        BORROW_MARKET_NOT_LISTED,
        BORROW_COMPTROLLER_REJECTION,
        LIQUIDATE_ACCRUE_BORROW_INTEREST_FAILED,
        LIQUIDATE_ACCRUE_COLLATERAL_INTEREST_FAILED,
        LIQUIDATE_COLLATERAL_FRESHNESS_CHECK,
        LIQUIDATE_COMPTROLLER_REJECTION,
        LIQUIDATE_COMPTROLLER_CALCULATE_AMOUNT_SEIZE_FAILED,
        LIQUIDATE_CLOSE_AMOUNT_IS_UINT_MAX,
        LIQUIDATE_CLOSE_AMOUNT_IS_ZERO,
        LIQUIDATE_FRESHNESS_CHECK,
        LIQUIDATE_LIQUIDATOR_IS_BORROWER,
        LIQUIDATE_REPAY_BORROW_FRESH_FAILED,
        LIQUIDATE_SEIZE_BALANCE_INCREMENT_FAILED,
        LIQUIDATE_SEIZE_BALANCE_DECREMENT_FAILED,
        LIQUIDATE_SEIZE_COMPTROLLER_REJECTION,
        LIQUIDATE_SEIZE_LIQUIDATOR_IS_BORROWER,
        LIQUIDATE_SEIZE_TOO_MUCH,
        MINT_ACCRUE_INTEREST_FAILED,
        MINT_COMPTROLLER_REJECTION,
        MINT_EXCHANGE_CALCULATION_FAILED,
        MINT_EXCHANGE_RATE_READ_FAILED,
        MINT_FRESHNESS_CHECK,
        MINT_NEW_ACCOUNT_BALANCE_CALCULATION_FAILED,
        MINT_NEW_TOTAL_SUPPLY_CALCULATION_FAILED,
        MINT_TRANSFER_IN_FAILED,
        MINT_TRANSFER_IN_NOT_POSSIBLE,
        REDEEM_ACCRUE_INTEREST_FAILED,
        REDEEM_COMPTROLLER_REJECTION,
        REDEEM_EXCHANGE_TOKENS_CALCULATION_FAILED,
        REDEEM_EXCHANGE_AMOUNT_CALCULATION_FAILED,
        REDEEM_EXCHANGE_RATE_READ_FAILED,
        REDEEM_FRESHNESS_CHECK,
        REDEEM_NEW_ACCOUNT_BALANCE_CALCULATION_FAILED,
        REDEEM_NEW_TOTAL_SUPPLY_CALCULATION_FAILED,
        REDEEM_TRANSFER_OUT_NOT_POSSIBLE,
        REDUCE_RESERVES_ACCRUE_INTEREST_FAILED,
        REDUCE_RESERVES_ADMIN_CHECK,
        REDUCE_RESERVES_CASH_NOT_AVAILABLE,
        REDUCE_RESERVES_FRESH_CHECK,
        REDUCE_RESERVES_VALIDATION,
        REPAY_BEHALF_ACCRUE_INTEREST_FAILED,
        REPAY_BORROW_ACCRUE_INTEREST_FAILED,
        REPAY_BORROW_ACCUMULATED_BALANCE_CALCULATION_FAILED,
        REPAY_BORROW_COMPTROLLER_REJECTION,
        REPAY_BORROW_FRESHNESS_CHECK,
        REPAY_BORROW_NEW_ACCOUNT_BORROW_BALANCE_CALCULATION_FAILED,
        REPAY_BORROW_NEW_TOTAL_BALANCE_CALCULATION_FAILED,
        REPAY_BORROW_TRANSFER_IN_NOT_POSSIBLE,
        SET_COLLATERAL_FACTOR_OWNER_CHECK,
        SET_COLLATERAL_FACTOR_VALIDATION,
        SET_COMPTROLLER_OWNER_CHECK,
        SET_INTEREST_RATE_MODEL_ACCRUE_INTEREST_FAILED,
        SET_INTEREST_RATE_MODEL_FRESH_CHECK,
        SET_INTEREST_RATE_MODEL_OWNER_CHECK,
        SET_MAX_ASSETS_OWNER_CHECK,
        SET_ORACLE_MARKET_NOT_LISTED,
        SET_PENDING_ADMIN_OWNER_CHECK,
        SET_RESERVE_FACTOR_ACCRUE_INTEREST_FAILED,
        SET_RESERVE_FACTOR_ADMIN_CHECK,
        SET_RESERVE_FACTOR_FRESH_CHECK,
        SET_RESERVE_FACTOR_BOUNDS_CHECK,
        TRANSFER_COMPTROLLER_REJECTION,
        TRANSFER_NOT_ALLOWED,
        TRANSFER_NOT_ENOUGH,
        TRANSFER_TOO_MUCH,
        ADD_RESERVES_ACCRUE_INTEREST_FAILED,
        ADD_RESERVES_FRESH_CHECK,
        ADD_RESERVES_TRANSFER_IN_NOT_POSSIBLE,
        TOKEN_GET_UNDERLYING_PRICE_ERROR,
        REPAY_VAI_COMPTROLLER_REJECTION,
        REPAY_VAI_FRESHNESS_CHECK,
        VAI_MINT_EXCHANGE_CALCULATION_FAILED,
        SFT_MINT_NEW_ACCOUNT_BALANCE_CALCULATION_FAILED
    }

    /**
     * @dev `error` corresponds to enum Error; `info` corresponds to enum FailureInfo, and `detail` is an arbitrary
     * contract-specific code that enables us to report opaque error codes from upgradeable contracts.
     **/
    event Failure(uint error, uint info, uint detail);

    /**
     * @dev use this when reporting a known error from the money market or a non-upgradeable collaborator
     */
    function fail(Error err, FailureInfo info) internal returns (uint) {
        emit Failure(uint(err), uint(info), 0);

        return uint(err);
    }

    /**
     * @dev use this when reporting an opaque error from an upgradeable collaborator contract
     */
    function failOpaque(Error err, FailureInfo info, uint opaqueError) internal returns (uint) {
        emit Failure(uint(err), uint(info), opaqueError);

        return uint(err);
    }
}

contract VAIControllerErrorReporter {
    enum Error {
        NO_ERROR,
        UNAUTHORIZED, // The sender is not authorized to perform this action.
        REJECTION, // The action would violate the comptroller, vaicontroller policy.
        SNAPSHOT_ERROR, // The comptroller could not get the account borrows and exchange rate from the market.
        PRICE_ERROR, // The comptroller could not obtain a required price of an asset.
        MATH_ERROR, // A math calculation error occurred.
        INSUFFICIENT_BALANCE_FOR_VAI // Caller does not have sufficient balance to mint VAI.
    }

    enum FailureInfo {
        SET_PENDING_ADMIN_OWNER_CHECK,
        SET_PENDING_IMPLEMENTATION_OWNER_CHECK,
        SET_COMPTROLLER_OWNER_CHECK,
        ACCEPT_ADMIN_PENDING_ADMIN_CHECK,
        ACCEPT_PENDING_IMPLEMENTATION_ADDRESS_CHECK,
        VAI_MINT_REJECTION,
        VAI_BURN_REJECTION,
        VAI_LIQUIDATE_ACCRUE_BORROW_INTEREST_FAILED,
        VAI_LIQUIDATE_ACCRUE_COLLATERAL_INTEREST_FAILED,
        VAI_LIQUIDATE_COLLATERAL_FRESHNESS_CHECK,
        VAI_LIQUIDATE_COMPTROLLER_REJECTION,
        VAI_LIQUIDATE_COMPTROLLER_CALCULATE_AMOUNT_SEIZE_FAILED,
        VAI_LIQUIDATE_CLOSE_AMOUNT_IS_UINT_MAX,
        VAI_LIQUIDATE_CLOSE_AMOUNT_IS_ZERO,
        VAI_LIQUIDATE_FRESHNESS_CHECK,
        VAI_LIQUIDATE_LIQUIDATOR_IS_BORROWER,
        VAI_LIQUIDATE_REPAY_BORROW_FRESH_FAILED,
        VAI_LIQUIDATE_SEIZE_BALANCE_INCREMENT_FAILED,
        VAI_LIQUIDATE_SEIZE_BALANCE_DECREMENT_FAILED,
        VAI_LIQUIDATE_SEIZE_COMPTROLLER_REJECTION,
        VAI_LIQUIDATE_SEIZE_LIQUIDATOR_IS_BORROWER,
        VAI_LIQUIDATE_SEIZE_TOO_MUCH,
        MINT_FEE_CALCULATION_FAILED,
        SET_TREASURY_OWNER_CHECK
    }

    /**
     * @dev `error` corresponds to enum Error; `info` corresponds to enum FailureInfo, and `detail` is an arbitrary
     * contract-specific code that enables us to report opaque error codes from upgradeable contracts.
     **/
    event Failure(uint error, uint info, uint detail);

    /**
     * @dev use this when reporting a known error from the money market or a non-upgradeable collaborator
     */
    function fail(Error err, FailureInfo info) internal returns (uint) {
        emit Failure(uint(err), uint(info), 0);

        return uint(err);
    }

    /**
     * @dev use this when reporting an opaque error from an upgradeable collaborator contract
     */
    function failOpaque(Error err, FailureInfo info, uint opaqueError) internal returns (uint) {
        emit Failure(uint(err), uint(info), opaqueError);

        return uint(err);
    }
}

// ============================================================
// FILE: contracts/Utils/Exponential.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

import { CarefulMath } from "./CarefulMath.sol";
import { ExponentialNoError } from "./ExponentialNoError.sol";

/**
 * @title Exponential module for storing fixed-precision decimals
 * @author Venus
 * @notice Exp is a struct which stores decimals with a fixed precision of 18 decimal places.
 *         Thus, if we wanted to store the 5.1, mantissa would store 5.1e18. That is:
 *         `Exp({mantissa: 5100000000000000000})`.
 */
contract Exponential is CarefulMath, ExponentialNoError {
    /**
     * @dev Creates an exponential from numerator and denominator values.
     *      Note: Returns an error if (`num` * 10e18) > MAX_INT,
     *            or if `denom` is zero.
     */
    function getExp(uint num, uint denom) internal pure returns (MathError, Exp memory) {
        (MathError err0, uint scaledNumerator) = mulUInt(num, expScale);
        if (err0 != MathError.NO_ERROR) {
            return (err0, Exp({ mantissa: 0 }));
        }

        (MathError err1, uint rational) = divUInt(scaledNumerator, denom);
        if (err1 != MathError.NO_ERROR) {
            return (err1, Exp({ mantissa: 0 }));
        }

        return (MathError.NO_ERROR, Exp({ mantissa: rational }));
    }

    /**
     * @dev Adds two exponentials, returning a new exponential.
     */
    function addExp(Exp memory a, Exp memory b) internal pure returns (MathError, Exp memory) {
        (MathError error, uint result) = addUInt(a.mantissa, b.mantissa);

        return (error, Exp({ mantissa: result }));
    }

    /**
     * @dev Subtracts two exponentials, returning a new exponential.
     */
    function subExp(Exp memory a, Exp memory b) internal pure returns (MathError, Exp memory) {
        (MathError error, uint result) = subUInt(a.mantissa, b.mantissa);

        return (error, Exp({ mantissa: result }));
    }

    /**
     * @dev Multiply an Exp by a scalar, returning a new Exp.
     */
    function mulScalar(Exp memory a, uint scalar) internal pure returns (MathError, Exp memory) {
        (MathError err0, uint scaledMantissa) = mulUInt(a.mantissa, scalar);
        if (err0 != MathError.NO_ERROR) {
            return (err0, Exp({ mantissa: 0 }));
        }

        return (MathError.NO_ERROR, Exp({ mantissa: scaledMantissa }));
    }

    /**
     * @dev Multiply an Exp by a scalar, then truncate to return an unsigned integer.
     */
    function mulScalarTruncate(Exp memory a, uint scalar) internal pure returns (MathError, uint) {
        (MathError err, Exp memory product) = mulScalar(a, scalar);
        if (err != MathError.NO_ERROR) {
            return (err, 0);
        }

        return (MathError.NO_ERROR, truncate(product));
    }

    /**
     * @dev Multiply an Exp by a scalar, truncate, then add an to an unsigned integer, returning an unsigned integer.
     */
    function mulScalarTruncateAddUInt(Exp memory a, uint scalar, uint addend) internal pure returns (MathError, uint) {
        (MathError err, Exp memory product) = mulScalar(a, scalar);
        if (err != MathError.NO_ERROR) {
            return (err, 0);
        }

        return addUInt(truncate(product), addend);
    }

    /**
     * @dev Divide an Exp by a scalar, returning a new Exp.
     */
    function divScalar(Exp memory a, uint scalar) internal pure returns (MathError, Exp memory) {
        (MathError err0, uint descaledMantissa) = divUInt(a.mantissa, scalar);
        if (err0 != MathError.NO_ERROR) {
            return (err0, Exp({ mantissa: 0 }));
        }

        return (MathError.NO_ERROR, Exp({ mantissa: descaledMantissa }));
    }

    /**
     * @dev Divide a scalar by an Exp, returning a new Exp.
     */
    function divScalarByExp(uint scalar, Exp memory divisor) internal pure returns (MathError, Exp memory) {
        /*
          We are doing this as:
          getExp(mulUInt(expScale, scalar), divisor.mantissa)

          How it works:
          Exp = a / b;
          Scalar = s;
          `s / (a / b)` = `b * s / a` and since for an Exp `a = mantissa, b = expScale`
        */
        (MathError err0, uint numerator) = mulUInt(expScale, scalar);
        if (err0 != MathError.NO_ERROR) {
            return (err0, Exp({ mantissa: 0 }));
        }
        return getExp(numerator, divisor.mantissa);
    }

    /**
     * @dev Divide a scalar by an Exp, then truncate to return an unsigned integer.
     */
    function divScalarByExpTruncate(uint scalar, Exp memory divisor) internal pure returns (MathError, uint) {
        (MathError err, Exp memory fraction) = divScalarByExp(scalar, divisor);
        if (err != MathError.NO_ERROR) {
            return (err, 0);
        }

        return (MathError.NO_ERROR, truncate(fraction));
    }

    /**
     * @dev Multiplies two exponentials, returning a new exponential.
     */
    function mulExp(Exp memory a, Exp memory b) internal pure returns (MathError, Exp memory) {
        (MathError err0, uint doubleScaledProduct) = mulUInt(a.mantissa, b.mantissa);
        if (err0 != MathError.NO_ERROR) {
            return (err0, Exp({ mantissa: 0 }));
        }

        // We add half the scale before dividing so that we get rounding instead of truncation.
        //  See "Listing 6" and text above it at https://accu.org/index.php/journals/1717
        // Without this change, a result like 6.6...e-19 will be truncated to 0 instead of being rounded to 1e-18.
        (MathError err1, uint doubleScaledProductWithHalfScale) = addUInt(halfExpScale, doubleScaledProduct);
        if (err1 != MathError.NO_ERROR) {
            return (err1, Exp({ mantissa: 0 }));
        }

        (MathError err2, uint product) = divUInt(doubleScaledProductWithHalfScale, expScale);
        // The only error `div` can return is MathError.DIVISION_BY_ZERO but we control `expScale` and it is not zero.
        assert(err2 == MathError.NO_ERROR);

        return (MathError.NO_ERROR, Exp({ mantissa: product }));
    }

    /**
     * @dev Multiplies two exponentials given their mantissas, returning a new exponential.
     */
    function mulExp(uint a, uint b) internal pure returns (MathError, Exp memory) {
        return mulExp(Exp({ mantissa: a }), Exp({ mantissa: b }));
    }

    /**
     * @dev Multiplies three exponentials, returning a new exponential.
     */
    function mulExp3(Exp memory a, Exp memory b, Exp memory c) internal pure returns (MathError, Exp memory) {
        (MathError err, Exp memory ab) = mulExp(a, b);
        if (err != MathError.NO_ERROR) {
            return (err, ab);
        }
        return mulExp(ab, c);
    }

    /**
     * @dev Divides two exponentials, returning a new exponential.
     *     (a/scale) / (b/scale) = (a/scale) * (scale/b) = a/b,
     *  which we can scale as an Exp by calling getExp(a.mantissa, b.mantissa)
     */
    function divExp(Exp memory a, Exp memory b) internal pure returns (MathError, Exp memory) {
        return getExp(a.mantissa, b.mantissa);
    }
}

// ============================================================
// FILE: contracts/Utils/ExponentialNoError.sol
// ============================================================

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;

/**
 * @title Exponential module for storing fixed-precision decimals
 * @author Compound
 * @notice Exp is a struct which stores decimals with a fixed precision of 18 decimal places.
 *         Thus, if we wanted to store the 5.1, mantissa would store 5.1e18. That is:
 *         `Exp({mantissa: 5100000000000000000})`.
 */
contract ExponentialNoError {
    uint internal constant expScale = 1e18;
    uint internal constant doubleScale = 1e36;
    uint internal constant halfExpScale = expScale / 2;
    uint internal constant mantissaOne = expScale;

    struct Exp {
        uint mantissa;
    }

    struct Double {
        uint mantissa;
    }

    /**
     * @dev Truncates the given exp to a whole number value.
     *      For example, truncate(Exp{mantissa: 15 * expScale}) = 15
     */
    function truncate(Exp memory exp) internal pure returns (uint) {
        // Note: We are not using careful math here as we're performing a division that cannot fail
        return exp.mantissa / expScale;
    }

    /**
     * @dev Multiply an Exp by a scalar, then truncate to return an unsigned integer.
     */
    function mul_ScalarTruncate(Exp memory a, uint scalar) internal pure returns (uint) {
        Exp memory product = mul_(a, scalar);
        return truncate(product);
    }

    /**
     * @dev Multiply an Exp by a scalar, truncate, then add an to an unsigned integer, returning an unsigned integer.
     */
    function mul_ScalarTruncateAddUInt(Exp memory a, uint scalar, uint addend) internal pure returns (uint) {
        Exp memory product = mul_(a, scalar);
        return add_(truncate(product), addend);
    }

    /**
     * @dev Checks if first Exp is less than second Exp.
     */
    function lessThanExp(Exp memory left, Exp memory right) internal pure returns (bool) {
        return left.mantissa < right.mantissa;
    }

    /**
     * @dev Checks if left Exp <= right Exp.
     */
    function lessThanOrEqualExp(Exp memory left, Exp memory right) internal pure returns (bool) {
        return left.mantissa <= right.mantissa;
    }

    /**
     * @dev Checks if left Exp > right Exp.
     */
    function greaterThanExp(Exp memory left, Exp memory right) internal pure returns (bool) {
        return left.mantissa > right.mantissa;
    }

    /**
     * @dev returns true if Exp is exactly zero
     */
    function isZeroExp(Exp memory value) internal pure returns (bool) {
        return value.mantissa == 0;
    }

    function safe224(uint n, string memory errorMessage) internal pure returns (uint224) {
        require(n < 2 ** 224, errorMessage);
        return uint224(n);
    }

    function safe32(uint n, string memory errorMessage) internal pure returns (uint32) {
        require(n < 2 ** 32, errorMessage);
        return uint32(n);
    }

    function add_(Exp memory a, Exp memory b) internal pure returns (Exp memory) {
        return Exp({ mantissa: add_(a.mantissa, b.mantissa) });
    }

    function add_(Double memory a, Double memory b) internal pure returns (Double memory) {
        return Double({ mantissa: add_(a.mantissa, b.mantissa) });
    }

    function add_(uint a, uint b) internal pure returns (uint) {
        return add_(a, b, "addition overflow");
    }

    function add_(uint a, uint b, string memory errorMessage) internal pure returns (uint) {
        uint c = a + b;
        require(c >= a, errorMessage);
        return c;
    }

    function sub_(Exp memory a, Exp memory b) internal pure returns (Exp memory) {
        return Exp({ mantissa: sub_(a.mantissa, b.mantissa) });
    }

    function sub_(Double memory a, Double memory b) internal pure returns (Double memory) {
        return Double({ mantissa: sub_(a.mantissa, b.mantissa) });
    }

    function sub_(uint a, uint b) internal pure returns (uint) {
        return sub_(a, b, "subtraction underflow");
    }

    function sub_(uint a, uint b, string memory errorMessage) internal pure returns (uint) {
        require(b <= a, errorMessage);
        return a - b;
    }

    function mul_(Exp memory a, Exp memory b) internal pure returns (Exp memory) {
        return Exp({ mantissa: mul_(a.mantissa, b.mantissa) / expScale });
    }

    function mul_(Exp memory a, uint b) internal pure returns (Exp memory) {
        return Exp({ mantissa: mul_(a.mantissa, b) });
    }

    function mul_(uint a, Exp memory b) internal pure returns (uint) {
        return mul_(a, b.mantissa) / expScale;
    }

    function mul_(Double memory a, Double memory b) internal pure returns (Double memory) {
        return Double({ mantissa: mul_(a.mantissa, b.mantissa) / doubleScale });
    }

    function mul_(Double memory a, uint b) internal pure returns (Double memory) {
        return Double({ mantissa: mul_(a.mantissa, b) });
    }

    function mul_(uint a, Double memory b) internal pure returns (uint) {
        return mul_(a, b.mantissa) / doubleScale;
    }

    function mul_(uint a, uint b) internal pure returns (uint) {
        return mul_(a, b, "multiplication overflow");
    }

    function mul_(uint a, uint b, string memory errorMessage) internal pure returns (uint) {
        if (a == 0 || b == 0) {
            return 0;
        }
        uint c = a * b;
        require(c / a == b, errorMessage);
        return c;
    }

    function div_(Exp memory a, Exp memory b) internal pure returns (Exp memory) {
        return Exp({ mantissa: div_(mul_(a.mantissa, expScale), b.mantissa) });
    }

    function div_(Exp memory a, uint b) internal pure returns (Exp memory) {
        return Exp({ mantissa: div_(a.mantissa, b) });
    }

    function div_(uint a, Exp memory b) internal pure returns (uint) {
        return div_(mul_(a, expScale), b.mantissa);
    }

    function div_(Double memory a, Double memory b) internal pure returns (Double memory) {
        return Double({ mantissa: div_(mul_(a.mantissa, doubleScale), b.mantissa) });
    }

    function div_(Double memory a, uint b) internal pure returns (Double memory) {
        return Double({ mantissa: div_(a.mantissa, b) });
    }

    function div_(uint a, Double memory b) internal pure returns (uint) {
        return div_(mul_(a, doubleScale), b.mantissa);
    }

    function div_(uint a, uint b) internal pure returns (uint) {
        return div_(a, b, "divide by zero");
    }

    function div_(uint a, uint b, string memory errorMessage) internal pure returns (uint) {
        require(b > 0, errorMessage);
        return a / b;
    }

    function fraction(uint a, uint b) internal pure returns (Double memory) {
        return Double({ mantissa: div_(mul_(a, doubleScale), b) });
    }
}
