// ============================================================
// FILE: @openzeppelin/contracts-0.8/access/Ownable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (access/Ownable.sol)

pragma solidity ^0.8.0;

import "../utils/Context.sol";

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
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
        _;
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
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

// ============================================================
// FILE: @openzeppelin/contracts-0.8/token/ERC20/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (token/ERC20/IERC20.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
    /**
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `recipient`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address recipient, uint256 amount) external returns (bool);

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
     * @dev Moves `amount` tokens from `sender` to `recipient` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) external returns (bool);

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
}

// ============================================================
// FILE: @openzeppelin/contracts-0.8/utils/Context.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (utils/Context.sol)

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
}

// ============================================================
// FILE: contracts/interfaces/IERC677.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;
import { IERC20 } from "@openzeppelin/contracts-0.8/token/ERC20/IERC20.sol";

interface IERC677 is IERC20 {
    event Transfer(address indexed from, address indexed to, uint256 value, bytes data);

    function transferAndCall(
        address to,
        uint256 value,
        bytes calldata data
    ) external returns (bool);
}

// ============================================================
// FILE: contracts/peripheral/KeeperRole.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;
import "@openzeppelin/contracts-0.8/access/Ownable.sol";

/**
 *  @title KeeperRole
 *  @notice Keeper role to allow an address to call functions.
 *  @author Aura Finance
 */
contract KeeperRole is Ownable {
    mapping(address => bool) public authorizedKeepers;

    constructor(address _owner) {
        _transferOwnership(_owner);
    }

    /// @notice Adds or remove an address from the keeper's whitelist
    /// @param _keeper address of the authorized keeper
    /// @param _authorized Whether to add or remove keeper
    function updateAuthorizedKeepers(address _keeper, bool _authorized) external onlyOwner {
        authorizedKeepers[_keeper] = _authorized;
    }

    /* -------------------------------------------------------------------
       Modifiers 
    ------------------------------------------------------------------- */

    modifier onlyKeeper() {
        require(authorizedKeepers[msg.sender], "!keeper");
        _;
    }
}

// ============================================================
// FILE: contracts/sidechain/bridge/BridgeDelegateSender.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;

import { KeeperRole } from "../../peripheral/KeeperRole.sol";

/**
 * @title   BridgeDelegateSender
 * @author  AuraFinance
 * @dev     Sends tokens to L1 via a bridge
 */
abstract contract BridgeDelegateSender is KeeperRole {
    /* -------------------------------------------------------------------
       Storage 
    ------------------------------------------------------------------- */
    /// @dev The crv token address
    address public crv;

    /// @dev The L1Receiver address
    address public l1Receiver;

    /* -------------------------------------------------------------------
       Constructor 
    ------------------------------------------------------------------- */

    constructor() KeeperRole(msg.sender) {}

    /* -------------------------------------------------------------------
       Events 
    ------------------------------------------------------------------- */
    /**
     * @dev Emitted when tokens are sent to a recipient.
     * @param to The address of the recipient.
     * @param amount The amount of tokens sent.
     */
    event Send(address to, uint256 amount);

    /**
     * @dev Emitted when the l1 receiver address is updated.
     * @param l1Receiver    The new l1 receiver address.
     */
    event L1ReceiverUpated(address l1Receiver);

    /* -------------------------------------------------------------------
       Setter Functions
    ------------------------------------------------------------------- */
    /**
     * @notice Allows the owner of the contract to set the L1 receiver address.
     * @dev  This function requires the owner of the contract to call it and pass in a valid address.
     * If the address is valid, the l1Receiver variable is updated and an event is emitted.
     * @param _l1Receiver    The new l1 receiver address.
     */
    function setL1Receiver(address _l1Receiver) external onlyOwner {
        require(_l1Receiver != address(0), "!0");
        l1Receiver = _l1Receiver;
        emit L1ReceiverUpated(_l1Receiver);
    }

    /**
     * @dev Function to send a specified amount of tokens
     * @param _amount The amount of tokens to be sent
     */
    function send(uint256 _amount) external virtual;
}

// ============================================================
// FILE: contracts/sidechain/bridge/GnosisBridgeSender.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;

import { BridgeDelegateSender } from "./BridgeDelegateSender.sol";
import { IERC677 } from "../../interfaces/IERC677.sol";

contract GnosisBridgeSender is BridgeDelegateSender {
    /* -------------------------------------------------------------------
       Storage 
    ------------------------------------------------------------------- */

    /// @dev The Gnosis bridge address
    address public immutable bridge;

    /* -------------------------------------------------------------------
       Constructor 
    ------------------------------------------------------------------- */

    /**
     * @dev Constructs the GnosisBridgeSender contract.
     * @param _bridge The gnosis bridge address.
     * @param _crv The ERC677 token address.
     */
    constructor(address _bridge, address _crv) {
        bridge = _bridge;
        crv = _crv;
    }

    /* -------------------------------------------------------------------
       Functions
    ------------------------------------------------------------------- */

    /**
     * @dev Function to send a specified amount of tokens.
     * Requirements:
     * - The caller must be the owner of the contract.
     * @param _amount The amount of tokens to be sent
     */
    function send(uint256 _amount) external override onlyKeeper {
        require(l1Receiver != address(0), "L1ReceiverNotSet");
        bytes memory data = abi.encodePacked(address(l1Receiver));
        IERC677(crv).transferAndCall(bridge, _amount, data);
        emit Send(l1Receiver, _amount);
    }
}
