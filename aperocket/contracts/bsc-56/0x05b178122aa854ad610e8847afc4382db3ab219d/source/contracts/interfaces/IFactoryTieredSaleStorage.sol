// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.17;
import "./ICustomBillSale.sol";

interface IFactoryTieredSaleStorage {
    struct BillDetails {
        address payoutToken;
        address principalToken;
        address treasuryAddress;
        address billAddress;
        address billNft;
        uint256[] tierCeilings;
        uint256 startVestingTimestamp;
        uint256[] fees;
        uint256 minPoints;
        uint256 maxPoints;
    }

    function totalBills() external view returns(uint);

    function getBillDetails(uint256 index) external returns (BillDetails memory);

    function pushBill(
        ICustomBillSale.BillCreationDetails calldata _billCreationDetails,
        address _customTreasury,
        address billAddress,
        address billNft,
        uint256 _minPoints,
        uint256 _maxPoints
    ) external returns (address _treasury, address _bill);
}
