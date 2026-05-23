// Sources flattened with hardhat v2.17.2 https://hardhat.org

// SPDX-License-Identifier: BSD-3-Clause AND MIT

// File contracts/control/Call_Struct.sol

// Original license: SPDX_License_Identifier: BSD-3-Clause
pragma solidity =0.8.13;



abstract contract Call_Struct {
    struct Call_Context {
        address to;
        uint256 value;
        bytes call_data;
    }
}


// File contracts/interface/ICallControl.sol

// Original license: SPDX_License_Identifier: BSD-3-Clause
pragma solidity =0.8.13;



interface ICallControl {
    function calls(address[] calldata targets, bytes[] calldata call_data) external;
    function value_calls(address[] calldata targets, uint256[] calldata values, bytes[] calldata call_data) payable external;
    function delegate_calls(address[] calldata targets, bytes[] calldata call_data) payable external;
    function multi_calls(Call_Struct.Call_Context[] calldata ctx) payable external;
}


// File contracts/utils/Address.sol

// Original license: SPDX_License_Identifier: BSD-3-Clause
// OpenZeppelin Contracts (last updated v4.7.0) (utils/Address.sol)

pragma solidity =0.8.13;

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
     * https://diligence.consensys.net/posts/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.5.11/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
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
    function functionCallWithValue(
        address target,
        bytes memory data,
        uint256 value
    ) internal returns (bytes memory) {
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


// File contracts/proxy/utils/Initializable.sol

// Original license: SPDX_License_Identifier: BSD-3-Clause
// OpenZeppelin Contracts (last updated v4.6.0) (proxy/utils/Initializable.sol)

pragma solidity =0.8.13;

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
 * ```
 * contract MyToken is ERC20Upgradeable {
 *     function initialize() initializer public {
 *         __ERC20_init("MyToken", "MTK");
 *     }
 * }
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
 * constructor() {
 *     _disableInitializers();
 * }
 * ```
 * ====
 */
abstract contract Initializable {
    /**
     * @dev Indicates that the contract has been initialized.
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
     * `onlyInitializing` functions can be used to initialize parent contracts. Equivalent to `reinitializer(1)`.
     */
    modifier initializer() {
        bool isTopLevelCall = !_initializing;
        require(
            (isTopLevelCall && _initialized < 1) || (!Address.isContract(address(this)) && _initialized == 1),
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
     * `initializer` is equivalent to `reinitializer(1)`, so a reinitializer may be used after the original
     * initialization step. This is essential to configure modules that are added through upgrades and that require
     * initialization.
     *
     * Note that versions can jump in increments greater than 1; this implies that if multiple reinitializers coexist in
     * a contract, executing them in the right order is up to the developer or operator.
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
     */
    function _disableInitializers() internal virtual {
        require(!_initializing, "Initializable: contract is initializing");
        if (_initialized < type(uint8).max) {
            _initialized = type(uint8).max;
            emit Initialized(type(uint8).max);
        }
    }
}


// File contracts/utils/Context.sol

// Original license: SPDX_License_Identifier: BSD-3-Clause

pragma solidity =0.8.13;

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
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }

    function _blockNumber() internal view virtual returns (uint256) {
        return block.number;
    }

    function _timestamp() internal view virtual returns (uint256) {
        return block.timestamp;
    }

    function _networkContext() internal view virtual returns (uint256) {
        return _blockNumber();
    }
}


// File contracts/ownable/Ownable_State.sol

// Original license: SPDX_License_Identifier: BSD-3-Clause

pragma solidity =0.8.13;



abstract contract Ownable_State is Initializable, Context {
    bytes20 public code_hash;

    enum OwnableAuth {
        None,
        Admin,
        PendingAdmin,
        Owner,
        PendingOwner
    }

    address constant public ZeroAddress = address(0);
    bytes32 constant public flag_up  = 0xFF00000000000000000000000000000000000000000000000000000000000000;
    // bytes32 constant public flag_down= 0x0000000000000000000000000000000000000000000000000000000000000000;

    mapping(address => bytes32) public auth_field_table;
    address[] public owners;
    address[] public pendingOwners;
    address[] public admins;
    address[] public pendingAdmins;

    constructor(bytes20 _code_hash) {
        code_hash = _code_hash;
        init();
    }

    function init() virtual initializer public {
        _flag_up(_msgSender(), OwnableAuth.Owner);
        owners.push(_msgSender());
        pendingOwners.push(ZeroAddress);
        admins.push(ZeroAddress);
        pendingAdmins.push(ZeroAddress);
    }

    function get_owners() external view returns (address[] memory) {
        return owners;
    }
    function get_admins() external view returns (address[] memory) {
        return admins;
    }
    function get_pendingOwners() external view returns (address[] memory) {
        return pendingOwners;
    }
    function get_pendingAdmins() external view returns (address[] memory) {
        return pendingAdmins;
    }

    function get_flag(address _target) external view returns (bytes32) {
        return auth_field_table[_target];
    }

    function _flag_up(address _target, OwnableAuth _auth) internal virtual {
        bytes32 _field = auth_field_table[_target];
        require(!_cmp_field_auth(_field, _auth), "conflict auth flag");
        auth_field_table[_target] = _field | flag_up >> (uint8(_auth)*8);
    }
    function _flag_down(address _target, OwnableAuth _auth) internal virtual {
        bytes32 _field = auth_field_table[_target];
        require(_cmp_field_auth(_field, _auth), "not flaged auth");
        auth_field_table[_target] &= ~(flag_up >> (uint8(_auth)*8));
    }
    function _cmp_addr_auth(address _target, OwnableAuth _auth) internal view virtual returns (bool) {
        return _cmp_field_auth( auth_field_table[_target], _auth );
    }
    function _cmp_field_auth(bytes32 _field, OwnableAuth _auth) internal pure virtual returns (bool) {
        return bytes32(_field[ uint8(_auth) ]) == flag_up;
    }

    function _check_not_zero(address _target) internal pure {
        require(_target != ZeroAddress, "ZeroAddress");
    }
    function _check_not_self(address _target) internal view {
        require(_target != _msgSender(), "Auth Self");
    }
}


// File contracts/ownable/Ownable_Modifier.sol

// Original license: SPDX_License_Identifier: BSD-3-Clause

pragma solidity =0.8.13;

abstract contract Ownable_Modifier is Ownable_State {
    modifier onlyOwner() {
        require(_cmp_addr_auth(_msgSender(), OwnableAuth.Owner), "Only Owner");
        _;
    }

    modifier onlyPendingOwner() {
        require(_cmp_addr_auth(_msgSender(), OwnableAuth.PendingOwner), "Only Pending Owner");
        _;
    }

    modifier onlyPendingAdmin() {
        require(_cmp_addr_auth(_msgSender(), OwnableAuth.PendingAdmin), "Only Pending Admin");
        _;
    }

    modifier onlyAdmin() {
        require(_cmp_addr_auth(_msgSender(), OwnableAuth.Admin), "Only Admin");
        _;
    }

    modifier checkAuth() {
        _check_sender_auth();
        _;
    }

    function _check_sender_auth() internal view {
        bytes32 _field = auth_field_table[_msgSender()];
        require(_cmp_field_auth(_field, OwnableAuth.Owner) || _cmp_field_auth(_field, OwnableAuth.Admin), "Only Owner or Admin");
    }

    function set_code_hash(bytes20 _code_hash) external onlyOwner {
        require(code_hash == bytes20(0), "only once");
        code_hash = _code_hash;
    }
}


// File contracts/control/Ownable_Call_Control.sol

// Original license: SPDX_License_Identifier: BSD-3-Clause
pragma solidity =0.8.13;





abstract contract Ownable_Call_Control is ICallControl, Ownable_Modifier {
    using Address for address;

    function calls(address[] calldata targets, bytes[] calldata call_data) override checkAuth external {
        for(uint256 i; i<targets.length; i++) targets[i].functionCall(call_data[i]);
    }

    function value_calls(address[] calldata targets, uint256[] calldata values, bytes[] calldata call_data) override checkAuth payable external {
        for(uint256 i; i<targets.length; i++) targets[i].functionCallWithValue(call_data[i], values[i]);
    }

    function delegate_calls(address[] calldata targets, bytes[] calldata call_data) override onlyOwner payable external {
        for(uint256 i; i<targets.length; i++) targets[i].functionDelegateCall(call_data[i]);
    }

    function multi_calls(Call_Struct.Call_Context[] calldata ctx) override onlyOwner payable external {
        for(uint256 i; i<ctx.length; i++) {
            if(ctx[i].value == 0) {
                ctx[i].to.functionCall(ctx[i].call_data);
            } else if(ctx[i].value == type(uint256).max) {
                ctx[i].to.functionDelegateCall(ctx[i].call_data);
            } else {
                ctx[i].to.functionCallWithValue(ctx[i].call_data, ctx[i].value);
            }
        }
    }
}


// File contracts/interface/IERC20.sol

// Original license: SPDX_License_Identifier: BSD-3-Clause
// OpenZeppelin Contracts (last updated v4.6.0) (token/ERC20/IERC20.sol)

pragma solidity =0.8.13;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);

    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function transfer(address to, uint256 amount) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) external returns (bool);
}

