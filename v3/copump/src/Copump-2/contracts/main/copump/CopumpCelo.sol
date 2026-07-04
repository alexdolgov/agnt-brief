// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "./Copump.sol";
// Factory interface with function that creates a new liquidity pair/pool
import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Factory.sol";
// Router interface with function that adds liquidity to the pair
import "@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol";

contract CopumpCelo is Copump {
    // Native token address
    address public wethAddress = 0x471EcE3750Da237f93B8E339c536989b8978a438;

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

    // Allow the contract's owner to change wethAddress
    function setWethAddress(address newWethAddress) external onlyOwner {
        require(newWethAddress != address(0), "WETH address can't be 0");

        wethAddress = newWethAddress;
    }

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
        bool approvalCeloSuccessful = IERC20(wethAddress).approve(routerAddress, funding);
        require(approvalCeloSuccessful, "Native token can't be approved");

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
        router.addLiquidity(
            token0,
            token1,
            token0 == listedAddress ? INITIAL_SUPPLY : funding,
            token1 == listedAddress ? INITIAL_SUPPLY : funding,
            0,
            0,
            address(this),
            block.timestamp
        );
    }
}
