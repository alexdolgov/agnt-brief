// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "./Copump.sol";
// Factory interface with function that creates a new liquidity pair/pool
import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Factory.sol";
// Router interface with function that adds liquidity to the pair
import "@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol";

contract CopumpUniswap is Copump {
    constructor(
        address ownerAddress,
        address factoryAddress_,
        address routerAddress_,
        uint256 creationFee_,
        uint256 fundThreshold_,
        uint256 initialPrice_
    ) Copump(
        ownerAddress,
        factoryAddress_,
        routerAddress_,
        creationFee_,
        fundThreshold_,
        initialPrice_
    ) {}

    // Check and create a liquidity pool with a pair token/WETH.
    function _deployLiquidityPool(
        DummyToken token,
        TokenInfo storage tokenInfo,
        uint256 funding
    ) internal override {
        Token listedToken = new Token(token.name(), token.symbol());
        address listedAddress = address(listedToken);
        tokenInfo.listedAddress = listedAddress;
        listedToken.mint(address(this), INITIAL_SUPPLY);
        bool approvalSuccessful = listedToken.approve(routerAddress, INITIAL_SUPPLY);
        require(approvalSuccessful, "Initial supply can't be approved");

        IUniswapV2Router02 router = IUniswapV2Router02(routerAddress);
        address wethAddress = router.WETH();
        // Identify token0 and token1 based on address order
        (address token0, address token1) = (wethAddress < listedAddress) ?
            (wethAddress, listedAddress) :
            (listedAddress, wethAddress);
        IUniswapV2Factory factory = IUniswapV2Factory(factoryAddress);
        address poolAddress = factory.getPair(token0, token1);
        if (poolAddress == address(0)) {
            poolAddress = factory.createPair(token0, token1);
        }
        emit TokenListed(
            address(token),
            poolAddress,
            listedAddress,
            block.timestamp
        );
        // (uint256 amountToken, uint256 amountETH, uint256 liquidity)
        router.addLiquidityETH{ value: funding }(
            listedAddress,
            INITIAL_SUPPLY,
            INITIAL_SUPPLY,
            funding,
            address(this),
            block.timestamp
        );
    }
}
