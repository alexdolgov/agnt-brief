// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/Initializable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (proxy/utils/Initializable.sol)

pragma solidity ^0.8.2;

import "../../utils/AddressUpgradeable.sol";

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
     * @dev Indicates that the contract has been initialized.
     * @custom:oz-retyped-from bool
     */
    uint8 private _initialized;

    /**
     * @dev Indicates that the contract is in the process of being initialized.
     */
    bool private _initializing;

    /**
     * @dev Triggered when the contract has been initialized or reinitialized.
     */
    event Initialized(uint8 version);

    /**
     * @dev A modifier that defines a protected initializer function that can be invoked at most once. In its scope,
     * `onlyInitializing` functions can be used to initialize parent contracts.
     *
     * Similar to `reinitializer(1)`, except that functions marked with `initializer` can be nested in the context of a
     * constructor.
     *
     * Emits an {Initialized} event.
     */
    modifier initializer() {
        bool isTopLevelCall = !_initializing;
        require(
            (isTopLevelCall && _initialized < 1) || (!AddressUpgradeable.isContract(address(this)) && _initialized == 1),
            "Initializable: contract is already initialized"
        );
        _initialized = 1;
        if (isTopLevelCall) {
            _initializing = true;
        }
        _;
        if (isTopLevelCall) {
            _initializing = false;
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
     * WARNING: setting the version to 255 will prevent any future reinitialization.
     *
     * Emits an {Initialized} event.
     */
    modifier reinitializer(uint8 version) {
        require(!_initializing && _initialized < version, "Initializable: contract is already initialized");
        _initialized = version;
        _initializing = true;
        _;
        _initializing = false;
        emit Initialized(version);
    }

    /**
     * @dev Modifier to protect an initialization function so that it can only be invoked by functions with the
     * {initializer} and {reinitializer} modifiers, directly or indirectly.
     */
    modifier onlyInitializing() {
        require(_initializing, "Initializable: contract is not initializing");
        _;
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
        require(!_initializing, "Initializable: contract is initializing");
        if (_initialized != type(uint8).max) {
            _initialized = type(uint8).max;
            emit Initialized(type(uint8).max);
        }
    }

    /**
     * @dev Returns the highest version that has been initialized. See {reinitializer}.
     */
    function _getInitializedVersion() internal view returns (uint8) {
        return _initialized;
    }

    /**
     * @dev Returns `true` if the contract is currently initializing. See {onlyInitializing}.
     */
    function _isInitializing() internal view returns (bool) {
        return _initializing;
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/utils/AddressUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/Address.sol)

pragma solidity ^0.8.1;

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
// FILE: lib/openzeppelin-contracts/contracts/interfaces/IERC4626.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (interfaces/IERC4626.sol)

pragma solidity ^0.8.0;

import "../token/ERC20/IERC20.sol";
import "../token/ERC20/extensions/IERC20Metadata.sol";

/**
 * @dev Interface of the ERC4626 "Tokenized Vault Standard", as defined in
 * https://eips.ethereum.org/EIPS/eip-4626[ERC-4626].
 *
 * _Available since v4.7._
 */
interface IERC4626 is IERC20, IERC20Metadata {
    event Deposit(address indexed sender, address indexed owner, uint256 assets, uint256 shares);

    event Withdraw(
        address indexed sender,
        address indexed receiver,
        address indexed owner,
        uint256 assets,
        uint256 shares
    );

    /**
     * @dev Returns the address of the underlying token used for the Vault for accounting, depositing, and withdrawing.
     *
     * - MUST be an ERC-20 token contract.
     * - MUST NOT revert.
     */
    function asset() external view returns (address assetTokenAddress);

    /**
     * @dev Returns the total amount of the underlying asset that is “managed” by Vault.
     *
     * - SHOULD include any compounding that occurs from yield.
     * - MUST be inclusive of any fees that are charged against assets in the Vault.
     * - MUST NOT revert.
     */
    function totalAssets() external view returns (uint256 totalManagedAssets);

    /**
     * @dev Returns the amount of shares that the Vault would exchange for the amount of assets provided, in an ideal
     * scenario where all the conditions are met.
     *
     * - MUST NOT be inclusive of any fees that are charged against assets in the Vault.
     * - MUST NOT show any variations depending on the caller.
     * - MUST NOT reflect slippage or other on-chain conditions, when performing the actual exchange.
     * - MUST NOT revert.
     *
     * NOTE: This calculation MAY NOT reflect the “per-user” price-per-share, and instead should reflect the
     * “average-user’s” price-per-share, meaning what the average user should expect to see when exchanging to and
     * from.
     */
    function convertToShares(uint256 assets) external view returns (uint256 shares);

    /**
     * @dev Returns the amount of assets that the Vault would exchange for the amount of shares provided, in an ideal
     * scenario where all the conditions are met.
     *
     * - MUST NOT be inclusive of any fees that are charged against assets in the Vault.
     * - MUST NOT show any variations depending on the caller.
     * - MUST NOT reflect slippage or other on-chain conditions, when performing the actual exchange.
     * - MUST NOT revert.
     *
     * NOTE: This calculation MAY NOT reflect the “per-user” price-per-share, and instead should reflect the
     * “average-user’s” price-per-share, meaning what the average user should expect to see when exchanging to and
     * from.
     */
    function convertToAssets(uint256 shares) external view returns (uint256 assets);

    /**
     * @dev Returns the maximum amount of the underlying asset that can be deposited into the Vault for the receiver,
     * through a deposit call.
     *
     * - MUST return a limited value if receiver is subject to some deposit limit.
     * - MUST return 2 ** 256 - 1 if there is no limit on the maximum amount of assets that may be deposited.
     * - MUST NOT revert.
     */
    function maxDeposit(address receiver) external view returns (uint256 maxAssets);

    /**
     * @dev Allows an on-chain or off-chain user to simulate the effects of their deposit at the current block, given
     * current on-chain conditions.
     *
     * - MUST return as close to and no more than the exact amount of Vault shares that would be minted in a deposit
     *   call in the same transaction. I.e. deposit should return the same or more shares as previewDeposit if called
     *   in the same transaction.
     * - MUST NOT account for deposit limits like those returned from maxDeposit and should always act as though the
     *   deposit would be accepted, regardless if the user has enough tokens approved, etc.
     * - MUST be inclusive of deposit fees. Integrators should be aware of the existence of deposit fees.
     * - MUST NOT revert.
     *
     * NOTE: any unfavorable discrepancy between convertToShares and previewDeposit SHOULD be considered slippage in
     * share price or some other type of condition, meaning the depositor will lose assets by depositing.
     */
    function previewDeposit(uint256 assets) external view returns (uint256 shares);

    /**
     * @dev Mints shares Vault shares to receiver by depositing exactly amount of underlying tokens.
     *
     * - MUST emit the Deposit event.
     * - MAY support an additional flow in which the underlying tokens are owned by the Vault contract before the
     *   deposit execution, and are accounted for during deposit.
     * - MUST revert if all of assets cannot be deposited (due to deposit limit being reached, slippage, the user not
     *   approving enough underlying tokens to the Vault contract, etc).
     *
     * NOTE: most implementations will require pre-approval of the Vault with the Vault’s underlying asset token.
     */
    function deposit(uint256 assets, address receiver) external returns (uint256 shares);

    /**
     * @dev Returns the maximum amount of the Vault shares that can be minted for the receiver, through a mint call.
     * - MUST return a limited value if receiver is subject to some mint limit.
     * - MUST return 2 ** 256 - 1 if there is no limit on the maximum amount of shares that may be minted.
     * - MUST NOT revert.
     */
    function maxMint(address receiver) external view returns (uint256 maxShares);

    /**
     * @dev Allows an on-chain or off-chain user to simulate the effects of their mint at the current block, given
     * current on-chain conditions.
     *
     * - MUST return as close to and no fewer than the exact amount of assets that would be deposited in a mint call
     *   in the same transaction. I.e. mint should return the same or fewer assets as previewMint if called in the
     *   same transaction.
     * - MUST NOT account for mint limits like those returned from maxMint and should always act as though the mint
     *   would be accepted, regardless if the user has enough tokens approved, etc.
     * - MUST be inclusive of deposit fees. Integrators should be aware of the existence of deposit fees.
     * - MUST NOT revert.
     *
     * NOTE: any unfavorable discrepancy between convertToAssets and previewMint SHOULD be considered slippage in
     * share price or some other type of condition, meaning the depositor will lose assets by minting.
     */
    function previewMint(uint256 shares) external view returns (uint256 assets);

    /**
     * @dev Mints exactly shares Vault shares to receiver by depositing amount of underlying tokens.
     *
     * - MUST emit the Deposit event.
     * - MAY support an additional flow in which the underlying tokens are owned by the Vault contract before the mint
     *   execution, and are accounted for during mint.
     * - MUST revert if all of shares cannot be minted (due to deposit limit being reached, slippage, the user not
     *   approving enough underlying tokens to the Vault contract, etc).
     *
     * NOTE: most implementations will require pre-approval of the Vault with the Vault’s underlying asset token.
     */
    function mint(uint256 shares, address receiver) external returns (uint256 assets);

    /**
     * @dev Returns the maximum amount of the underlying asset that can be withdrawn from the owner balance in the
     * Vault, through a withdraw call.
     *
     * - MUST return a limited value if owner is subject to some withdrawal limit or timelock.
     * - MUST NOT revert.
     */
    function maxWithdraw(address owner) external view returns (uint256 maxAssets);

    /**
     * @dev Allows an on-chain or off-chain user to simulate the effects of their withdrawal at the current block,
     * given current on-chain conditions.
     *
     * - MUST return as close to and no fewer than the exact amount of Vault shares that would be burned in a withdraw
     *   call in the same transaction. I.e. withdraw should return the same or fewer shares as previewWithdraw if
     *   called
     *   in the same transaction.
     * - MUST NOT account for withdrawal limits like those returned from maxWithdraw and should always act as though
     *   the withdrawal would be accepted, regardless if the user has enough shares, etc.
     * - MUST be inclusive of withdrawal fees. Integrators should be aware of the existence of withdrawal fees.
     * - MUST NOT revert.
     *
     * NOTE: any unfavorable discrepancy between convertToShares and previewWithdraw SHOULD be considered slippage in
     * share price or some other type of condition, meaning the depositor will lose assets by depositing.
     */
    function previewWithdraw(uint256 assets) external view returns (uint256 shares);

    /**
     * @dev Burns shares from owner and sends exactly assets of underlying tokens to receiver.
     *
     * - MUST emit the Withdraw event.
     * - MAY support an additional flow in which the underlying tokens are owned by the Vault contract before the
     *   withdraw execution, and are accounted for during withdraw.
     * - MUST revert if all of assets cannot be withdrawn (due to withdrawal limit being reached, slippage, the owner
     *   not having enough shares, etc).
     *
     * Note that some implementations will require pre-requesting to the Vault before a withdrawal may be performed.
     * Those methods should be performed separately.
     */
    function withdraw(uint256 assets, address receiver, address owner) external returns (uint256 shares);

    /**
     * @dev Returns the maximum amount of Vault shares that can be redeemed from the owner balance in the Vault,
     * through a redeem call.
     *
     * - MUST return a limited value if owner is subject to some withdrawal limit or timelock.
     * - MUST return balanceOf(owner) if owner is not subject to any withdrawal limit or timelock.
     * - MUST NOT revert.
     */
    function maxRedeem(address owner) external view returns (uint256 maxShares);

    /**
     * @dev Allows an on-chain or off-chain user to simulate the effects of their redeemption at the current block,
     * given current on-chain conditions.
     *
     * - MUST return as close to and no more than the exact amount of assets that would be withdrawn in a redeem call
     *   in the same transaction. I.e. redeem should return the same or more assets as previewRedeem if called in the
     *   same transaction.
     * - MUST NOT account for redemption limits like those returned from maxRedeem and should always act as though the
     *   redemption would be accepted, regardless if the user has enough shares, etc.
     * - MUST be inclusive of withdrawal fees. Integrators should be aware of the existence of withdrawal fees.
     * - MUST NOT revert.
     *
     * NOTE: any unfavorable discrepancy between convertToAssets and previewRedeem SHOULD be considered slippage in
     * share price or some other type of condition, meaning the depositor will lose assets by redeeming.
     */
    function previewRedeem(uint256 shares) external view returns (uint256 assets);

    /**
     * @dev Burns exactly shares from owner and sends assets of underlying tokens to receiver.
     *
     * - MUST emit the Withdraw event.
     * - MAY support an additional flow in which the underlying tokens are owned by the Vault contract before the
     *   redeem execution, and are accounted for during redeem.
     * - MUST revert if all of shares cannot be redeemed (due to withdrawal limit being reached, slippage, the owner
     *   not having enough shares, etc).
     *
     * NOTE: some implementations will require pre-requesting to the Vault before a withdrawal may be performed.
     * Those methods should be performed separately.
     */
    function redeem(uint256 shares, address receiver, address owner) external returns (uint256 assets);
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Metadata.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (token/ERC20/extensions/IERC20Metadata.sol)

pragma solidity ^0.8.0;

import "../IERC20.sol";

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

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Permit.sol
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
// FILE: lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol
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
// FILE: lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol
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
// FILE: lib/openzeppelin-contracts/contracts/utils/Address.sol
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
// FILE: src/interfaces/ICallbacks.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;
import "./ITradingStorage.sol";
import "./IExecute.sol";
import {IPairInfos} from "./IPairInfos.sol";

interface ICallbacks {
    
    struct AggregatorAnswer {
        uint orderId;
        uint price;
        uint spreadP;
    }
    struct Values {
        uint price;
        int profitP;
        int pnl;
        uint levPosToken;
        uint reward;
    }
    
    struct feeValues {
        uint feeAfterRebate;
        uint referrerRebate;
        uint gasFees;
        uint totalFees;
        uint vaultFee;
        uint lpFee;
        uint liqTotalFee;
        uint govFees;
    }

    // Events
    event MarketExecuted(
        uint orderId,
        ITradingStorage.Trade t,
        bool open,
        uint price,
        uint positionSizeUSDC,
        int percentProfit,
        uint usdcSentToTrader,
        bool isPnl
    );

    event LimitExecuted(
        uint orderId,
        uint limitIndex,
        ITradingStorage.Trade t,
        ITradingStorage.LimitOrder orderType,
        uint price,
        uint positionSizeUSDC,
        int percentProfit,
        uint usdcSentToTrader,
        bool isPnl
    );

    event MarketOpenCanceled(
        uint orderId, 
        address indexed trader, 
        uint pairIndex
    );

    event SlUpdated(
        uint orderId, 
        address indexed trader, 
        uint pairIndex, 
        uint index, 
        uint newSl
    );

    event MarginUpdated(
        address indexed trader, 
        uint pairIndex, 
        uint index, 
        uint newSl, 
        uint timestamp
    );
    
    event AddressUpdated(string name, address a);
    event FeeUpdated(uint _vaultFeeP, uint _liqFeeP, uint _liqTotalFeeP);
    event Pause(bool paused);
    event Done(bool done);

    function vaultFeeP() external returns (uint);

    function openTradeMarketCallback(uint, uint, int, bool) external;

    function closeTradeMarketCallback(uint, uint, bool) external;

    function executeLimitOpenOrderCallback(uint, uint, int, bool) external;

    function executeLimitCloseOrderCallback(uint, uint, bool) external;

    function updateSlCallback(uint, uint, bool) external;

    function updateMarginCallback(uint, uint, bool) external;

    function transferFromVault(address, uint) external;
    
    function pairInfos() external returns (IPairInfos);
}

// ============================================================
// FILE: src/interfaces/IExecute.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;
import "./ITradingStorage.sol";

interface IExecute {
    // Custom data types
    struct TriggeredLimit {
        address first;
        uint block;
    }
    
    struct TriggeredLimitId {
        address trader;
        uint pairIndex;
        uint index;
        ITradingStorage.LimitOrder order;
    }

    enum OpenLimitOrderType {
        MARKET,
        REVERSAL, // Stop Limit
        MOMENTUM, // Limit
        MARKET_PNL
    }

    // Events
    event NumberUpdated(string name, uint value);
    event PercentagesUpdated(uint firstP);
    event TriggeredFirst(TriggeredLimitId id, address bot);
    event TriggerUnregistered(TriggeredLimitId id);
    event TriggerRewarded(TriggeredLimitId id, uint reward);
    event PoolTokensClaimed(address bot, uint fromRound, uint toRound, uint tokens);
    event TokensClaimed(address bot, uint tokens);

    function storeFirstToTrigger(TriggeredLimitId calldata, address) external;

    function unregisterTrigger(TriggeredLimitId calldata) external;

    function distributeReward(TriggeredLimitId calldata, uint) external;

    function openLimitOrderTypes(address, uint, uint) external view returns (OpenLimitOrderType);

    function setOpenLimitOrderType(address, uint, uint, OpenLimitOrderType) external;
}

// ============================================================
// FILE: src/interfaces/IPairInfos.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;
import {ITradingStorage} from "./ITradingStorage.sol";
import {IPairStorage} from "./IPairStorage.sol";

interface IPairInfos {

    struct PairParams {
        uint onePercentDepthAbove; // USDC
        uint onePercentDepthBelow; // USDC
        uint rolloverFeePerBlockP; // PRECISION
    }

    // Pair acc rollover fees
    struct PairRolloverFees {
        uint accPerOiLong; // 1e6 (USDC)
        uint accPerOiShort; // 1e6 (USDC)
        uint lastUpdateBlock;
    }


    struct TradeInitialAccFees {
        uint rollover; // 1e6 (USDC)
        bool openedAfterUpdate;
    }


    event ManagerUpdated(address value);
    event MaxNegativePnlOnOpenPUpdated(uint value);
    event MultiplierUpdated(uint minMultiplierRate, uint maxMultiplierRate, uint groupId);
    event CoeffUpdated(uint multiplierCoeffMax, uint groupId);
    event DenomUpdated(uint multiplierDenom, uint groupId);
    event PairParamsUpdated(uint pairIndex, PairParams value);
    event OnePercentDepthUpdated(uint pairIndex, uint valueAbove, uint valueBelow);
    event RolloverFeePerBlockPUpdated(uint pairIndex, uint fee);
    event TradeInitialAccFeesStored(address trader, uint pairIndex, uint index, uint rollover);
    event AccRolloverFeesStored(uint pairIndex, uint valueLong, uint valueShort);
    event LiqThresholdUpdated(uint newThreshold);
    event FeesCharged(
        bool buy,
        uint collateral, 
        uint leverage,
        int percentProfit,
        uint r,
        uint closingFee,
        uint lossProtection
    );

    event KeeperUpdated(address keeper);
    event LossProtectionConfigSet(uint numTiers, uint[] longSkewConfig, uint[] shortSkewConfig);
    event PairStorageUpdated(address newPairStorage);
    
    function storeTradeInitialAccFees(address trader, uint pairIndex, uint index, bool long) external;

    function getTradePriceImpact(
        uint openPrice, 
        uint pairIndex,
        bool long,
        uint openInterest,
        bool isPnl
    )   
        external 
        view
        returns (
            uint priceAfterImpact 
        );

    function getTradeLiquidationPrice(
        address trader,
        uint pairIndex,
        uint index,
        uint openPrice, 
        bool long,
        uint collateral, 
        uint leverage
    ) external view returns (uint);

    function getTradeValue(
        ITradingStorage.Trade memory _trade,
        uint collateral,
        int percentProfit, 
        uint closingFee
    ) external returns (uint, int, uint); 

    // Funding fee value
    function getTradeRolloverFee(
        address trader,
        uint pairIndex,
        uint index,
        bool long,
        uint collateral, 
        uint leverage
    ) external view returns (uint);
  
    function lossProtectionTier(ITradingStorage.Trade memory _trade, bool _isPnl) external view returns (uint _tier);

    function resetTradeInitialAccess(address trader, uint pairIndex, uint index) external;
    
    function riskManager() external view returns (address) ;
    
    function pairsStorage() external view returns(IPairStorage);
}

// ============================================================
// FILE: src/interfaces/IPairStorage.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

interface IPairStorage {
    
    struct Feed {
        uint maxOpenDeviationP;
        uint maxCloseDeviationP;
        bytes32 feedId;
    }

    struct BackupFeed {
        uint maxDeviationP;
        address feedId;
    }

    struct Leverage {
        uint minLeverage; // Minimun leverage for legacy orderType
        uint maxLeverage; // Maximum leverage for legacy orderType
        uint pnlMinLeverage; // Minimum leverage for pnl Based orderType
        uint pnlMaxLeverage; // Maximum leverage for pnl based orderType
    }

    struct Values {
        int  maxGainP;
        int  maxSlP;
        uint maxLongOiP;
        uint maxShortOiP;
        uint groupOpenInterestPercentageP;
        uint maxWalletOIP;
        bool isUSDCAligned;
    }

    struct Pair {
        Feed feed;
        BackupFeed backupFeed;
        uint spreadP;
        uint pnlSpreadP;
        Leverage leverages;
        uint priceImpactMultiplier;
        int skewImpactMultiplier;
        uint groupIndex;
        uint feeIndex;
        Values values;
    }

    struct PairParams {
        uint posSpreadCap;
        uint negSpreadCap;
        uint isPnlTypeAllowed;
        uint pnlPriceImpactMultiplier;
        uint pnlSkewImpactMultiplier;
        uint pnlPosSpreadCap;
        uint pnlNegSpreadCap;
        uint minBorrowFee;
        uint maxBorrowFee;
        uint lazerFeedId;

    }

    struct AdditionalPairParams{
        uint utilizationThreshold;
        uint borrowFeesMultiplier;
        uint skewThreshold;
        uint isPositionRollOngoing;
        uint param_13;
        uint param_14;
        uint param_15;
        uint param_16;
        uint param_17;
        uint param_18;
    }

    struct Group {
        string name;
        uint maxOpenInterestP; 
        bool isSpreadDynamic;
    }

    struct PairData {
        string from;
        string to;
        uint numTiers;
        mapping(uint => uint) openCloseTiersThresholds;
        mapping(uint => uint) openCloseThresholdsTimers;
    }

    struct PnlFees {
        uint numTiers;
        uint[] tierP; // In 1e10 Precision, 1e10 = 1%
        uint[] feesP; // 1e10 = 1%
    }

    struct Fee {
        uint openFeeP;
        uint closeFeeP; 
        uint limitOrderFeeP; 
        uint minLevPosUSDC; 
        PnlFees pnlFees;
    }

    struct SkewFee {
        int[2][10] eqParams;
    }

    // Events
    event PairAdded(uint index, bytes32 feedId);
    event PairUpdated(uint index);
    event PairDelisted(uint index);
    event GroupAdded(uint index, string name);
    event GroupUpdated(uint index);
    event FeeAdded(uint index);
    event FeeUpdated(uint index);
    event SkewFeeAdded(uint index);
    event SkewFeeUpdated(uint index);
    event LossProtectionAdded(uint pairIndex, uint[] tier, uint[] multiplier);
    event BlockOILimitsSet(uint[] pairIndex, uint[] limits);
    event OrderLimitsSet(uint[] pairIndex, uint[] limits);
    event PairParamsUpdated(PairParams params);
    event AdditionalPairParamsUpdated(AdditionalPairParams params);
    event PairDataUpdated(uint pairIndex, string from, string to, uint numTiers, uint[] tierthresholds, uint[] timers); 
    event OIMultiplierUpdated(uint256 multiplier);
    event MinGasFeesUpdated(uint256 amount);
    event PairInfosUpdated(address _pairInfos);
    event RollAdjustmentInitiated(uint pairIndex);
    event RollAdjustmentCompleted(uint pairIndex);

    function updateGroupOI(uint, uint, bool, bool) external;

    function pairJob(uint) external returns (string memory from, string memory to, bytes32, address, uint);

    function pairGroupIndex(uint) external view returns (uint);

    function pairFeed(uint) external view returns (Feed memory);

    function pairBackupFeed(uint) external view returns (BackupFeed memory);

    function pairSpreadP(uint, bool) external view returns (uint);

    function pairSpreadP(uint) external view returns (uint);
    
    function pairMinLeverage(uint, bool) external view returns (uint);

    function pairMaxLeverage(uint, bool) external view returns (uint);

    function groupMaxOI(uint) external view returns (uint);

    function groupOI(uint) external view returns (uint);

    function guaranteedSlEnabled(uint) external view returns (bool);

    function pairLimitOrderFeeP(uint) external view returns (uint);

    function pairOpenFeeP(uint, uint, bool) external view returns (uint);

    function pairCloseFeeP(uint) external view returns (uint);

    function pairMinLevPosUSDC(uint) external view returns (uint);

    function lossProtectionMultiplier(uint _pairIndex, uint _tier) external view returns (uint);

    function maxWalletOI(uint _pairIndex) external view returns (uint);

    function pairMaxOI(uint _pairIndex) external view returns (uint);

    function pairsCount() external view returns (uint);

    function blockOILimit(uint _pairIndex) external view returns(uint);

    function isUSDCAligned(uint _pairIndex) external view returns(bool);

    function pairPriceImpactMultiplier(uint _pairIndex, bool isPnl) external view returns(uint);

    function pairSkewImpactMultiplier(uint _pairIndex, bool isPnl) external view returns(int);

    function isPnlOrderTypeAllowed(uint _pairIndex) external view returns(bool);

    function isDynamicSpreadEnabled(uint _pairIndex) external view returns(bool);

    function openCloseThreshold(uint _pairIndex, uint256 _leveragePos) external view returns(uint256);

    function storePosType(address trader, uint pairIndex, uint index, bool isPnl) external;

    function resetPosType(address trader, uint pairIndex, uint index) external;

    function getPosType(address trader, uint pairIndex, uint index) external view returns(bool);

    function pairMaxLongOI(uint _pairIndex) external view returns (uint);

    function pairMaxShortOI(uint _pairIndex) external view returns (uint);

    function getPnlBasedFee(uint pairIndex, uint collateral, int percentProfit) external view returns(uint);

    function correctTp(uint openPrice, uint leverage, uint tp, bool buy, uint pairIndex) external view returns(uint);

    function correctSl(uint openPrice, uint leverage, uint sl, bool buy, uint pairIndex) external view returns (uint);

    function currentPercentProfit(
        uint openPrice,
        uint currentPrice,
        bool buy,
        uint leverage,
        uint pairIndex
    ) external view returns (int p);

    function spreadCaps(uint _pairIndex, bool isPnl) external view returns(uint,uint);

    function maxProfitP(uint pairIndex) external view returns(int);

    function minBorrowFee(uint _pairIndex) external view returns(uint);

    function maxBorrowFee(uint _pairIndex) external view returns(uint);
    
    function getOIMultiplier() external view returns(uint256);

    function pairUtililizationThreshold(uint _pairIndex) external view returns(uint);

    function pairBorrowFeesMultiplier(uint _pairIndex) external view returns(uint);

    function pairSkewThreshold(uint _pairIndex) external view returns(uint);

    function getGasFees(uint pairIndex, uint collateral, int percentProfit, bool isClose) external view returns(uint);

    function getLazerFeedId(uint _pairIndex) external view returns (uint256);
    
    function isPositionRollOngoing(uint _pairIndex) external view returns (bool);
}

// ============================================================
// FILE: src/interfaces/IPausable.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

interface IPausable {
    function isPaused() external view returns (bool);
}

// ============================================================
// FILE: src/interfaces/IPriceAggregator.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;
import "./IPairStorage.sol";
import "./IExecute.sol";
import "./ITradingStorage.sol";

interface IPriceAggregator {

    enum OrderType {
        MARKET_OPEN,
        MARKET_CLOSE,
        LIMIT_OPEN,
        LIMIT_CLOSE,
        UPDATE_MARGIN,
        UPDATE_SL,
        MARKET_OPEN_PNL,
        MARKET_CLOSE_PNL,
        LIMIT_CLOSE_PNL
    }

    enum PriceSourcing {
        PYTH_CORE,
        PYTH_LAZER
    }

    struct Order {
        uint pairIndex;
        OrderType orderType;
        bytes32 job;
        bool initiated;
    }

    struct PendingSl {
        address trader;
        uint pairIndex;
        uint index;
        uint openPrice;
        bool buy;
        uint newSl;
    }

    struct PendingMarginUpdate {
        address trader;
        uint pairIndex;
        uint index;
        ITradingStorage.updateType _type;
        uint amount;
        uint tier;
        uint marginFees;
        uint oldLeverage;
    }

    // Events
    event AddressUpdated(string name, address a);
    event NumberUpdated(string name, uint value);
    event PythUpdated(address a);
    event PythLazerUpdated(address a);
    event PriceReceived(uint orderId, uint pairIndex, uint price);
    event BackupPriceReceived(uint orderId, uint pairIndex, uint price);
    event BackUpTriggered(bool _start);
    event chainlinkValidityPeriodSet(uint _newPeriod);
    event RiskManagerUpdated(address _newRiskManager);
    
    function pairsStorage() external view returns (IPairStorage);

    function executions() external view returns (IExecute);

    function getPrice(uint, OrderType) external returns (uint);

    function fulfill(uint orderId, bytes[] calldata priceUpdateData, PriceSourcing _priceSourcing, int spreadP) external payable;

    function openFeeP(uint, uint, bool) external view returns (uint);

    function pendingSlOrders(uint) external view returns (PendingSl memory);

    function pendingMarginUpdateOrders(uint) external view returns (PendingMarginUpdate memory);

    function storePendingSlOrder(uint orderId, PendingSl calldata p) external;

    function storePendingMarginUpdateOrder(uint orderId, PendingMarginUpdate calldata p) external;

    function unregisterPendingSlOrder(uint orderId) external;

    function unregisterPendingMarginUpdateOrder(uint orderId) external;

    function getOrder(uint _id) external view returns(Order memory);

    function forceCloseTradeMarket(
        address _trader,
        uint _pairIndex,
        uint _index,
        uint _amount,
        uint _price) external;


}

// ============================================================
// FILE: src/interfaces/ITradingStorage.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./IPriceAggregator.sol";
import "./IVaultManager.sol";
import "./IPausable.sol";
import "./ICallbacks.sol";

interface ITradingStorage {

    enum LimitOrder{
        TP,
        SL,
        LIQ,
        OPEN
    }

    enum updateType{
        DEPOSIT,
        WITHDRAW
    }

    struct Trader{
        uint leverageUnlocked;
        address referral;
        uint referralRewardsTotal; 
    }

    struct Trade{
        address trader;
        uint pairIndex;
        uint index;
        uint initialPosToken; 
        uint positionSizeUSDC; 
        uint openPrice; 
        bool buy;
        uint leverage;
        uint tp; 
        uint sl; 
        uint timestamp;
    }

    struct TradeInfo{
        uint openInterestUSDC; 
        uint tpLastUpdated;
        uint slLastUpdated;
        bool beingMarketClosed;
        uint lossProtection;
    }

    struct OpenLimitOrder{
        address trader;
        uint pairIndex;
        uint index;
        uint positionSize;
        bool buy;
        uint leverage;
        uint tp; 
        uint sl; 
        uint price; 
        uint slippageP;
        uint block;
        uint executionFee;
    }

    struct PendingMarketOrder{
        Trade trade;
        uint block;
        uint wantedPrice; 
        uint slippageP; 
    }

    struct PendingLimitOrder{
        address trader;
        uint pairIndex;
        uint index;
        LimitOrder orderType;
    }

    event InvalidNumber(uint _maxTradesPerPair, uint _maxPendingMarketOrders);
    event SupportedTokenAdded(address a);
    event TradingContractAdded(address a);
    event TradingContractRemoved(address a);
    event AddressUpdated(string name, address a);
    event NumberUpdated(string name, uint value);
    event NumberUpdatedPair(string name, uint pairIndex, uint value);
    event BuybacksKeeperUpdated(address a);
    event PositionRollKeeperUpdated(address a, bool b);
    event RollAdjustmentDone(Trade t, uint newOpenPrice, uint oldLeverage, uint marginFeesCharged);
    event TradeReferred(
        address _trader, 
        address _referrer, 
        uint _leveragedPosition, 
        uint _traderFeePostDiscount, 
        uint _startingFees,
        uint _referrerRebate,
        uint _pairIndex
    );
    event FeesCharged(address _trader, uint _pairIndex, bool _buy, uint fee);
    event OIUpdated(
        bool _open,
        bool _long, 
        uint _pairIndex,
        uint _leveragedPos,
        uint _price
    );
    
    event MarketOpenCanceled(
        uint orderId, 
        address indexed trader, 
        uint pairIndex
    );

    event FeesClaimed(address govTreasury, uint govFees, address devTreasury, uint256 devFees);
    event BuybackFeeClaimed(address buybacksKeeper, uint govFees, uint devFees);
    event RebateClaimed(address referrer, uint amount);
    event FeesDecremented(uint256 devAmount, uint256 govAmount);
    
    function gov() external view returns (address);

    function dev() external view returns (address);

    function usdc() external view returns (IERC20);

    function priceAggregator() external view returns (IPriceAggregator);

    function vaultManager() external view returns (IVaultManager);

    function trading() external view returns (address);

    function callbacks() external view returns (address);

    function transferUSDC(address, address, uint) external;

    function unregisterTrade(address, uint, uint) external;

    function registerPartialTrade(address, uint, uint, uint) external;

    function unregisterPendingMarketOrder(uint, bool) external;

    function unregisterOpenLimitOrder(address, uint, uint) external;

    function hasOpenLimitOrder(address, uint, uint) external view returns (bool);

    function storePendingMarketOrder(PendingMarketOrder memory, uint, bool) external;

    function openTrades(address, uint, uint) external view returns (Trade memory);

    function openTradesInfo(address, uint, uint) external view returns (TradeInfo memory);

    function updateSl(address, uint, uint, uint) external;

    function updateTp(address, uint, uint, uint) external returns(uint);

    function getOpenLimitOrder(address, uint, uint) external view returns (OpenLimitOrder memory);

    function reqIDpendingLimitOrder(uint) external view returns (PendingLimitOrder memory);

    function storeOpenLimitOrder(OpenLimitOrder memory) external;

    function reqIDpendingMarketOrder(uint) external view returns (PendingMarketOrder memory);

    function storePendingLimitOrder(PendingLimitOrder memory, uint) external;

    function updateOpenLimitOrder(OpenLimitOrder calldata) external;

    function firstEmptyTradeIndex(address, uint) external view returns (uint);

    function firstEmptyOpenLimitIndex(address, uint) external view returns (uint);

    function updateTrade(Trade memory) external;

    function unregisterPendingLimitOrder(uint) external;

    function handleDevGovFees(address, uint, uint, bool, bool, bool) external returns (uint);

    function storeTrade(Trade memory, TradeInfo memory, bool) external;

    function openLimitOrdersCount(address, uint) external view returns (uint);

    function openTradesCount(address, uint) external view returns (uint);

    function pendingMarketOpenCount(address, uint) external view returns (uint);

    function pendingMarketCloseCount(address, uint) external view returns (uint);

    function maxTradesPerPair() external view returns (uint);

    function pendingOrderIdsCount(address) external view returns (uint);

    function maxPendingMarketOrders() external view returns (uint);

    function totalOI() external view returns (uint);
    
    function pairTraders(uint, uint) external view returns(address);

    function openInterestUSDC(uint, uint) external view returns (uint);

    function getPendingOrderIds(address) external view returns (uint[] memory);

    function applyReferralAndPnlFee(address, uint, uint, bool, uint, int ,uint, bool) external returns (uint, uint, uint);

    function maxOpenInterest() external view returns (uint);

    function getUsdOI() external view returns(uint[2] memory);

    function forceUnregisterPendingMarketOrder(uint _id) external;

    function incrementClosingFees(uint, uint) external;

    function isValidOI(uint pairIndex, bool buy, uint leveragedPos) external view returns(bool);

    function withinExposureLimits(address _trader, uint _pairIndex, uint _leveragedPos, bool _buy) external view returns (bool);
    
    function positionRollkeepers(address _keeper) external view returns (bool);
}

// ============================================================
// FILE: src/interfaces/ITranche.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;
import "@openzeppelin/contracts/interfaces/IERC4626.sol";

interface ITranche is IERC4626 {

    function feesOn() external view returns (bool);

    function sendVeRewards(uint256 rewards) external;

    function totalReserved() external view returns (uint256);

    function depositCap() external view returns (uint256);

    function veTranche() external view returns (address);

    function withdrawAsVaultManager(uint256 amount) external;

    function reserveBalance(uint256) external;

    function releaseBalance(uint256) external;

    function hasLiquidity(uint256 _reserveAmount) external view returns (bool);

}

// ============================================================
// FILE: src/interfaces/IVaultManager.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

interface IVaultManager {
    //events
    event GovChanged(address indexed previousGov, address indexed newGov);
    event StorageChanged(address indexed previousStorage, address indexed newStorage);
    event JuniorTrancheChanged(address indexed previousJunior, address indexed newJunior);
    event SeniorTrancheChanged(address indexed previousSenior, address indexed newSenior);
    event ReserveRatioUpdated(uint256 previousRatio, uint256 newRatio);
    event BalancingDeltaUpdated(uint256 previousDelta, uint256 newDelta);
    event ConstrainedLiquidityThresholdUpdated(uint256 previousThreshold, uint256 newThreshold);
    event EarlyWithdrawFeeUpdated(uint256 previousFee, uint256 newFee);
    event RewardsAllocated(uint256 amount, bool isPnl);
    event RewardsDistributed(uint256 juniorRewards, uint256 juniorVeRewards,uint256 seniorRewards, uint256 seniorVeRewards);
    event PnlRewardsDistributed(uint256 juniorRewards, uint256 seniorRewards);
    event USDCSentToTrader(address indexed trader, uint256 amount);
    event USDCReceivedFromTrader(address indexed trader, uint256 amount);
    event BalanceReserved(uint256 amount);
    event BalanceReleased(uint256 amount);
    event TradingContractAdded(address a);
    event TradingContractRemoved(address a);
    event ReferralRebateAwarded(uint amount);
    event NumberUpdated(string name, uint value);
    event CurrentBufferRatioUpdated(int _newBufferRatio);
    event KeeperSet(address keeper);
    event TotalRewardsDecremented(uint256 amount, uint256 newTotalRewards);
    event WithdrawnFromBuffer(address to, uint256 amount);
    event AddedToBuffer(address from, uint256 amount);
    event GasFeesAllocated(uint256 amount);
    event GasFeesClaimed(uint256 amount, address receiver);

    function maxLockTime() external view returns (uint256);

    function minLockTime() external view returns (uint256);

    function earlyWithdrawFee() external view returns (uint256);

    function getBalancingFee(address, bool, uint256) external view returns (uint256);

    function getCollateralFee() external view returns (uint256);

    function gov() external view returns (address);

    function sendUSDCToTrader(address, uint) external;

    function receiveUSDCFromTrader(address, uint) external;

    function currentBalanceUSDC() external view returns (uint256);

    function currentAdjustedBalanceUSDC() external view returns (uint256);

    function allocateRewards(uint256, bool) external;
    
    function decrementPnlRewards(uint256) external;

    function reserveBalance(uint256) external;

    function releaseBalance(uint256) external;

    function sendReferrerRebateToStorage(uint) external;

    function adjustedBalance(uint256 balance) external view returns(uint256);
    
    function allocateGasFees(uint _amount) external;
    
    function claimGasFees(uint _amount) external;
}

// ============================================================
// FILE: src/interfaces/IVeTranche.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

interface IVeTranche {
    // Define events
    event Locked(
        uint256 indexed tokenId,
        address indexed owner,
        uint256 shares,
        uint256 lockTime,
        uint256 lockMultiplier
    );
    event Unlocked(uint256 indexed tokenId, address indexed owner, uint256 shares, uint256 fee);
    event RewardsDistributed(uint256 totalRewards, uint256 totalLockPoints);
    event RewardClaimed(uint256 indexed tokenId, address indexed owner, uint256 amount);
    event NumberUpdated(string name, uint value);
    
    function distributeRewards(uint256) external returns (uint256);

    function getTotalLockPoints() external returns (uint256);

    function getLockPoints(uint256) external returns (uint256);
}

// ============================================================
// FILE: src/VaultManagerV2.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;

import "./interfaces/ITradingStorage.sol";
import "./interfaces/ITranche.sol";
import "./interfaces/IVeTranche.sol";
import "./interfaces/IVaultManager.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract VaultManager is Initializable, IVaultManager {
    using SafeERC20 for IERC20;

    uint private constant _PRECISION = 1e10; // 10 decimals
    
    address public override gov;
    address public requestedGov;
    address public keeper;
    ITradingStorage public storageT;
    ITranche public junior;
    ITranche public senior;

    // lock params
    uint256 public override maxLockTime;
    uint256 public override minLockTime;

    // fees
    uint256 public override earlyWithdrawFee;
    uint256 public balancingFee;
    uint256 public balancingDeltaThreshold;
    uint256[5] public collateralFees;
    uint256[5] public bufferThresholds;

    // skew params for multpliers
    uint256 public targetReserveRatio;
    uint256 public constrainedLiquidityThreshold;
    uint256 public baseMultiplier;
    uint256 public minMultiplier;
    uint256 public maxMultiplier;

    // curve parameters
    uint256 public multiplierCoeff;
    uint256 public multiplierDenom;

    // reward parameters
    uint256 public totalRewards;
    uint256 public pnlRewards;
    uint256 public rewardPeriod;
    uint256 public lastRewardTime;

    int public currentBufferRatio;

    mapping(address => bool) public isTradingContract;
    
    uint public gasFeesCollected; // keeper gas fees in USDC

    modifier onlyGov() {
        require(msg.sender == gov, "GOV_ONLY");
        _;
    }
    modifier onlyCallbacks() {
        require(msg.sender == storageT.callbacks() || msg.sender == address(storageT), "CALLBACKS_ONLY");
        _;
    }

    modifier onlyTranches() {
        require(msg.sender == address(junior), "TRANCHES_ONLY");
        _;
    }

    modifier onlyKeeper(){
        require(msg.sender == address(keeper),"KEEPER_ONLY");
        _;
    }

    constructor() {
        _disableInitializers();
    }
    /**
     * @notice Initializes the proxy
     * @param _gov Governance address
     * @param _storageT Trading Storage
     */
    function initialize(address _gov, address _storageT) external initializer {

        require(_storageT != address(0), "ZERO_ADDRESS");
        require(_gov != address(0), "ZERO_ADDRESS");
        
        gov = _gov;
        keeper = _gov;
        storageT = ITradingStorage(_storageT);
        minLockTime = 14 days;
        maxLockTime = 180 days;
        earlyWithdrawFee = 10000; // 10 Percent
        balancingFee = 500;
        targetReserveRatio = 65;
        balancingDeltaThreshold = 6250;
        constrainedLiquidityThreshold = 6750;
        baseMultiplier = 100;
        minMultiplier = 80;
        maxMultiplier = 240;
        multiplierCoeff = 3103;
        multiplierDenom = 9366500;
        rewardPeriod = 7 days;
        lastRewardTime = block.timestamp;
        totalRewards = 0; // Not needed to set
        currentBufferRatio = 0;
        collateralFees = [10, 25, 100, 150, 250];
        bufferThresholds = [90, 95, 100, 105, 110];
    }

/**---------------------------Gov Gated Setters----------------------------------------------- */

    /**
     * @notice Requests the governance address.
     * @dev Only callable by the current governance.
     * @param _gov The new governance address.
     */
    function requestGov(address _gov) external onlyGov {
        require(_gov != address(0));
        requestedGov = _gov;
    }

    function setGov(address _newGov) external {
        require(_newGov != address(0));
        require(msg.sender == requestedGov, "INVALID_CALLER");
        require(_newGov == requestedGov, "INVALID_CALLER");
        emit GovChanged(gov, requestedGov);
        gov = requestedGov;
    }

    /**
     * @dev Set the Keeper address.
     * @param _keeper Address of the new Keeper.
     */
    function setKeeper(address _keeper) external onlyGov{
        require(_keeper != address(0), "ZERO_ADDRESS");
        keeper =  _keeper;
        emit KeeperSet(_keeper);
    }

    function setStorage(address _storageT) external onlyGov {
        require(_storageT != address(0), "INVALID_ADDRESS");
        emit StorageChanged(address(storageT), _storageT);
        storageT = ITradingStorage(_storageT);
    }

    function setJuniorTranche(address _junior) external onlyGov {
        require(_junior != address(0), "INVALID_ADDRESS");
        emit JuniorTrancheChanged(address(junior), _junior);
        junior = ITranche(_junior);
    }

    function setSeniorTranche(address _senior) external onlyGov {
        require(_senior != address(0), "INVALID_ADDRESS");
        emit SeniorTrancheChanged(address(senior), _senior);
        senior = ITranche(_senior);
    }

    function setReserveRatio(uint256 _targetReserveRatio) external onlyGov {
        require(_targetReserveRatio < 100, "TOO_HIGH");
        emit ReserveRatioUpdated(targetReserveRatio, _targetReserveRatio);
        targetReserveRatio = _targetReserveRatio;
    }

    function setBalancingDeltaThreshold(uint256 _balancingDeltaThreshold) external onlyGov {
        require(_balancingDeltaThreshold < 10000, "TOO_HIGH");
        emit BalancingDeltaUpdated(balancingDeltaThreshold, _balancingDeltaThreshold);
        balancingDeltaThreshold = _balancingDeltaThreshold;
    }

    function setConstrainedLiquidityThreshold(uint256 _constrainedLiquidityThreshold) external onlyGov {
        require(_constrainedLiquidityThreshold < 10000, "TOO_HIGH");
        emit ConstrainedLiquidityThresholdUpdated(constrainedLiquidityThreshold, _constrainedLiquidityThreshold);
        constrainedLiquidityThreshold = _constrainedLiquidityThreshold;
    }

    function setEarlyWithdrawFee(uint256 _earlyWithdrawFee) external onlyGov {
        require(_earlyWithdrawFee <= 10000, "TOO_HIGH");
        emit EarlyWithdrawFeeUpdated(earlyWithdrawFee, _earlyWithdrawFee);
        earlyWithdrawFee = _earlyWithdrawFee;
    }

    function setBalancingFee(uint256 _balancingFee) external onlyGov {
        require(_balancingFee <= 10000, "TOO_HIGH");
        balancingFee = _balancingFee;
        emit NumberUpdated("Balancing Fee", _balancingFee);
    }

    function setCollateralFees(uint256[5] memory _collateralFees) external onlyGov {
        for (uint i = 0; i < _collateralFees.length; ) {
            require(_collateralFees[i] < 10000, "TOO_HIGH");
            i++;
        }
        collateralFees = _collateralFees;
    }

    function setBufferThresholds(uint256[5] calldata _bufferThresholds) external onlyGov {
        for (uint i; i < _bufferThresholds.length; ) {
            if (i != _bufferThresholds.length - 1)
                require(_bufferThresholds[i] < _bufferThresholds[i + 1], "NOT_DESCENDING_ORDER");
            i++;
        }
        bufferThresholds = _bufferThresholds;
    }

    function setMaxLockTime(uint256 _maxLockTime) external onlyGov {
        require(_maxLockTime > 0, "MAX_LOCK_TIME_IS_ZERO");
        require(_maxLockTime > minLockTime, "MAX_LOCK_TIME_LESS_THAN_MIN_LOCK_TIME");
        maxLockTime = _maxLockTime;
        emit NumberUpdated("Max Lock Time", _maxLockTime);
    }

    function setMinLockTime(uint256 _minLockTime) external onlyGov {
        require(_minLockTime > 0, "MIN_LOCK_TIME_IS_ZERO");
        require(maxLockTime > _minLockTime, "MAX_LOCK_TIME_LESS_THAN_MIN_LOCK_TIME");
        minLockTime = _minLockTime;
        emit NumberUpdated("Min Lock Time", _minLockTime);
    }

    function setBaseMultiplier(uint256 _baseMultiplier) external onlyGov {
        require(_baseMultiplier > 99, "TOO_LOW");
        baseMultiplier = _baseMultiplier;
        emit NumberUpdated("Base Multiplier", _baseMultiplier);
    }

    function setMinMultiplier(uint256 _minMultiplier) external onlyGov {
        require(_minMultiplier > 0, "TOO_LOW");
        require(_minMultiplier < baseMultiplier, "TOO_HIGH");
        minMultiplier = _minMultiplier;
        emit NumberUpdated("Min Mulitplier", _minMultiplier);
    }

    function setMaxMultiplier(uint256 _maxMultiplier) external onlyGov {
        require(_maxMultiplier > baseMultiplier, "TOO_LOW");
        maxMultiplier = _maxMultiplier;
        emit NumberUpdated("Max Mulitplier", _maxMultiplier);
    }

    function setMultiplierDenom(uint256 _multiplierDenom) external onlyGov {
        require(_multiplierDenom > 0, "NUMBER_INVALID");
        multiplierDenom = _multiplierDenom;
        emit NumberUpdated("Mulitplier Denominator", _multiplierDenom);    
    }

    function setMultiplierCoeff(uint256 _multiplierCoeff) external onlyGov {
        require(_multiplierCoeff > 0, "NUMBER_INVALID");
        multiplierCoeff = _multiplierCoeff;
        emit NumberUpdated("Mulitplier Coefficient", _multiplierCoeff);    
    }

    function setRewardPeriod(uint256 _rewardPeriod) external onlyGov {
        require(_rewardPeriod > 24 * 60 * 60, "TOO_LOW");
        rewardPeriod = _rewardPeriod;
        emit NumberUpdated("Reward Period", _rewardPeriod);  
    }

    function setCurrentBufferRatio(int _currentBufferRatio) external onlyKeeper {
        currentBufferRatio = _currentBufferRatio;
        emit CurrentBufferRatioUpdated(_currentBufferRatio);  
    }

    function addTradingContract(address _trading) external onlyGov {
        require(_trading != address(0));
        isTradingContract[_trading] = true;
        emit TradingContractAdded(_trading);
    }

    function removeTradingContract(address _trading) external onlyGov {
        require(_trading != address(0));
        isTradingContract[_trading] = false;
        emit TradingContractRemoved(_trading);
    }

/** --------------------------------------------------------------------------------------------- */

    /**
     * @notice Allocates rewards to the LPs
     * @param rewards The amount of rewards to allocate
     * @param isPnl Bool indicating whether Pnl Rewards
     */
    function allocateRewards(uint256 rewards, bool isPnl) external override {
        require(rewards > 0, "NO_REWARDS_ALLOCATED");
        uint256 feeRewards = isPnl ? rewards : rewards;
        if (!isTradingContract[msg.sender]) IERC20(junior.asset()).safeTransferFrom(msg.sender, address(this), feeRewards);
        isPnl ? pnlRewards += feeRewards : totalRewards += feeRewards;
        emit RewardsAllocated(feeRewards, isPnl);
    }
    
    /**
     * @notice Decrements pnl rewards
     * @param _amount The amount to decrement
     */
    function decrementPnlRewards(uint _amount) external override onlyCallbacks {
        if (_amount > pnlRewards) {
            pnlRewards = 0;
        } else {
            pnlRewards = pnlRewards - _amount;
        }
    }

    /**
     * @notice Sends a part of rewards as a referral rebate to storage
     * @param _amount The amount to send as a referral rebate
     */
    function sendReferrerRebateToStorage(uint _amount) external override onlyCallbacks {
        require(_amount > 0, "NO_REWARDS_ALLOCATED");
        IERC20(junior.asset()).safeTransfer(address(storageT), _amount);

        emit ReferralRebateAwarded(_amount);
    }

    /**
     * @notice Distributes rewards to VeTranche Lockers
     * @param _tranche The address of the tranche contract
     * @param rewards The amount of rewards to distribute
     * @return uint256 Remaining rewards
     */
    function distributeVeRewards(
        address _tranche,
        uint256 rewards
    ) external onlyGov returns (uint256) {
        return _distributeVeRewards(IVeTranche(ITranche(_tranche).veTranche()), rewards);
    }

    /**
     * @notice Distributes rewards accumulated in tranche
     * @param _tranche The address of the tranche contract
     * @param rewards The amount of rewards to distribute
     */
    function distributeTrancheRewards(address _tranche, uint256 rewards) external onlyGov {
        _distributeRewards(_tranche, rewards);
    }

    /**
     * @notice Sends USDC tokens to a trader
     * @param _trader The address of the trader
     * @param _amount The amount of USDC to send
     */
    function sendUSDCToTrader(address _trader, uint _amount) external override onlyCallbacks {
        _sendUSDCToTrader(_trader, _amount);
    }

    /**
     * @notice Receives USDC tokens from a trader and applies vault fee
     * @param _trader The address of the trader
     * @param _amount The amount of USDC to receive
     */
    function receiveUSDCFromTrader(address _trader, uint _amount) external override onlyCallbacks {
        _receiveUSDCFromTrader(_trader, _amount);
    }

    /**
     * @notice Reserves balance for avantis Tranche
     * @param _amount The total amount to reserve
     */
    function reserveBalance(uint256 _amount) external override onlyCallbacks {
        junior.reserveBalance(_amount);
    }

    /**
     * @notice Releases balance to Avantis Tranche
     * @param _amount The amount to be released.
     */
    function releaseBalance(uint256 _amount) external override onlyCallbacks {
        junior.releaseBalance(_amount);
    }

    /**
     * @notice Distributes the collected fee shares to a specified tranche.
     * @param _tranche The address of the tranche to distribute fee shares to.
     */
    function distributeCollectedFeeShares(address _tranche) external onlyGov {
        _distributeCollectedFeeShares(_tranche);
    }

    /**
     * @notice Retrieves the total current balance in USDC across all tranches.
     * @return The total current balance in USDC.
     */
    function currentBalanceUSDC() external view override returns (uint256) {
        return junior.totalAssets();
    }

    /**
    * @notice Returns the Mulitplied balance of USDC for extended OI allocation
     */
    function currentAdjustedBalanceUSDC() external view override returns(uint256){

        return ((junior.totalAssets()) *
               storageT.priceAggregator().pairsStorage().getOIMultiplier()) /
               _PRECISION ;
    }

    /**
    @notice Helper Method to return adjusted balance in tranches
     */
    function adjustedBalance(uint256 assets) external view override returns(uint256){
        return assets * storageT.priceAggregator().pairsStorage().getOIMultiplier() /
               _PRECISION ;
    }

    /**
     * @notice Calculates the balancing fee for deposits or withdrawals.
     * @param tranche The address of the tranche.
     * @param isDeposit Specifies if the operation is a deposit.
     * @return The calculated balancing fee.
     */
    function getBalancingFee(address tranche, bool isDeposit, uint256 assets) external view override returns (uint256) {
        return 0;
    }

    /**
     * @notice Calculates the collateral fee based on the buffer ratio.
     * @return The collateral fee.
     */
    function getCollateralFee() external view override returns (uint256) {

        uint256 latestBufferRatio = getBufferRatio();
        for (uint i = 0; i < bufferThresholds.length; ) {
            if (latestBufferRatio < bufferThresholds[i]) {
                return collateralFees[i];
            }
            i++;
        }
        return 0; // default free during migration
    }

    /**
     * @notice Gets the latest buffer ratio.
     * @return The current buffer ratio.
     */
    function getBufferRatio() public view returns (uint256) {
        // using new variable as the buffer ratio directly 
        return uint256(currentBufferRatio);
    }

    /**
     * @notice Distributes vRewards to a specific veTranche.
     * @param veTranche The veTranche to distribute rewards to.
     * @param rewards The amount of rewards to distribute.
     * @return The total lock points.
     */
    function _distributeVeRewards(
        IVeTranche veTranche,
        uint256 rewards
    ) internal returns (uint256) {
        uint256 totalLockPoints = veTranche.getTotalLockPoints();
        
        // if locktime is not accumulated, no rewards to give
        if (totalLockPoints > 0) {
            IERC20(junior.asset()).safeTransfer(address(veTranche), rewards);
            veTranche.distributeRewards(rewards);
        }

        return totalLockPoints;
    }

    /**
     * @notice Distributes rewards to a specific tranche.
     * @param tranche The address of the tranche to distribute rewards to.
     * @param rewards The amount of rewards to distribute.
     */
    function _distributeRewards(address tranche, uint256 rewards) internal {
        if (rewards > 0) {
            if (tranche == address(junior)) {
                IERC20(junior.asset()).safeTransfer(tranche, rewards);
            }
        }
    }

    /**
     * @notice Transfers USDC to a trader.
     * @param _trader The address of the trader.
     * @param _amount The amount to transfer.
     */
    function _sendUSDCToTrader(address _trader, uint _amount) internal {

        // For the extreme case of totalRewards exceeding vault Manager balance
        int256 balanceAvailable = int(storageT.usdc().balanceOf(address(this))) - int(totalRewards);
        if (int(_amount) > balanceAvailable) {
            // take difference (losses) from vaults
            uint256 difference = uint(int(_amount) - int(balanceAvailable));
            junior.withdrawAsVaultManager(difference);

        }

        require(storageT.usdc().transfer(_trader, _amount));
        emit USDCSentToTrader(_trader, _amount);
    }

    /**
     * @notice Receives USDC from a trader.
     * @param _trader The address of the trader.
     * @param _amount The amount received.
     */
    function _receiveUSDCFromTrader(address _trader, uint _amount) internal {
        storageT.transferUSDC(address(storageT), address(this), _amount);
        emit USDCReceivedFromTrader(_trader, _amount);
    }

    /**
     *
     * @param _tranche Address of Tranche to distribute rewards for
     * @notice Distribute collected fee in veTranche lock/unlock
     */
    function _distributeCollectedFeeShares(address _tranche) internal {

        if(ITranche(_tranche).maxRedeem(address(this)) == 0) return;

        uint256 assets = ITranche(_tranche).redeem(
            ITranche(_tranche).maxRedeem(address(this)),
            address(this),
            address(this)
        );

        if (assets > 0) {
            _distributeVeRewards(IVeTranche(ITranche(_tranche).veTranche()), assets);
        }
    }


    function distributePnlRewardsFraction(uint _fraction) public onlyKeeper{

        uint pnlRewardsToDistribute = pnlRewards*_fraction/100;
        require(pnlRewardsToDistribute > 0, "NO_REWARDS_ALLOCATED");
        require(IERC20(junior.asset()).balanceOf(address(this)) - totalRewards > pnlRewardsToDistribute, "INSUFFICIENT_BALANCE");

        _distributeRewards(address(junior), pnlRewardsToDistribute);
        pnlRewards = pnlRewards - pnlRewardsToDistribute;
        
        emit PnlRewardsDistributed(pnlRewardsToDistribute, 0);
    }
    
    /**
     * @notice Reset variables 
     * @param _amount The amount to use as reset
     */
    function resetVariables(uint _amount) external onlyGov() {
        pnlRewards = _amount;
    }
    
    /**
     *
     * @param _pnlDistributionRatio Ratio of out 100 for what % of threshold ill be distirbuted
     * @param _thresholdAmount USDC amount for min balance for distribution
     * @param _rewards Total rewards to be distibuted
     * @notice Distribute collected fee in veTranche lock/unlock
     */
    function distributeRewardsWithThreshold(
        uint _pnlDistributionRatio, 
        uint _thresholdAmount,
        uint _rewards) 
        external onlyKeeper {
        
        int currentBalance = int(IERC20(junior.asset()).balanceOf(address(this)));
        
        if (currentBalance > int(_thresholdAmount)) {
            uint distributionAmount = _rewards ;
            uint pnlRewardsToDistribute = distributionAmount * _pnlDistributionRatio / 100;
            uint totalRewardsToDistribute = distributionAmount - pnlRewardsToDistribute;
            totalRewardsToDistribute = (totalRewardsToDistribute > totalRewards) ? totalRewards : totalRewardsToDistribute;
            pnlRewardsToDistribute = (pnlRewardsToDistribute > pnlRewards) ? pnlRewards : pnlRewardsToDistribute;
            
            if (pnlRewardsToDistribute > 0) {
                distributePnlRewardsFraction(pnlRewardsToDistribute * 100 / pnlRewards);
            }

            if (totalRewardsToDistribute > 0) {
    
                uint256 totalJuniorRewards = totalRewardsToDistribute;

                lastRewardTime = block.timestamp;
                totalRewards -= totalRewardsToDistribute;

                _distributeRewards(address(junior), totalJuniorRewards);
                emit RewardsDistributed(totalJuniorRewards, 0, 0, 0);
            }

        }
    }

    /**
    * @notice Decrement total rewards
    * @param _amount The amount to decrement
     */
    function decrementTotalRewards(uint _amount) external onlyKeeper() {
        require(_amount <= totalRewards, "UNDERFLOW_DETECTED");
        totalRewards -= _amount;
        emit TotalRewardsDecremented(_amount, totalRewards);
    }

    /**
    * @notice Withdraw from buffer
    * @param _amount The amount to withdraw
    */
    function withdrawFromBuffer(uint _amount) external onlyGov {

        require(_amount < IERC20(junior.asset()).balanceOf(address(this)), "INSUFFICIENT_BALANCE");
        require(_amount > 0, "AMOUNT_ZERO");

        IERC20(junior.asset()).safeTransfer(gov, _amount);
        emit WithdrawnFromBuffer(gov, _amount);
    }

    /**
    * @notice Add to buffer
    * @param _amount The amount to add
     */
    function addToBuffer(uint _amount) external {

        require(_amount > 0, "AMOUNT_ZERO");
        IERC20(junior.asset()).safeTransferFrom(msg.sender, address(this), _amount);
        emit AddedToBuffer(msg.sender, _amount);
    }
    
    /**
    * @notice Allocating gas fees
    * @param _amount gas fees in USDC to allocate in 1e6, 1000000 = 1 USDC
     */
    function allocateGasFees(uint _amount) external override onlyCallbacks {
        if (_amount == 0) return;
        gasFeesCollected += _amount;
        emit GasFeesAllocated(_amount);
    }
    

    /**
    * @notice Gas fee claiming
    * @param _amount Amount of USDC collected as gas fees to withdraw
     */
    function claimGasFees(uint _amount) external override onlyKeeper {
        require(gasFeesCollected >= _amount, "INSUFFICIENT_GAS_FEES_COLLECTED");
        IERC20(junior.asset()).safeTransfer(gov, _amount);
        gasFeesCollected -= _amount;
        emit GasFeesClaimed(_amount, gov);
    }

}
