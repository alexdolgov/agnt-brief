// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.24;

import { Ownable } from "solady/auth/Ownable.sol";
import { Errors } from "../libraries/Errors.sol";

/// @author 0xtekgrinder
/// @title AFees
/// @notice Abstract contract to allow access only to operator or owner
abstract contract AFees is Ownable {
    /*//////////////////////////////////////////////////////////////
                                  ENUMS
    //////////////////////////////////////////////////////////////*/

    enum FeeType {
        Reward,
        Compound
    }

    /*//////////////////////////////////////////////////////////////
                                  EVENTS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Emitted when a fee is updated
     */
    event FeeUpdated(FeeType, uint256 newFee);
    /**
     * @notice Emitted when the fee recipient is updated
     */
    event FeeRecipientUpdated(address newFeeRecipient);

    /*//////////////////////////////////////////////////////////////
                                CONSTANTS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice maximum value for a fee
     */
    uint256 public constant MAX_BPS = 100_000;

    /*//////////////////////////////////////////////////////////////
                            MUTABLE VARIABLES
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice address to receive the fees
     */
    address public feeRecipient;

    /**
     * @notice fees mapping
     * @dev fees are expressed in basis points (1/100 of a percent)
     */
    mapping(FeeType => uint256) public fees;

    /*//////////////////////////////////////////////////////////////
                                CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    constructor(
        uint256 initialHarvestFee,
        uint256 initialCompoundFee,
        address initialFeeRecipient
    ) {
        // Doesn't check if the fees are valid since they can be set afterwards
        fees[FeeType.Reward] = initialHarvestFee;
        fees[FeeType.Compound] = initialCompoundFee;
        feeRecipient = initialFeeRecipient;
    }

    /*//////////////////////////////////////////////////////////////
                              FEES LOGIC
    //////////////////////////////////////////////////////////////*/

    function setFee(FeeType typ, uint32 fee) external onlyOwner {
        if (fee > MAX_BPS) revert Errors.InvalidFee();

        fees[typ] = fee;

        emit FeeUpdated(typ, fee);
    }

    function setFeeRecipient(address newFeeRecipient) external virtual onlyOwner {
        if (newFeeRecipient == address(0)) revert Errors.ZeroAddress();

        feeRecipient = newFeeRecipient;

        emit FeeRecipientUpdated(newFeeRecipient);
    }
}
