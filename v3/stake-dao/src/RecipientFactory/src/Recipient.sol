// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.19;

import {ERC20} from "solady/src/tokens/ERC20.sol";
import {SafeTransferLib} from "solady/src/utils/SafeTransferLib.sol";

/// @title Recipient
/// @notice Recipient contract to receive SDT on behalf an address.
contract Recipient {
    /// @notice Throws if called by any account other than the owner.
    error NotOwner();

    /// @notice Owner of the contract.
    address public owner;

    /// @notice Address of the future owner for two-step ownership transfer.
    address public futureOwner;

    modifier onlyOwner() {
        if (msg.sender != owner) {
            revert NotOwner();
        }
        _;
    }

    constructor(address _owner) {
        owner = _owner;
    }

    /// @notice Claim the token of the contract.
    /// @param token Address of the token to claim.
    /// @param recipient Address of the recipient.
    function claim(address token, address recipient, uint256 amount) external onlyOwner {
        _claim(token, recipient, amount);
    }

    /// @notice Claim the token balance of the contract.
    /// @param token Address of the token to claim.
    /// @param recipient Address of the recipient.
    function claim(address token, address recipient) external onlyOwner {
        _claim(token, recipient, ERC20(token).balanceOf(address(this)));
    }

    function _claim(address token, address recipient, uint256 amount) internal {
        SafeTransferLib.safeTransfer(token, recipient, amount);
    }

    /// @notice Transfer the ownership of the contract.
    /// @param _futureOwner Address of the future owner.
    function transferOwnership(address _futureOwner) external onlyOwner {
        futureOwner = _futureOwner;
    }

    function acceptOwnership() external {
        if (msg.sender != futureOwner) {
            revert NotOwner();
        }
        owner = futureOwner;

        delete futureOwner;
    }
}
