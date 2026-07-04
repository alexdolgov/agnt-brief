// File: @openzeppelin/contracts/utils/Context.sol

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.4) (utils/Context.sol)

pragma solidity ^0.8.0;

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

    function _contextSuffixLength() internal view virtual returns (uint256) {
        return 0;
    }
}

// File: @openzeppelin/contracts/security/Pausable.sol


// OpenZeppelin Contracts (last updated v4.7.0) (security/Pausable.sol)

pragma solidity ^0.8.0;

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

// File: @openzeppelin/contracts/access/Ownable.sol


// OpenZeppelin Contracts (last updated v4.9.0) (access/Ownable.sol)

pragma solidity ^0.8.0;

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor() {
        _transferOwnership(_msgSender());
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
        return _owner;
    }

    /**
     * @dev Throws if the sender is not the owner.
     */
    function _checkOwner() internal view virtual {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
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
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}

// File: @openzeppelin/contracts/utils/Address.sol


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

// File: @ironblocks/firewall-consumer/contracts/interfaces/IFirewall.sol

//  UNLICENSED
// See LICENSE file for full license text.
// Copyright (c) Ironblocks 2024
pragma solidity ^0.8;

interface IFirewall {
    function preExecution(address sender, bytes memory data, uint value) external;
    function postExecution(address sender, bytes memory data, uint value) external;
    function preExecutionPrivateInvariants(address sender, bytes memory data, uint value) external returns (bytes32[] calldata);
    function postExecutionPrivateInvariants(
        address sender,
        bytes memory data,
        uint value,
        bytes32[] calldata preValues,
        bytes32[] calldata postValues
    ) external;
}

// File: @ironblocks/firewall-consumer/contracts/interfaces/IFirewallConsumer.sol

//  UNLICENSED
// See LICENSE file for full license text.
// Copyright (c) Ironblocks 2024
pragma solidity ^0.8;

interface IFirewallConsumer {
    function firewallAdmin() external returns (address);
}

// File: @ironblocks/firewall-consumer/contracts/FirewallConsumerBase.sol

//  UNLICENSED
// See LICENSE file for full license text.
// Copyright (c) Ironblocks 2024
pragma solidity ^0.8;




/**
 * @title Firewall Consumer Base Contract
 * @author David Benchimol @ Ironblocks 
 * @dev This contract is a parent contract that can be used to add firewall protection to any contract.
 *
 * The contract must define a firewall contract which will manage the policies that are applied to the contract.
 * It also must define a firewall admin which will be able to add and remove policies.
 *
 */
