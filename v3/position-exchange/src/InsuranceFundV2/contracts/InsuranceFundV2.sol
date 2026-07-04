// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./library/Governance.sol";
import "./interfaces/IGeneralNFTReward.sol";
import "./interfaces/IPosiTreasury.sol";

/**
 * A contract to update reward for NFT pool every 7 days
 */
contract InsuranceFundV2 is Governance {
    IGeneralNFTReward public generalNFTReward = IGeneralNFTReward(0x6257229FA379AFDBb91732091B5DE32cdB759845);
    IERC20 public posi = IERC20(0x5CA42204cDaa70d5c773946e69dE942b85CA6706);
    IPosiTreasury public treasury = IPosiTreasury(0xF7224c91BaF653ef46F498a92E2FFF35Ad0588a2);

    function approve() public {
        posi.approve(address(generalNFTReward), type(uint256).max);
    }

    // set new rewards distributing in 7 days for GeneralNFTRewards
    function notifyReward(uint256 amount) external onlyGovernance {
        require(block.timestamp >= generalNFTReward._periodFinish(), "Not time to reset");
        uint256 _balanceBefore = posi.balanceOf(address(this));
        if(_balanceBefore < amount){
            treasury.mint(address(this), amount);
            uint256 _balanceAfter = posi.balanceOf(address(this));
            amount = _balanceAfter - _balanceBefore;
        }
        generalNFTReward.notifyReward(amount);
    }

    // change GeneralNFTRewards
    function changeGeneralNFTGovernance(address governance) external onlyGovernance {
        generalNFTReward.setGovernance(governance);
    }
    function setTeamRewardRate( uint256 teamRewardRate ) external onlyGovernance {
        generalNFTReward.setTeamRewardRate( teamRewardRate);
    }
    function setPoolRewardRate( uint256  poolRewardRate ) external onlyGovernance {
        generalNFTReward.setPoolRewardRate( poolRewardRate);
    }
    function setHarvestInterval( uint256  harvestInterval ) external onlyGovernance {
        generalNFTReward.setHarvestInterval( harvestInterval);
    }
    function setRewardPool( address  rewardPool ) external onlyGovernance {
        generalNFTReward.setRewardPool(rewardPool);
    }
    function setTeamWallet( address teamwallet ) external onlyGovernance {
        generalNFTReward.setTeamWallet( teamwallet);
    }
    function setWithDrawPunishTime( uint256  punishTime ) external onlyGovernance {
        generalNFTReward.setWithDrawPunishTime( punishTime);
    }
    function setMaxStakedDego(uint256 amount) external onlyGovernance {
        generalNFTReward.setMaxStakedDego( amount);
    }

    function changeRewardToken( address newAddress ) external onlyGovernance {
        generalNFTReward.changeRewardToken( newAddress);
    }

    function changeNftToken( address newAddress ) external onlyGovernance {
        generalNFTReward.changeNftToken( newAddress);
    }

    function changeFactory( address newAddress ) external onlyGovernance {
        generalNFTReward.changeFactory( newAddress);
    }
}