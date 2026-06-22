// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol";
import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Pair.sol";
import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Factory.sol";

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract LiquidityHelperPigsV2 is ReentrancyGuard, Ownable {
    using SafeERC20 for ERC20;

    address public pigsV2TokenAddress;

    IUniswapV2Router02 public constant pancakeswapRouter = IUniswapV2Router02(0x10ED43C718714eb63d5aA57B78B54704E256024E);
    address public constant busdCurrencyAddress = 0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56;
    address public constant wbnbCurrencyAddress = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;

    receive() external payable {}

    event SetPigsAddresses(address pigsTokenAddress);

    function addPigsETHLiquidity(uint256 nativeAmount) external payable nonReentrant {
        require(msg.value > 0, "!sufficient funds");

        ERC20(pigsV2TokenAddress).safeTransferFrom(msg.sender, address(this), nativeAmount);

        // approve token transfer to cover all possible scenarios
        ERC20(pigsV2TokenAddress).approve(address(pancakeswapRouter), nativeAmount);

        // add the liquidity
        pancakeswapRouter.addLiquidityETH{value: msg.value}(
            pigsV2TokenAddress,
            nativeAmount,
            0, // slippage is unavoidable
            0, // slippage is unavoidable
            msg.sender,
            block.timestamp
        );

        if (address(this).balance > 0) {
            // not going to require/check return value of this transfer as reverting behaviour is undesirable.
            payable(msg.sender).call{value: address(this).balance}("");
        }

        if (ERC20(pigsV2TokenAddress).balanceOf(address(this)) > 0)
            ERC20(pigsV2TokenAddress).transfer(msg.sender, ERC20(pigsV2TokenAddress).balanceOf(address(this)));
    }

    function addPigsLiquidity(address baseTokenAddress, uint256 baseAmount, uint256 nativeAmount) external nonReentrant {
        ERC20(baseTokenAddress).safeTransferFrom(msg.sender, address(this), baseAmount);
        ERC20(pigsV2TokenAddress).safeTransferFrom(msg.sender, address(this), nativeAmount);

        // approve token transfer to cover all possible scenarios
        ERC20(baseTokenAddress).approve(address(pancakeswapRouter), baseAmount);
        ERC20(pigsV2TokenAddress).approve(address(pancakeswapRouter), nativeAmount);

        // add the liquidity
        pancakeswapRouter.addLiquidity(
            baseTokenAddress,
                pigsV2TokenAddress,
            baseAmount,
            nativeAmount ,
            0, // slippage is unavoidable
            0, // slippage is unavoidable
            msg.sender,
            block.timestamp
        );

        uint256 baseTokenBalance = ERC20(baseTokenAddress).balanceOf(address(this));
        uint256 pigsTokenBalance = ERC20(pigsV2TokenAddress).balanceOf(address(this));

        if (baseTokenBalance > 0)
            ERC20(baseTokenAddress).safeTransfer(msg.sender, baseTokenBalance);

        if (pigsTokenBalance > 0)
            ERC20(pigsV2TokenAddress).transfer(msg.sender, pigsTokenBalance);
    }

    /**
     * @dev set the Pigs address.
     * Can only be called by the current owner.
     */
    function setPigsV2Address(address _pigsTokenAddress) external onlyOwner {
        require(_pigsTokenAddress != address(0), "_pigsTokenAddress is the zero address");

        pigsV2TokenAddress = _pigsTokenAddress;

        emit SetPigsAddresses(pigsV2TokenAddress);
    }

}