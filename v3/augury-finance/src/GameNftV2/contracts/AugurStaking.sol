// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./GameNftV2.sol";

contract AugurStaking {
  event RewardsReceived(uint256 amount, uint256 accumulated, uint256 shares);
  event AugurStaked(address userId, uint256 tokenId);
  event AugurStakeCancelled(address userId, uint256 tokenId);
  event RewardsClaimed(address userId, uint256 amount);

  struct UserStakingView {
    uint256 shares;
    uint256 rewards;

    uint256 userRewards;
    uint256[] userTokens;
  }
  
  GameNftV2 public nfts;

  uint256 public shares;

  uint256 public rewards;
  uint256 public rps;
  mapping(address => uint256) public userRps;
  mapping(address => uint256[]) public userTokens;
  mapping(address => mapping(uint256 => uint256)) userTokenIndex;

  uint256 deployedAt;
  constructor(GameNftV2 firstNfts) {
    nfts = firstNfts;
    deployedAt = block.timestamp;
  }

  function calculateRewardAmount(address userId) public view returns (uint256) {

    uint256 diff = rps - userRps[userId];
    uint256 amount = (diff * userTokens[userId].length) / 1e18;

    return amount;
  }
  function mkView(address userId) external view returns (UserStakingView memory) {
    return UserStakingView (
      shares,
      rewards,

      calculateRewardAmount(userId),
      userTokens[userId]
    );
  }

  function cancel(uint256[] calldata tokenIds) external {
    uint256 userTokensLength = userTokens[msg.sender].length;
    require(userTokensLength > 0, "400|MustHaveStakedTokens");
    _claimRewards(msg.sender);

    for(uint256 i = 0; i < tokenIds.length; i++) {
      uint256 tokenId = tokenIds[i];
      require(tokenId > 0, "400|TokenIdMustBeGreaterThan0");

      uint256 index = userTokenIndex[msg.sender][tokenId];
      require(userTokens[msg.sender][index] == tokenId, "400|UserTokenIdMismatch");

      shares -= 1;
      userTokens[msg.sender][index] = userTokens[msg.sender][userTokensLength - 1];
      userTokens[msg.sender].pop();

      nfts.safeTransferFrom(address(this), msg.sender, tokenId);
      emit AugurStakeCancelled(msg.sender, tokenId);
    }
  }

  function _claimRewards(address userId) private {

    uint256 amount = calculateRewardAmount(userId);

    userRps[userId] = rps;
    if(amount > 0) {
      (bool success,) = payable(userId).call{value: amount}("");
      require(success, "500|FailedToSendReward");
      emit RewardsClaimed(userId, amount);
    }
  }
  function claimRewards() external {
    _claimRewards(msg.sender);
  }

  function onERC721Received(
    address operator, // operator is the message sender of the transfer
    address,
    uint256 tokenId,
    bytes calldata
  ) external returns (bytes4) {
    require(msg.sender == address(nfts), "403|StakedNFTMustBeAnAugur");

    (, uint32 nftType,) = nfts.rows(tokenId);
    require(nftType == 3, "400|StakedNFTMustBeAnAugur");

    _claimRewards(operator);

    userTokens[operator].push(tokenId);
    userTokenIndex[operator][tokenId] = userTokens[operator].length - 1;
    shares += 1;

    emit AugurStaked(operator, tokenId);
    return this.onERC721Received.selector;
  }

  receive() external payable {
    require(shares > 0, "400|InsufficientSharesToAccumulateRewards");

    rewards += msg.value;
    rps += (msg.value * 1e18) / shares;

    emit RewardsReceived(msg.value, rewards, shares);
  }
}
