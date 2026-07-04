// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0 ^0.8.13 ^0.8.20;

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
    function collateral() external view returns (uint256);

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

// lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/Initializable.sol

// OpenZeppelin Contracts (last updated v5.0.0) (proxy/utils/Initializable.sol)

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

// src/interfaces/IFBTC1.sol

interface IFireBridge {
    struct Request {
        uint256 amount;
        uint256 fee;
    }

    function addBurnRequest(
        uint256 _amount
    ) external returns (bytes32 _hash, Request memory _r);

    function addMintRequest(
        uint256 _amount,
        bytes32 _depositTxid,
        uint256 _outputIndex
    ) external returns (bytes32 _hash, Request memory _r);
}

interface IFBTC1 {
    function mintLockedFbtcRequest(
        uint256 _amount
    ) external returns (uint256 realAmount);

    function redeemFbtcRequest(
        uint256 _amount,
        bytes32 _depositTxid,
        uint256 _outputIndex
    ) external returns (bytes32 _hash, IFireBridge.Request memory _r);

    function confirmRedeemFbtc(uint256 _amount) external;

    function burn(uint256 _amount) external;
}

// src/interfaces/IOracle.sol

// Chainlink Contracts v0.8

interface AggregatorV3Interface {
    function decimals() external view returns (uint8);

    function description() external view returns (string memory);

    function version() external view returns (uint256);

    function getRoundData(
        uint80 _roundId
    )
        external
        view
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        );

    function latestRoundData()
        external
        view
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        );
}

/**
 * @title IFBTCOracle
 * @notice Interface for the FBTC Oracle contract
 */
interface IFBTCOracle {
    // Define an event that is emitted when the asset source is set
    event AssetSourceSet(address indexed assetSource);

    // Define an event that is emitted when the expired time is set
    event ExpiredTimeSet(uint256 expiredTime);

    /**
     * @notice Sets the asset's price source
     * @dev This function should be callable only by the contract owner
     * @param source The address of the source of the asset
     */
    function setAssetSource(AggregatorV3Interface source) external;

    /**
     * @notice Gets the price of the asset
     * @dev This is a view function that does not alter the blockchain state
     * @return The price of the asset
     */
    function getAssetPrice() external view returns (uint256);

    /**
     * @notice Gets the number of decimals used by the price source
     * @dev This is a view function that does not alter the blockchain state
     * @return The number of decimals
     */
    function decimals() external view returns (uint8);
}

// src/protocol/library/math/WadRayMath.sol

/**
 * @title WadRayMath library
 * @author Aave
 * @notice Provides functions to perform calculations with Wad and Ray units
 * @dev Provides mul and div function for wads (decimal numbers with 18 digits of precision) and rays (decimal numbers
 * with 27 digits of precision)
 * @dev Operations are rounded. If a value is >=.5, will be rounded up, otherwise rounded down.
 */
library WadRayMath {
  // HALF_WAD and HALF_RAY expressed with extended notation as constant with operations are not supported in Yul assembly
  uint256 internal constant WAD = 1e18;
  uint256 internal constant HALF_WAD = 0.5e18;

  uint256 internal constant RAY = 1e27;
  uint256 internal constant HALF_RAY = 0.5e27;

  uint256 internal constant WAD_RAY_RATIO = 1e9;

  /**
   * @dev Multiplies two wad, rounding half up to the nearest wad
   * @dev assembly optimized for improved gas savings, see https://twitter.com/transmissions11/status/1451131036377571328
   * @param a Wad
   * @param b Wad
   * @return c = a*b, in wad
   */
  function wadMul(uint256 a, uint256 b) internal pure returns (uint256 c) {
    // to avoid overflow, a <= (type(uint256).max - HALF_WAD) / b
    assembly {
      if iszero(or(iszero(b), iszero(gt(a, div(sub(not(0), HALF_WAD), b))))) {
        revert(0, 0)
      }

      c := div(add(mul(a, b), HALF_WAD), WAD)
    }
  }

  /**
   * @dev Divides two wad, rounding half up to the nearest wad
   * @dev assembly optimized for improved gas savings, see https://twitter.com/transmissions11/status/1451131036377571328
   * @param a Wad
   * @param b Wad
   * @return c = a/b, in wad
   */
  function wadDiv(uint256 a, uint256 b) internal pure returns (uint256 c) {
    // to avoid overflow, a <= (type(uint256).max - halfB) / WAD
    assembly {
      if or(iszero(b), iszero(iszero(gt(a, div(sub(not(0), div(b, 2)), WAD))))) {
        revert(0, 0)
      }

      c := div(add(mul(a, WAD), div(b, 2)), b)
    }
  }

  /**
   * @notice Multiplies two ray, rounding half up to the nearest ray
   * @dev assembly optimized for improved gas savings, see https://twitter.com/transmissions11/status/1451131036377571328
   * @param a Ray
   * @param b Ray
   * @return c = a raymul b
   */
  function rayMul(uint256 a, uint256 b) internal pure returns (uint256 c) {
    // to avoid overflow, a <= (type(uint256).max - HALF_RAY) / b
    assembly {
      if iszero(or(iszero(b), iszero(gt(a, div(sub(not(0), HALF_RAY), b))))) {
        revert(0, 0)
      }

      c := div(add(mul(a, b), HALF_RAY), RAY)
    }
  }

  /**
   * @notice Divides two ray, rounding half up to the nearest ray
   * @dev assembly optimized for improved gas savings, see https://twitter.com/transmissions11/status/1451131036377571328
   * @param a Ray
   * @param b Ray
   * @return c = a raydiv b
   */
  function rayDiv(uint256 a, uint256 b) internal pure returns (uint256 c) {
    // to avoid overflow, a <= (type(uint256).max - halfB) / RAY
    assembly {
      if or(iszero(b), iszero(iszero(gt(a, div(sub(not(0), div(b, 2)), RAY))))) {
        revert(0, 0)
      }

      c := div(add(mul(a, RAY), div(b, 2)), b)
    }
  }

  /**
   * @dev Casts ray down to wad
   * @dev assembly optimized for improved gas savings, see https://twitter.com/transmissions11/status/1451131036377571328
   * @param a Ray
   * @return b = a converted to wad, rounded half up to the nearest wad
   */
  function rayToWad(uint256 a) internal pure returns (uint256 b) {
    assembly {
      b := div(a, WAD_RAY_RATIO)
      let remainder := mod(a, WAD_RAY_RATIO)
      if iszero(lt(remainder, div(WAD_RAY_RATIO, 2))) {
        b := add(b, 1)
      }
    }
  }

  /**
   * @dev Converts wad up to ray
   * @dev assembly optimized for improved gas savings, see https://twitter.com/transmissions11/status/1451131036377571328
   * @param a Wad
   * @return b = a converted in ray
   */
  function wadToRay(uint256 a) internal pure returns (uint256 b) {
    // to avoid overflow, b/WAD_RAY_RATIO == a
    assembly {
      b := mul(a, WAD_RAY_RATIO)

      if iszero(eq(div(b, WAD_RAY_RATIO), a)) {
        revert(0, 0)
      }
    }
  }
}

