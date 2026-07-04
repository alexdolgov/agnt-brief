// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

import "../base/StrategyBase.sol";
import "../../libraries/Errors.sol";
import "../../../interfaces/euler/IEVault.sol";
import "../../../interfaces/euler/IRewardToken.sol";
import "../swap/ParaSwapCaller.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract StrategyEuler is StrategyBase, ParaSwapCaller {
    using SafeERC20 for IERC20;

    address public constant rEUL = 0x5e13d41913aDF18bb2acAe34228E8D21f3c2f2Eb;

    // The address of the EVault contract of USD1
    address public constant EVault = 0xC41f2Ba7102e9F9F2d603eb951F955aE205ed272;

    event Deposit(uint256 amount);
    event Withdraw(uint256 amount);
    event Swap(address srcToken, address destToken, uint256 amount, uint256 spentAmount, uint256 returnAmount);

    function deposit(uint256 _assets) external onlyRebalancer returns (uint256 shares_) {
        IERC20(USD1).safeIncreaseAllowance(EVault, _assets);
        shares_ = IEVault(EVault).deposit(_assets, address(this));

        emit Deposit(_assets);
    }

    function withdraw(uint256 _assets) external onlyRebalancer returns (uint256 amount_) {
        amount_ = IEVault(EVault).withdraw(_assets, address(this), address(this));

        emit Withdraw(_assets);
    }

    function convertToUSD1(
        uint256 _amount,
        address _srcToken,
        address _destToken,
        bytes memory _swapData,
        uint256 _swapGetMinAmount
    ) external onlyRebalancer returns (uint256 returnAmount_, uint256 spentAmount_) {
        if (_srcToken != USDC && _srcToken != USDT || _destToken != USD1) {
            revert Errors.UnsupportedToken();
        }
        (returnAmount_, spentAmount_) = executeSwap(_amount, _srcToken, _destToken, _swapData, _swapGetMinAmount);

        emit Swap(_srcToken, _destToken, _amount, spentAmount_, returnAmount_);
    }

    function claimRewards(address _to, uint256 _amount) external onlyOwner {
        IRewardToken(rEUL).transfer(_to, _amount);
    }

    function getNetAssets() external view returns (uint256) {
        uint256 shareBalance = IEVault(EVault).balanceOf(address(this));
        uint256 usd1Balance = IERC20(USD1).balanceOf(address(this));
        uint256 usdcBalance = IERC20(USDC).balanceOf(address(this));
        uint256 usdtBalance = IERC20(USDT).balanceOf(address(this));

        uint256 assets = IEVault(EVault).convertToAssets(shareBalance);

        return usd1Balance + usdcBalance + usdtBalance + assets;
    }

    function onTransferIn(address _token, uint256 _amount) external onlyVault returns (bool) {
        IERC20(_token).safeTransferFrom(msg.sender, address(this), _amount);
        emit OnTransferIn(_token, _amount);
        return true;
    }
}
