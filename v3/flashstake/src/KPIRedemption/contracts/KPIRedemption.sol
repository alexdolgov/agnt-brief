// SPDX-License-Identifier: BUSL-1.1
// Licensor: Flashstake DAO
// Licensed Works: (this contract, source below)
// Change Date: The earlier of 2027-05-23 or a date specified by Flashstake DAO publicly
// Change License: GNU General Public License v2.0 or later
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract KPIRedemption is Ownable {
    using SafeERC20 for IERC20Metadata;

    IERC20Metadata public immutable kpiToken;
    IERC20Metadata public immutable rewardToken;
    uint256 public immutable endOfRedemptionTs;

    uint256 public tvlAchieved;
    address public forfeitAddress = 0x8603FfE7B00CCd759f28aBfE448454A24cFba581;

    constructor(address _kpiTokenAddress, address _rewardTokenAddress, uint256 _endOfRedemptionTs) {
        kpiToken = IERC20Metadata(_kpiTokenAddress);
        rewardToken = IERC20Metadata(_rewardTokenAddress);
        endOfRedemptionTs = _endOfRedemptionTs;
    }

    function updateSettings(uint256 _newTvlAchieved, address _newForfeitAddress) external onlyOwner {
        require(_newTvlAchieved <= 10000, "INVALID TVL PERCENTAGE");
        tvlAchieved = _newTvlAchieved;
        forfeitAddress = _newForfeitAddress;
    }

    function quoteRedeem(uint256 _tokenAmount) public view returns(uint256 currentValue) {
        if(tvlAchieved <= 2000) {           // TVL Goal <= 20%
            currentValue = _tokenAmount;
        } else if(tvlAchieved == 10000) {   // TVL Goal == 100%
            currentValue = 5 * _tokenAmount;
        } else {
            // Dynamic exchange rate
            currentValue = ((5 * _tokenAmount * tvlAchieved) / 10000);
        }

        uint256 currentTotalRewardBalance = IERC20Metadata(rewardToken).balanceOf(address(this));
        if(currentValue > currentTotalRewardBalance) {
            currentValue = currentTotalRewardBalance;
        }
    }

    function redeem(uint256 _tokenAmount) external returns(uint256 reward) {
        kpiToken.safeTransferFrom(msg.sender, address(this), _tokenAmount);

        reward = quoteRedeem(_tokenAmount);
        rewardToken.safeTransfer(msg.sender, reward);
    }

    function withdraw() external onlyOwner {
        require(block.timestamp >= endOfRedemptionTs, "REDEMPTION PERIOD ACTIVE");

        uint256 currentRewardBalance = IERC20Metadata(rewardToken).balanceOf(address(this));
        rewardToken.safeTransfer(forfeitAddress, currentRewardBalance);
    }
}