// lib/openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Metadata.sol

// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/extensions/IERC20Metadata.sol)

/**
 * @dev Interface for the optional metadata functions from the ERC20 standard.
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

// lib/openzeppelin-contracts-upgradeable/contracts/utils/ContextUpgradeable.sol

// OpenZeppelin Contracts (last updated v5.0.1) (utils/Context.sol)

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract ContextUpgradeable is Initializable {
    function __Context_init() internal onlyInitializing {
    }

    function __Context_init_unchained() internal onlyInitializing {
    }
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }

    function _contextSuffixLength() internal view virtual returns (uint256) {
        return 0;
    }
}

// src/protocol/library/math/MathUtils.sol

/**
 * @title MathUtils library
 * @author Aave
 * @notice Provides functions to perform linear and compounded interest calculations
 */
library MathUtils {
    using WadRayMath for uint256;

    /// @dev Ignoring leap years
    uint256 internal constant SECONDS_PER_YEAR = 365 days;

    /**
     * @dev Function to calculate the interest accumulated using a linear interest rate formula
     * @param rate The interest rate, in ray
     * @param lastUpdateTimestamp The timestamp of the last update of the interest
     * @return The interest rate linearly accumulated during the timeDelta, in ray
     */
    function calculateLinearInterest(
        uint256 rate,
        uint40 lastUpdateTimestamp
    ) internal view returns (uint256) {
        //solium-disable-next-line
        uint256 result = rate *
            (block.timestamp - uint256(lastUpdateTimestamp));
        unchecked {
            result = result / SECONDS_PER_YEAR;
        }

        return WadRayMath.RAY + result;
    }

    /**
     * @dev Function to calculate the interest using a compounded interest rate formula
     * To avoid expensive exponentiation, the calculation is performed using a binomial approximation:
     *
     *  (1+x)^n = 1+n*x+[n/2*(n-1)]*x^2+[n/6*(n-1)*(n-2)*x^3...
     *
     * The approximation slightly underpays liquidity providers and undercharges borrowers, with the advantage of great
     * gas cost reductions. The whitepaper contains reference to the approximation and a table showing the margin of
     * error per different time periods
     *
     * @param rate The interest rate, in ray
     * @param lastUpdateTimestamp The timestamp of the last update of the interest
     * @return The interest rate compounded during the timeDelta, in ray
     */
    function calculateCompoundedInterest(
        uint256 rate,
        uint40 lastUpdateTimestamp,
        uint256 currentTimestamp
    ) internal pure returns (uint256) {
        //solium-disable-next-line
        uint256 exp = currentTimestamp - uint256(lastUpdateTimestamp);

        if (exp == 0) {
            return WadRayMath.RAY;
        }

        uint256 expMinusOne;
        uint256 expMinusTwo;
        uint256 basePowerTwo;
        uint256 basePowerThree;
        unchecked {
            expMinusOne = exp - 1;

            expMinusTwo = exp > 2 ? exp - 2 : 0;

            basePowerTwo =
                rate.rayMul(rate) /
                (SECONDS_PER_YEAR * SECONDS_PER_YEAR);
            basePowerThree = basePowerTwo.rayMul(rate) / SECONDS_PER_YEAR;
        }

        uint256 secondTerm = exp * expMinusOne * basePowerTwo;
        unchecked {
            secondTerm /= 2;
        }
        uint256 thirdTerm = exp * expMinusOne * expMinusTwo * basePowerThree;
        unchecked {
            thirdTerm /= 6;
        }

        return
            WadRayMath.RAY +
            (rate * exp) /
            SECONDS_PER_YEAR +
            secondTerm +
            thirdTerm;
    }

    /**
     * @dev Calculates the compounded interest between the timestamp of the last update and the current block timestamp
     * @param rate The interest rate (in ray)
     * @param lastUpdateTimestamp The timestamp from which the interest accumulation needs to be calculated
     * @return The interest rate compounded between lastUpdateTimestamp and current block timestamp, in ray
     */
    function calculateCompoundedInterest(
        uint256 rate,
        uint40 lastUpdateTimestamp
    ) internal view returns (uint256) {
        return
            calculateCompoundedInterest(
                rate,
                lastUpdateTimestamp,
                block.timestamp
            );
    }
}

// lib/openzeppelin-contracts-upgradeable/contracts/access/OwnableUpgradeable.sol