contract FirewallConsumerBase is IFirewallConsumer, Context {

    bytes32 private constant FIREWALL_STORAGE_SLOT = bytes32(uint256(keccak256("eip1967.firewall")) - 1);
    bytes32 private constant FIREWALL_ADMIN_STORAGE_SLOT = bytes32(uint256(keccak256("eip1967.firewall.admin")) - 1);
    bytes32 private constant NEW_FIREWALL_ADMIN_STORAGE_SLOT = bytes32(uint256(keccak256("eip1967.new.firewall.admin")) - 1);

    // This slot is special since it's used for mappings and not a single value
    bytes32 private constant APPROVED_TARGETS_MAPPING_SLOT = bytes32(uint256(keccak256("eip1967.approved.targets")) - 1);

    /**
     * @dev modifier that will run the preExecution and postExecution hooks of the firewall, applying each of
     * the subscribed policies.
     */
    modifier firewallProtected() {
        address firewall = _getAddressBySlot(FIREWALL_STORAGE_SLOT);
        if (firewall == address(0)) {
            _;
            return;
        }
        uint value = _msgValue();
        IFirewall(firewall).preExecution(msg.sender, msg.data, value);
        _; 
        IFirewall(firewall).postExecution(msg.sender, msg.data, value);
    }

    /**
     * @dev modifier that will run the preExecution and postExecution hooks of the firewall, applying each of
     * the subscribed policies. Allows passing custom data to the firewall, not necessarily msg.data.
     * Useful for checking internal function calls
     */
    modifier firewallProtectedCustom(bytes memory data) {
        address firewall = _getAddressBySlot(FIREWALL_STORAGE_SLOT);
        if (firewall == address(0)) {
            _;
            return;
        }
        uint value = _msgValue();
        IFirewall(firewall).preExecution(msg.sender, data, value);
        _; 
        IFirewall(firewall).postExecution(msg.sender, data, value);
    }

    /**
     * @dev identical to the rest of the modifiers in terms of logic, but makes it more
     * aesthetic when all you want to pass are signatures/unique identifiers.
     */
    modifier firewallProtectedSig(bytes4 selector) {
        address firewall = _getAddressBySlot(FIREWALL_STORAGE_SLOT);
        if (firewall == address(0)) {
            _;
            return;
        }
        uint value = _msgValue();
        IFirewall(firewall).preExecution(msg.sender, abi.encodePacked(selector), value);
        _; 
        IFirewall(firewall).postExecution(msg.sender, abi.encodePacked(selector), value);
    }

    /**
     * @dev modifier that will run the preExecution and postExecution hooks of the firewall invariant policy,
     * applying the subscribed invariant policy
     */
    modifier invariantProtected() {
        address firewall = _getAddressBySlot(FIREWALL_STORAGE_SLOT);
        if (firewall == address(0)) {
            _;
            return;
        }
        uint value = _msgValue();
        bytes32[] memory storageSlots = IFirewall(firewall).preExecutionPrivateInvariants(msg.sender, msg.data, value);
        bytes32[] memory preValues = _readStorage(storageSlots);
        _; 
        bytes32[] memory postValues = _readStorage(storageSlots);
        IFirewall(firewall).postExecutionPrivateInvariants(msg.sender, msg.data, value, preValues, postValues);
    }


    /**
     * @dev modifier asserting that the target is approved
     */
    modifier onlyApprovedTarget(address target) {
        // We use the same logic that solidity uses for mapping locations, but we add a pseudorandom 
        // constant "salt" instead of a constant placeholder so that there are no storage collisions
        // if adding this to an upgradeable contract implementation
        bytes32 _slot = keccak256(abi.encode(APPROVED_TARGETS_MAPPING_SLOT, target));
        bool isApprovedTarget = _getValueBySlot(_slot) != bytes32(0);
        require(isApprovedTarget, "FirewallConsumer: Not approved target");
        _;
    }

    /**
     * @dev modifier similar to onlyOwner, but for the firewall admin.
     */
    modifier onlyFirewallAdmin() {
        require(msg.sender == _getAddressBySlot(FIREWALL_ADMIN_STORAGE_SLOT), "FirewallConsumer: not firewall admin");
        _;
    }

    /**
     * @dev Initializes a contract protected by a firewall, with a firewall address and a firewall admin.
     *
     * IMPORTENT: need to add _setAddressBySlot(FIREWALL_ADMIN_STORAGE_SLOT, _firewallAdmin); in the initializer for upgradable contracts
     */
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(
        address _firewall,
        address _firewallAdmin
    ) {
        _setAddressBySlot(FIREWALL_STORAGE_SLOT, _firewall);
        _setAddressBySlot(FIREWALL_ADMIN_STORAGE_SLOT, _firewallAdmin);
    }

    /**
     * @dev Allows calling an approved external target before executing a method.
     * 
     * This can be used for multiple purposes, but the initial one is to call `approveCallsViaSignature` before
     * executing a function, allowing synchronous transaction approvals.
     */
    function safeFunctionCall(
        address target,
        bytes calldata targetPayload,
        bytes calldata data
    ) external payable onlyApprovedTarget(target) {
        (bool success, ) = target.call(targetPayload);
        require(success);
        require(msg.sender == _msgSender(), "FirewallConsumer: No meta transactions");
        Address.functionDelegateCall(address(this), data);
    }

    /**
     * @dev Allows firewall admin to set approved targets.
     * IMPORTANT: Only set approved target if you know what you're doing. Anyone can cause this contract
     * to send any data to an approved target.
     */
    function setApprovedTarget(address target, bool status) external onlyFirewallAdmin {
        bytes32 _slot = keccak256(abi.encode(APPROVED_TARGETS_MAPPING_SLOT, target));
        assembly {
            sstore(_slot, status)
        }
    }

    /**
     * @dev View function for the firewall admin
     */
    function firewallAdmin() external view returns (address) {
        return _getAddressBySlot(FIREWALL_ADMIN_STORAGE_SLOT);
    }

    /**
     * @dev Admin only function allowing the consumers admin to set the firewall address.
     */
    function setFirewall(address _firewall) external onlyFirewallAdmin {
        _setAddressBySlot(FIREWALL_STORAGE_SLOT, _firewall);
    }

    /**
     * @dev Admin only function, sets new firewall admin. New admin must accept.
     */
    function setFirewallAdmin(address _firewallAdmin) external onlyFirewallAdmin {
        require(_firewallAdmin != address(0), "FirewallConsumer: zero address");
        _setAddressBySlot(NEW_FIREWALL_ADMIN_STORAGE_SLOT, _firewallAdmin);
    }

    /**
     * @dev Accept the role as firewall admin.
     */
    function acceptFirewallAdmin() external {
        require(msg.sender == _getAddressBySlot(NEW_FIREWALL_ADMIN_STORAGE_SLOT), "FirewallConsumer: not new admin");
        _setAddressBySlot(FIREWALL_ADMIN_STORAGE_SLOT, msg.sender);
    }

    function _msgValue() internal view returns (uint value) {
        // We do this because msg.value can only be accessed in payable functions.
        assembly {
            value := callvalue()
        }
    }

    function _readStorage(bytes32[] memory storageSlots) internal view returns (bytes32[] memory) {
        uint256 slotsLength = storageSlots.length;
        bytes32[] memory values = new bytes32[](slotsLength);

        for (uint256 i = 0; i < slotsLength; i++) {
            bytes32 slotValue = _getValueBySlot(storageSlots[i]);
            values[i] = slotValue;
        }
        return values;
    }

    function _setAddressBySlot(bytes32 _slot, address _address) internal {
        assembly {
            sstore(_slot, _address)
        }
    }

    function _getAddressBySlot(bytes32 _slot) internal view returns (address _address) {
        assembly {
            _address := sload(_slot)
        }
    }

    function _getValueBySlot(bytes32 _slot) internal view returns (bytes32 _value) {
        assembly {
            _value := sload(_slot)
        }
    }
}