interface IERC20Burnable is IERC20 {
    function burn(uint256 amount) external returns (bool);
    function burnFrom(address from, uint256 amount) external returns (bool);
}

interface IERC20Mintable is IERC20 {
    function mint(address to, uint256 amount) external returns (bool);
}


// File contracts/interface/IERC20Metadata.sol

// Original license: SPDX_License_Identifier: BSD-3-Clause
pragma solidity =0.8.13;

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


// File contracts/interface/IERC20_Bridged.sol

// Original license: SPDX_License_Identifier: BSD-3-Clause
// OpenZeppelin Contracts (last updated v4.6.0) (token/ERC20/IERC20.sol)

pragma solidity =0.8.13;


/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20_Bridged is IERC20Mintable, IERC20Burnable, IERC20Metadata {
}


// File contracts/interface/IOwnable.sol

// Original license: SPDX_License_Identifier: BSD-3-Clause

pragma solidity =0.8.13;


interface IMulti_Ownable {
    function registerOwner(address target) external returns (bool);
    function revokeOwner(address target) external returns (bool);
    function transferOwnership(address target) external returns (bool);
    function registerPendingOwner(address target) external returns (bool);
    function registerPendingAdmin(address target) external returns (bool);
    function registerAdmin(address target) external returns (bool);
    function revokeAdmin(address target) external returns (bool);
    function renounceOwnership(bool force) external returns (bool);
    function renounceAdminship() external returns (bool);
    function renouncePendingOwner() external returns (bool);
    function renouncePendingAdmin() external returns (bool);
    function claimOwnership() external returns (bool);
    function claimAdminship() external returns (bool);
}

interface ISingle_Ownable {
    function transferOwnership(address target) external returns (bool);
    function registerPendingOwner(address target) external returns (bool);
    function registerPendingAdmin(address target) external returns (bool);
    function registerAdmin(address target) external returns (bool);
    function renounceOwnership() external returns (bool);
    function renounceAdminship() external returns (bool);
    function renouncePendingOwner() external returns (bool);
    function renouncePendingAdmin() external returns (bool);
    function claimOwnership() external returns (bool);
    function claimAdminship() external returns (bool);
}


// File contracts/ownable/Ownable_Event.sol

// Original license: SPDX_License_Identifier: BSD-3-Clause

pragma solidity =0.8.13;

abstract contract Ownable_Event is Ownable_State {
    event SetAuth(address indexed target, OwnableAuth indexed auth);
    event RemoveAuth(address indexed target, OwnableAuth indexed auth);
    event TransferOwnership(address indexed owner_from, address indexed owner_to);
}


// File contracts/ownable/Ownable_Libs.sol

// Original license: SPDX_License_Identifier: BSD-3-Clause

pragma solidity =0.8.13;



