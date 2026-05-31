// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.25;

import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {SafeERC20, IERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {ILocker} from "./interfaces/ILocker.sol";

contract Locker is ILocker {

    using SafeERC20 for IERC20;
    using Address for address payable;

    address public owner;
    address public pendingOwner;
    address public sweepRecipient;

    address public immutable asset;

    mapping(address caller => bool isApproved) public approvedCallers;

    string public name;

    // ============================================================================================
    // Constructor
    // ============================================================================================

    /// @param _asset The address of the asset that will be locked
    /// @param _owner The address of the owner
    /// @param _sweepRecipient The address of the recipient of the swept funds
    /// @param _name The name of the locker
    constructor(address _asset, address _owner, address _sweepRecipient, string memory _name) {
        if (_asset == address(0)) revert InvalidAddress();
        if (_owner == address(0)) revert InvalidAddress();
        if (_sweepRecipient == address(0)) revert InvalidAddress();

        asset = _asset;
        owner = _owner;
        sweepRecipient = _sweepRecipient;
        name = _name;
    }

    // ============================================================================================
    // Mutators
    // ============================================================================================

    /// @notice Execute a call to the target address
    /// @param _to The address of the target contract
    /// @param _value The amount of ETH to send
    /// @param _data The data to send
    /// @return _returnData The return data of the call
    function execute(address payable _to, uint256 _value, bytes calldata _data) external returns (bytes memory _returnData) {
        if (!approvedCallers[msg.sender]) revert Unauthorized();

        _returnData = _to.functionCallWithValue(_data, _value);
        emit Executed(_to, _value, _data, _returnData);
    }

    /// @notice Sweep the funds from the locker
    /// @dev `asset` cannot be swept. Sweeping `address(0)` will send the ETH to the owner. Sweeping an ERC20 will send the ERC20 to the `sweepRecipient`
    /// @param _asset The address of the asset to sweep
    function sweep(address _asset) external {
        if (_asset == asset) revert Unauthorized();

        if (_asset == address(0)) {
            payable(owner).sendValue(address(this).balance);
        } else {
            IERC20(_asset).safeTransfer(sweepRecipient, IERC20(_asset).balanceOf(address(this)));
        }
    }

    // ============================================================================================
    // Setters
    // ============================================================================================

    /// @notice Set the pending owner
    /// @param _pendingOwner The address of the pending owner
    function setPendingOwner(address _pendingOwner) external {
        if (_pendingOwner == address(0)) revert InvalidAddress();
        if (msg.sender != owner) revert Unauthorized();

        pendingOwner = _pendingOwner;
        emit PendingOwnerSet(_pendingOwner);
    }

    /// @notice Accept the ownership
    /// @dev This function can only be called by the pending owner
    function acceptOwnership() external {
        if (msg.sender != pendingOwner) revert Unauthorized();
        owner = pendingOwner;
        pendingOwner = address(0);
        emit OwnershipAccepted(owner);
    }

    /// @notice Set an approved caller status
    /// @param _caller The address of the caller
    /// @param _isApproved The status of the caller
    function setApprovedCaller(address _caller, bool _isApproved) external {
        if (_caller == address(0)) revert InvalidAddress();
        if (msg.sender != owner) revert Unauthorized();

        approvedCallers[_caller] = _isApproved;
        emit ApprovedCallerSet(_caller, _isApproved);
    }

    /// @notice Set the sweep recipient
    /// @param _sweepRecipient The address of the sweep recipient
    function setSweepRecipient(address _sweepRecipient) external {
        if (_sweepRecipient == address(0)) revert InvalidAddress();
        if (msg.sender != owner) revert Unauthorized();

        sweepRecipient = _sweepRecipient;
        emit SweepRecipientSet(_sweepRecipient);
    }
}
