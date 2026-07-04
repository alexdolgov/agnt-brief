pragma solidity ^0.7.0;

import {TokenInterface} from "../../common/interfaces.sol";
import {DSMath} from "../../common/math.sol";
import {Basic} from "../../common/basic.sol";
import {IPancakeswapV2Router02, IPancakeswapV2Factory} from "./interface.sol";

abstract contract Helpers is DSMath, Basic {
    /**
     * @dev Pancakeswap v2 router02
     */
    IPancakeswapV2Router02 internal constant router =
        IPancakeswapV2Router02(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F);

    function getExpectedBuyAmt(address[] memory paths, uint256 sellAmt)
        internal
        view
        returns (uint256 buyAmt)
    {
        uint256[] memory amts = router.getAmountsOut(sellAmt, paths);
        buyAmt = amts[1];
    }

    function getExpectedSellAmt(address[] memory paths, uint256 buyAmt)
        internal
        view
        returns (uint256 sellAmt)
    {
        uint256[] memory amts = router.getAmountsIn(buyAmt, paths);
        sellAmt = amts[0];
    }

    function checkPair(address[] memory paths) internal view {
        address pair =
            IPancakeswapV2Factory(router.factory()).getPair(paths[0], paths[1]);
        require(pair != address(0), "No-exchange-address");
    }

    function getPaths(address buyAddr, address sellAddr)
        internal
        pure
        returns (address[] memory paths)
    {
        paths = new address[](2);
        paths[0] = address(sellAddr);
        paths[1] = address(buyAddr);
    }

    function getMinAmount(
        TokenInterface token,
        uint256 amt,
        uint256 slippage
    ) internal view returns (uint256 minAmt) {
        uint256 _amt18 = convertTo18(token.decimals(), amt);
        minAmt = wmul(_amt18, sub(WAD, slippage));
        minAmt = convert18ToDec(token.decimals(), minAmt);
    }

    function _addLiquidity(
        address tokenA,
        address tokenB,
        uint256 _amt,
        uint256 unitAmt,
        uint256 slippage
    )
        internal
        returns (
            uint256 _amtA,
            uint256 _amtB,
            uint256 _liquidity
        )
    {
        (TokenInterface _tokenA, TokenInterface _tokenB) =
            changeEthAddress(tokenA, tokenB);

        _amtA = _amt == uint256(-1)
            ? getTokenBal(TokenInterface(tokenA))
            : _amt;
        _amtB = convert18ToDec(
            _tokenB.decimals(),
            wmul(unitAmt, convertTo18(_tokenA.decimals(), _amtA))
        );

        bool isEth = address(_tokenA) == wethAddr;
        convertEthToWeth(isEth, _tokenA, _amtA);

        isEth = address(_tokenB) == wethAddr;
        convertEthToWeth(isEth, _tokenB, _amtB);

        _tokenA.approve(address(router), _amtA);
        _tokenB.approve(address(router), _amtB);

        uint256 minAmtA = getMinAmount(_tokenA, _amtA, slippage);
        uint256 minAmtB = getMinAmount(_tokenB, _amtB, slippage);
        (_amtA, _amtB, _liquidity) = router.addLiquidity(
            address(_tokenA),
            address(_tokenB),
            _amtA,
            _amtB,
            minAmtA,
            minAmtB,
            address(this),
            block.timestamp + 1
        );
    }

    function _removeLiquidity(
        address tokenA,
        address tokenB,
        uint256 _amt,
        uint256 unitAmtA,
        uint256 unitAmtB
    )
        internal
        returns (
            uint256 _amtA,
            uint256 _amtB,
            uint256 _uniAmt
        )
    {
        TokenInterface _tokenA;
        TokenInterface _tokenB;
        (_tokenA, _tokenB, _uniAmt) = _getRemoveLiquidityData(
            tokenA,
            tokenB,
            _amt
        );
        {
            uint256 minAmtA =
                convert18ToDec(_tokenA.decimals(), wmul(unitAmtA, _uniAmt));
            uint256 minAmtB =
                convert18ToDec(_tokenB.decimals(), wmul(unitAmtB, _uniAmt));
            (_amtA, _amtB) = router.removeLiquidity(
                address(_tokenA),
                address(_tokenB),
                _uniAmt,
                minAmtA,
                minAmtB,
                address(this),
                block.timestamp + 1
            );
        }

        bool isEth = address(_tokenA) == wethAddr;
        convertWethToEth(isEth, _tokenA, _amtA);

        isEth = address(_tokenB) == wethAddr;
        convertWethToEth(isEth, _tokenB, _amtB);
    }

    function _getRemoveLiquidityData(
        address tokenA,
        address tokenB,
        uint256 _amt
    )
        internal
        returns (
            TokenInterface _tokenA,
            TokenInterface _tokenB,
            uint256 _uniAmt
        )
    {
        (_tokenA, _tokenB) = changeEthAddress(tokenA, tokenB);
        address exchangeAddr =
            IPancakeswapV2Factory(router.factory()).getPair(
                address(_tokenA),
                address(_tokenB)
            );
        require(exchangeAddr != address(0), "pair-not-found.");

        TokenInterface uniToken = TokenInterface(exchangeAddr);
        _uniAmt = _amt == uint256(-1)
            ? uniToken.balanceOf(address(this))
            : _amt;
        uniToken.approve(address(router), _uniAmt);
    }
}
