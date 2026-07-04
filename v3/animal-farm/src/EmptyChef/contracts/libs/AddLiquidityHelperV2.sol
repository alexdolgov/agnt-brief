// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol";
import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Pair.sol";
import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Factory.sol";

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

// AddLiquidityHelper, allows anyone to add or remove Dogs liquidity tax free
// Also allows the Dogs Token to do buy backs tax free via an external contract.
contract AddLiquidityHelperV2 is ReentrancyGuard, Ownable {
    using SafeERC20 for ERC20;

    address public dogsTokenAddress = 0x198271b868daE875bFea6e6E4045cDdA5d6B9829;
    address public pigsTokenAddress;

    IUniswapV2Router02 public constant pancakeswapRouter = IUniswapV2Router02(0x10ED43C718714eb63d5aA57B78B54704E256024E);
    address public constant busdCurrencyAddress = 0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56;
    address public constant wbnbCurrencyAddress = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;
    address public dogsBusdPair;

    mapping (address => bool) public LiquidityAllowanceMap;

    receive() external payable {}

    event SetDogsAddresses(address dogsTokenAddress, address dogsBusdPair);
    event SetPigsAddresses(address pigsTokenAddress);
    event SetRouteTokenViaBNB(address tokenAddress, bool shouldRoute);


    /**
     * @notice Constructs the AddLiquidityHelper contract.
     */
    constructor() {
        LiquidityAllowanceMap[busdCurrencyAddress] = true;
        LiquidityAllowanceMap[wbnbCurrencyAddress] = true;
        dogsBusdPair = IUniswapV2Factory(pancakeswapRouter.factory()).getPair(dogsTokenAddress, busdCurrencyAddress);

    }


    function changeLiquidityAllowanceMap(address _liquidityTokenAdress, bool _allowance) external onlyOwner{
        LiquidityAllowanceMap[_liquidityTokenAdress] = _allowance;
    }

    function addDogsETHLiquidity(uint256 nativeAmount) external payable nonReentrant {
        require(msg.value > 0, "!sufficient funds");

        ERC20(dogsTokenAddress).safeTransferFrom(msg.sender, address(this), nativeAmount);

        // approve token transfer to cover all possible scenarios
        ERC20(dogsTokenAddress).approve(address(pancakeswapRouter), nativeAmount);

        // add the liquidity
        pancakeswapRouter.addLiquidityETH{value: msg.value}(
            dogsTokenAddress,
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

        if (ERC20(dogsTokenAddress).balanceOf(address(this)) > 0)
            ERC20(dogsTokenAddress).transfer(msg.sender, ERC20(dogsTokenAddress).balanceOf(address(this)));
    }

    function addDogsLiquidity(address baseTokenAddress, uint256 baseAmount, uint256 nativeAmount) external nonReentrant {
        require(LiquidityAllowanceMap[baseTokenAddress]);
        ERC20(baseTokenAddress).safeTransferFrom(msg.sender, address(this), baseAmount);
        ERC20(dogsTokenAddress).safeTransferFrom(msg.sender, address(this), nativeAmount);

        // approve token transfer to cover all possible scenarios
        ERC20(baseTokenAddress).approve(address(pancakeswapRouter), baseAmount);
        ERC20(dogsTokenAddress).approve(address(pancakeswapRouter), nativeAmount);

        // add the liquidity
        pancakeswapRouter.addLiquidity(
            baseTokenAddress,
            dogsTokenAddress,
            baseAmount,
            nativeAmount ,
            0, // slippage is unavoidable
            0, // slippage is unavoidable
            msg.sender,
            block.timestamp
        );

        uint256 baseTokenBalance = ERC20(baseTokenAddress).balanceOf(address(this));
        uint256 dogsTokenBalance = ERC20(dogsTokenAddress).balanceOf(address(this));

        if (baseTokenBalance > 0)
            ERC20(baseTokenAddress).safeTransfer(msg.sender, baseTokenBalance);

        if (dogsTokenBalance > 0)
            ERC20(dogsTokenAddress).transfer(msg.sender, dogsTokenBalance);
    }

    function removeDogsLiquidity(address baseTokenAddress, uint256 liquidity) external nonReentrant {
        require(LiquidityAllowanceMap[baseTokenAddress]);
        address lpTokenAddress = IUniswapV2Factory(pancakeswapRouter.factory()).getPair(baseTokenAddress, dogsTokenAddress);
        require(lpTokenAddress != address(0), "pair hasn't been created yet, so can't remove liquidity!");

        ERC20(lpTokenAddress).safeTransferFrom(msg.sender, address(this), liquidity);
        // approve token transfer to cover all possible scenarios
        ERC20(lpTokenAddress).approve(address(pancakeswapRouter), liquidity);

        // add the liquidity
        pancakeswapRouter.removeLiquidity(
            baseTokenAddress,
            dogsTokenAddress,
            liquidity,
            0, // slippage is unavoidable
            0, // slippage is unavoidable
            msg.sender,
            block.timestamp
        );
    }

    function addPigsETHLiquidity(uint256 nativeAmount) external payable nonReentrant {
        require(msg.value > 0, "!sufficient funds");

        ERC20(pigsTokenAddress).safeTransferFrom(msg.sender, address(this), nativeAmount);

        // approve token transfer to cover all possible scenarios
        ERC20(pigsTokenAddress).approve(address(pancakeswapRouter), nativeAmount);

        // add the liquidity
        pancakeswapRouter.addLiquidityETH{value: msg.value}(
            pigsTokenAddress,
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

        if (ERC20(pigsTokenAddress).balanceOf(address(this)) > 0)
            ERC20(pigsTokenAddress).transfer(msg.sender, ERC20(pigsTokenAddress).balanceOf(address(this)));
    }

    function addPigsLiquidity(address baseTokenAddress, uint256 baseAmount, uint256 nativeAmount) external nonReentrant {
        require(LiquidityAllowanceMap[baseTokenAddress]);
        ERC20(baseTokenAddress).safeTransferFrom(msg.sender, address(this), baseAmount);
        ERC20(pigsTokenAddress).safeTransferFrom(msg.sender, address(this), nativeAmount);

        // approve token transfer to cover all possible scenarios
        ERC20(baseTokenAddress).approve(address(pancakeswapRouter), baseAmount);
        ERC20(pigsTokenAddress).approve(address(pancakeswapRouter), nativeAmount);

        // add the liquidity
        pancakeswapRouter.addLiquidity(
            baseTokenAddress,
                pigsTokenAddress,
            baseAmount,
            nativeAmount ,
            0, // slippage is unavoidable
            0, // slippage is unavoidable
            msg.sender,
            block.timestamp
        );

        uint256 baseTokenBalance = ERC20(baseTokenAddress).balanceOf(address(this));
        uint256 dogsTokenBalance = ERC20(dogsTokenAddress).balanceOf(address(this));

        if (baseTokenBalance > 0)
            ERC20(baseTokenAddress).safeTransfer(msg.sender, baseTokenBalance);

        if (dogsTokenBalance > 0)
            ERC20(pigsTokenAddress).transfer(msg.sender, dogsTokenBalance);
    }

    function transferSlipBalance(address payable _transferAddress) external onlyOwner{
        _transferAddress.call{value: address(this).balance}("");
    }

    /**
     * @dev set the Dogs address.
     * Can only be called by the current owner.
     */
    function setDogsAddress(address _dogsTokenAddress) external onlyOwner {
        require(_dogsTokenAddress != address(0), "_dogsTokenAddress is the zero address");
        require(dogsTokenAddress == address(0), "dogsTokenAddress already set!");

        dogsTokenAddress = _dogsTokenAddress;

        dogsBusdPair = IUniswapV2Factory(pancakeswapRouter.factory()).getPair(dogsTokenAddress, busdCurrencyAddress);

        require(address(dogsBusdPair) != address(0), "busd/dogs pair !exist");

        emit SetDogsAddresses(dogsTokenAddress, dogsBusdPair);
    }

    /**
     * @dev set the Pigs address.
     * Can only be called by the current owner.
     */
    function setPigsAddress(address _pigsTokenAddress) external onlyOwner {
        require(_pigsTokenAddress != address(0), "_pigsTokenAddress is the zero address");
        require(pigsTokenAddress == address(0), "pigsTokenAddress already set!");

        pigsTokenAddress = _pigsTokenAddress;

        emit SetPigsAddresses(pigsTokenAddress);
    }


}