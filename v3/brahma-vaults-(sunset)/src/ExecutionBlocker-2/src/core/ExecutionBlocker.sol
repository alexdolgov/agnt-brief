/// SPDX-License-Identifier: BUSL-1.1

/// Copyright (C) 2023 Brahma.fi

pragma solidity 0.8.19;

import {IERC165, Guard, Enum} from "interfaces/external/ISafeWallet.sol";
import {AddressProviderService} from "src/core/AddressProviderService.sol";

/**
 * @title ExecutionBlocker
 * @author Brahma.fi
 * @notice A guard that blocks safe transactions by always reverting on checks
 */
contract ExecutionBlocker is AddressProviderService, Guard {
    error ExecutionBlocked();

    constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

    /**
     * @notice Inherited from Guard, function is called before executing a Safe transaction during execTransaction
     * @dev reverts, to block the entire safe transaction
     */
    function checkTransaction(
        address,
        uint256,
        bytes memory,
        Enum.Operation,
        uint256,
        uint256,
        uint256,
        address,
        address payable,
        bytes memory,
        address
    ) external pure {
        revert ExecutionBlocked();
    }

    /**
     * @notice Inherited from Guard, function is called after executing a Safe transaction during execTransaction
     * @dev reverts, to block the entire safe transaction
     */
    function checkAfterExecution(bytes32, bool) external pure {
        revert ExecutionBlocked();
    }

    function supportsInterface(bytes4 interfaceId) external pure returns (bool) {
        return interfaceId == type(Guard).interfaceId || interfaceId == type(IERC165).interfaceId;
    }
}
