// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.17;

/*
  ______                     ______                                 
 /      \                   /      \                                
|  ▓▓▓▓▓▓\ ______   ______ |  ▓▓▓▓▓▓\__   __   __  ______   ______  
| ▓▓__| ▓▓/      \ /      \| ▓▓___\▓▓  \ |  \ |  \|      \ /      \ 
| ▓▓    ▓▓  ▓▓▓▓▓▓\  ▓▓▓▓▓▓\\▓▓    \| ▓▓ | ▓▓ | ▓▓ \▓▓▓▓▓▓\  ▓▓▓▓▓▓\
| ▓▓▓▓▓▓▓▓ ▓▓  | ▓▓ ▓▓    ▓▓_\▓▓▓▓▓▓\ ▓▓ | ▓▓ | ▓▓/      ▓▓ ▓▓  | ▓▓
| ▓▓  | ▓▓ ▓▓__/ ▓▓ ▓▓▓▓▓▓▓▓  \__| ▓▓ ▓▓_/ ▓▓_/ ▓▓  ▓▓▓▓▓▓▓ ▓▓__/ ▓▓
| ▓▓  | ▓▓ ▓▓    ▓▓\▓▓     \\▓▓    ▓▓\▓▓   ▓▓   ▓▓\▓▓    ▓▓ ▓▓    ▓▓
 \▓▓   \▓▓ ▓▓▓▓▓▓▓  \▓▓▓▓▓▓▓ \▓▓▓▓▓▓  \▓▓▓▓▓\▓▓▓▓  \▓▓▓▓▓▓▓ ▓▓▓▓▓▓▓ 
         | ▓▓                                             | ▓▓      
         | ▓▓                                             | ▓▓      
          \▓▓                                              \▓▓         
 * App:             https://ApeSwap.finance
 * Medium:          https://ape-swap.medium.com
 * Twitter:         https://twitter.com/ape_swap
 * Telegram:        https://t.me/ape_swap
 * Announcements:   https://t.me/ape_swap_news
 * Discord:         https://ApeSwap.click/discord
 * Reddit:          https://reddit.com/r/ApeSwap
 * Instagram:       https://instagram.com/ApeSwap.finance
 * GitHub:          https://github.com/ApeSwapFinance
 */

import "@openzeppelin/contracts-upgradeable/access/AccessControlEnumerableUpgradeable.sol";
import "../CustomBillFixed/CustomBillFixedPrice.sol";

/// @title CustomBillRefillable
/// @author ApeSwap.Finance
/// @notice Provides functionality to distribute extra bonus tokens subjective to the totalBilledamount
/// @dev Extends CustomBillFixedPrice
contract CustomBillFixedPriceMigration is CustomBillFixedPrice, AccessControlEnumerableUpgradeable {
    using SafeERC20Upgradeable for IERC20MetadataUpgradeable;
    
    uint256 public totalRewards;
    bool public depositsClosed = false;

    function initialize(
        ICustomTreasury _customTreasury,
        BillCreationDetails memory _billCreationDetails,
        BillTerms memory _billTerms,
        BillAccounts memory _billAccounts,
        uint256 _totalRewards
    ) external {
        super.initialize(
            _customTreasury,
            _billCreationDetails,
            _billTerms,
            _billAccounts
        );

        totalRewards = _totalRewards;
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
        require(!depositsClosed, "Deposits Closed");
        return super.deposit(_amount, _maxPrice, _depositor);
    }

    /**
     *  @notice Closes deposits to finalize bonus amounts
     */
    function disableDeposits() external onlyOwner {
        depositsClosed = true;
    }

    // View function to see pending rewards on frontend.
    function _bonusRewards(uint256 _billId)
        internal
        view
        returns (uint256 pending)
    {
        Bill memory bill = billInfo[_billId];
        uint256 accRewardPerShare = accumulatedRewardsPerShare();
        pending = (bill.depositAmount * accRewardPerShare) / 1e30;
    }

    // View function to see pending rewards on frontend.
    function bonusRewards(uint256 _billId)
        external
        view
        returns (uint256 pending)
    {
        
        return _bonusRewards(_billId);
    }
    /**
     *  @notice Returns an estimate of bonus rewards
     */
    function accumulatedRewardsPerShare() public view returns (uint256 accRewardPerShare) {
        if (totalPrincipalBilled == 0) return 0;
        accRewardPerShare = (totalRewards * 1e30) / totalPrincipalBilled;
    }

    /**
     *  @notice Return the amount of tokens unlocked at a specific timestamp. Includes claimed tokens.
     *  @dev Helper function for ERC5725. 
     *  @param _billId ID of Bill
     *  @param _timestamp timestamp to check
     */
    function _payoutsAtTime(uint256 _billId, uint256 _timestamp) 
        internal 
        view
        override
        returns (uint256 vestedPayout_, uint256 vestingPayout_, uint256 claimablePayout_) 
    {
        Bill memory bill = billInfo[_billId];
        // Calculate vestedPayout
        // Bonus rewards are only final after deposits are closed
        uint256 fullPayout = bill.payout + (depositsClosed ? _bonusRewards(_billId) : 0);
        vestedPayout_ = vestingCurve.getVestedPayoutAtTime(
            fullPayout, 
            bill.vestingTerm, 
            bill.vestingStartTimestamp, 
            _timestamp
        );
        // Calculate vestingPayout
        vestingPayout_ = fullPayout - vestedPayout_;
        // Calculate claimablePayout
        uint256 payoutClaimed = bill.payoutClaimed;
        claimablePayout_ = 0;
        if(payoutClaimed < vestedPayout_) {
            claimablePayout_ = vestedPayout_ - payoutClaimed;
        }
    }

}