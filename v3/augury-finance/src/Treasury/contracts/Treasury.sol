// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";
import "@openzeppelin/contracts/utils/cryptography/draft-EIP712.sol";

import "./ISettingsStore.sol";
import "./IAcceptTreasure.sol";

import "./GloryERC20.sol";
import "./GoldERC20.sol";
import "./IPartialFactory.sol";
import "./IPartialPairERC20.sol";
import "./IPartialRouter.sol";

contract Treasury is IAcceptTreasure, IERC721Receiver {
  using SafeERC20 for IERC20;

  uint256 public constant PERCENT_DIVISOR = 1000;

  event Accepted(address token, uint256 total, uint256 paired, uint256 buyback, uint256 community, uint256 operations, uint256 reserves);
  event ReserveAmountChanged(address token, uint256 added, uint256 removed, address by);
  event PairingAmountChanged(address token, uint256 added, uint256 removed, address by);
  event RewardGloryAmountChanged(uint256 sequence, uint256 added, uint256 removed);
  event GloryBuyback(uint256 amount);
  event Conversion(address token, uint256 amount, address by);

  struct GloryPair {
    bool active;

    address token;
    address router;

    uint256 minToBuyback;
    uint256 buybackIn;
    uint256 buybackOut;

    uint256 minToPair;
    uint256 pairingIn;
    uint256 pairingOut;

    uint256 reservePercent;
    uint256 reserveIn;
    uint256 reserveOut;
  }

  mapping(address => bool) public acceptedTokens;
  mapping(address => GloryPair) public gloryPairs;

  // pairing
  uint256 public pairingGloryIn = 0;
  uint256 public pairingGloryOut = 0;
  uint256 public minGloryToPair = 1000;
  uint256 public gloryPairingWeight = 525;

  uint256 public gloryBuyBackWeight = 275;

  uint256 public operationsWeight = 150;
  
  uint256 public communityWeight = 50;

  uint256 public reserveGloryIn = 0;
  uint256 public reserveGloryOut = 0;
  uint256 public gloryReservePercent = 50;

  uint256 public rewardGlorySequence = 100;

  uint256 public totalWeights = gloryPairingWeight + gloryBuyBackWeight + operationsWeight + communityWeight;

  ISettingsStore public settings;
  uint256 public immutable blockDeployed = block.number;

  constructor(ISettingsStore _settings)
  {
    settings = _settings;
  }

  function __glory() private view returns (address) {
    return settings.resolve("glory-erc20.playeternity.io");
  }

  function __gold() private view returns (address) {
    return settings.resolve("gold-erc20.playeternity.io");
  }

  function __componentDistributor() private view returns (address) {
    return settings.resolve("component-distributor.playeternity.io");
  }

  function __operations() private view returns (address) {
    return settings.resolve("operations.playeternity.io");
  }

  function __community() private view returns (address) {
    return settings.resolve("community.playeternity.io");
  }

  function setWeights(uint256 pairing, uint256 buyback, uint256 operations, uint256 community) external {
    require(settings.isAdmin(msg.sender), "403");

    gloryPairingWeight = pairing;
    gloryBuyBackWeight = buyback;
    operationsWeight = operations;
    communityWeight = community;

    totalWeights = gloryPairingWeight + gloryBuyBackWeight + operationsWeight + communityWeight;
  }

  function setGloryReservePercent(uint256 percent) external {
    require(settings.isAdmin(msg.sender), "403");
    require(percent <= PERCENT_DIVISOR, "400|InvalidPercent");

    gloryReservePercent = percent;
  }

  function setMinGloryToPair(uint256 amount) external {
    require(settings.isAdmin(msg.sender), "403");

    minGloryToPair = amount;
  }

  function setTokenAccepted(address token, bool accepted) external {
    require(settings.isPermittedTo(msg.sender, "Treasury", "SetTokenAccepted"), "403");
    
    acceptedTokens[token] = accepted;
  }

  function seedGlory(uint256 amount, uint256 pairingWeight, uint256 rewardWeight, uint256 reserveWeight) external {
    require(settings.isAdmin(msg.sender), "403");
    require(pairingGloryIn == 0 && reserveGloryIn == 0, "400|AlreadySeeded");

    IERC20 glory = IERC20(__glory());
    
    glory.safeTransferFrom(msg.sender, address(this), amount);

    uint256 localWeights = pairingWeight + rewardWeight + reserveWeight;

    pairingGloryIn = (amount * pairingWeight) / localWeights;
    emit PairingAmountChanged(__glory(), pairingGloryIn, 0, msg.sender);
    reserveGloryIn = (amount * reserveWeight) / localWeights;
    emit ReserveAmountChanged(__glory(), reserveGloryIn, 0, msg.sender);

    uint256 rewardAmount = amount - (pairingGloryIn + reserveGloryIn);
    glory.safeTransfer(__componentDistributor(), rewardAmount);
    emit RewardGloryAmountChanged(rewardGlorySequence++, rewardAmount, 0);
  }

  function setPair(bool active, address router, address token, uint256 minToBuyback, uint256 minToPair, uint256 reservePercent) external {
    require(settings.isPermittedTo(msg.sender, "Treasury", "SetPair"), "403");
    require(reservePercent <= PERCENT_DIVISOR, "400|InvalidReservePercent");

    GloryPair storage pair = gloryPairs[token];
    pair.active = active;
    pair.router = router;
    pair.token = token;
    pair.minToPair = minToPair;
    pair.minToBuyback = minToBuyback;
    pair.reservePercent = reservePercent;

    acceptedTokens[token] = active;
  }

  function accept(IERC20 token, uint256 amount) external {
    require(acceptedTokens[address(token)], "400|UnacceptedToken");
    if(amount == 0) {
      return;
    }

    token.safeTransferFrom(msg.sender, address(this), amount);
    if(address(token) == __gold()) {
      GoldERC20(address(token)).burn(amount);
      return;
    }

    uint256 operationsAmount = (amount * operationsWeight) / totalWeights;
    token.safeTransfer(__operations(), operationsAmount);

    uint256 communityAmount = (amount * communityWeight) / totalWeights;
    token.safeTransfer(__community(), communityAmount);

    uint256 buybackAmount = (amount * gloryBuyBackWeight) / totalWeights;

    uint256 consumed = operationsAmount + communityAmount + buybackAmount;
    uint256 pairingAmount = amount - consumed;

    IERC20 glory = GloryERC20(__glory());
    if(address(token) == address(glory)) {
      glory.safeTransfer(__componentDistributor(), buybackAmount);
      emit RewardGloryAmountChanged(rewardGlorySequence++, buybackAmount, 0);

      uint256 reserve = (pairingAmount * gloryReservePercent) / PERCENT_DIVISOR;
      uint256 forPairing = (pairingAmount - reserve);
      pairingGloryIn += forPairing;
      reserveGloryIn += reserve;

      emit PairingAmountChanged(address(token), forPairing, 0, msg.sender);
      emit ReserveAmountChanged(address(token), reserve, 0, msg.sender);
    } else {
      GloryPair storage pair = gloryPairs[address(token)];
      if(!pair.active) {
        // when a pair is not active, all tokens go to reserve for future pairing.
        pair.reserveIn += (pairingAmount + buybackAmount);
        emit ReserveAmountChanged(address(token), (pairingAmount + buybackAmount), 0, msg.sender);
        return;
      }

      IPartialRouter router = IPartialRouter(pair.router);

      pair.buybackIn += buybackAmount;
      if(pair.minToBuyback <= (pair.buybackIn - pair.buybackOut)) {
        address[] memory path = new address[](2);
        path[0] = address(token);
        path[1] = address(glory);
        
        // buyback/recycle
        token.approve(address(router), pair.buybackIn - pair.buybackOut);
        uint256[] memory amounts = router.swapExactTokensForTokens(
          pair.buybackIn - pair.buybackOut,
          0,
          path,
          address(this),
          block.timestamp + 600);

        pair.buybackOut += amounts[0];
        uint256 purchasedGlory = amounts[1];
        glory.safeTransfer(__componentDistributor(), purchasedGlory);
        emit GloryBuyback(purchasedGlory);
        emit RewardGloryAmountChanged(rewardGlorySequence++, purchasedGlory, 0);
      }

      // Pairing/reserves
      uint256 reserve = (pairingAmount * pair.reservePercent) / PERCENT_DIVISOR;
      uint256 forPairing = (pairingAmount - reserve);
      pair.pairingIn += forPairing;
      pair.reserveIn += reserve;
      emit ReserveAmountChanged(address(token), reserve, 0, msg.sender);

      // only pair when we have exceeded the threshold
      if(pair.minToPair <= (pair.pairingIn - pair.pairingOut) && minGloryToPair <= (pairingGloryIn - pairingGloryOut)) {
        token.approve(address(router), pair.pairingIn - pair.pairingOut);
        glory.approve(address(router), pairingGloryIn - pairingGloryOut);

        (uint256 actualPaired,uint256 consumedGlory,) = router.addLiquidity(
          address(token),
          address(glory),

          // desired
          pair.pairingIn - pair.pairingOut,
          pairingGloryIn - pairingGloryOut,

          // min
          0,
          0,

          address(this),
          block.timestamp + 600
        );

        pairingGloryOut += consumedGlory;
        pair.pairingOut += actualPaired;

        emit PairingAmountChanged(address(token), forPairing, actualPaired, msg.sender);
        emit PairingAmountChanged(__glory(), 0, consumedGlory, msg.sender);
      }
    }
  }

  function withdrawReserves(IERC20 token, uint256 amount, address to) external {
    require(settings.isPermittedTo(msg.sender, "Treasury", "WithdrawReserves"), "403");
    require(acceptedTokens[address(token)], "400|TokenNotActive");

    if(address(token) == __glory()) {
      require(amount <= reserveGloryIn - reserveGloryOut, "400");

      reserveGloryOut += amount;
    } else {
      GloryPair storage pair = gloryPairs[address(token)];

      require(pair.active, "400|InvalidToken");
      require(amount <= (pair.reserveIn - pair.reserveOut), "400|AmountExceedsReserve");

      pair.reserveOut += amount;
    }

    token.safeTransfer(to, amount);
    emit ReserveAmountChanged(address(token), 0, amount, msg.sender);
  }

  function returnReserves(IERC20 token, uint256 amount) external {
    require(settings.isPermittedTo(msg.sender, "Treasury", "ReturnReserves"), "403");
    require(acceptedTokens[address(token)], "400|TokenNotActive");

    token.safeTransferFrom(msg.sender, address(this), amount);
    if(address(token) == __glory()) {
      reserveGloryIn += amount;
    } else {
      GloryPair storage pair = gloryPairs[address(token)];

      pair.reserveIn += amount;
    }
    
    emit ReserveAmountChanged(address(token), amount, 0, msg.sender);
  }

  function convertFromReserves(address token, uint256 amount) external {
    require(settings.isPermittedTo(msg.sender, "Treasury", "ConvertReserves"), "403");
    require(acceptedTokens[address(token)], "400|TokenNotActive");

    if(address(token) == __glory()) {
      require(amount < (reserveGloryIn - reserveGloryOut), "400|AmountExceedsReserves");

      reserveGloryOut += amount;
      pairingGloryIn += amount;
    } else {
      GloryPair storage pair = gloryPairs[address(token)];

      require(amount < (pair.reserveIn - pair.reserveOut), "400|AmountExceedsReserves");

      pair.reserveOut += amount;
      pair.pairingIn += amount;
    }

    emit ReserveAmountChanged(token, amount, 0, msg.sender);
    emit PairingAmountChanged(token, 0, amount, msg.sender);
    emit Conversion(token, amount, msg.sender);
  }
  function convertToReserves(address token, uint256 amount) external {
    require(settings.isPermittedTo(msg.sender, "Treasury", "ConvertReserves"), "403");
    require(acceptedTokens[address(token)], "400|TokenNotActive");

    if(address(token) == __glory()) {
      require(amount < (pairingGloryIn - pairingGloryOut), "400|AmountExceedsReserves");

      pairingGloryOut += amount;
      reserveGloryIn += amount;
    } else {
      GloryPair storage pair = gloryPairs[address(token)];

      require(amount < (pair.pairingIn - pair.pairingOut), "400|AmountExceedsReserves");

      pair.pairingOut += amount;
      pair.reserveIn += amount;
    }

    emit ReserveAmountChanged(token, 0, amount, msg.sender);
    emit PairingAmountChanged(token, amount, 0, msg.sender);
    emit Conversion(token, amount, msg.sender);
  }

  function pairTokenReserves(address token, uint256 amount) external {
    require(settings.isPermittedTo(msg.sender, "Treasury", "PairTokenReserves"), "403");

    IERC20 glory = GloryERC20(__glory());
    GloryPair storage pair = gloryPairs[address(token)];
    require(pair.active, "400|TokenNotActive");

    IPartialRouter router = IPartialRouter(pair.router);

    uint256 availableReserves = pair.reserveIn - pair.reserveOut;
    amount = amount > availableReserves ? amount
      : availableReserves;

    // Pairing
    (uint256 actualPaired,uint256 consumedGlory,) = router.addLiquidity(
      address(token),
      address(glory),

      // desired
      amount,
      pairingGloryIn - pairingGloryOut,

      // min
      0,
      0,

      address(this),
      block.timestamp + 600
    );

    pairingGloryOut += consumedGlory;
    pair.reserveOut += actualPaired;

    emit PairingAmountChanged(__glory(), 0, consumedGlory, msg.sender);
    emit ReserveAmountChanged(token, 0, actualPaired, msg.sender);
  }

  function withdrawPairedGlory(IPartialPairERC20 token, uint256 amount, address to) external {
    require(settings.isPermittedTo(msg.sender, "Treasury", "WithdrawPairedGlory"), "403");
    require(token.token0() == __glory() || token.token1() == __glory(), "400|InvalidPair");

    require(amount < token.balanceOf(address(this)), "400|AmountExceedsReserves");
    IERC20(address(token)).safeTransfer(to, amount);
  }

  function emergencyWithdraw(IERC20 token) external {
    require(settings.isAdmin(msg.sender), "403");

    token.safeTransfer(msg.sender, token.balanceOf(address(this)));

    if(address(token) == __glory()) {
      pairingGloryOut = pairingGloryIn;
      reserveGloryOut = reserveGloryIn;
    } else {
      GloryPair storage pair = gloryPairs[address(token)];
      pair.active = false;
      pair.reserveOut = pair.reserveIn;
    }
  }

  function withdrawERC721(IERC721 nft, uint256 tokenId, address to) external {
    require(settings.isPermittedTo(msg.sender, "Treasury", "WithdrawERC721"), "403");

    nft.safeTransferFrom(address(this), to, tokenId);
  }

  function onERC721Received(address, address, uint256, bytes calldata) external override pure returns (bytes4) {
    return this.onERC721Received.selector;
  }

  function absorb(IERC20 token, uint256 buybackWeight, uint256 pairingWeight, uint256 reserveWeight) external {

    require(settings.isPermittedTo(msg.sender, "Treasury", "Absorb"), "403");
    require(acceptedTokens[address(token)], "400|UnacceptableToken");

    GloryPair storage pair = gloryPairs[address(token)];

    uint256 tracked = (pair.buybackIn - pair.buybackOut) + (pair.pairingIn - pair.pairingOut) + (pair.reserveIn - pair.reserveOut);
    uint256 balance = token.balanceOf(address(this));
    if(balance <= tracked) {
      return;
    }

    uint256 summedWeights = buybackWeight + pairingWeight + reserveWeight;

    uint256 available = balance - tracked;

    uint256 buybackAmount = (available * buybackWeight) / summedWeights;
    uint256 pairingAmount = (available * pairingWeight) / summedWeights;
    uint256 reserveAmount = available - (buybackAmount + pairingAmount);

    pair.buybackIn += buybackAmount;
    pair.pairingIn += pairingAmount;
    pair.reserveIn += reserveAmount;
  }

  function absorbGlory(uint256 rewardWeight, uint256 pairingWeight, uint256 reserveWeight) external {

    require(settings.isPermittedTo(msg.sender, "Treasury", "Absorb"), "403");

    IERC20 glory = IERC20(__glory());

    uint256 tracked = (pairingGloryIn - pairingGloryOut) + (reserveGloryIn - reserveGloryOut);
    uint256 balance = glory.balanceOf(address(this));
    if(balance <= tracked) {
      return;
    }

    uint256 summedWeights = rewardWeight + pairingWeight + reserveWeight;

    uint256 available = balance - tracked;

    uint256 rewardAmount = (available * rewardWeight) / summedWeights;
    uint256 pairingAmount = (available * pairingWeight) / summedWeights;
    uint256 reserveAmount = available - (rewardAmount + pairingAmount);

    glory.transfer(__componentDistributor(), rewardAmount);
    pairingGloryIn += pairingAmount;
    reserveGloryIn += reserveAmount;
  }
}
