// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import { IERC20 } from "@oz/interfaces/IERC20.sol";
import { SafeERC20 } from "@oz/token/ERC20/utils/SafeERC20.sol";

import { BaseVault } from "src/core/BaseVault.sol";
import { FeeVaultParameters } from "src/core/Types.sol";
import { IFeeCalculator } from "src/core/interfaces/IFeeCalculator.sol";
import { IFeeVault } from "src/core/interfaces/IFeeVault.sol";
import { IFeeVaultFactory } from "src/core/interfaces/IFeeVaultFactory.sol";

abstract contract FeeVault is IFeeVault, BaseVault {
    using SafeERC20 for IERC20;

    ////////////////////////////////////////////////////////////
    //                       Immutables                       //
    ////////////////////////////////////////////////////////////

    /// @notice Address of the fee calculator contract
    IFeeCalculator public immutable FEE_CALCULATOR;
    /// @notice Address of the fee token
    IERC20 public immutable FEE_TOKEN;

    constructor() {
        // Interactions: get the fee vault parameters
        FeeVaultParameters memory params = IFeeVaultFactory(msg.sender).feeVaultParameters();

        IFeeCalculator feeCalculator_ = params.feeCalculator;
        IERC20 feeToken_ = params.feeToken;

        // Requirements: check that the fee calculator and fee token are not zero addresses
        require(address(feeCalculator_) != address(0), Aera__ZeroAddressFeeCalculator());
        require(address(feeToken_) != address(0), Aera__ZeroAddressFeeToken());

        // Interactions: register the vault with the fee calculator
        feeCalculator_.registerVault(params.aumFee, params.performanceFee, params.feeRecipient);

        // Effects: set the fee calculator and fee token immutables
        FEE_CALCULATOR = feeCalculator_;
        FEE_TOKEN = feeToken_;
    }

    ////////////////////////////////////////////////////////////
    //              Public / External Functions               //
    ////////////////////////////////////////////////////////////

    /// @inheritdoc IFeeVault
    function setFeeRecipient(address newFeeRecipient) external requiresAuth {
        // Interactions: set the new fee recipient
        FEE_CALCULATOR.setVaultFeeRecipient(newFeeRecipient);
    }

    /// @inheritdoc IFeeVault
    function setFees(uint16 aumFee, uint16 performanceFee) external requiresAuth {
        // Interactions: set the new fees
        FEE_CALCULATOR.setVaultFees(aumFee, performanceFee);
    }

    /// @inheritdoc IFeeVault
    function claimFees() external {
        // Interactions: claim the fees
        (uint256 feeRecipientEarnedFees, uint256 protocolEarnedFees, address protocolFeeRecipient) =
            FEE_CALCULATOR.claimFees(msg.sender);

        // Requirements: check that the fee recipient has earned fees
        // this is to allow only fee recipients to call this function
        require(feeRecipientEarnedFees > 0, Aera__NoFeesToClaim());

        // Interactions: transfer the fees to the fee recipient
        FEE_TOKEN.safeTransfer(msg.sender, feeRecipientEarnedFees);
        // Log the fees claimed event
        emit FeesClaimed(msg.sender, feeRecipientEarnedFees);

        if (protocolEarnedFees != 0) {
            // Interactions: transfer the protocol fees to the protocol fee recipient
            FEE_TOKEN.safeTransfer(protocolFeeRecipient, protocolEarnedFees);
            // Log the protocol fees claimed event
            emit ProtocolFeesClaimed(protocolEarnedFees);
        }
    }

    /// @inheritdoc IFeeVault
    function claimProtocolFees() external {
        // Interactions: claim the protocol fees
        (uint256 protocolEarnedFees, address protocolFeeRecipient) = FEE_CALCULATOR.claimProtocolFees();

        // Requirements: check that the caller is the protocol fee recipient
        require(msg.sender == protocolFeeRecipient, Aera__Unauthorized());

        // Requirements: check that the protocol has earned fees
        require(protocolEarnedFees != 0, Aera__NoFeesToClaim());

        // Interactions: transfer the protocol fees to the protocol fee recipient
        FEE_TOKEN.safeTransfer(protocolFeeRecipient, protocolEarnedFees);
        // Log the protocol fees claimed event
        emit ProtocolFeesClaimed(protocolEarnedFees);
    }
}
