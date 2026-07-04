// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol";
import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Pair.sol";
import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Factory.sol";

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "hardhat/console.sol"; //todo remove

contract DogsExchangeHelper is ReentrancyGuard, Ownable {
    using SafeERC20 for ERC20;
    using SafeERC20 for IERC20;

    address public dogsTokenAddress;

    IUniswapV2Router02 public constant PancakeRouter = IUniswapV2Router02(0x10ED43C718714eb63d5aA57B78B54704E256024E);
    address public constant busdCurrencyAddress = 0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56;
    address public constant wbnbCurrencyAddress = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;

    receive() external payable {}

    event SetDogsAddresses(address dogsTokenAddress);

    constructor(address _address) {
        dogsTokenAddress = _address;
        _approveTokenIfNeeded(dogsTokenAddress);
    }

    function addDogsBNBLiquidity(uint256 nativeAmount) external payable nonReentrant returns (
        uint256 lpAmount,
        uint256 unusedEth,
        uint256 unusedToken
    ){
        require(msg.value > 0, "!sufficient funds");

        ERC20(dogsTokenAddress).safeTransferFrom(msg.sender, address(this), nativeAmount);

        // Approval done when Dogs token is set...

        address lpTokenAddress = IUniswapV2Factory(PancakeRouter.factory()).getPair(PancakeRouter.WETH(), dogsTokenAddress);


        console.log("DogsExchangeHelper::addDogsBNBLiquidity::PancakeRouter.WETH()", PancakeRouter.WETH());
        console.log("DogsExchangeHelper::addDogsBNBLiquidity::lpTokenAddress", lpTokenAddress);
        console.log("DogsExchangeHelper::addDogsBNBLiquidity::nativeAmount", nativeAmount);
        console.log("DogsExchangeHelper::addDogsBNBLiquidity::msg.value", msg.value);
        console.log("DogsExchangeHelper::addDogsBNBLiquidity::msg.sender", msg.sender);

        // add the liquidity
        (uint256 usedToken, uint256 usedEth, uint256 lpValue) = PancakeRouter.addLiquidityETH{value: msg.value}(
            dogsTokenAddress,
            nativeAmount,
            0, // slippage is unavoidable
            0, // slippage is unavoidable
            msg.sender,
            block.timestamp
        );

        lpAmount = lpValue;
        unusedToken = nativeAmount - usedToken;
        unusedEth = msg.value - usedEth;

        uint256 lp_balance = IERC20(lpTokenAddress).balanceOf(address(this));
        console.log("DogsExchangeHelper::addDogsBNBLiquidity::lp_balance", lp_balance);

        console.log("DogsExchangeHelper::addDogsBNBLiquidity::lpAmount", lpAmount);
        console.log("DogsExchangeHelper::addDogsBNBLiquidity::unusedToken", unusedToken);
        console.log("DogsExchangeHelper::addDogsBNBLiquidity::unusedEth", unusedEth);

        // send back unused tokens / BNB
        ERC20(dogsTokenAddress).safeTransfer(msg.sender, unusedToken);
        (bool transferSuccess, ) = payable(msg.sender).call{ value: unusedEth } (
            ""
        );
        require(transferSuccess, "TF");

    }

    function addDogsLiquidity(address baseTokenAddress, uint256 baseAmount, uint256 dogsAmount) external nonReentrant returns(
        uint256 lpAmount,
        uint256 unusedDogs,
        uint256 unusedBaseToken
    ) {
        ERC20(baseTokenAddress).safeTransferFrom(msg.sender, address(this), baseAmount);
        ERC20(dogsTokenAddress).safeTransferFrom(msg.sender, address(this), dogsAmount);

        // approve baseToken, Dogs token handled when set
        _approveTokenIfNeeded(baseTokenAddress);



        // add the liquidity
        (uint256 usedBaseToken, uint256 usedDogs, uint256 lpValue) = PancakeRouter.addLiquidity(
            baseTokenAddress,
            dogsTokenAddress,
            baseAmount,
            dogsAmount ,
            0, // slippage is unavoidable
            0, // slippage is unavoidable
            msg.sender,
            block.timestamp
        );

        lpAmount = lpValue;
        unusedBaseToken = baseAmount - usedBaseToken;
        unusedDogs = dogsAmount - usedDogs;

        // send back unused tokens
        ERC20(baseTokenAddress).safeTransfer(msg.sender, unusedBaseToken);
        ERC20(dogsTokenAddress).safeTransfer(msg.sender, unusedDogs);
    }

    function buyDogsBNB(uint256 _minAmountOut, address[] memory _path) external nonReentrant payable returns (uint256 amountDogsBought){
        require(_path[0] == PancakeRouter.WETH(), 'invalid path');
        require(_path[_path.length-1] == dogsTokenAddress, 'invalid path');
        require(msg.value > 0, 'zero amount');

        console.log("DogsExchangeHelper::_path[0]", _path[0]);
        console.log("DogsExchangeHelper::_path[_path.length-1]", _path[_path.length-1]);
        console.log("DogsExchangeHelper::buyDogsBNB", msg.value);
        console.log("DogsExchangeHelper::_minAmountOut", _minAmountOut);

        PancakeRouter.swapExactETHForTokensSupportingFeeOnTransferTokens{value: msg.value}(
            _minAmountOut,
            _path,
            address(this),
            block.timestamp
        );

        uint256 amountDogsBought = IERC20(dogsTokenAddress).balanceOf(address(this));
        console.log("DogsExchangeHelper::amountDogsBought", amountDogsBought);
        IERC20(dogsTokenAddress).transfer(msg.sender, amountDogsBought);

        return amountDogsBought;

    }

    // expect path to be busd/dogs & bnb/dogs
    function buyDogs(uint256 _tokenAmount, uint256 _minAmountOut, address[] memory _path) external nonReentrant returns(uint256 amountDogsBought){
        require(_path[_path.length-1] == dogsTokenAddress);
        require(_tokenAmount > 0, 'zero amount');

        ERC20(_path[0]).safeTransferFrom(msg.sender, address(this), _tokenAmount);

        _approveTokenIfNeeded(_path[0]);

        uint256 amountDogsBought = PancakeRouter.swapExactTokensForTokens(
            _tokenAmount,
            _minAmountOut,
            _path,
            address(this),
            block.timestamp
        )[_path.length - 1];

//        uint256 amountDogsBought = IERC20(dogsTokenAddress).balanceOf(address(this));
        IERC20(dogsTokenAddress).transfer(msg.sender, amountDogsBought);
        return amountDogsBought;
    }

    /**
     * @dev set the Dogs address.
     * Can only be called by the current owner.
     */
    function setDogsAddress(address _dogsTokenAddress) external onlyOwner {
        require(_dogsTokenAddress != address(0), "_dogsTokenAddress is the zero address");

        dogsTokenAddress = _dogsTokenAddress;

        _approveTokenIfNeeded(_dogsTokenAddress);

        emit SetDogsAddresses(dogsTokenAddress);
    }

    function _approveTokenIfNeeded(address token) private {
        if (IERC20(token).allowance(address(this), address(PancakeRouter)) == 0) {
            IERC20(token).safeApprove(address(PancakeRouter), type(uint256).max);
        }
    }

}