abstract contract Ownable_Libs is Ownable_State, Ownable_Modifier, Ownable_Event {
    function _grant_auth(address[] storage _addr_arr_ptr, address _target, OwnableAuth _auth) internal {
        _check_not_zero(_target);

        _flag_up(_target, _auth);
        _push_addr(_addr_arr_ptr, _target);

        emit SetAuth(_target, _auth);
    }

    function _revoke_auth(address[] storage _addr_arr_ptr, address _target, OwnableAuth _auth) internal {
        _check_not_zero(_target);

        _flag_down(_target, _auth);
        _remove_addr(_addr_arr_ptr, _target);

        emit RemoveAuth(_target, _auth);
    }

    function _replace(address[] storage _addr_arr_ptr, address _from, address _to) internal {
        if(_from == _to) return _check_contain(_addr_arr_ptr, _from);

        uint256 len = _addr_arr_ptr.length;
        for (uint256 i; i <len; i++) {
            if ( _addr_arr_ptr[i] == _from) {
                _addr_arr_ptr[i] = _to;
                break;
            }
        }
    }
    function _push_addr(address[] storage _addr_arr_ptr, address _target) internal {
        if (_addr_arr_ptr[0] == ZeroAddress) _addr_arr_ptr[0] = _target;
        else _addr_arr_ptr.push(_target);
    }
    function _pop_addr(address[] storage _addr_arr_ptr) internal {
        if(_addr_arr_ptr.length == 1) _addr_arr_ptr[0] = ZeroAddress;
        else _addr_arr_ptr.pop();
    }

    function _remove_addr(address[] storage _addr_arr_ptr, address _target) internal {
        _replace(_addr_arr_ptr, _target, _addr_arr_ptr[_addr_arr_ptr.length - 1]);
        _pop_addr(_addr_arr_ptr);
    }

    function _check_contain(address[] storage _addr_arr_ptr, address _target) internal view {
        uint256 len = _addr_arr_ptr.length;
        for (uint256 i; i <len; i++) {
            if ( _addr_arr_ptr[i] == _target) return;
        }
        revert("not contain");
    }
}


// File contracts/ownable/Multi_Ownable_Abstract.sol

// Original license: SPDX_License_Identifier: BSD-3-Clause

pragma solidity =0.8.13;



abstract contract Multi_Ownable_Abstract is IMulti_Ownable, Ownable_State, Ownable_Libs {
    function registerOwner(address target) override onlyOwner external returns (bool) {
        _check_not_self(target);
        _grant_auth(owners, target, OwnableAuth.Owner);
        return true;
    }
    function revokeOwner(address target) override onlyOwner external returns (bool) {
        _check_not_self(target);
        _revoke_auth(owners, target, OwnableAuth.Owner);
        return true;
    }

    function transferOwnership(address target) override onlyOwner external returns (bool) {
        _check_not_self(target);

        _revoke_auth(owners, _msgSender(), OwnableAuth.Owner);
        _grant_auth(owners, target, OwnableAuth.Owner);

        emit TransferOwnership(_msgSender(), target);
        return true;
    }

    function registerPendingOwner(address target) override onlyOwner external returns (bool) {
        _check_not_self(target);
        _grant_auth(pendingOwners, target, OwnableAuth.PendingOwner);

        return true;
    }

    function registerPendingAdmin(address target) override onlyOwner external returns (bool) {
        _check_not_self(target);
        _grant_auth(pendingAdmins, target, OwnableAuth.PendingAdmin);

        return true;
    }

    function registerAdmin(address target) override onlyOwner external returns (bool) {
        _grant_auth(admins, target, OwnableAuth.Admin);

        return true;
    }
    function revokeAdmin(address target) override onlyOwner external returns (bool) {
        _revoke_auth(admins, target, OwnableAuth.Admin);
        return true;
    }

    function renounceOwnership(bool force) override onlyOwner external returns (bool) {
        if(!force) require(pendingOwners[0] != ZeroAddress, "fatal: There is no pending owner");
        _revoke_auth(owners, _msgSender(), OwnableAuth.Owner);
        return true;
    }

    function renounceAdminship() override onlyAdmin external returns (bool) {
        _revoke_auth(admins, _msgSender(), OwnableAuth.Admin);
        return true;
    }

    function renouncePendingOwner() override onlyPendingOwner external returns (bool) {
        _revoke_auth(pendingOwners, _msgSender(), OwnableAuth.PendingOwner);
        return true;
    }

    function renouncePendingAdmin() override onlyPendingAdmin external returns (bool) {
        _revoke_auth(pendingAdmins, _msgSender(), OwnableAuth.PendingAdmin);
        return true;
    }

    function claimOwnership() override onlyPendingOwner external returns (bool) {
        _grant_auth(owners, _msgSender(), OwnableAuth.Owner);
        _revoke_auth(pendingOwners, _msgSender(), OwnableAuth.PendingOwner);
        return true;
    }

    function claimAdminship() override onlyPendingAdmin external returns (bool) {
        _grant_auth(admins, _msgSender(), OwnableAuth.Admin);
        _revoke_auth(pendingAdmins, _msgSender(), OwnableAuth.PendingAdmin);
        return true;
    }
}


// File contracts/interface/draft-IERC1822.sol

// Original license: SPDX_License_Identifier: BSD-3-Clause
// OpenZeppelin Contracts (last updated v4.5.0) (interfaces/draft-IERC1822.sol)

pragma solidity =0.8.13;

/**
 * @dev ERC1822: Universal Upgradeable Proxy Standard (UUPS) documents a method for upgradeability through a simplified
 * proxy whose upgrades are fully controlled by the current implementation.
 */
interface IERC1822Proxiable {
    /**
     * @dev Returns the storage slot that the proxiable contract assumes is being used to store the implementation
     * address.
     *
     * IMPORTANT: A proxy pointing at a proxiable contract should not be considered proxiable itself, because this risks
     * bricking a proxy that upgrades to it, by delegating to itself until out of gas. Thus it is critical that this
     * function revert if invoked through a proxy.
     */
    function proxiableUUID() external view returns (bytes32);
}


// File contracts/proxy/beacon/IBeacon.sol

// Original license: SPDX_License_Identifier: BSD-3-Clause
// OpenZeppelin Contracts v4.4.1 (proxy/beacon/IBeacon.sol)

pragma solidity =0.8.13;

/**
 * @dev This is the interface that {BeaconProxy} expects of its beacon.
 */
interface IBeacon {
    /**
     * @dev Must return an address that can be used as a delegate call target.
     *
     * {BeaconProxy} will check that this address is a contract.
     */
    function implementation() external view returns (address);
}


// File contracts/utils/StorageSlot.sol

// Original license: SPDX_License_Identifier: BSD-3-Clause
// OpenZeppelin Contracts v4.4.1 (utils/StorageSlot.sol)

pragma solidity =0.8.13;

