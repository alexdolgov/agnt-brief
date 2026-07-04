// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

// import struct
import {Status, Phase} from "../SaleStruct.sol";

/**
 * @title ISaleReadable
 * @notice Interface made for read-only data from {Sale}.
 */
interface ISaleReadable {
    /**
     * @param account Address of the user.
     * @param phaseId Identifier of the phase.
     *
     * @return Amount of {SaleStorage.SetUp.paymentToken} paid by `account` for the phase `phaseId`.
     */
    function allocationReservedByIn(
        address account,
        string calldata phaseId
    ) external view returns (uint256);

    /**
     * @param phaseId Identifier of the phase.
     * @return phase_ Phase struct representing the data of the phase `phaseId`.
     */
    function phase(
        string memory phaseId
    ) external view returns (Phase memory phase_);

    /// @return phaseIds_ List of all phases identifiers.
    function phaseIds() external view returns (string[] memory phaseIds_);

    /**
     * @param phaseId Identifier of the phase.
     *
     * @return Amount of {SaleStorage.SetUp.paymentToken} raised for the phase `phaseId`.
     */
    function raisedInPhase(
        string memory phaseId
    ) external view returns (uint256);

    /// @return Enum representing the current status of the Sale.
    function saleStatus() external view returns (Status);

    /**
     * @return paymentToken Address of the default token used to reserve allocation through the Sale.
     * @return grandTotal Maximum amount of paymentToken that can be raised for this Sale accross all phases.
     */
    function setUp()
        external
        view
        returns (address paymentToken, uint256 grandTotal);

    /// @return Total amount of {SaleStorage.SetUp.paymentToken} raised for this Sale.
    function totalRaised() external view returns (uint256);
}
