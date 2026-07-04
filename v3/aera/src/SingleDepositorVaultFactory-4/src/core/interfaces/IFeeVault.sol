// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import { IFeeCalculator } from "src/core/interfaces/IFeeCalculator.sol";

import { IERC20 } from "@oz/interfaces/IERC20.sol";

/// @notice Interface for the FeeVault
interface IFeeVault {
    ////////////////////////////////////////////////////////////
    //                         Events                         //
    ////////////////////////////////////////////////////////////

    event FeesClaimed(address indexed feeRecipient, uint256 fees);
    event ProtocolFeesClaimed(uint256 protocolEarnedFees);

    ////////////////////////////////////////////////////////////
    //                         Errors                         //
    ////////////////////////////////////////////////////////////

    error Aera__ZeroAddressFeeCalculator();
    error Aera__ZeroAddressFeeToken();
    error Aera__NoFeesToClaim();
    error Aera__Unauthorized();

    ////////////////////////////////////////////////////////////
    //                       Functions                        //
    ////////////////////////////////////////////////////////////

    /// @notice Set the fee recipient
    /// @param newFeeRecipient The new fee recipient
    function setFeeRecipient(address newFeeRecipient) external;

    /// @notice Set the fees
    /// @param aumFee The AUM fee
    /// @param performanceFee The performance fee
    function setFees(uint16 aumFee, uint16 performanceFee) external;

    /// @notice Claim the fees for msg.sender
    /// @dev Claims protocol fees if earned
    function claimFees() external;

    /// @notice Claim the protocol fees
    function claimProtocolFees() external;

    /// @notice Get the fee calculator
    // solhint-disable-next-line func-name-mixedcase
    function FEE_CALCULATOR() external view returns (IFeeCalculator);

    /// @notice Get the fee token
    // solhint-disable-next-line func-name-mixedcase
    function FEE_TOKEN() external view returns (IERC20);
}
