// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.17;

/*
  ______                       __                                  __ 
 /      \                     /  |                                /  |
/$$$$$$  |  ______    ______  $$ |____    ______   _______    ____$$ |
$$ |__$$ | /      \  /      \ $$      \  /      \ /       \  /    $$ |
$$    $$ |/$$$$$$  |/$$$$$$  |$$$$$$$  |/$$$$$$  |$$$$$$$  |/$$$$$$$ |
$$$$$$$$ |$$ |  $$ |$$    $$ |$$ |  $$ |$$ |  $$ |$$ |  $$ |$$ |  $$ |
$$ |  $$ |$$ |__$$ |$$$$$$$$/ $$ |__$$ |$$ \__$$ |$$ |  $$ |$$ \__$$ |
$$ |  $$ |$$    $$/ $$       |$$    $$/ $$    $$/ $$ |  $$ |$$    $$ |
$$/   $$/ $$$$$$$/   $$$$$$$/ $$$$$$$/   $$$$$$/  $$/   $$/  $$$$$$$/ 
          $$ |                                                        
          $$ |                                                        
          $$/                                                         
 * App:             https://ape.bond
 * Medium:          https://apebond.medium.com/
 * Twitter:         https://twitter.com/ApeBond
 * Telegram:        https://t.me/ape_bond
 * Discord:         https://apebond.click/discord
 * Reddit:          https://apebond.click/reddit
 * Instagram:       https://www.instagram.com/ape.bond
 * GitHub:          https://github.com/ApeSwapFinance
 */

import "@ape.swap/contracts/contracts/v0.8/access/PendingOwnable.sol";
import "../interfaces/IFactoryTieredSaleStorage.sol";

contract FactoryTieredSaleStorage is IFactoryTieredSaleStorage, PendingOwnable {
    /* ======== STATE VARIABLES ======== */
    BillDetails[] public billDetails;

    address public billFactory;

    mapping(address => uint256) public indexOfBill;

    /* ======== EVENTS ======== */

    event BillCreation(address treasury, address bill, address nftAddress);
    event FactoryChanged(address newFactory);

    /* ======== OWNER FUNCTIONS ======== */

    /**
        @notice pushes bill details to array
        @param _billCreationDetails ICustomBill.BillCreationDetails
        @param _customBill address
        @param _billNFT address
        @return _treasury address
        @return _bill address
     */
    function pushBill(
        ICustomBillSale.BillCreationDetails memory _billCreationDetails,
        address _customTreasury,
        address _customBill,
        address _billNFT,
        uint256 _minPoints,
        uint256 _maxPoints
    ) external returns (address _treasury, address _bill) {
        require(billFactory == msg.sender, "Not Factory");

        indexOfBill[_customBill] = billDetails.length;

        billDetails.push(
            BillDetails({
                payoutToken: _billCreationDetails.payoutToken,
                principalToken: _billCreationDetails.principalToken,
                treasuryAddress: _customTreasury,
                billAddress: _customBill,
                billNft: _billNFT,
                tierCeilings: _billCreationDetails.tierCeilings,
                startVestingTimestamp: _billCreationDetails
                    .startVestingTimestamp,
                fees: _billCreationDetails.fees,
                minPoints: _minPoints,
                maxPoints: _maxPoints
            })
        );

        emit BillCreation(_customTreasury, _customBill, _billNFT);
        return (_customTreasury, _customBill);
    }

    /**
        @notice returns total bills
     */
    function totalBills() public view override returns (uint) {
        return billDetails.length;
    }

    /**
     * @notice get BillDetails at index
     * @param _index Index of BillDetails to look up
     */
    function getBillDetails(
        uint256 _index
    ) external view override returns (BillDetails memory) {
        require(_index < totalBills(), "index out of bounds");
        return billDetails[_index];
    }

    function billFees(
        uint256 _billId
    ) external view returns (uint256[] memory, uint256[] memory) {
        BillDetails memory bill = billDetails[_billId];
        uint256 length = bill.tierCeilings.length;
        uint256[] memory _tierCeilings = new uint[](length);
        uint256[] memory _fees = new uint[](length);
        for (uint256 i = 0; i < length; i++) {
            _tierCeilings[i] = bill.tierCeilings[i];
            _fees[i] = bill.fees[i];
        }
        return (_tierCeilings, _fees);
    }

    /**
        @notice changes factory address
        @param _factory address
     */
    function setFactoryAddress(address _factory) external onlyOwner {
        billFactory = _factory;
        emit FactoryChanged(billFactory);
    }
}