// OpenZeppelin Contracts (last updated v5.0.0) (access/Ownable.sol)

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * The initial owner is set to the address provided by the deployer. This can
 * later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract OwnableUpgradeable is Initializable, ContextUpgradeable {
    /// @custom:storage-location erc7201:openzeppelin.storage.Ownable
    struct OwnableStorage {
        address _owner;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.Ownable")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant OwnableStorageLocation = 0x9016d09d72d40fdae2fd8ceac6b6234c7706214fd39c1cd1e609a0528c199300;

    function _getOwnableStorage() private pure returns (OwnableStorage storage $) {
        assembly {
            $.slot := OwnableStorageLocation
        }
    }

    /**
     * @dev The caller account is not authorized to perform an operation.
     */
    error OwnableUnauthorizedAccount(address account);

    /**
     * @dev The owner is not a valid owner account. (eg. `address(0)`)
     */
    error OwnableInvalidOwner(address owner);

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the address provided by the deployer as the initial owner.
     */
    function __Ownable_init(address initialOwner) internal onlyInitializing {
        __Ownable_init_unchained(initialOwner);
    }

    function __Ownable_init_unchained(address initialOwner) internal onlyInitializing {
        if (initialOwner == address(0)) {
            revert OwnableInvalidOwner(address(0));
        }
        _transferOwnership(initialOwner);
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        _checkOwner();
        _;
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        OwnableStorage storage $ = _getOwnableStorage();
        return $._owner;
    }

    /**
     * @dev Throws if the sender is not the owner.
     */
    function _checkOwner() internal view virtual {
        if (owner() != _msgSender()) {
            revert OwnableUnauthorizedAccount(_msgSender());
        }
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby disabling any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        _transferOwnership(address(0));
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        if (newOwner == address(0)) {
            revert OwnableInvalidOwner(address(0));
        }
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        OwnableStorage storage $ = _getOwnableStorage();
        address oldOwner = $._owner;
        $._owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}

// lib/openzeppelin-contracts-upgradeable/contracts/utils/PausableUpgradeable.sol

// OpenZeppelin Contracts (last updated v5.0.0) (utils/Pausable.sol)

/**
 * @dev Contract module which allows children to implement an emergency stop
 * mechanism that can be triggered by an authorized account.
 *
 * This module is used through inheritance. It will make available the
 * modifiers `whenNotPaused` and `whenPaused`, which can be applied to
 * the functions of your contract. Note that they will not be pausable by
 * simply including this module, only once the modifiers are put in place.
 */
abstract contract PausableUpgradeable is Initializable, ContextUpgradeable {
    /// @custom:storage-location erc7201:openzeppelin.storage.Pausable
    struct PausableStorage {
        bool _paused;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.Pausable")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant PausableStorageLocation = 0xcd5ed15c6e187e77e9aee88184c21f4f2182ab5827cb3b7e07fbedcd63f03300;

    function _getPausableStorage() private pure returns (PausableStorage storage $) {
        assembly {
            $.slot := PausableStorageLocation
        }
    }

    /**
     * @dev Emitted when the pause is triggered by `account`.
     */
    event Paused(address account);

    /**
     * @dev Emitted when the pause is lifted by `account`.
     */
    event Unpaused(address account);

    /**
     * @dev The operation failed because the contract is paused.
     */
    error EnforcedPause();

    /**
     * @dev The operation failed because the contract is not paused.
     */
    error ExpectedPause();

    /**
     * @dev Initializes the contract in unpaused state.
     */
    function __Pausable_init() internal onlyInitializing {
        __Pausable_init_unchained();
    }

    function __Pausable_init_unchained() internal onlyInitializing {
        PausableStorage storage $ = _getPausableStorage();
        $._paused = false;
    }

    /**
     * @dev Modifier to make a function callable only when the contract is not paused.
     *
     * Requirements:
     *
     * - The contract must not be paused.
     */
    modifier whenNotPaused() {
        _requireNotPaused();
        _;
    }

    /**
     * @dev Modifier to make a function callable only when the contract is paused.
     *
     * Requirements:
     *
     * - The contract must be paused.
     */
    modifier whenPaused() {
        _requirePaused();
        _;
    }

    /**
     * @dev Returns true if the contract is paused, and false otherwise.
     */
    function paused() public view virtual returns (bool) {
        PausableStorage storage $ = _getPausableStorage();
        return $._paused;
    }

    /**
     * @dev Throws if the contract is paused.
     */
    function _requireNotPaused() internal view virtual {
        if (paused()) {
            revert EnforcedPause();
        }
    }

    /**
     * @dev Throws if the contract is not paused.
     */
    function _requirePaused() internal view virtual {
        if (!paused()) {
            revert ExpectedPause();
        }
    }

    /**
     * @dev Triggers stopped state.
     *
     * Requirements:
     *
     * - The contract must not be paused.
     */
    function _pause() internal virtual whenNotPaused {
        PausableStorage storage $ = _getPausableStorage();
        $._paused = true;
        emit Paused(_msgSender());
    }

    /**
     * @dev Returns to normal state.
     *
     * Requirements:
     *
     * - The contract must be paused.
     */
    function _unpause() internal virtual whenPaused {
        PausableStorage storage $ = _getPausableStorage();
        $._paused = false;
        emit Unpaused(_msgSender());
    }
}

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

// src/protocol/library/type/DataTypes.sol

/**
 * @title DataTypes
 * @dev Library containing various data structures used in the pool management system.
 */
library DataTypes {
    /**
     * @dev Structure to hold the configuration of the Pool Manager.
     * @param DEFAULT_LIQUIDATION_THRESHOLD Default maximum withdrawal rate (e.g., 50%).
     * @param DEFAULT_POOL_INTEREST_RATE Default interest rate (e.g., 5%).
     * @param DEFAULT_LTV Default loan-to-value ratio (e.g., 5%).
     * @param DEFAULT_PROTOCOL_INTEREST_RATE Protocol fee ratio.
     * @param USDT ERC20 USDT contract.
     * @param FBTC0 ERC20 FBTC0 contract.
     * @param FBTC1 Interface for the FBTC1 contract.
     * @param FBTCOracle Interface for the FBTC Oracle contract.
     * @param AvalonUSDTVault Address of the Avalon USDT vault.
     * @param AntaphaUSDTVault Address of the Antapha USDT vault.
     */
    struct PoolManagerConfig {
        uint256 DEFAULT_LTV;
        uint256 DEFAULT_LIQUIDATION_THRESHOLD;
        uint256 DEFAULT_POOL_INTEREST_RATE;
        uint256 DEFAULT_PROTOCOL_INTEREST_RATE;
        IERC20 USDT;
        IERC20 FBTC0;
        IFBTC1 FBTC1;
        IFBTCOracle FBTCOracle;
        address AvalonUSDTVault;
        address AntaphaUSDTVault;
    }

    /**
     * @dev Structure to hold the reserve information of the Pool Manager.
     * @param userAmount Total amount deposited by the user.
     * @param collateral Total collateral provided by the user.
     * @param debt Total debt owed by the user.
     * @param claimableUSDT Amount of USDT that can be claimed by the user.
     * @param claimableBTC Amount of BTC that can be claimed by the user.
     */
    struct PoolManagerReserveInformation {
        uint256 userAmount;
        uint256 collateral;
        uint256 debt;
        uint256 claimableUSDT;
        uint256 claimableBTC;
    }

    /**
     * @dev Structure to hold the configuration of a user's pool.
     * @param init Indicates whether the user's pool is initialized.
     * @param poolInterestRate Interest rate for the user's pool.
     * @param protocolInterestRate Protocol interest rate for the user's pool.
     * @param loanToValue Loan-to-value ratio for the user's pool.
     * @param liquidationThreshold Maximum withdrawal rate for the user's pool.
     */
    struct UserPoolConfig {
        bool init;
        uint256 poolInterestRate;
        uint256 protocolInterestRate;
        uint256 loanToValue;
        uint256 liquidationThreshold;
    }

    /**
     * @dev Structure to hold the reserve information of a user's pool.
     * @param timeStampIndex Timestamp when the user last borrowed.
     * @param collateral Total supply in the user's pool.
     * @param debt Total amount borrowed from the user's pool.
     * @param debtToProtocol Debt owed to the protocol.
     * @param claimableUSDT Amount currently available for borrowing.
     * @param claimableBTC Amount currently available for withdrawal.
     */
    struct UserPoolReserveInformation {
        uint40 timeStampIndex;
        uint256 collateral;
        uint256 debt;
        uint256 debtToProtocol;
        uint256 claimableUSDT;
        uint256 claimableBTC;
    }
}

// src/interfaces/IPoolManager.sol

/**
 * @title IPoolManager
 * @dev Interface for the PoolManager contract, defining events and function signatures.
 */
interface IPoolManager {
    /**
     * @dev Emitted when a new pool is created for a user.
     * @param user The address of the user for whom the pool was created.
     * @param userPoolConfig The configuration of the newly created user pool.
     */
    event PoolCreated(
        address indexed user,
        DataTypes.UserPoolConfig userPoolConfig
    );

    /**
     * @dev Emitted when a user supplies assets to their pool.
     * @param user The address of the user who supplied assets.
     * @param amount The amount of assets supplied.
     * @param userPoolReserveInformation The updated reserve information after the supply.
     */
    event Supply(
        address indexed user,
        uint256 amount,
        DataTypes.UserPoolReserveInformation userPoolReserveInformation
    );

    /**
     * @dev Emitted when a user borrows assets from their pool.
     * @param user The address of the user who borrowed assets.
     * @param amount The amount of assets borrowed.
     * @param userPoolReserveInformation The updated reserve information after the borrow.
     */
    event Borrow(
        address indexed user,
        uint256 amount,
        DataTypes.UserPoolReserveInformation userPoolReserveInformation
    );

    /**
     * @dev Emitted when a user claims USDT from their pool.
     * @param user The address of the user who claimed USDT.
     * @param amount The amount of USDT claimed.
     * @param userPoolReserveInformation The updated reserve information after the claim.
     */
    event ClaimUSDT(
        address indexed user,
        uint256 amount,
        DataTypes.UserPoolReserveInformation userPoolReserveInformation
    );

    /**
     * @dev Emitted when a user repays their debt.
     * @param user The address of the user who repaid.
     * @param amount The amount repaid.
     * @param userPoolReserveInformation The updated reserve information after the repayment.
     */
    event Repay(
        address indexed user,
        uint256 amount,
        DataTypes.UserPoolReserveInformation userPoolReserveInformation
    );

    /**
     * @dev Emitted when a user's position is liquidated.
     * @param user The address of the user whose position was liquidated.
     * @param collateral The amount of collateral liquidated.
     * @param debt The amount of debt covered by the liquidation.
     */
    event Liquidation(address indexed user, uint256 collateral, uint256 debt);

    /**
     * @dev Emitted when a user withdraws assets from their pool.
     * @param user The address of the user who withdrew assets.
     * @param amount The amount of assets withdrawn.
     * @param userPoolReserveInformation The updated reserve information after the withdrawal.
     */
    event Withdraw(
        address indexed user,
        uint256 amount,
        DataTypes.UserPoolReserveInformation userPoolReserveInformation
    );

    /**
     * @dev Emitted when a request to mint FBTC0 is made.
     * @param amount The amount of FBTC0 requested to be minted.
     * @param depositTxid The transaction ID of the deposit.
     * @param outputIndex The output index in the transaction.
     */
    event RequestMintFBTC0(
        uint256 amount,
        bytes32 depositTxid,
        uint256 outputIndex
    );

    /**
     * @dev Emitted when a user claims BTC from their pool.
     * @param user The address of the user who claimed BTC.
     * @param amount The amount of BTC claimed.
     * @param userPoolReserveInformation The updated reserve information after the claim.
     */
    event ClaimBTC(
        address indexed user,
        uint256 amount,
        DataTypes.UserPoolReserveInformation userPoolReserveInformation
    );

    /**
     * @dev Emitted when a user's pool state is updated.
     * @param user The address of the user whose pool state was updated.
     * @param feeForPool The fee allocated to the pool.
     * @param feeForProtocol The fee allocated to the protocol.
     */
    event UpdateState(
        address indexed user,
        uint256 feeForPool,
        uint256 feeForProtocol
    );

    /**
     * @dev Emitted when a user's pool configuration is updated.
     * @param user The address of the user whose pool configuration was updated.
     * @param poolInterestRate The new pool interest rate.
     * @param protocolInterestRate The new protocol interest rate.
     * @param loanToValue The new loan-to-value ratio.
     * @param liquidationThreshold The new liquidation threshold.
     */
    event UserPoolConfigUpdated(
        address indexed user,
        uint256 poolInterestRate,
        uint256 protocolInterestRate,
        uint256 loanToValue,
        uint256 liquidationThreshold
    );

    /**
     * @dev Emitted when protocol earnings are claimed.
     * @param claimant The address of the account that claimed the earnings.
     * @param amount The amount of earnings claimed.
     */
    event ProtocolEarningsClaimed(address indexed claimant, uint256 amount);

    function createPool(address user) external;

    function supply(uint256 amount) external;

    function borrow(uint256 amount) external;

    function repay(uint256 amount) external payable;

    function withdraw(uint256 amount) external;

    function liquidate(
        address user,
        uint256 collateralDecrease,
        uint256 debtDecrease
    ) external;

    function claimUSDT(uint256 amount) external;

    function claimBTC(uint256 amount) external;

    function claimProtocolEarnings() external;

    function requestMintFBTC0(
        uint256 amount,
        bytes32 depositTxid,
        uint256 outputIndex
    ) external;

    function setUserPoolConfig(
        address user,
        uint256 poolInterestRate,
        uint256 protocolInterestRate,
        uint256 loanToValue,
        uint256 liquidationThreshold
    ) external;

    function getUserPoolReserveInformation(
        address user
    )
        external
        view
        returns (
            DataTypes.UserPoolReserveInformation memory reserveAfterUpdateDebt
        );

    function getPoolManagerReserveInformation()
        external
        view
        returns (
            DataTypes.PoolManagerReserveInformation
                memory poolManagerReserveInfor
        );

    function calculateAccumulatedDebt(
        uint256 debt,
        uint256 poolInterestRate,
        uint256 protocolInterestRate,
        uint40 timeStampIndex
    ) external view returns (uint256 feeForPool, uint256 feeForProtocol);

    function calculateMaxBorrowAmount(
        uint256 loanToValue,
        uint256 collateral,
        uint256 debt,
        uint256 FBTC0Price,
        uint256 USDTDecimal,
        uint256 FBTC0Decimal,
        uint256 oracleDecimal
    ) external view returns (uint256);

    function calculateMaxWithdrawAmount(
        uint256 liquidationThreshold,
        uint256 collateral,
        uint256 debt,
        uint256 FBTC0Price,
        uint256 USDTDecimal,
        uint256 FBTC0Decimal,
        uint256 oracleDecimal
    ) external view returns (uint256);
}

// src/protocol/PoolManagerStorage.sol

/**
 * @title PoolManagerStorage
 * @dev Storage contract for managing pool-related data and access control.
 */
contract PoolManagerStorage {
    uint256 public constant DENOMINATOR = 10000;

    address internal _emergencyController;

    uint256 internal _protocolProfitUnclaimed;

    uint256 internal _protocolProfitAccumulate;

    address[] internal _userList;

    DataTypes.PoolManagerConfig internal _poolManagerConfig;

    DataTypes.PoolManagerReserveInformation
        internal _poolManagerReserveInformation;

    mapping(address => DataTypes.UserPoolConfig) internal _userPoolConfig;

    mapping(address => DataTypes.UserPoolReserveInformation)
        internal _userPoolReserveInformation;
}

// src/protocol/PoolManagerConfigurator.sol

/**
 * @title PoolManagerConfigurator
 * @dev Contract for configuring and managing pool settings and user-specific configurations.
 * @notice This contract inherits from PoolManagerStorage, OwnableUpgradeable, and PausableUpgradeable.
 */
contract PoolManagerConfigurator is
    PoolManagerStorage,
    OwnableUpgradeable,
    PausableUpgradeable
{
    /**
     * @dev Modifier to check if the user's pool is initialized.
     */
    modifier onlyInitializedPool() {
        require(_userPoolConfig[msg.sender].init, "Pool not initialized");
        _;
    }

    /**
     * @dev Modifier to restrict access to the emergency controller.
     */
    modifier onlyEmergencyController() {
        require(
            msg.sender == _emergencyController,
            "caller is not emergencyController"
        );
        _;
    }

    /**
     * @dev Initializes the contract with the specified owner.
     * @param owner The address of the contract owner.
     */
    function initialize(address owner) public initializer {
        __Ownable_init(owner);
        __Pausable_init();
    }

    /**
     * @dev Pauses the contract. Can only be called by the emergency controller.
     */
    function pause() external onlyEmergencyController {
        _pause();
    }

    /**
     * @dev Unpauses the contract. Can only be called by the emergency controller.
     */
    function unpause() external onlyEmergencyController {
        _unpause();
    }

    /**
     * @dev Sets the pool manager configuration. Can only be called by the owner.
     * @param configInput The new configuration to set.
     */
    function setPoolManagerConfig(
        DataTypes.PoolManagerConfig calldata configInput
    ) external onlyOwner {
        _poolManagerConfig = configInput;
    }

    /**
     * @dev Sets the emergency controller address. Can only be called by the owner.
     * @param emergencyController The address of the new emergency controller.
     */
    function setEmergencyController(
        address emergencyController
    ) external onlyOwner {
        _emergencyController = emergencyController;
    }

    /**
     * @dev Returns the pool manager configuration.
     * @return The pool manager configuration as a `DataTypes.PoolManagerConfig` struct.
     */
    function getPoolManagerConfig()
        external
        view
        returns (DataTypes.PoolManagerConfig memory)
    {
        return _poolManagerConfig;
    }

    /**
     * @dev Returns the unclaimed protocol profit.
     * @return The amount of unclaimed protocol profit as a uint256.
     */
    function getProtocolProfitUnclaimed() external view returns (uint256) {
        return _protocolProfitUnclaimed;
    }

    /**
     * @dev Returns the address of the emergency controller.
     * @return The address of the emergency controller.
     */
    function getEmergencyController() external view returns (address) {
        return _emergencyController;
    }

    /**
     * @dev Returns the accumulated protocol profit.
     * @return The total accumulated protocol profit as a uint256.
     */
    function getProtocolProfitAccumulate() external view returns (uint256) {
        return _protocolProfitAccumulate;
    }

    /**
     * @dev Returns the configuration of a user's pool.
     * @param user The address of the user.
     * @return The user's pool configuration as a `DataTypes.UserPoolConfig` struct.
     */
    function getUserPoolConfig(
        address user
    ) external view returns (DataTypes.UserPoolConfig memory) {
        return _userPoolConfig[user];
    }
}

// src/protocol/PoolManager.sol

/**
 * @title PoolManager
 * @dev Manages liquidity pools and related operations.
 */
contract PoolManager is PoolManagerConfigurator, IPoolManager {
    using WadRayMath for uint256;
    using MathUtils for uint256;
    using SafeERC20 for IERC20;

    /**
     * @dev Creates a new liquidity pool.
     * Requirements:
     * - The caller must have the POOL_ADMIN_ROLE.
     * - The pool must not have been initialized.
     */
    function createPool(address user) external whenNotPaused onlyOwner {
        DataTypes.PoolManagerConfig
            memory poolManagerConfig = _poolManagerConfig;
        DataTypes.UserPoolConfig storage userPoolConfig = _userPoolConfig[user];
        require(!userPoolConfig.init, "Pool already initialized");
        userPoolConfig.init = true;
        userPoolConfig.poolInterestRate = poolManagerConfig
            .DEFAULT_POOL_INTEREST_RATE;
        userPoolConfig.protocolInterestRate = poolManagerConfig
            .DEFAULT_PROTOCOL_INTEREST_RATE;
        userPoolConfig.liquidationThreshold = poolManagerConfig
            .DEFAULT_LIQUIDATION_THRESHOLD;
        userPoolConfig.loanToValue = poolManagerConfig.DEFAULT_LTV;
        _poolManagerReserveInformation.userAmount += 1;
        _userList.push(user);
        emit PoolCreated(user, userPoolConfig);
    }

    /**
     * @dev Supplies tokens to the pool.
     * @param amount The amount of tokens to supply.
     * Requirements:
     * - The pool must have been initialized.
     */
    function supply(uint256 amount) external whenNotPaused onlyInitializedPool {
        DataTypes.PoolManagerConfig
            memory poolManagerConfig = _poolManagerConfig;
        DataTypes.UserPoolReserveInformation
            storage userPoolReserveInformation = _userPoolReserveInformation[
                msg.sender
            ];

        poolManagerConfig.FBTC0.safeTransferFrom(
            msg.sender,
            address(this),
            amount
        );
        poolManagerConfig.FBTC0.approve(
            address(poolManagerConfig.FBTC1),
            amount
        );
        poolManagerConfig.FBTC1.mintLockedFbtcRequest(amount);
        userPoolReserveInformation.collateral += amount;
        _poolManagerReserveInformation.collateral += amount;
        emit Supply(msg.sender, amount, userPoolReserveInformation);
    }

    /**
     * @dev Requests a loan from the pool.
     * @param amount The amount of the loan requested.
     * Requirements:
     * - The pool must have been initialized.
     * - The requested amount must not exceed the allowable loan-to-value ratio.
     */
    function borrow(uint256 amount) external whenNotPaused onlyInitializedPool {
        updateState(msg.sender);

        DataTypes.PoolManagerConfig
            memory poolManagerConfig = _poolManagerConfig;
        DataTypes.UserPoolConfig storage userPoolConfig = _userPoolConfig[
            msg.sender
        ];
        DataTypes.UserPoolReserveInformation
            storage userPoolReserveInformation = _userPoolReserveInformation[
                msg.sender
            ];
        require(
            calculateMaxBorrowAmount(
                userPoolConfig.loanToValue,
                userPoolReserveInformation.collateral,
                userPoolReserveInformation.debt,
                poolManagerConfig.FBTCOracle.getAssetPrice(),
                IERC20Metadata(address(poolManagerConfig.USDT)).decimals(),
                IERC20Metadata(address(poolManagerConfig.FBTC0)).decimals(),
                poolManagerConfig.FBTCOracle.decimals()
            ) >= amount,
            "Requested amount exceeds allowable loanToValue"
        );

        userPoolReserveInformation.debt += amount;
        userPoolReserveInformation.claimableUSDT += amount;

        _poolManagerReserveInformation.debt += amount;
        _poolManagerReserveInformation.claimableUSDT += amount;

        emit Borrow(msg.sender, amount, userPoolReserveInformation);
    }

    /**
     * @dev Repays borrowed tokens.
     * @param amount The amount of tokens to repay.
     * Requirements:
     * - The pool must have been initialized.
     */
    function repay(
        uint256 amount
    ) external payable whenNotPaused onlyInitializedPool {
        updateState(msg.sender);

        DataTypes.PoolManagerConfig
            memory poolManagerConfig = _poolManagerConfig;
        DataTypes.UserPoolReserveInformation
            storage userPoolReserveInformation = _userPoolReserveInformation[
                msg.sender
            ];
        DataTypes.PoolManagerReserveInformation
            storage poolManagerReserveInformation = _poolManagerReserveInformation;

        amount = amount > userPoolReserveInformation.debt
            ? userPoolReserveInformation.debt
            : amount;

        poolManagerConfig.USDT.safeTransferFrom(
            msg.sender,
            address(this),
            amount
        );

        uint256 repayAmountToProtocol = (amount *
            userPoolReserveInformation.debtToProtocol) /
            userPoolReserveInformation.debt;

        uint256 repayAmountToPool = amount - repayAmountToProtocol;

        poolManagerConfig.USDT.safeTransfer(
            poolManagerConfig.AntaphaUSDTVault,
            repayAmountToPool
        );

        userPoolReserveInformation.debt -= amount;
        userPoolReserveInformation.debtToProtocol -= repayAmountToProtocol;
        poolManagerReserveInformation.debt -= amount;

        emit Repay(msg.sender, amount, userPoolReserveInformation);
    }

    /**
     * @dev Requests a withdrawal from the pool.
     * @param amount The amount to claimBTC.
     * Requirements:
     * - The pool must have been initialized.
     * - The requested amount must not exceed the maximum allowable claimBTC amount.
     */
    function withdraw(
        uint256 amount
    ) external whenNotPaused onlyInitializedPool {
        updateState(msg.sender);

        DataTypes.PoolManagerConfig
            memory poolManagerConfig = _poolManagerConfig;
        DataTypes.UserPoolConfig memory userPoolConfig = _userPoolConfig[
            msg.sender
        ];
        DataTypes.UserPoolReserveInformation
            storage userPoolReserveInformation = _userPoolReserveInformation[
                msg.sender
            ];
        DataTypes.PoolManagerReserveInformation
            storage poolManagerReserveInformation = _poolManagerReserveInformation;

        require(
            calculateMaxWithdrawAmount(
                userPoolConfig.liquidationThreshold,
                userPoolReserveInformation.collateral,
                userPoolReserveInformation.debt,
                poolManagerConfig.FBTCOracle.getAssetPrice(),
                IERC20Metadata(address(poolManagerConfig.USDT)).decimals(),
                IERC20Metadata(address(poolManagerConfig.FBTC0)).decimals(),
                poolManagerConfig.FBTCOracle.decimals()
            ) >= amount,
            "Requested amount exceeds allowable liquiditionThreshold"
        );

        userPoolReserveInformation.collateral -= amount;
        userPoolReserveInformation.claimableBTC += amount;

        poolManagerReserveInformation.collateral -= amount;
        poolManagerReserveInformation.claimableBTC += amount;
        emit Withdraw(msg.sender, amount, userPoolReserveInformation);
    }

    /**
     * @dev Liquidates a portion of the user's collateral and debt.
     * @param user The address of the user being liquidated.
     * @param collateralDecrease The amount of collateral to decrease.
     * @param debtDecrease The amount of debt to decrease.
     * Requirements:
     * - The pool must have been initialized.
     * - Only the owner can call this function.
     */
    function liquidate(
        address user,
        uint256 collateralDecrease,
        uint256 debtDecrease
    ) external whenNotPaused onlyOwner {
        updateState(user);

        DataTypes.PoolManagerConfig
            memory poolManagerConfig = _poolManagerConfig;
        DataTypes.UserPoolReserveInformation
            storage userPoolReserveInformation = _userPoolReserveInformation[
                user
            ];
        DataTypes.PoolManagerReserveInformation
            storage poolManagerReserveInformation = _poolManagerReserveInformation;

        userPoolReserveInformation.collateral -= collateralDecrease;
        userPoolReserveInformation.debt -= debtDecrease;

        poolManagerReserveInformation.collateral -= collateralDecrease;
        poolManagerReserveInformation.debt -= debtDecrease;

        poolManagerConfig.FBTC1.burn(collateralDecrease);
        emit Liquidation(user, collateralDecrease, debtDecrease);
    }

    /**
     * @dev Claims USDT from the pool.
     * @param amount The amount of tokens to claimUSDT.
     * Requirements:
     * - The pool must have been initialized.
     * - The amount to claimUSDT must not exceed the claimableUSDT amount.
     */
    function claimUSDT(
        uint256 amount
    ) external whenNotPaused onlyInitializedPool {
        DataTypes.PoolManagerConfig
            memory poolManagerConfig = _poolManagerConfig;
        DataTypes.UserPoolReserveInformation
            storage userPoolReserveInformation = _userPoolReserveInformation[
                msg.sender
            ];
        DataTypes.PoolManagerReserveInformation
            storage poolManagerReserveInformation = _poolManagerReserveInformation;

        require(
            userPoolReserveInformation.claimableUSDT >= amount,
            "Insufficient claimableUSDT amount"
        );
        userPoolReserveInformation.claimableUSDT -= amount;
        poolManagerReserveInformation.claimableUSDT -= amount;
        poolManagerConfig.USDT.safeTransferFrom(
            poolManagerConfig.AvalonUSDTVault,
            msg.sender,
            amount
        );
        emit ClaimUSDT(msg.sender, amount, userPoolReserveInformation);
    }

    /**
     * @dev Claim FBTC0 from the pool.
     * @param amount The amount of tokens to claimBTC.
     * Requirements:
     * - The pool must have been initialized.
     */
    function claimBTC(
        uint256 amount
    ) external whenNotPaused onlyInitializedPool {
        DataTypes.PoolManagerConfig
            memory poolManagerConfig = _poolManagerConfig;
        DataTypes.UserPoolReserveInformation
            storage userPoolReserveInformation = _userPoolReserveInformation[
                msg.sender
            ];
        DataTypes.PoolManagerReserveInformation
            storage poolManagerReserveInformation = _poolManagerReserveInformation;

        require(
            userPoolReserveInformation.claimableBTC >= amount,
            "Exceed claimBTC limit"
        );

        userPoolReserveInformation.claimableBTC -= amount;
        poolManagerReserveInformation.claimableBTC -= amount;
        poolManagerConfig.FBTC1.confirmRedeemFbtc(amount);
        poolManagerConfig.FBTC0.safeTransfer(msg.sender, amount);
        emit ClaimBTC(msg.sender, amount, userPoolReserveInformation);
    }

    /**
     * @dev Claims the accumulated protocol earnings.
     * Requirements:
     * - The caller must have the POOL_ADMIN_ROLE.
     */
    function claimProtocolEarnings() external whenNotPaused onlyOwner {
        DataTypes.PoolManagerConfig
            memory poolManagerConfig = _poolManagerConfig;
        uint256 claimAmount = poolManagerConfig.USDT.balanceOf(address(this));
        poolManagerConfig.USDT.safeTransfer(msg.sender, claimAmount);
        _protocolProfitUnclaimed -= claimAmount;
        emit ProtocolEarningsClaimed(msg.sender, claimAmount);
    }

    /**
     * @dev Requests the minting of FBTC0 tokens.
     * @param amount The amount of FBTC0 tokens.
     * @param depositTxid The transaction ID of the deposit.
     * @param outputIndex The output index of the deposit transaction.
     */
    function requestMintFBTC0(
        uint256 amount,
        bytes32 depositTxid,
        uint256 outputIndex
    ) external whenNotPaused {
        DataTypes.PoolManagerConfig
            memory poolManagerConfig = _poolManagerConfig;

        poolManagerConfig.FBTC1.redeemFbtcRequest(
            amount,
            depositTxid,
            outputIndex
        );

        emit RequestMintFBTC0(amount, depositTxid, outputIndex);
    }

    /**
     * @dev Updates the configuration of a specific user's pool.
     * @param user The address of the user whose pool configuration is being updated.
     * @param poolInterestRate The new pool interest rate to set.
     * @param protocolInterestRate The new protocol interest rate to set.
     * @param loanToValue The new loan-to-value ratio to set.
     * @param liquidationThreshold The new liquidation threshold to set.
     * @notice This function can only be called by the contract owner when the contract is not paused.
     * @notice The pool must have been initialized for the specified user.
     */
    function setUserPoolConfig(
        address user,
        uint256 poolInterestRate,
        uint256 protocolInterestRate,
        uint256 loanToValue,
        uint256 liquidationThreshold
    ) external whenNotPaused onlyOwner {
        DataTypes.UserPoolConfig storage userPoolConfig = _userPoolConfig[user];
        require(userPoolConfig.init, "Pool not initialized");
        updateState(user);
        userPoolConfig.poolInterestRate = poolInterestRate;
        userPoolConfig.protocolInterestRate = protocolInterestRate;
        userPoolConfig.liquidationThreshold = liquidationThreshold;
        userPoolConfig.loanToValue = loanToValue;
        emit UserPoolConfigUpdated(
            user,
            poolInterestRate,
            protocolInterestRate,
            loanToValue,
            liquidationThreshold
        );
    }

    /**
     * @dev Updates the user's debt.
     * @param user The address of the user.
     */
    function updateState(address user) internal {
        // Load the user's pool configuration into memory
        DataTypes.UserPoolConfig memory userPoolConfig = _userPoolConfig[user];
        // Load the user's pool reserve information into storage
        DataTypes.UserPoolReserveInformation
            storage userPoolReserveInformation = _userPoolReserveInformation[
                user
            ];
        DataTypes.PoolManagerReserveInformation
            storage poolManagerReserveInformation = _poolManagerReserveInformation;

        (uint256 feeForPool, uint256 feeForProtocol) = calculateAccumulatedDebt(
            userPoolReserveInformation.debt,
            userPoolConfig.poolInterestRate,
            userPoolConfig.protocolInterestRate,
            userPoolReserveInformation.timeStampIndex
        );

        userPoolReserveInformation.timeStampIndex = uint40(block.timestamp);
        userPoolReserveInformation.debt += feeForPool + feeForProtocol;
        userPoolReserveInformation.debtToProtocol += feeForProtocol;
        poolManagerReserveInformation.debt += feeForPool + feeForProtocol;

        _protocolProfitUnclaimed += feeForProtocol;
        _protocolProfitAccumulate += feeForProtocol;
        emit UpdateState(user, feeForPool, feeForProtocol);
    }

    //------------------------view functions--------------------------
    /**
     * @dev Gets the user's pool reserve information.
     * @param user The address of the user.
     * @return reserveAfterUpdateDebt The user's pool reserve information after updating the debt.
     */
    function getUserPoolReserveInformation(
        address user
    )
        public
        view
        returns (
            DataTypes.UserPoolReserveInformation memory reserveAfterUpdateDebt
        )
    {
        DataTypes.UserPoolConfig memory userPoolConfig = _userPoolConfig[user];
        DataTypes.UserPoolReserveInformation
            memory userPoolReserveInformation = _userPoolReserveInformation[
                user
            ];
        (uint256 feeForPool, uint256 feeForProtocol) = calculateAccumulatedDebt(
            userPoolReserveInformation.debt,
            userPoolConfig.poolInterestRate,
            userPoolConfig.protocolInterestRate,
            userPoolReserveInformation.timeStampIndex
        );

        reserveAfterUpdateDebt.timeStampIndex = userPoolReserveInformation
            .timeStampIndex;
        reserveAfterUpdateDebt.collateral = userPoolReserveInformation
            .collateral;
        reserveAfterUpdateDebt.claimableUSDT = userPoolReserveInformation
            .claimableUSDT;
        reserveAfterUpdateDebt.claimableBTC = userPoolReserveInformation
            .claimableBTC;
        reserveAfterUpdateDebt.debt =
            userPoolReserveInformation.debt +
            feeForPool +
            feeForProtocol;
        reserveAfterUpdateDebt.debtToProtocol =
            userPoolReserveInformation.debtToProtocol +
            feeForProtocol;
    }

    /**
     * @dev Retrieves the current reserve information for the entire pool manager.
     * @notice This function aggregates data from all user pools and the global pool manager state.
     * @return poolManagerReserveInfor A struct containing the aggregated reserve information.
     */
    function getPoolManagerReserveInformation()
        external
        view
        returns (
            DataTypes.PoolManagerReserveInformation
                memory poolManagerReserveInfor
        )
    {
        uint256 length = _userList.length;
        for (uint i = 0; i < _userList.length; i++) {
            poolManagerReserveInfor.debt += getUserPoolReserveInformation(
                _userList[i]
            ).debt;
        }
        poolManagerReserveInfor.userAmount = _poolManagerReserveInformation
            .userAmount;
        poolManagerReserveInfor.collateral = _poolManagerReserveInformation
            .collateral;
        poolManagerReserveInfor.claimableUSDT = _poolManagerReserveInformation
            .claimableUSDT;
        poolManagerReserveInfor.claimableBTC = _poolManagerReserveInformation
            .claimableBTC;
    }

    /**
     * @dev Calculates the increasing interest for both the pool and the protocol.
     * @param debt The total amount borrowed.
     * @param poolInterestRate The interest rate for the pool.
     * @param protocolInterestRate The interest rate for the protocol.
     * @param timeStampIndex The timestamp when the borrowing occurred.
     * @return feeForPool The calculated interest fee for the pool.
     * @return feeForProtocol The calculated interest fee for the protocol.
     */
    function calculateAccumulatedDebt(
        uint256 debt,
        uint256 poolInterestRate,
        uint256 protocolInterestRate,
        uint40 timeStampIndex
    ) public view returns (uint256 feeForPool, uint256 feeForProtocol) {
        feeForPool =
            debt.rayMul(
                MathUtils.calculateCompoundedInterest(
                    (poolInterestRate * WadRayMath.RAY) / DENOMINATOR,
                    timeStampIndex
                )
            ) -
            debt;

        // Calculate the fee for the protocol based on the protocol fee interest rate and borrowed timestamp
        feeForProtocol =
            debt.rayMul(
                MathUtils.calculateCompoundedInterest(
                    (protocolInterestRate * WadRayMath.RAY) / DENOMINATOR,
                    timeStampIndex
                )
            ) -
            debt;
    }

    /**
     * @dev Calculates the maximum borrowable amount.
     * @param loanToValue The loan-to-value ratio.
     * @param collateral The total supply in the pool.
     * @param FBTC0Price The price of the FBTC0 token.
     * @return The maximum amount that can be borrowed.
     */
    function calculateMaxBorrowAmount(
        uint256 loanToValue,
        uint256 collateral,
        uint256 debt,
        uint256 FBTC0Price,
        uint256 USDTDecimal,
        uint256 FBTC0Decimal,
        uint256 oracleDecimal
    ) public view returns (uint256) {
        return
            (((collateral * FBTC0Price * 10 ** USDTDecimal) /
                (10 ** FBTC0Decimal * 10 ** oracleDecimal)) * loanToValue) /
            DENOMINATOR -
            debt;
    }

    /**
     * @dev Calculates the maximum withdrawable amount.
     * @param collateral The total supply in the pool.
     * @param FBTC0Price The price of the FBTC0 token.
     * @return The maximum amount that can be withdrawn.
     */
    function calculateMaxWithdrawAmount(
        uint256 liquidationThreshold,
        uint256 collateral,
        uint256 debt,
        uint256 FBTC0Price,
        uint256 USDTDecimal,
        uint256 FBTC0Decimal,
        uint256 oracleDecimal
    ) public view returns (uint256) {
        if (debt == 0) {
            return collateral;
        } else {
            return
                collateral -
                (debt *
                    10 ** (oracleDecimal + FBTC0Decimal - USDTDecimal) *
                    DENOMINATOR) /
                (FBTC0Price * liquidationThreshold);
        }
    }
}