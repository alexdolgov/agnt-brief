// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./DogsNftManager.sol";
import "./LPToTokenCalculator.sol";
import "./StakeManagerV2.sol";
import "./NftPigMcStakingBusd.sol";
import "./NftPigMcStakingBnb.sol";

contract NftReadContract {
 
  LPToTokenCalculator public lpCalc =  LPToTokenCalculator(0x1e55514a1bA84cC4144841111A5BAdA6D1416D08);
  StakeManagerV2 public stakeManager;
  NftPigMcStakingBnb public nftPigMcStakingBnb;
  NftPigMcStakingBusd public nftPigMcStakingBusd; 
  

  
  struct WithdrawnStakeInfoView2 {
        uint256 nftID;
        uint256 currentAmount;
        uint256 potentialAmount;
        uint256 dogsInLP;
        uint256 busdLP;
        uint256 bnbLP;
        uint256 pigsPendingBusd;
        uint256 pigsPendingBnb;
        uint256 taxReduction;
        uint256 endTime;
        bool isAutoPool;

  }

  constructor (address _stakeManager, address _stakebusd, address _stakebnb) {
    stakeManager = StakeManagerV2(_stakeManager);
    nftPigMcStakingBusd = NftPigMcStakingBusd(payable(_stakebusd));
    nftPigMcStakingBnb = NftPigMcStakingBnb(payable(_stakebnb));
  }



  function getUserWithdrawnStakes(address _user) external view returns(WithdrawnStakeInfoView2 [] memory ) {
    StakeManagerV2.WithdrawnStakeInfoView[] memory stakesinit = stakeManager.getUserWithdrawnStakes(_user);
    uint256 len = stakesinit.length;
    WithdrawnStakeInfoView2[] memory stakes = new WithdrawnStakeInfoView2[](len);
    for(uint256 i = 0; i < len ; i++){
      uint256 nftId = stakesinit[i].nftID;
      (uint256 lpAmountBusd , )  = (nftPigMcStakingBusd.nftInfo(nftId));
      (uint256 lpAmountBnb , ) = (nftPigMcStakingBnb.nftInfo(nftId));
      (uint256 lpTotalBusd, ) = lpCalc.calculateTokensFromLPBusd(lpAmountBusd);
      (uint256 lpTotalBnb, ) = lpCalc.calculateTokensFromLPBnb(lpAmountBnb);
      uint256 lpTotal = lpTotalBusd + lpTotalBnb;
      stakes[i].nftID = stakesinit[i].nftID;
      stakes[i].currentAmount = stakesinit[i].currentAmount;
      stakes[i].potentialAmount = stakesinit[i].potentialAmount;
      stakes[i].dogsInLP = lpTotal;
      stakes[i].busdLP = lpAmountBusd;
      stakes[i].bnbLP = lpAmountBnb;
      stakes[i].pigsPendingBusd = nftPigMcStakingBusd.pendingRewards(stakesinit[i].nftID);
      stakes[i].pigsPendingBnb = nftPigMcStakingBnb.pendingRewards(stakesinit[i].nftID);
      stakes[i].taxReduction = stakesinit[i].taxReduction;
      stakes[i].endTime = stakesinit[i].endTime;
      stakes[i].isAutoPool = stakesinit[i].isAutoPool;
    }

    return stakes;
    
  }


  function getWithdrawnStakeInfo(uint256 _tokenId) external view returns (WithdrawnStakeInfoView2 memory){
    StakeManagerV2.WithdrawnStakeInfoView memory stakeinit = stakeManager.getUserWithdrawnStake(_tokenId);
    WithdrawnStakeInfoView2 memory returnStake;
    (uint256 lpAmountBusd , )  = (nftPigMcStakingBusd.nftInfo(_tokenId));
    (uint256 lpAmountBnb , ) = (nftPigMcStakingBnb.nftInfo(_tokenId));
    (uint256 lpTotalBusd, ) = lpCalc.calculateTokensFromLPBusd(lpAmountBusd);
    (uint256 lpTotalBnb, ) = lpCalc.calculateTokensFromLPBnb(lpAmountBnb);
    uint256 lpTotal = lpTotalBusd + lpTotalBnb;
    returnStake.nftID = stakeinit.nftID;
    returnStake.currentAmount = stakeinit.currentAmount;
    returnStake.potentialAmount = stakeinit.potentialAmount;
    returnStake.dogsInLP = lpTotal;
    returnStake.taxReduction = stakeinit.taxReduction;
    returnStake.endTime = stakeinit.endTime;
    returnStake.isAutoPool = stakeinit.isAutoPool;
    returnStake.busdLP = lpAmountBusd;
    returnStake.bnbLP = lpAmountBnb;
    returnStake.pigsPendingBusd = nftPigMcStakingBusd.pendingRewards(stakeinit.nftID);
    returnStake.pigsPendingBnb = nftPigMcStakingBnb.pendingRewards(stakeinit.nftID);
    return returnStake;
  }



}