// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import "../../protocol-v1/contracts/libraries/uniswap-v3/TransferHelper.sol";

import "../../protocol-v1/contracts/interfaces/internal/strategy/IReceiver.sol";
import "../../protocol-v1/contracts/interfaces/internal/vault/IVaultCore.sol";
import "../../protocol-v1/contracts/interfaces/external/strategy/lending/Aave/IWETH.sol";
import "../../protocol-v1/contracts/interfaces/internal/strategy/swap/ISwapStrategyConfiguration.sol";
import "../libraries/Errors.sol";

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract LiquidationBot is IReceiver {
    receive() external payable {}

    address constant WETH = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;

    function receiveData(bytes calldata params, uint256 flashLoanFee) external {
        (
            address liquidator,
            address vaultAddress,
            address[] memory usersForLiquidation,
            uint256 repayAmountLimit
        ) = abi.decode(params, (address, address, address[], uint256));

        IVaultCoreV1 vault = IVaultCoreV1(vaultAddress);
        IERC20 supplyUnderlying = IERC20(vault.supplyUnderlying());
        IERC20 borrowUnderlying = IERC20(vault.borrowUnderlying());

        TransferHelper.safeApprove(
            address(borrowUnderlying),
            address(vault),
            repayAmountLimit
        );

        vault.liquidateUsers(usersForLiquidation, repayAmountLimit);

        uint256 supplyTokenBalance = vault.supplyToken().balanceOf(
            address(this)
        );

        if (supplyTokenBalance == 0) {
            revert Errors.FLASH_LOAN_FAILED();
        }

        vault.withdraw(type(uint256).max, address(this));
        if (address(supplyUnderlying) == WETH) {
            IWETH(address(supplyUnderlying)).deposit{
                value: address(this).balance
            }();
        }

        uint256 supplyBalance = supplyUnderlying.balanceOf(address(this));
        ISwapStrategy swapStrategy = ISwapStrategyConfiguration(
            vault.activeLenderStrategy()
        ).swapStrategy();

        supplyUnderlying.approve(address(swapStrategy), supplyBalance);

        swapStrategy.swapInBase(
            address(supplyUnderlying),
            address(borrowUnderlying),
            supplyBalance
        );

        TransferHelper.safeTransfer(
            address(borrowUnderlying),
            msg.sender,
            repayAmountLimit + flashLoanFee
        );

        TransferHelper.safeTransfer(
            address(borrowUnderlying),
            liquidator,
            borrowUnderlying.balanceOf(address(this))
        );
    }
}
