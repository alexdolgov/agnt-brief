// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IPermit2} from "permit2/src/interfaces/IPermit2.sol";
import {IVaultRelayer} from "./interfaces/IVaultRelayer.sol";
import {TransferHelper} from "./libraries/TransferHelper.sol";

contract VaultRelayer is IVaultRelayer {
    using SafeERC20 for IERC20;

    /// @dev The owner of the contract which has special permissions.
    address private immutable OWNER;

    /// @dev The Permit2 contract
    IPermit2 public immutable PERMIT2;

    constructor(IPermit2 permit2_) {
        PERMIT2 = permit2_;
        OWNER = msg.sender;
    }

    /// @dev Modifier that ensures that a function can only be called by the
    /// owner of this contract.
    modifier onlyOwner() {
        if (msg.sender != OWNER) revert NotOwner();
        _;
    }

    /// @inheritdoc IVaultRelayer
    function transferFromAccounts(TransferHelper.TransferFromData[] calldata transfers) external onlyOwner {
        TransferHelper.transferFromAccounts(PERMIT2, transfers, msg.sender);
    }
}
