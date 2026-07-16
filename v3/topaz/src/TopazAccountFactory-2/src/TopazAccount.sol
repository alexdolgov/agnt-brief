// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {IERC721Receiver} from "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";

/// @title TopazAccount
/// @notice Minimal, clone-deployed smart account for the Topaz AI Wallet beta.
///         Owner-only execution, batchable, with downstream revert bubbling.
///         Deliberately small: strategy complexity lives off-chain / in connectors.
contract TopazAccount is IERC721Receiver {
    address public owner;
    uint256 public nonce;

    bool private _initialized;
    uint256 private _entered;

    event Initialized(address indexed owner);
    event Executed(address indexed to, uint256 value, bytes data);
    event BatchExecuted(uint256 count);
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    error AlreadyInitialized();
    error NotOwner();
    error Reentrancy();
    error LengthMismatch();
    error ZeroAddress();

    modifier onlyOwner() {
        if (msg.sender != owner) revert NotOwner();
        _;
    }

    modifier nonReentrant() {
        if (_entered == 1) revert Reentrancy();
        _entered = 1;
        _;
        _entered = 0;
    }

    /// @dev Locks the implementation so it can never be initialized directly.
    ///      Clones do not run this constructor and remain initializable once.
    constructor() {
        _initialized = true;
    }

    /// @notice One-time initializer, called by the factory immediately after cloning.
    function initialize(address _owner) external {
        if (_initialized) revert AlreadyInitialized();
        if (_owner == address(0)) revert ZeroAddress();
        _initialized = true;
        owner = _owner;
        emit Initialized(_owner);
    }

    /// @notice Execute a single call from the account.
    function execute(address to, uint256 value, bytes calldata data)
        external
        payable
        onlyOwner
        nonReentrant
        returns (bytes memory result)
    {
        unchecked {
            ++nonce;
        }
        result = _call(to, value, data);
        emit Executed(to, value, data);
    }

    /// @notice Execute an ordered batch of calls atomically.
    function executeBatch(
        address[] calldata to,
        uint256[] calldata value,
        bytes[] calldata data
    ) external payable onlyOwner nonReentrant returns (bytes[] memory results) {
        uint256 len = to.length;
        if (value.length != len || data.length != len) revert LengthMismatch();
        unchecked {
            ++nonce;
        }
        results = new bytes[](len);
        for (uint256 i; i < len;) {
            results[i] = _call(to[i], value[i], data[i]);
            unchecked {
                ++i;
            }
        }
        emit BatchExecuted(len);
    }

    function transferOwnership(address newOwner) external onlyOwner {
        if (newOwner == address(0)) revert ZeroAddress();
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
    }

    function _call(address to, uint256 value, bytes calldata data)
        private
        returns (bytes memory)
    {
        (bool success, bytes memory ret) = to.call{value: value}(data);
        if (!success) {
            // Bubble up the original revert reason.
            assembly {
                revert(add(ret, 0x20), mload(ret))
            }
        }
        return ret;
    }

    function onERC721Received(address, address, uint256, bytes calldata)
        external
        pure
        returns (bytes4)
    {
        return IERC721Receiver.onERC721Received.selector;
    }

    receive() external payable {}
}
