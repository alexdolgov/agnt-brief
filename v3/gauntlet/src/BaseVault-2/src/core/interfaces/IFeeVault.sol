// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.29;

import { IFeeCalculator } from "src/core/interfaces/IFeeCalculator.sol";

import { IERC20 } from "@oz/interfaces/IERC20.sol";

/// @title IFeeVault
/// @notice Interface for vaults that support fees but don't have multiple depositors.
interface IFeeVault {
    ////////////////////////////////////////////////////////////
    //                         Events                         //
    ////////////////////////////////////////////////////////////

    event FeesClaimed(address indexed feeRecipient, uint256 fees);
    event ProtocolFeesClaimed(address indexed protocolFeeRecipient, uint256 protocolEarnedFees);
    event FeeRecipientUpdated(address indexed newFeeRecipient);

    ////////////////////////////////////////////////////////////
    //                         Errors                         //
    ////////////////////////////////////////////////////////////

    error Aera__ZeroAddressFeeCalculator();
    error Aera__ZeroAddressFeeToken();
    error Aera__ZeroAddressFeeRecipient();
    error Aera__NoFeesToClaim();
    error Aera__Unauthorized();
    error Aera__CallerIsNotFeeRecipient();

    ////////////////////////////////////////////////////////////
    //                       Functions                        //
    ////////////////////////////////////////////////////////////

    /// @notice Set the fee recipient
    /// @param newFeeRecipient The new fee recipient address
    function setFeeRecipient(address newFeeRecipient) external;

    /// @notice Set the fees
    /// @param aumFee The assets under management fee
    /// @param performanceFee The performance fee
    function setFees(uint16 aumFee, uint16 performanceFee) external;

    /// @notice Claim accrued fees for msg.sender
    /// @dev Automatically claims any earned protocol fees for the protocol
    function claimFees() external;

    /// @notice Claim accrued protocol fees
    function claimProtocolFees() external;

    /// @notice Get the fee calculator
    // solhint-disable-next-line func-name-mixedcase
    function FEE_CALCULATOR() external view returns (IFeeCalculator);

    /// @notice Get the fee token
    // solhint-disable-next-line func-name-mixedcase
    function FEE_TOKEN() external view returns (IERC20);
}
