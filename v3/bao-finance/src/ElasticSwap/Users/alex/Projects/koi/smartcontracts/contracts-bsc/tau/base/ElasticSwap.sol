// SPDX-License-Identifier: MIT
pragma solidity>=0.6.9;
import "../../libraries/UpgradeableBase.sol";
import "../../libraries/TransferHelper.sol";
import "../../interfaces/IPancakeRouter02.sol";
import "../../interfaces/IPancakeFactory.sol";
import "../../interfaces/IBEP20.sol";
import "../../interfaces/IWETH.sol";
import "../../../3rdParty/@openzeppelin/contracts-upgradeable/math/SafeMathUpgradeable.sol";

contract ElasticSwap is UpgradeableBase{
    using SafeMathUpgradeable for uint256;
    IPancakeRouter02 public router;
    IPancakeFactory public factory;
    function setSettings(address router_,address factory_) public onlyOwner{
        router = IPancakeRouter02(router_);
        factory = IPancakeFactory(factory_);
    }
    struct SwapInfo{
        address token;
        uint desiredAmount;
        uint minAmount;
        uint256 inputAmount;
    }
    function addLiquidityETH(
        address token,
        uint amountTokenDesired,
        uint amountTokenMin,
        uint amountETHMin,
        address to,
        uint deadline
    ) external payable returns (uint , uint , uint ){
        uint amountIn = msg.value;
        // address pair = factory.getPair(token, router.WETH());
        uint256 tokenBeforeBal = IBEP20(token).balanceOf(address(this));
        TransferHelper.safeTransferFrom(token, _msgSender(), address(this), amountTokenDesired);
        uint256 tokenAfterBal = IBEP20(token).balanceOf(address(this));
        
        SwapInfo memory info = SwapInfo({token:token,desiredAmount:amountTokenDesired,
            minAmount:amountTokenMin,inputAmount:tokenAfterBal.sub(tokenBeforeBal)});

        (uint amountToken, uint amountETH, uint liquidity) = __addLiquidityETH(info, amountETHMin, to, deadline,amountIn);
        {
            require(amountToken<=info.inputAmount,"token amount exceeds");
            if (amountToken<info.inputAmount){
                TransferHelper.safeTransfer(info.token, _msgSender(), info.inputAmount.sub(amountToken));
            }
        }
        {
            require(amountETH<=amountIn,"eth amount exceeds");
            if (amountETH < amountIn ){
                TransferHelper.safeTransferETH(_msgSender(), amountIn.sub(amountETH));
            }
        }
    
        return (amountToken,amountETH,liquidity);
    }

    function __addLiquidityETH(
        SwapInfo memory info,
        uint amountETHMin,
        address to,
        uint deadline,
        uint256 amountIn
    ) internal returns (uint,uint,uint){
        IBEP20(info.token).approve(address(router), info.desiredAmount);
        IBEP20(router.WETH()).approve(address(router), amountIn);
        return router.addLiquidityETH{value: amountIn}(info.token, info.desiredAmount, info.minAmount, amountETHMin, to, deadline);
    }

    function addLiquidity(
        address tokenA,
        address tokenB,
        uint amountADesired,
        uint amountBDesired,
        uint amountAMin,
        uint amountBMin,
        address to,
        uint deadline
    ) external returns (uint,uint, uint){
        SwapInfo memory infoA = SwapInfo({token:tokenA,desiredAmount:amountADesired,
            minAmount:amountAMin,inputAmount:0});
        uint256 tokenBeforeBal = IBEP20(infoA.token).balanceOf(address(this));
        TransferHelper.safeTransferFrom(infoA.token, _msgSender(), address(this), infoA.desiredAmount);
        uint256 tokenAfterBal = IBEP20(infoA.token).balanceOf(address(this));
        infoA.inputAmount = tokenAfterBal.sub(tokenBeforeBal);
        
        SwapInfo memory infoB = SwapInfo({token:tokenB,desiredAmount:amountBDesired,
            minAmount:amountBMin,inputAmount:0});
        tokenBeforeBal = IBEP20(infoB.token).balanceOf(address(this));
        TransferHelper.safeTransferFrom(infoB.token, _msgSender(), address(this), infoB.desiredAmount);
        tokenAfterBal = IBEP20(tokenB).balanceOf(address(this));
        infoB.inputAmount = tokenAfterBal.sub(tokenBeforeBal);
        
        return _addLiquidity(infoA, infoB, to, deadline);
    }

    function _addLiquidity(
        SwapInfo memory infoA,
        SwapInfo memory infoB,
        address to,
        uint deadline
    ) internal returns(uint,uint,uint){
        IBEP20(infoA.token).approve(address(router), infoA.desiredAmount);
        IBEP20(infoB.token).approve(address(router), infoB.desiredAmount);
        (uint amountA, uint amountB, uint liquidity) = router.addLiquidity(infoA.token, infoB.token, 
            infoA.desiredAmount, infoB.desiredAmount,
             infoA.minAmount, infoB.minAmount, to, deadline);
          
        {
            require(amountA<=infoA.inputAmount,"tokenA amount exceeds");
            if (amountA < infoA.inputAmount){
                TransferHelper.safeTransfer(infoA.token, _msgSender(), infoA.inputAmount.sub(amountA));
            }
        }
        {
            require(amountB<=infoB.inputAmount,"tokenB amount exceeds");
            if (amountB < infoB.inputAmount){
            TransferHelper.safeTransfer(infoB.token, _msgSender(),  infoB.inputAmount.sub(amountB));
        }
        }
        return (amountA,amountB,liquidity);
    }
}