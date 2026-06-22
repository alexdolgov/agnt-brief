// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol";
import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Pair.sol";
import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Factory.sol";

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

// AddLiquidityHelper, allows anyone to add
contract AddLiquidityDogsHelper is ReentrancyGuard, Ownable {
    using SafeERC20 for ERC20;
    using SafeERC20 for IERC20;

    address public dogsTokenAddress;

    IUniswapV2Router02 public constant PancakeRouter = IUniswapV2Router02(0x10ED43C718714eb63d5aA57B78B54704E256024E);

    address public constant busdCurrencyAddress = 0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56;
    address public constant wbnbCurrencyAddress = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;

    receive() external payable {}

    event SetDogsAddresses(address dogsTokenAddress);

    function addDogsBNBLiquidity(uint256 nativeAmount) external payable nonReentrant {
        require(msg.value > 0, "!sufficient funds");

        ERC20(dogsTokenAddress).safeTransferFrom(msg.sender, address(this), nativeAmount);

        // Approval done when Dogs token is set...

        // add the liquidity
        PancakeRouter.addLiquidityETH{value: msg.value}(
            dogsTokenAddress,
            nativeAmount,
            0, // slippage is unavoidable
            0, // slippage is unavoidable
            msg.sender,
            block.timestamp
        );

        if (address(this).balance > 0) {
            payable(msg.sender).call{value: address(this).balance}("");
        }

        if (ERC20(dogsTokenAddress).balanceOf(address(this)) > 0)
            ERC20(dogsTokenAddress).transfer(msg.sender, ERC20(dogsTokenAddress).balanceOf(address(this)));
    }

    function addDogsLiquidity(address baseTokenAddress, uint256 baseAmount, uint256 dogsAmount) external nonReentrant {
        ERC20(baseTokenAddress).safeTransferFrom(msg.sender, address(this), baseAmount);
        ERC20(dogsTokenAddress).safeTransferFrom(msg.sender, address(this), dogsAmount);

        // approve baseToken, Dogs token handled when set
        _approveTokenIfNeeded(baseTokenAddress);

        // add the liquidity
        PancakeRouter.addLiquidity(
            baseTokenAddress,
            dogsTokenAddress,
            baseAmount,
            dogsAmount ,
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

    function buyDogsBNB(uint256 _minAmountOut, address[] memory _path) external nonReentrant payable {
        require(_path[0] == PancakeRouter.WETH(), 'invalid path');
        require(_path[_path.length-1] == dogsTokenAddress, 'invalid path');
        require(msg.value > 0, 'zero amount');

        PancakeRouter.swapExactETHForTokens{value: msg.value}(
            _minAmountOut,
            _path,
            address(this),
            block.timestamp
        );

        uint256 amountDogsBought = IERC20(dogsTokenAddress).balanceOf(address(this));
        IERC20(dogsTokenAddress).transfer(msg.sender, amountDogsBought);

    }

    // expect path to be busd/dogs & bnb/dogs
    function buyDogs(uint256 _tokenAmount, uint256 _minAmountOut, address[] memory _path) external nonReentrant {
        require(_path[_path.length - 1] == dogsTokenAddress);
        require(_tokenAmount > 0, 'zero amount');

        ERC20(_path[0]).safeTransferFrom(msg.sender, address(this), _tokenAmount);

        _approveTokenIfNeeded(_path[0]);

        PancakeRouter.swapExactTokensForTokens(
            _tokenAmount,
            _minAmountOut,
            _path,
            address(this),
            block.timestamp
        );

        uint256 amountDogsBought = IERC20(dogsTokenAddress).balanceOf(address(this));
        IERC20(dogsTokenAddress).transfer(msg.sender, amountDogsBought);

    }

    /**
     * @dev set the Dogs address.
     * Can only be called by the current owner.
     */
    function setDogsAddress(address _dogsTokenAddress) external onlyOwner {
        require(_dogsTokenAddress != address(0), "_dogsTokenAddress is the zero address");
        require(dogsTokenAddress == address(0), "dogsTokenAddress already set!");

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