/**
 * @dev Library for reading and writing primitive types to specific storage slots.
 *
 * Storage slots are often used to avoid storage conflict when dealing with upgradeable contracts.
 * This library helps with reading and writing to such slots without the need for inline assembly.
 *
 * The functions in this library return Slot structs that contain a `value` member that can be used to read or write.
 *
 * Example usage to set ERC1967 implementation slot:
 * ```
 * contract ERC1967 {
 *     bytes32 internal constant _IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;
 *
 *     function _getImplementation() internal view returns (address) {
 *         return StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value;
 *     }
 *
 *     function _setImplementation(address newImplementation) internal {
 *         require(Address.isContract(newImplementation), "ERC1967: new implementation is not a contract");
 *         StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value = newImplementation;
 *     }
 * }
 * ```
 *
 * _Available since v4.1 for `address`, `bool`, `bytes32`, and `uint256`._
 */
library StorageSlot {
    struct AddressSlot {
        address value;
    }

    struct BooleanSlot {
        bool value;
    }

    struct Bytes32Slot {
        bytes32 value;
    }

    struct Uint256Slot {
        uint256 value;
    }

    /**
     * @dev Returns an `AddressSlot` with member `value` located at `slot`.
     */
    function getAddressSlot(bytes32 slot) internal pure returns (AddressSlot storage r) {
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `BooleanSlot` with member `value` located at `slot`.
     */
    function getBooleanSlot(bytes32 slot) internal pure returns (BooleanSlot storage r) {
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `Bytes32Slot` with member `value` located at `slot`.
     */
    function getBytes32Slot(bytes32 slot) internal pure returns (Bytes32Slot storage r) {
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `Uint256Slot` with member `value` located at `slot`.
     */
    function getUint256Slot(bytes32 slot) internal pure returns (Uint256Slot storage r) {
        assembly {
            r.slot := slot
        }
    }
}


// File contracts/proxy/ERC1967/ERC1967Upgrade.sol

// Original license: SPDX_License_Identifier: BSD-3-Clause
// OpenZeppelin Contracts (last updated v4.5.0) (proxy/ERC1967/ERC1967Upgrade.sol)

pragma solidity =0.8.13;




/**
 * @dev This abstract contract provides getters and event emitting update functions for
 * https://eips.ethereum.org/EIPS/eip-1967[EIP1967] slots.
 *
 * _Available since v4.1._
 *
 * @custom:oz-upgrades-unsafe-allow delegatecall
 */
abstract contract ERC1967Upgrade {
    // This is the keccak-256 hash of "eip1967.proxy.rollback" subtracted by 1
    bytes32 private constant _ROLLBACK_SLOT = 0x4910fdfa16fed3260ed0e7147f7cc6da11a60208b5b9406d12a635614ffd9143;

    /**
     * @dev Storage slot with the address of the current implementation.
     * This is the keccak-256 hash of "eip1967.proxy.implementation" subtracted by 1, and is
     * validated in the constructor.
     */
    bytes32 internal constant _IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;

    /**
     * @dev Emitted when the implementation is upgraded.
     */
    event Upgraded(address indexed implementation);

    /**
     * @dev Returns the current implementation address.
     */
    function _getImplementation() internal view returns (address) {
        return StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value;
    }

    /**
     * @dev Stores a new address in the EIP1967 implementation slot.
     */
    function _setImplementation(address newImplementation) private {
        require(Address.isContract(newImplementation), "ERC1967: new implementation is not a contract");
        StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value = newImplementation;
    }

    /**
     * @dev Perform implementation upgrade
     *
     * Emits an {Upgraded} event.
     */
    function _upgradeTo(address newImplementation) internal {
        _setImplementation(newImplementation);
        emit Upgraded(newImplementation);
    }

    /**
     * @dev Perform implementation upgrade with additional setup call.
     *
     * Emits an {Upgraded} event.
     */
    function _upgradeToAndCall(
        address newImplementation,
        bytes memory data,
        bool forceCall
    ) internal {
        _upgradeTo(newImplementation);
        if (data.length > 0 || forceCall) {
            Address.functionDelegateCall(newImplementation, data);
        }
    }

    /**
     * @dev Perform implementation upgrade with security checks for UUPS proxies, and additional setup call.
     *
     * Emits an {Upgraded} event.
     */
    function _upgradeToAndCallUUPS(
        address newImplementation,
        bytes memory data,
        bool forceCall
    ) internal {
        // Upgrades from old implementations will perform a rollback test. This test requires the new
        // implementation to upgrade back to the old, non-ERC1822 compliant, implementation. Removing
        // this special case will break upgrade paths from old UUPS implementation to new ones.
        if (StorageSlot.getBooleanSlot(_ROLLBACK_SLOT).value) {
            _setImplementation(newImplementation);
        } else {
            try IERC1822Proxiable(newImplementation).proxiableUUID() returns (bytes32 slot) {
                require(slot == _IMPLEMENTATION_SLOT, "ERC1967Upgrade: unsupported proxiableUUID");
            } catch {
                revert("ERC1967Upgrade: new implementation is not UUPS");
            }
            _upgradeToAndCall(newImplementation, data, forceCall);
        }
    }

    /**
     * @dev Storage slot with the admin of the contract.
     * This is the keccak-256 hash of "eip1967.proxy.admin" subtracted by 1, and is
     * validated in the constructor.
     */
    bytes32 internal constant _ADMIN_SLOT = 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103;

    /**
     * @dev Emitted when the admin account has changed.
     */
    event AdminChanged(address previousAdmin, address newAdmin);

    /**
     * @dev Returns the current admin.
     */
    function _getAdmin() internal view returns (address) {
        return StorageSlot.getAddressSlot(_ADMIN_SLOT).value;
    }

    /**
     * @dev Stores a new address in the EIP1967 admin slot.
     */
    function _setAdmin(address newAdmin) private {
        require(newAdmin != address(0), "ERC1967: new admin is the zero address");
        StorageSlot.getAddressSlot(_ADMIN_SLOT).value = newAdmin;
    }

    /**
     * @dev Changes the admin of the proxy.
     *
     * Emits an {AdminChanged} event.
     */
    function _changeAdmin(address newAdmin) internal {
        emit AdminChanged(_getAdmin(), newAdmin);
        _setAdmin(newAdmin);
    }

    /**
     * @dev The storage slot of the UpgradeableBeacon contract which defines the implementation for this proxy.
     * This is bytes32(uint256(keccak256('eip1967.proxy.beacon')) - 1)) and is validated in the constructor.
     */
    bytes32 internal constant _BEACON_SLOT = 0xa3f0ad74e5423aebfd80d3ef4346578335a9a72aeaee59ff6cb3582b35133d50;

    /**
     * @dev Emitted when the beacon is upgraded.
     */
    event BeaconUpgraded(address indexed beacon);

    /**
     * @dev Returns the current beacon.
     */
    function _getBeacon() internal view returns (address) {
        return StorageSlot.getAddressSlot(_BEACON_SLOT).value;
    }

    /**
     * @dev Stores a new beacon in the EIP1967 beacon slot.
     */
    function _setBeacon(address newBeacon) private {
        require(Address.isContract(newBeacon), "ERC1967: new beacon is not a contract");
        require(
            Address.isContract(IBeacon(newBeacon).implementation()),
            "ERC1967: beacon implementation is not a contract"
        );
        StorageSlot.getAddressSlot(_BEACON_SLOT).value = newBeacon;
    }

    /**
     * @dev Perform beacon upgrade with additional setup call. Note: This upgrades the address of the beacon, it does
     * not upgrade the implementation contained in the beacon (see {UpgradeableBeacon-_setImplementation} for that).
     *
     * Emits a {BeaconUpgraded} event.
     */
    function _upgradeBeaconToAndCall(
        address newBeacon,
        bytes memory data,
        bool forceCall
    ) internal {
        _setBeacon(newBeacon);
        emit BeaconUpgraded(newBeacon);
        if (data.length > 0 || forceCall) {
            Address.functionDelegateCall(IBeacon(newBeacon).implementation(), data);
        }
    }
}


// File contracts/proxy/Proxy.sol

// Original license: SPDX_License_Identifier: BSD-3-Clause
// OpenZeppelin Contracts (last updated v4.6.0) (proxy/Proxy.sol)

pragma solidity =0.8.13;

/**
 * @dev This abstract contract provides a fallback function that delegates all calls to another contract using the EVM
 * instruction `delegatecall`. We refer to the second contract as the _implementation_ behind the proxy, and it has to
 * be specified by overriding the virtual {_implementation} function.
 *
 * Additionally, delegation to the implementation can be triggered manually through the {_fallback} function, or to a
 * different contract through the {_delegate} function.
 *
 * The success and return data of the delegated call will be returned back to the caller of the proxy.
 */
abstract contract Proxy {
    /**
     * @dev Delegates the current call to `implementation`.
     *
     * This function does not return to its internal call site, it will return directly to the external caller.
     */
    function _delegate(address implementation) internal virtual {
        assembly {
            // Copy msg.data. We take full control of memory in this inline assembly
            // block because it will not return to Solidity ins_code. We overwrite the
            // Solidity scratch pad at memory position 0.
            calldatacopy(0, 0, calldatasize())

            // Call the implementation.
            // out and outsize are 0 because we don't know the size yet.
            let result := delegatecall(gas(), implementation, 0, calldatasize(), 0, 0)

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

    /**
     * @dev This is a virtual function that should be overridden so it returns the address to which the fallback function
     * and {_fallback} should delegate.
     */
    function _implementation() internal view virtual returns (address);

    /**
     * @dev Delegates the current call to the address returned by `_implementation()`.
     *
     * This function does not return to its internal call site, it will return directly to the external caller.
     */
    function _fallback() internal virtual {
        _beforeFallback();
        _delegate(_implementation());
    }

    /**
     * @dev Fallback function that delegates calls to the address returned by `_implementation()`. Will run if no other
     * function in the contract matches the call data.
     */
    fallback() external payable virtual {
        _fallback();
    }

    /**
     * @dev Fallback function that delegates calls to the address returned by `_implementation()`. Will run if call data
     * is empty.
     */
    receive() external payable virtual {
        _fallback();
    }

    /**
     * @dev Hook that is called before falling back to the implementation. Can happen as part of a manual `_fallback`
     * call, or as part of the Solidity `fallback` or `receive` functions.
     *
     * If overridden should call `super._beforeFallback()`.
     */
    function _beforeFallback() internal virtual {}
}


// File contracts/proxy/ERC1967/ERC1967Proxy.sol

// Original license: SPDX_License_Identifier: BSD-3-Clause
// OpenZeppelin Contracts v4.4.1 (proxy/ERC1967/ERC1967Proxy.sol)

pragma solidity =0.8.13;


/**
 * @dev This contract implements an upgradeable proxy. It is upgradeable because calls are delegated to an
 * implementation address that can be changed. This address is stored in storage in the location specified by
 * https://eips.ethereum.org/EIPS/eip-1967[EIP1967], so that it doesn't conflict with the storage layout of the
 * implementation behind the proxy.
 */
abstract contract Abstract_ERC1967Proxy is Proxy, ERC1967Upgrade {
    /**
     * @dev Returns the current implementation address.
     */
    function _implementation() internal view virtual override returns (address impl) {
        return ERC1967Upgrade._getImplementation();
    }
}
contract ERC1967Proxy is Abstract_ERC1967Proxy {
    /**
     * @dev Initializes the upgradeable proxy with an initial implementation specified by `_logic`.
     *
     * If `_data` is nonempty, it's used as data in a delegate call to `_logic`. This will typically be an encoded
     * function call, and allows initializating the storage of the proxy like a Solidity constructor.
     */
    constructor(address _logic, bytes memory _data) payable {
        _upgradeToAndCall(_logic, _data, false);
    }
}


// File contracts/ownable/Ownable_1967_Proxy.sol

// Original license: SPDX_License_Identifier: BSD-3-Clause

pragma solidity =0.8.13;


abstract contract Ownable_1967_Proxy is Ownable_Modifier, Abstract_ERC1967Proxy {
    function set_1967impl(address _impl) onlyOwner external {
        _upgradeTo(_impl);
    }
    function set_proxyAdmin(address _admin) onlyOwner external {
        _changeAdmin(_admin);
    }
}


// File contracts/ownable/Single_Ownable_Abstract.sol

// Original license: SPDX_License_Identifier: BSD-3-Clause

pragma solidity =0.8.13;



abstract contract Single_Ownable_Abstract is ISingle_Ownable, Ownable_State, Ownable_Libs {
    function _check_single(address[] storage _addr_arr_ptr) internal view {
        require(_addr_arr_ptr.length==1, "support only single");
    }

    function transferOwnership(address target) override onlyOwner external returns (bool) {
        _check_not_self(target);

        _revoke_auth(owners, _msgSender(), OwnableAuth.Owner);
        _grant_auth(owners, target, OwnableAuth.Owner);

        emit TransferOwnership(_msgSender(), target);
        return true;
    }


    function registerPendingOwner(address target) override onlyOwner external returns (bool) {
        _check_not_self(target);
        _grant_auth(pendingOwners, target, OwnableAuth.PendingOwner);
        _check_single(pendingOwners);
        return true;
    }

    function registerPendingAdmin(address target) override onlyOwner external returns (bool) {
        _check_not_self(target);
        _grant_auth(pendingAdmins, target, OwnableAuth.PendingAdmin);

        return true;
    }

    function registerAdmin(address target) override onlyOwner external returns (bool) {
        _check_not_self(target);
        _grant_auth(admins, target, OwnableAuth.Admin);

        return true;
    }

    function renounceOwnership() override onlyOwner external returns (bool) {
        _revoke_auth(owners, _msgSender(), OwnableAuth.Owner);
        return true;
    }

    function renounceAdminship() override onlyAdmin external returns (bool) {
        _revoke_auth(admins, _msgSender(), OwnableAuth.Admin);
        return true;
    }

    function renouncePendingOwner() override onlyPendingOwner external returns (bool) {
        _revoke_auth(pendingOwners, _msgSender(), OwnableAuth.PendingOwner);
        return true;
    }

    function renouncePendingAdmin() override onlyPendingAdmin external returns (bool) {
        _revoke_auth(pendingAdmins, _msgSender(), OwnableAuth.PendingAdmin);
        return true;
    }

    function claimOwnership() override onlyPendingOwner external returns (bool) {
        _revoke_auth(pendingOwners, _msgSender(), OwnableAuth.PendingOwner);
        address oldOwner = owners[0];
        if(oldOwner != ZeroAddress) _revoke_auth(owners, owners[0], OwnableAuth.Owner);
        _grant_auth(owners, _msgSender(), OwnableAuth.Owner);
        return true;
    }

    function claimAdminship() override onlyPendingAdmin external returns (bool) {
        _revoke_auth(pendingAdmins, _msgSender(), OwnableAuth.PendingAdmin);
        _grant_auth(admins, _msgSender(), OwnableAuth.Admin);
        return true;
    }
}


// File contracts/ownable/Ownable.sol

// Original license: SPDX_License_Identifier: BSD-3-Clause

pragma solidity =0.8.13;



abstract contract Service_Multi_Ownable is Multi_Ownable_Abstract, Ownable_1967_Proxy {}
abstract contract Service_Single_Ownable is Single_Ownable_Abstract, Ownable_1967_Proxy {}

abstract contract Owner_Multi_Ownable is Service_Multi_Ownable, Ownable_Call_Control {}
abstract contract Owner_Single_Ownable is Service_Single_Ownable, Ownable_Call_Control {}


// File contracts/token/ERC20.sol

// Original license: SPDX_License_Identifier: BSD-3-Clause
pragma solidity =0.8.13;



/**
 * @dev Implementation of the {IERC20} interface.
 *
 * This implementation is agnostic to the way tokens are created. This means
 * that a supply mechanism has to be added in a derived contract using {_mint}.
 * For a generic mechanism see {ERC20PresetMinterPauser}.
 *
 * TIP: For a detailed writeup see our guide
 * https://forum.zeppelin.solutions/t/how-to-implement-erc20-supply-mechanisms/226[How
 * to implement supply mechanisms].
 *
 * We have followed general OpenZeppelin guidelines: functions revert instead
 * of returning `false` on failure. This behavior is nonetheless conventional
 * and does not conflict with the expectations of ERC20 applications.
 *
 * Additionally, an {Approval} event is emitted on calls to {transferFrom}.
 * This allows applications to reconstruct the allowance for all accounts just
 * by listening to said events. Other implementations of the EIP may not emit
 * these events, as it isn't required by the specification.
 *
 * Finally, the non-standard {decreaseAllowance} and {increaseAllowance}
 * functions have been added to mitigate the well-known issues around setting
 * allowances. See {IERC20-approve}.
 */
abstract contract ERC20 is Context, IERC20, IERC20Metadata {
    mapping (address => uint256) private _balances;

    mapping (address => mapping (address => uint256)) private _allowances;

    uint256 private _totalSupply;

    string private _name;
    string private _symbol;

    uint8 private _decimals;

    /**
     * @dev Sets the values for {name} and {symbol}.
     *
     * The defaut value of {decimals} is 18. To select a different value for
     * {decimals} you should overload it.
     *
     * All two of these values are immutable: they can only be set once during
     * construction.
     */
    // constructor (string memory name_, string memory symbol_) {
    //     _name = name_;
    //     _symbol = symbol_;
    // }
    function _init(string memory name_, string memory symbol_, uint8 decimals_) internal returns (bool) {
        _name = name_;
        _symbol = symbol_;
        _decimals = decimals_;
        return true;
    }

    /**
     * @dev Returns the name of the token.
     */
    function name() public view virtual override returns (string memory) {
        return _name;
    }

    /**
     * @dev Returns the symbol of the token, usually a shorter version of the
     * name.
     */
    function symbol() public view virtual override returns (string memory) {
        return 'BtcUSD';
    }

    /**
     * @dev Returns the number of decimals used to get its user representation.
     * For example, if `decimals` equals `2`, a balance of `505` tokens should
     * be displayed to a user as `5,05` (`505 / 10 ** 2`).
     *
     * Tokens usually opt for a value of 18, imitating the relationship between
     * Ether and Wei. This is the value {ERC20} uses, unless this function is
     * overridden;
     *
     * NOTE: This information is only used for _display_ purposes: it in
     * no way affects any of the arithmetic of the contract, including
     * {IERC20-balanceOf} and {IERC20-transfer}.
     */
    function decimals() public view virtual override returns (uint8) {
        return _decimals;
    }

    /**
     * @dev See {IERC20-totalSupply}.
     */
    function totalSupply() public view virtual override returns (uint256) {
        return _totalSupply;
    }

    /**
     * @dev See {IERC20-balanceOf}.
     */
    function balanceOf(address account) public view virtual override returns (uint256) {
        return _balances[account];
    }

    /**
     * @dev See {IERC20-transfer}.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - the caller must have a balance of at least `amount`.
     */
    function transfer(address to, uint256 amount) public virtual override returns (bool) {
        address owner = _msgSender();
        _transfer(owner, to, amount);
        return true;
    }

    /**
     * @dev See {IERC20-allowance}.
     */
    function allowance(address owner, address spender) public view virtual override returns (uint256) {
        return _allowances[owner][spender];
    }

    /**
     * @dev See {IERC20-approve}.
     *
     * NOTE: If `amount` is the maximum `uint256`, the allowance is not updated on
     * `transferFrom`. This is semantically equivalent to an infinite approval.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function approve(address spender, uint256 amount) public virtual override returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, amount);
        return true;
    }

    /**
     * @dev See {IERC20-transferFrom}.
     *
     * Emits an {Approval} event indicating the updated allowance. This is not
     * required by the EIP. See the note at the beginning of {ERC20}.
     *
     * NOTE: Does not update the allowance if the current allowance
     * is the maximum `uint256`.
     *
     * Requirements:
     *
     * - `from` and `to` cannot be the zero address.
     * - `from` must have a balance of at least `amount`.
     * - the caller must have allowance for ``from``'s tokens of at least
     * `amount`.
     */
    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) public virtual override returns (bool) {
        address spender = _msgSender();
        _spendAllowance(from, spender, amount);
        _transfer(from, to, amount);
        return true;
    }

    /**
     * @dev Atomically increases the allowance granted to `spender` by the caller.
     *
     * This is an alternative to {approve} that can be used as a mitigation for
     * problems described in {IERC20-approve}.
     *
     * Emits an {Approval} event indicating the updated allowance.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function increaseAllowance(address spender, uint256 addedValue) public virtual returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, allowance(owner, spender) + addedValue);
        return true;
    }

    /**
     * @dev Atomically decreases the allowance granted to `spender` by the caller.
     *
     * This is an alternative to {approve} that can be used as a mitigation for
     * problems described in {IERC20-approve}.
     *
     * Emits an {Approval} event indicating the updated allowance.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     * - `spender` must have allowance for the caller of at least
     * `subtractedValue`.
     */
    function decreaseAllowance(address spender, uint256 subtractedValue) public virtual returns (bool) {
        address owner = _msgSender();
        uint256 currentAllowance = allowance(owner, spender);
        require(currentAllowance >= subtractedValue, "ERC20: decreased allowance below zero");
        unchecked {
            _approve(owner, spender, currentAllowance - subtractedValue);
        }

        return true;
    }

    /**
     * @dev Moves `amount` of tokens from `from` to `to`.
     *
     * This internal function is equivalent to {transfer}, and can be used to
     * e.g. implement automatic token fees, slashing mechanisms, etc.
     *
     * Emits a {Transfer} event.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `from` must have a balance of at least `amount`.
     */
    function _transfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual {
        require(from != address(0), "ERC20: transfer from the zero address");
        require(to != address(0), "ERC20: transfer to the zero address");

        _beforeTokenTransfer(from, to, amount);

        uint256 fromBalance = _balances[from];
        require(fromBalance >= amount, "ERC20: transfer amount exceeds balance");
        unchecked {
            _balances[from] = fromBalance - amount;
            // Overflow not possible: the sum of all balances is capped by totalSupply, and the sum is preserved by
            // decrementing then incrementing.
            _balances[to] += amount;
        }

        emit Transfer(from, to, amount);

        _afterTokenTransfer(from, to, amount);
    }

    /** @dev Creates `amount` tokens and assigns them to `account`, increasing
     * the total supply.
     *
     * Emits a {Transfer} event with `from` set to the zero address.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     */
    function _mint(address account, uint256 amount) internal virtual {
        require(account != address(0), "ERC20: mint to the zero address");

        _beforeTokenTransfer(address(0), account, amount);

        _totalSupply += amount;
        unchecked {
            // Overflow not possible: balance + amount is at most totalSupply + amount, which is checked above.
            _balances[account] += amount;
        }
        emit Transfer(address(0), account, amount);

        _afterTokenTransfer(address(0), account, amount);
    }

    /**
     * @dev Destroys `amount` tokens from `account`, reducing the
     * total supply.
     *
     * Emits a {Transfer} event with `to` set to the zero address.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     * - `account` must have at least `amount` tokens.
     */
    function _burn(address account, uint256 amount) internal virtual {
        require(account != address(0), "ERC20: burn from the zero address");

        _beforeTokenTransfer(account, address(0), amount);

        uint256 accountBalance = _balances[account];
        require(accountBalance >= amount, "ERC20: burn amount exceeds balance");
        unchecked {
            _balances[account] = accountBalance - amount;
            // Overflow not possible: amount <= accountBalance <= totalSupply.
            _totalSupply -= amount;
        }

        emit Transfer(account, address(0), amount);

        _afterTokenTransfer(account, address(0), amount);
    }

    /**
     * @dev Sets `amount` as the allowance of `spender` over the `owner` s tokens.
     *
     * This internal function is equivalent to `approve`, and can be used to
     * e.g. set automatic allowances for certain subsystems, etc.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `owner` cannot be the zero address.
     * - `spender` cannot be the zero address.
     */
    function _approve(
        address owner,
        address spender,
        uint256 amount
    ) internal virtual {
        require(owner != address(0), "ERC20: approve from the zero address");
        require(spender != address(0), "ERC20: approve to the zero address");

        _allowances[owner][spender] = amount;
        emit Approval(owner, spender, amount);
    }

    /**
     * @dev Updates `owner` s allowance for `spender` based on spent `amount`.
     *
     * Does not update the allowance amount in case of infinite allowance.
     * Revert if not enough allowance is available.
     *
     * Might emit an {Approval} event.
     */
    function _spendAllowance(
        address owner,
        address spender,
        uint256 amount
    ) internal virtual {
        uint256 currentAllowance = allowance(owner, spender);
        if (currentAllowance != type(uint256).max) {
            require(currentAllowance >= amount, "ERC20: insufficient allowance");
            unchecked {
                _approve(owner, spender, currentAllowance - amount);
            }
        }
    }

    /**
     * @dev Hook that is called before any transfer of tokens. This includes
     * minting and burning.
     *
     * Calling conditions:
     *
     * - when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
     * will be transferred to `to`.
     * - when `from` is zero, `amount` tokens will be minted for `to`.
     * - when `to` is zero, `amount` of ``from``'s tokens will be burned.
     * - `from` and `to` are never both zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual {}

    /**
     * @dev Hook that is called after any transfer of tokens. This includes
     * minting and burning.
     *
     * Calling conditions:
     *
     * - when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
     * has been transferred to `to`.
     * - when `from` is zero, `amount` tokens have been minted for `to`.
     * - when `to` is zero, `amount` of ``from``'s tokens have been burned.
     * - `from` and `to` are never both zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    function _afterTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual {}
}


// File contracts/token/ERC20Blacklist_BIFROST.sol

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (token/ERC20/extensions/ERC20Pausable.sol)

pragma solidity =0.8.13;


/**
 * @dev ERC20 token with pausable token transfers, minting and burning.
 *
 * Useful for scenarios such as preventing trades until the end of an evaluation
 * period, or having an emergency switch for freezing all token transfers in the
 * event of a large bug.
 */
abstract contract ERC20Blacklist_BIFROST is Service_Multi_Ownable, ERC20 {
    mapping(address=>bool) public blacklists;

    function set_blacklists(address[] calldata addr_lists, bool _black) checkAuth external {
        for(uint256 i; i<addr_lists.length; i++) blacklists[ addr_lists[i] ] = _black;
    }

    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual override {
        super._beforeTokenTransfer(from, to, amount);
        if(from != address(0) ) require(!blacklists[from], "ERC20Blacklist_BIFROST: from");
        if(to != address(0) ) require(!blacklists[to], "ERC20Blacklist_BIFROST: to");
    }
}


// File contracts/token/ERC20Burnable.sol

// Original license: SPDX_License_Identifier: BSD-3-Clause
pragma solidity =0.8.13;

/**
 * @dev Extension of {ERC20} that allows token holders to destroy both their own
 * tokens and those that they have an allowance for, in a way that can be
 * recognized off-chain (via event analysis).
 */
abstract contract ERC20Burnable is IERC20Burnable, ERC20 {
    /**
     * @dev Destroys `amount` tokens from the caller.
     *
     * See {ERC20-_burn}.
     */
    function burn(uint256 amount) override public virtual returns (bool) {
        _burn(_msgSender(), amount);
        return true;
    }

    /**
     * @dev Destroys `amount` tokens from `account`, deducting from the caller's
     * allowance.
     *
     * See {ERC20-_burn} and {ERC20-allowance}.
     *
     * Requirements:
     *
     * - the caller must have allowance for ``accounts``'s tokens of at least
     * `amount`.
     */
    function burnFrom(address account, uint256 amount) override public virtual returns (bool) {
        _spendAllowance(account, _msgSender(), amount);
        _burn(account, amount);
        return true;
    }
}


// File contracts/token/ERC20Mintable.sol

// Original license: SPDX_License_Identifier: BSD-3-Clause
pragma solidity =0.8.13;


/**
 * @dev Extension of {ERC20} that allows token holders to destroy both their own
 * tokens and those that they have an allowance for, in a way that can be
 * recognized off-chain (via event analysis).
 */
abstract contract ERC20Mintable is Ownable_Modifier, IERC20Mintable, ERC20 {
    function mint(address user, uint256 amount) checkAuth override external returns (bool) {
        _mint(user, amount);
        return true;
    }
}


// File contracts/utils/Pausable.sol

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (security/Pausable.sol)

pragma solidity =0.8.13;

/**
 * @dev Contract module which allows children to implement an emergency stop
 * mechanism that can be triggered by an authorized account.
 *
 * This module is used through inheritance. It will make available the
 * modifiers `whenNotPaused` and `whenPaused`, which can be applied to
 * the functions of your contract. Note that they will not be pausable by
 * simply including this module, only once the modifiers are put in place.
 */
abstract contract Pausable is Context {
    /**
     * @dev Emitted when the pause is triggered by `account`.
     */
    event Paused(address account);

    /**
     * @dev Emitted when the pause is lifted by `account`.
     */
    event Unpaused(address account);

    bool private _paused;

    /**
     * @dev Initializes the contract in unpaused state.
     */
    constructor() {
        _paused = false;
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
        return _paused;
    }

    /**
     * @dev Throws if the contract is paused.
     */
    function _requireNotPaused() internal view virtual {
        require(!paused(), "Pausable: paused");
    }

    /**
     * @dev Throws if the contract is not paused.
     */
    function _requirePaused() internal view virtual {
        require(paused(), "Pausable: not paused");
    }

    /**
     * @dev Triggers stopped state.
     *
     * Requirements:
     *
     * - The contract must not be paused.
     */
    function _pause() internal virtual whenNotPaused {
        _paused = true;
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
        _paused = false;
        emit Unpaused(_msgSender());
    }
}


// File contracts/token/ERC20Pausable.sol

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (token/ERC20/extensions/ERC20Pausable.sol)

pragma solidity =0.8.13;


/**
 * @dev ERC20 token with pausable token transfers, minting and burning.
 *
 * Useful for scenarios such as preventing trades until the end of an evaluation
 * period, or having an emergency switch for freezing all token transfers in the
 * event of a large bug.
 */
abstract contract ERC20Pausable is ERC20, Pausable {
    /**
     * @dev See {ERC20-_beforeTokenTransfer}.
     *
     * Requirements:
     *
     * - the contract must not be paused.
     */
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual override {
        super._beforeTokenTransfer(from, to, amount);

        require(!paused(), "ERC20Pausable: token transfer while paused");
    }
}


// File contracts/token/ERC20Pausable_BIFROST.sol

// Original license: SPDX_License_Identifier: BSD-3-Clause
pragma solidity =0.8.13;



abstract contract ERC20Pausable_BIFROST is
    Service_Multi_Ownable,
    ERC20Pausable
{
    function set_pause(bool _pause_flag) checkAuth external {
        if(_pause_flag) _pause();
        else _unpause();
    }

    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual override {
        super._beforeTokenTransfer(from, to, amount);
    }
}


// File contracts/token/ERC20_Bridged.sol

// Original license: SPDX_License_Identifier: BSD-3-Clause
pragma solidity =0.8.13;






contract ERC20_Bridged is
    Service_Multi_Ownable,
    IERC20_Bridged,

    ERC20Pausable_BIFROST,
    ERC20Blacklist_BIFROST,
    ERC20Burnable,
    ERC20Mintable
{
    constructor(bytes20 _code_hash) Ownable_State(_code_hash) {}

    function init_erc20(string memory name_, string memory symbol_, uint8 decimals_) checkAuth external returns (bool) {
        return _init(name_, symbol_, decimals_);
    }

    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual override(ERC20Pausable_BIFROST, ERC20Blacklist_BIFROST, ERC20) {
        super._beforeTokenTransfer(from, to, amount);
    }
}