// File: @ironblocks/firewall-consumer/contracts/FirewallConsumer.sol

//  UNLICENSED
// See LICENSE file for full license text.
// Copyright (c) Ironblocks 2024
pragma solidity ^0.8;

/**
 * @title Firewall Consumer
 * @author David Benchimol @ Ironblocks 
 * @dev This contract is a parent contract that can be used to add firewall protection to any contract.
 *
 * The contract must initializes with the firewall contract disabled, and the deployer
 * as the firewall admin.
 *
 */
contract FirewallConsumer is FirewallConsumerBase(address(0), msg.sender) {
}

// File: @poolzfinance/poolz-helper-v2/contracts/GovManager.sol



pragma solidity ^0.8.0;


contract GovManager is Ownable, FirewallConsumer {
    event GovernorUpdated (
        address indexed oldGovernor,
        address indexed newGovernor
    );

    address public GovernorContract;

    modifier onlyOwnerOrGov() {
        require(
            msg.sender == owner() || msg.sender == GovernorContract,
            "Authorization Error"
        );
        _;
    }

    function setGovernorContract(address _address) external firewallProtected onlyOwnerOrGov {
        address oldGov = GovernorContract;
        GovernorContract = _address;
        emit GovernorUpdated(oldGov, GovernorContract);
    }

    constructor() {
        GovernorContract = address(0);
    }
}

// File: contracts/MultiManageable.sol


pragma solidity ^0.8.0;


/// @title all admin settings
contract MultiManageable is GovManager, Pausable {

    function Pause() external onlyOwnerOrGov {
        _pause();
    }

    function Unpause() external onlyOwnerOrGov {
        _unpause();
    }
}

// File: contracts/MultiSender.sol


pragma solidity ^0.8.0;

/// @title main multi transfer settings
/// @author The-Poolz contract team
contract TempMultiSender is MultiManageable {

    event MultiTransferredETH(uint256 userCount, uint256 totalAmount);

    error EthTransferFail();
    error ArrayZeroLength();
    error TotalMismatch(bool isParamHigher);

    struct MultiSendData {
        address user;
        uint amount;
    }

    modifier notZeroLength(uint256 _length) {
        if (_length == 0) revert ArrayZeroLength();
        _;
    }

    function MultiSendEth(
        MultiSendData[] calldata _multiSendData
    )
        external
        payable
        whenNotPaused
        notZeroLength(_multiSendData.length)
    {
        uint256 value;
        for (uint256 i; i < _multiSendData.length; i++) {
            value += _multiSendData[i].amount;
            (bool success, ) = _multiSendData[i].user.call{value: _multiSendData[i].amount}("");
            if (!success) revert EthTransferFail();
        }
        if( msg.value != value ) revert TotalMismatch(msg.value > value);
        emit MultiTransferredETH(_multiSendData.length, msg.value);
    }

}
