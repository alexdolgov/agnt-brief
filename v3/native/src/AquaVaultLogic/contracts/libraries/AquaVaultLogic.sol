// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

import {IAquaVault} from "../interfaces/IAquaVault.sol";
import {AquaLpToken} from "../Aqua/AquaLpToken.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ComptrollerV2Storage} from "../Compound/ComptrollerStorage.sol";

library AquaVaultLogic {
    using SafeERC20 for IERC20;

    int256 private constant EPOCH_UPDATE_LIMIT_PERCENTAGE = 1;

    error UpdateAmountTooMuch();
    error InvalidNetBorrowChangeValue();
    error InvalidPositionUpdateAmount();
    error NotLpToken();

    function setAllowance(IAquaVault.TokenAmountUint[] calldata tokens, address nativePool) external {
        for (uint256 i; i < tokens.length; ) {
            IERC20(tokens[i].tokenAddress).safeApprove(nativePool, tokens[i].amount);
            unchecked {
                ++i;
            }
        }
    }

    function positionEpochUpdate(
        IAquaVault.TraderPositionUpdate[] calldata traderPositionUpdate,
        IAquaVault.LpTokenValueUpdate[] calldata lpTokenValueUpdate,
        mapping(address => mapping(address => int)) storage positions,
        mapping(address => AquaLpToken) storage lpTokens
    ) external {
        for (uint i = 0; i < traderPositionUpdate.length; ) {
            address trader = traderPositionUpdate[i].trader;
            for (uint j = 0; j < traderPositionUpdate[i].tokenAmountUpdates.length; ) {
                address token = traderPositionUpdate[i].tokenAmountUpdates[j].tokenAddress;
                positions[trader][token] += traderPositionUpdate[i].tokenAmountUpdates[j].amount;
                if (
                    (traderPositionUpdate[i].tokenAmountUpdates[j].amount * 100) / positions[trader][token] >
                    EPOCH_UPDATE_LIMIT_PERCENTAGE
                ) {
                    revert UpdateAmountTooMuch();
                }
                unchecked {
                    j++;
                }
            }
            unchecked {
                i++;
            }
        }
        for (uint i = 0; i < lpTokenValueUpdate.length; ) {
            address token = lpTokenValueUpdate[i].tokenAddress;
            int netBorrowChange = lpTokenValueUpdate[i].netBorrowChange;
            uint reserveChange = lpTokenValueUpdate[i].reserveChange;
            if (
                (lpTokenValueUpdate[i].netBorrowChange * 100) / lpTokens[token].netSwapBorrow() >
                EPOCH_UPDATE_LIMIT_PERCENTAGE
            ) {
                revert UpdateAmountTooMuch();
            }
            // netBorrowChange should increase and greater then reserveChange, so LP exchange rate increases
            if (netBorrowChange < 0 || uint(netBorrowChange) < reserveChange) {
                revert InvalidNetBorrowChangeValue();
            }
            lpTokens[token].updateNetBorrow(lpTokenValueUpdate[i].netBorrowChange);
            lpTokens[token].updateReserve(lpTokenValueUpdate[i].reserveChange);
            unchecked {
                i++;
            }
        }
    }

    function repay(
        IAquaVault.TokenAmountUint[] calldata repayments,
        mapping(address => mapping(address => int)) storage positions,
        address positionHolder
    ) external {
        for (uint i; i < repayments.length; ) {
            IERC20(repayments[i].tokenAddress).transferFrom(msg.sender, address(this), repayments[i].amount);
            positions[positionHolder][repayments[i].tokenAddress] += int(repayments[i].amount);
            unchecked {
                i++;
            }
        }
    }

    function settle(
        IAquaVault.TokenAmountInt[] memory positionUpdates,
        address recipient,
        mapping(address => mapping(address => int)) storage positions,
        mapping(address => AquaLpToken) storage lpTokens
    ) external {
        for (uint256 i; i < positionUpdates.length; ) {
            address token = positionUpdates[i].tokenAddress;
            int256 amount = positionUpdates[i].amount;

            // position and update amount cannot be same sign (cannot increase the position)
            if (positions[msg.sender][token] * amount >= 0) {
                revert InvalidPositionUpdateAmount();
            }

            if (amount > 0) {
                IERC20(token).safeTransferFrom(msg.sender, address(this), uint(amount));
            } else {
                IERC20(token).safeTransfer(recipient, uint(-amount));
            }

            lpTokens[token].updateNetBorrow(-int(amount));
            unchecked {
                ++i;
            }
        }
    }

    function addCollateral(
        IAquaVault.TokenAmountUint[] calldata tokens,
        mapping(address => mapping(address => uint)) storage aquaCollateral,
        mapping(address => ComptrollerV2Storage.Market) storage markets,
        address trader
    ) external {
        for (uint i; i < tokens.length; ) {
            address token = tokens[i].tokenAddress;
            if (!markets[token].isListed) {
                revert NotLpToken();
            }
            uint amount = tokens[i].amount;
            IERC20(token).transferFrom(msg.sender, address(this), amount);
            aquaCollateral[trader][token] += amount;
            unchecked {
                i++;
            }
        }
    }

    function removeCollateral(
        IAquaVault.TokenAmountUint[] calldata tokens,
        address recipient,
        mapping(address => mapping(address => uint)) storage aquaCollateral
    ) external {
        for (uint i; i < tokens.length; ) {
            address token = tokens[i].tokenAddress;
            uint amount = tokens[i].amount;
            IERC20(token).transfer(recipient, amount);
            aquaCollateral[msg.sender][token] -= amount;
            unchecked {
                i++;
            }
        }
    }

    function liquidate(
        IAquaVault.TokenAmountInt[] memory positionUpdates,
        IAquaVault.TokenAmountUint[] calldata claimCollaterals,
        address trader,
        address recipient,
        mapping(address => mapping(address => int)) storage positions,
        mapping(address => AquaLpToken) storage lpTokens,
        mapping(address => mapping(address => uint)) storage aquaCollateral
    ) external {
        for (uint256 i; i < positionUpdates.length; ) {
            address token = positionUpdates[i].tokenAddress;
            int256 amount = positionUpdates[i].amount;

            // position and update amount cannot be same sign (cannot increase the position)
            if (positions[trader][token] * amount >= 0) {
                revert InvalidPositionUpdateAmount();
            }

            if (amount > 0) {
                IERC20(token).safeTransferFrom(msg.sender, address(this), uint(amount));
            } else {
                IERC20(token).safeTransfer(recipient, uint(-amount));
            }

            lpTokens[token].updateNetBorrow(-int(amount));
            positions[trader][token] += amount;
            unchecked {
                ++i;
            }
        }

        for (uint i; i < claimCollaterals.length; ) {
            address token = claimCollaterals[i].tokenAddress;
            uint amount = claimCollaterals[i].amount;
            IERC20(token).transfer(recipient, amount);
            aquaCollateral[trader][token] -= amount;
            unchecked {
                i++;
            }
        }
    }
}
