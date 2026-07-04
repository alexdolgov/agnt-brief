// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import {ISaleReadable} from "../readable/ISaleReadable.sol";
import {IRestrictedWritableInternal} from "../writable/restricted/IRestrictedWritableInternal.sol";
import {ISaleWritableInternal} from "../writable/ISaleWritableInternal.sol";

import {SaleStorage} from "../SaleStorage.sol";

// import struct
import {Status, Phase} from "../SaleStruct.sol";

/**
 * @title SaleReadable
 * @notice Read-only contract of {Sale} data.
 */
contract SaleReadable is
    ISaleReadable, // 1 inherited component
    ISaleWritableInternal, // 1 inherited component
    IRestrictedWritableInternal // 1 inherited component
{
    /// @inheritdoc ISaleReadable
    function freeAllocationMintedBy(
        address account,
        string calldata phaseId
    ) external view override returns (uint256) {
        return
            SaleStorage.layout().ledger.freeAllocationMintedBy[account][
                phaseId
            ];
    }

    /// @inheritdoc ISaleReadable
    function summedMaxPhaseCap() external view override returns (uint256) {
        return SaleStorage.layout().ledger.summedMaxPhaseCap;
    }

    /// @inheritdoc ISaleReadable
    function allocationReservedByIn(
        address account,
        string calldata phaseId
    ) external view override returns (uint256) {
        return
            SaleStorage.layout().ledger.allocationReservedByIn[account][
                phaseId
            ];
    }

    /// @inheritdoc ISaleReadable
    function phase(
        string memory phaseId
    ) external view override returns (Phase memory phase_) {
        phase_ = SaleStorage.layout().phases.data[phaseId];
    }

    /// @inheritdoc ISaleReadable
    function phaseIds()
        external
        view
        override
        returns (string[] memory phaseIds_)
    {
        phaseIds_ = SaleStorage.layout().phases.ids;
    }

    /// @inheritdoc ISaleReadable
    function raisedInPhase(
        string memory phaseId
    ) external view override returns (uint256) {
        return SaleStorage.layout().ledger.raisedInPhase[phaseId];
    }

    /// @inheritdoc ISaleReadable
    function saleStatus() external view override returns (Status) {
        return SaleStorage.layout().ledger.status;
    }

    /// @inheritdoc ISaleReadable
    function setUp()
        external
        view
        override
        returns (address paymentToken, address permit2)
    {
        SaleStorage.SetUp memory setUp_ = SaleStorage.layout().setUp;
        paymentToken = setUp_.paymentToken;
        permit2 = setUp_.permit2;
    }

    /// @inheritdoc ISaleReadable
    function totalRaised() external view override returns (uint256) {
        return SaleStorage.layout().ledger.totalRaised;
    }
}
