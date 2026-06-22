// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {INonfungiblePositionManager} from "./external/INonfungiblePositionManager.sol";
import {IPoolHelper} from "./interfaces/IPoolHelper.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract PoolHelper is IPoolHelper {
    uint24 constant FEE = 10_000;

    function createPoolAndMint(
        address nftManager,
        address token0,
        address token1,
        uint160 sqrtPriceX96,
        address lpReceiver,
        uint256 amount0,
        uint256 amount1
    ) external returns (address pool, uint256 tokenId) {
        // First transfer tokens from msg.sender (Gauge) to this contract
        IERC20(token0).transferFrom(msg.sender, address(this), amount0);
        IERC20(token1).transferFrom(msg.sender, address(this), amount1);

        // Cache NFT manager to save gas
        INonfungiblePositionManager univ3NftManager = INonfungiblePositionManager(nftManager);
        
        // Approve NFT manager to spend tokens
        IERC20(token0).approve(nftManager, amount0);
        IERC20(token1).approve(nftManager, amount1);
        
        // Create and initialize pool
        pool = univ3NftManager.createAndInitializePoolIfNecessary(
            token0,
            token1,
            FEE,
            sqrtPriceX96
        );

        // Create LP position
        (tokenId, , , ) = univ3NftManager.mint(
            INonfungiblePositionManager.MintParams({
                token0: token0,
                token1: token1,
                fee: FEE,
                tickLower: -887_200,
                tickUpper: 887_200,
                amount0Desired: amount0,
                amount1Desired: amount1,
                amount0Min: 1,
                amount1Min: 1,
                recipient: lpReceiver,
                deadline: block.timestamp
            })
        );

        // Return any remaining tokens to the Gauge
        uint256 remaining0 = IERC20(token0).balanceOf(address(this));
        uint256 remaining1 = IERC20(token1).balanceOf(address(this));
        
        if (remaining0 > 0) {
            IERC20(token0).transfer(msg.sender, remaining0);
        }
        if (remaining1 > 0) {
            IERC20(token1).transfer(msg.sender, remaining1);
        }
    }
}