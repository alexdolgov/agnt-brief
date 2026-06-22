// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.17;

// import {ICustomBillBase, IVestingCurve, ICustomTreasury, IERC20MetadataUpgradeable} from "./ICustomBillBase.sol";
import "./ICustomBillBase.sol";

interface ICustomBillSale is ICustomBillBase {
    /// @notice Info for bill holder
    /// @param payout Total payout value
    /// @param depositAmount Final deposit amount
    /// @param payoutClaimed Amount of payout claimed
    /// @param vesting Seconds left until vesting is complete
    /// @param vestingTerm Length of vesting in seconds
    /// @param vestingStartTimestamp Timestamp at start of vesting
    /// @param lastClaimTimestamp Last timestamp interaction
    /// @param truePricePaid Price paid (principal tokens per payout token) in ten-millionths - 4000000 = 0.4
    struct BillSale {
        uint256 payout;
        uint256 depositAmount;
        uint256 payoutClaimed;
        uint256 vesting;
        uint256 vestingTerm;
        uint256 vestingStartTimestamp;
        uint256 lastClaimTimestamp;
        uint256 truePricePaid;
    }

    struct BillSaleTerms {
        uint256 endTime;
        uint256 startTime;
        uint256 vestingTerm;
        uint256 minimumPrice;
        bool oversubscription;
        uint16 initialRelease;
        uint256 totalRaise;
        uint256 maxTotalPayout;
    }

    function initialize(
        ICustomTreasury _customTreasury,
        BillCreationDetails memory _billCreationDetails,
        BillSaleTerms memory _billSaleTerms,
        BillAccounts memory _billAccounts
    ) external;

    function getBillInfo(uint256 billId) external view returns (BillSale memory);
}
