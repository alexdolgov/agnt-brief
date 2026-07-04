// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {ERC721} from "solmate/tokens/ERC721.sol";
import {Owned} from "solmate/auth/Owned.sol";
import {INonfungiblePositionManager} from "@uniswap/v3-periphery/interfaces/INonfungiblePositionManager.sol";

contract LiquidityLock is Owned {
  // base
  address public positionManager = 0x03a520b32C04BF3bEEf7BEb72E919cf822Ed34f1;

  INonfungiblePositionManager public immutable uniswapV3PositionManager;
  uint256 public nftId;
  address public deployer;

  constructor(address _deployer) Owned(msg.sender) {
    uniswapV3PositionManager = INonfungiblePositionManager(positionManager);
    deployer = _deployer;
  }

  /// @dev Once locked, an NFT can never be unlocked
  function lockNFT(uint256 _nftId) external {
    require(msg.sender == deployer, "!deployer");
    require(nftId == 0, "nft is already locked");
    nftId = _nftId;
    uniswapV3PositionManager.transferFrom(deployer, address(this), _nftId);
  }

  function claimFees() external {
    uniswapV3PositionManager.collect(
      INonfungiblePositionManager.CollectParams({
        tokenId: nftId,
        recipient: owner,
        amount0Max: type(uint128).max,
        amount1Max: type(uint128).max
      })
    );
  }
}
