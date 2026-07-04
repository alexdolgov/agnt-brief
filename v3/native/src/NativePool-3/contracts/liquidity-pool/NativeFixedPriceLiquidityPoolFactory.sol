// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

import "../interfaces/INativePoolFactory.sol";
import "./NativeFixedPriceLiquidityPool.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

contract NativeFixedPriceLiquidityPoolFactory is ReentrancyGuard {
    event FixedPriceLiquidityPoolCreated(address poolAddress, address lpAddress);

    INativePoolFactory immutable nativePoolFactory;

    uint256 public constant FIXED_PRICE_MODEL_ID = 99;

    constructor(INativePoolFactory _nativePoolFactory) {
        nativePoolFactory = _nativePoolFactory;
    }

    function createFixedPriceLiquidityPool(
        string memory name,
        string memory symbol,
        address token0,
        address token1,
        uint128 token0Price,
        uint128 token1Price,
        address poolOwnerAddress,
        address signerAddress,
        address routerAddress,
        uint256 fee,
        bool isPublicTreasury
    ) external nonReentrant returns (address) {
        NativeFixedPriceLiquidityPool fixedPriceLiquidityPool = new NativeFixedPriceLiquidityPool(
            name,
            symbol,
            token0,
            token1,
            token0Price,
            token1Price
        );

        // Create dynamic arrays
        uint256[] memory fees = new uint256[](1);
        fees[0] = fee;

        address[] memory tokenAs = new address[](1);
        tokenAs[0] = token0;
        address[] memory tokenBs = new address[](1);
        tokenBs[0] = token1;

        uint256[] memory pricingModels = new uint256[](1);
        pricingModels[0] = FIXED_PRICE_MODEL_ID;

        address poolAddress = nativePoolFactory.createNewPool(
            address(fixedPriceLiquidityPool),
            poolOwnerAddress,
            signerAddress,
            routerAddress,
            fees,
            tokenAs,
            tokenBs,
            pricingModels,
            isPublicTreasury,
            true
        );

        fixedPriceLiquidityPool.setPoolAddress(poolAddress);

        emit FixedPriceLiquidityPoolCreated(poolAddress, address(fixedPriceLiquidityPool));
        return address(fixedPriceLiquidityPool);
    }
}
