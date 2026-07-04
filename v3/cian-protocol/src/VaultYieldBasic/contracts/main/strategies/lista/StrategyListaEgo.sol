// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

import "../base/StrategyBase.sol";
import "../../libraries/Errors.sol";
import "../../../interfaces/lista/IMoolahVault.sol";
import "../swap/ParaSwapCaller.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract StrategyListaEgo is StrategyBase, ParaSwapCaller {
    using SafeERC20 for IERC20;

    // The address of the token LISTA
    address public constant LISTA = 0xFceB31A79F71AC9CBDCF853519c1b12D379EdC46;

    // The address of the Lista USD1 Vault
    address public constant MoolahVault = 0xfa27f172e0b6ebcEF9c51ABf817E2cb142FbE627;

    event Deposit(uint256 amount);
    event Withdraw(uint256 amount);
    event Swap(address srcToken, address destToken, uint256 amount, uint256 spentAmount, uint256 returnAmount);

    function deposit(uint256 _assets) external onlyRebalancer returns (uint256 shares_) {
        IERC20(USD1).safeIncreaseAllowance(MoolahVault, _assets);
        shares_ = IMoolahVault(MoolahVault).deposit(_assets, address(this));

        emit Deposit(_assets);
    }

    function withdraw(uint256 _assets) external onlyRebalancer returns (uint256 shares_) {
        if (_assets == type(uint256).max) {
            _assets = IMoolahVault(MoolahVault).maxWithdraw(address(this));
        }
        shares_ = IMoolahVault(MoolahVault).withdraw(_assets, address(this), address(this));
        if (shares_ == 0) {
            revert Errors.InvalidShares();
        }
        emit Withdraw(_assets);
    }

    function transferRewards(uint256 _amount, address _receiver) external onlyOwner {
        IERC20(LISTA).safeTransfer(_receiver, _amount);
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

    function getNetAssets() external view returns (uint256) {
        uint256 usd1Balance = IERC20(USD1).balanceOf(address(this));
        uint256 usdcBalance = IERC20(USDC).balanceOf(address(this));
        uint256 usdtBalance = IERC20(USDT).balanceOf(address(this));

        uint256 shares = IERC20(MoolahVault).balanceOf(address(this));
        uint256 sharesToUSD1 = IMoolahVault(MoolahVault).convertToAssets(shares);

        return usd1Balance + usdcBalance + usdtBalance + sharesToUSD1;
    }

    function onTransferIn(address _token, uint256 _amount) external onlyVault returns (bool) {
        IERC20(_token).safeTransferFrom(msg.sender, address(this), _amount);
        emit OnTransferIn(_token, _amount);
        return true;
    }
}
