// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.24;

import { Ownable } from "solady/auth/Ownable.sol";
import { Errors } from "../libraries/Errors.sol";

/// @author 0xtekgrinder
/// @title AOperator
/// @notice Abstract contract to allow access only to operator or owner
abstract contract AOperator is Ownable {
    /*//////////////////////////////////////////////////////////////
                                 EVENTS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Event emitted when the operator is updated
     */
    event OperatorUpdated(address oldOperator, address newOperator);

    /*//////////////////////////////////////////////////////////////
                            MUTABLE VARIABLES
    //////////////////////////////////////////////////////////////*/

    /**
     *  @notice operator caller address to allow access only to puppeteer/adapter
     */
    address public operator;

    /*//////////////////////////////////////////////////////////////
                               MODIFIERS
    //////////////////////////////////////////////////////////////*/

    modifier onlyOperatorOrOwner() {
        if (msg.sender != operator && msg.sender != owner()) revert Errors.NotOperatorOrOwner();
        _;
    }

    /*//////////////////////////////////////////////////////////////
                               CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    constructor(address initialOperator, address initialOwner) {
        if (initialOperator == address(0)) revert Errors.ZeroAddress();
        if (initialOwner == address(0)) revert Errors.ZeroAddress();

        _initializeOwner(initialOwner);
        operator = initialOperator;
    }

    /*//////////////////////////////////////////////////////////////
                               CONTRACT LOGIC
    //////////////////////////////////////////////////////////////*/

    function setOperator(address newOperator) external onlyOwner {
        if (newOperator == address(0)) revert Errors.ZeroAddress();

        address oldOperator = operator;
        operator = newOperator;

        emit OperatorUpdated(oldOperator, newOperator);
    }
}
