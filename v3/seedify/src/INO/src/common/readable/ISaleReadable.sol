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
     * @return amount Amount of paymentToken paid by phase by each user,
     *                               expressed in {SetUp.paymentToken}.
     */
    function freeAllocationMintedBy(
        address account,
        string calldata phaseId
    ) external view returns (uint256);

    /**
     * @return Total Sum of maximum cap of each phase, expressed in {SetUp.paymentToken}.
     */
    function summedMaxPhaseCap() external view returns (uint256);

    /**
     * @param account Address of the user.
     * @param phaseId Identifier of the phase.
     *
     * @return Amount of {SaleStorage.SetUp.paymentToken} paid by `account` for the phase `phaseId`.
     *         If `address(0)` is returned, it means native (ETH, BNB, MATCI, etc...).
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
     *         If `address(0)` is returned, it means native (ETH, BNB, MATCI, etc...).
     */
    function raisedInPhase(
        string memory phaseId
    ) external view returns (uint256);

    /// @return Enum representing the current status of the Sale.
    function saleStatus() external view returns (Status);

    /**
     * @return paymentToken Address of the default token used to reserve allocation through the Sale.
     *         If `address(0)` is returned, it means native (ETH, BNB, MATCI, etc...).
     * @return permit2 Address of Permit2 contract.
     */
    function setUp()
        external
        view
        returns (address paymentToken, address permit2);

    /// @return Total amount of {SaleStorage.SetUp.paymentToken} raised for this Sale.
    function totalRaised() external view returns (uint256);
}
