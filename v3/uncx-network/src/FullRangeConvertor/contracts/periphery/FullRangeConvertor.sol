// SPDX-License-Identifier: UNLICENSED
// Code Author: UNCX by SDDTech

pragma solidity 0.8.19;

import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "../uniswap-updated/INonfungiblePositionManager.sol";
import "@uniswap/v3-periphery/contracts/libraries/TransferHelper.sol";
import "@uniswap/v3-core/contracts/interfaces/IUniswapV3Factory.sol";
import "../IUNCX_ProofOfReservesV2_UniV3.sol";

contract FullRangeConvertor is IERC721Receiver, ReentrancyGuard {

    IUNCX_ProofOfReservesV2_UniV3 public UNIV3_V2_LOCKER;

    constructor(IUNCX_ProofOfReservesV2_UniV3 _univ3_v2_locker) {
      UNIV3_V2_LOCKER = _univ3_v2_locker;
    }

    function convertToFullRangeAndLock (IUNCX_ProofOfReservesV2_UniV3.LockParams memory _lockParams, uint256 _amount0Min, uint256 _amount1Min) external nonReentrant returns (uint256 newLockId) {
      _lockParams.nftPositionManager.safeTransferFrom(msg.sender, address(this), _lockParams.nft_id);

      INonfungiblePositionManager.Position memory position;
      (
        , // nonce
        , // operator
        , // token0
        , // token1
        position.fee, // fee
        position.tickLower, // tickLower
        position.tickUpper, // tickUpper
        , // liquidity
        , // feeGrowthInside0LastX128
        , // feeGrowthInside1LastX128
        , // tokensOwed0
          // tokensOwed1
      ) = _lockParams.nftPositionManager.positions(_lockParams.nft_id);

      IUniswapV3Factory factory = IUniswapV3Factory(_lockParams.nftPositionManager.factory());
      int24 maxTick = tickSpacingToMaxTick(factory.feeAmountTickSpacing(position.fee));
      
      uint256 nftToLock;
      if (position.tickLower == -maxTick && position.tickUpper == maxTick) {
          nftToLock = _lockParams.nft_id;
      } else {
        // convert the position to full range by minting a new full range NFT
        nftToLock = _convertPositionToFullRange(_lockParams.nftPositionManager, _lockParams.nft_id, maxTick, _lockParams.dustRecipient, _amount0Min, _amount1Min);
      }
      
      _lockParams.nftPositionManager.approve(address(UNIV3_V2_LOCKER), nftToLock);
      _lockParams.nft_id = nftToLock;
      newLockId = UNIV3_V2_LOCKER.lock(_lockParams);
    }

    function _convertPositionToFullRange (INonfungiblePositionManager _nftPositionManager, uint256 _tokenId, int24 _maxTick, address _dustRecipient, uint256 _amount0Min, uint256 _amount1Min) private returns (uint256) {
        INonfungiblePositionManager.MintParams memory mintParams;
        uint128 positionLiquidity;
        (
          , // nonce
          , // operator
          mintParams.token0, // token0
          mintParams.token1, // token1
          mintParams.fee, // fee
          , // tickLower
          , // tickUpper
          positionLiquidity,
          , // feeGrowthInside0LastX128
          , // feeGrowthInside1LastX128
          , // tokensOwed0
           // tokensOwed1
        ) = _nftPositionManager.positions(_tokenId);

        _nftPositionManager.decreaseLiquidity(INonfungiblePositionManager.DecreaseLiquidityParams(_tokenId, positionLiquidity, 0, 0, block.timestamp));
        _nftPositionManager.collect(INonfungiblePositionManager.CollectParams(_tokenId, address(this), type(uint128).max, type(uint128).max));

        mintParams.tickLower = -_maxTick;
        mintParams.tickUpper = _maxTick;
        mintParams.amount0Desired = IERC20(mintParams.token0).balanceOf(address(this));
        mintParams.amount1Desired = IERC20(mintParams.token1).balanceOf(address(this));
        mintParams.amount0Min = _amount0Min;
        mintParams.amount1Min = _amount1Min;
        mintParams.recipient = address(this);
        mintParams.deadline = block.timestamp;

        TransferHelper.safeApprove(mintParams.token0, address(_nftPositionManager), mintParams.amount0Desired);
        TransferHelper.safeApprove(mintParams.token1, address(_nftPositionManager), mintParams.amount1Desired);

        (uint256 newNftId,,,) = _nftPositionManager.mint(mintParams);

        _nftPositionManager.burn(_tokenId);

        // Refund the tokens which dont fit into full range liquidity
        uint256 balance0 = IERC20(mintParams.token0).balanceOf(address(this));
        uint256 balance1 = IERC20(mintParams.token1).balanceOf(address(this));
        if (balance0 > 0) {
            TransferHelper.safeTransfer(mintParams.token0, _dustRecipient, balance0);
        }
        if (balance1 > 0) {
            TransferHelper.safeTransfer(mintParams.token1, _dustRecipient, balance1);
        }
        return newNftId;
    }

    /**
    * @dev gets the maximum tick for a tickSpacing
    * source: https://github.com/Uniswap/v3-core/blob/main/contracts/libraries/Tick.sol
    */
    function tickSpacingToMaxTick(int24 tickSpacing) public pure returns (int24 maxTick) {
        maxTick = (887272 / tickSpacing) * tickSpacing;
    }

    function onERC721Received(
        address operator,
        address from,
        uint256 tokenId,
        bytes calldata data
    ) public pure override returns (bytes4) {
        return IERC721Receiver.onERC721Received.selector;
    }
}