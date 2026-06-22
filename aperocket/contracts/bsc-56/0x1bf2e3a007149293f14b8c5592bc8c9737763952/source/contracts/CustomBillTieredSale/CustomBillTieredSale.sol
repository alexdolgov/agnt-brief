// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.17;

/*
  ______                       _______                             __ 
 /      \                     |       \                           |  \
|  ▓▓▓▓▓▓\  ______    ______  | ▓▓▓▓▓▓▓\  ______   _______    ____| ▓▓
| ▓▓__| ▓▓ /      \  /      \ | ▓▓__/ ▓▓ /      \ |       \  /      ▓▓
| ▓▓    ▓▓|  ▓▓▓▓▓▓\|  ▓▓▓▓▓▓\| ▓▓    ▓▓|  ▓▓▓▓▓▓\| ▓▓▓▓▓▓▓\|  ▓▓▓▓▓▓▓
| ▓▓▓▓▓▓▓▓| ▓▓  | ▓▓| ▓▓    ▓▓| ▓▓▓▓▓▓▓\| ▓▓  | ▓▓| ▓▓  | ▓▓| ▓▓  | ▓▓
| ▓▓  | ▓▓| ▓▓__/ ▓▓| ▓▓▓▓▓▓▓▓| ▓▓__/ ▓▓| ▓▓__/ ▓▓| ▓▓  | ▓▓| ▓▓__| ▓▓
| ▓▓  | ▓▓| ▓▓    ▓▓ \▓▓     \| ▓▓    ▓▓ \▓▓    ▓▓| ▓▓  | ▓▓ \▓▓    ▓▓
 \▓▓   \▓▓| ▓▓▓▓▓▓▓   \▓▓▓▓▓▓▓ \▓▓▓▓▓▓▓   \▓▓▓▓▓▓  \▓▓   \▓▓  \▓▓▓▓▓▓▓
          | ▓▓                                                        
          | ▓▓                                                        
           \▓▓                                                         
 * App:             https://Ape.Bond
 * Medium:          https://ApeBond.medium.com
 * Twitter:         https://twitter.com/ApeBond
 * Telegram:        https://t.me/ape_bond
 * Announcements:   https://t.me/ApeBond_news
 * Discord:         https://ApeBond.click/discord
 * Reddit:          https://ApeBond.click/reddit
 * Instagram:       https://instagram.com/ape.bond
 * GitHub:          https://github.com/ApeSwapFinance
 */

import "../CustomBillSale/CustomBillSale.sol";
import "../interfaces/IEscrowWeightLens.sol";

/// @title CustomBillTieredSale
/// @author Ape.Bond
/// @notice Provides functionality to distribute extra bonus tokens subjective to the totalBilledAmount
/// @dev Extends CustomBillSale
contract CustomBillTieredSale is CustomBillSale {
    using SafeERC20Upgradeable for IERC20MetadataUpgradeable;

    uint256 public minPoints;
    uint256 public maxPoints;
    IEscrowWeightLens public pointsLens;

    function initialize(
        ICustomTreasury _customTreasury,
        BillCreationDetails memory _billCreationDetails,
        BillSaleTerms memory _billTerms,
        BillAccounts memory _billAccounts,
        uint256 _minPoints,
        uint256 _maxPoints,
        IEscrowWeightLens _pointsLens
    ) external {
        super.initialize(
            _customTreasury,
            _billCreationDetails,
            _billTerms,
            _billAccounts
        );

        minPoints = _minPoints;
        maxPoints = _maxPoints;
        pointsLens = _pointsLens;
    }

    /**
     *  @notice Purchase a bill by depositing principalTokens
     *  @param _amount Amount of principalTokens to deposit/purchase a bill
     *  @param _maxPrice Max price willing to pay for for this deposit
     *  @param _depositor Address which will own the bill
     *  @return uint256 payout amount in payoutTokens
     *
     * Requirements
     * - Only Contracts can deposit on behalf of other accounts. Otherwise msg.sender MUST == _depositor.
     * - principalToken MUST NOT be a reflect token
     */
    function deposit(
        uint256 _amount,
        uint256 _maxPrice,
        address _depositor
    ) public override returns (uint256) {
        if (address(pointsLens) != address(0)) {
            (uint256 totalWeight, , ) = pointsLens.getEscrowWeight(msg.sender);
            require(
                totalWeight >= minPoints && totalWeight <= maxPoints,
                "Invalid Points"
            );
        }
        return super.deposit(_amount, _maxPrice, _depositor);
    }
}
