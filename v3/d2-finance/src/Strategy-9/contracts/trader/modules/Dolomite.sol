// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.13;

import "@solidstate/contracts/utils/ReentrancyGuard.sol";
import "@solidstate/contracts/access/access_control/AccessControl.sol";
import "@solidstate/contracts/introspection/ERC165/base/ERC165Base.sol";
import "@solidstate/contracts/proxy/diamond/writable/DiamondWritableInternal.sol";
import "./dsq/DSQ_Common_Roles.sol";
import "../external/dolomite_interfaces/IDepositWithdrawalProxy.sol";
import "../external/dolomite_interfaces/IBorrowPositionProxyV1.sol";
import "../external/dolomite_interfaces/IBorrowPositionProxyV2.sol";
import { AccountBalanceLib } from "../external/dolomite_interfaces/AccountBalanceLib.sol";


interface IDolomite_Module {
    function dolomite_depositWei(
        uint256 _toAccountNumber,
        uint256 _marketId,
        uint256 _amountWei
    ) external;

    function dolomite_depositETH(
        uint256 _toAccountNumber
    ) external payable;

    function dolomite_depositWeiIntoDefaultAccount(
        uint256 _marketId,
        uint256 _amountWei
    ) external;

    function dolomite_depositETHIntoDefaultAccount() external payable;

    function dolomite_withdrawWei(
        uint256 _fromAccountNumber,
        uint256 _marketId,
        uint256 _amountWei,
        AccountBalanceLib.BalanceCheckFlag _balanceCheckFlag
    ) external;

    function dolomite_withdrawETH(
        uint256 _fromAccountNumber,
        uint256 _amountWei,
        AccountBalanceLib.BalanceCheckFlag _balanceCheckFlag
    ) external;

    function dolomite_withdrawWeiFromDefaultAccount(
        uint256 _marketId,
        uint256 _amountWei,
        AccountBalanceLib.BalanceCheckFlag _balanceCheckFlag
    ) external;

    function dolomite_withdrawETHFromDefaultAccount(
        uint256 _amountWei,
        AccountBalanceLib.BalanceCheckFlag _balanceCheckFlag
    ) external;

    function dolomite_depositPar(
        uint256 _toAccountNumber,
        uint256 _marketId,
        uint256 _amountPar
    ) external;

    function dolomite_depositParIntoDefaultAccount(
        uint256 _marketId,
        uint256 _amountPar
    ) external;

    function dolomite_withdrawPar(
        uint256 _fromAccountNumber,
        uint256 _marketId,
        uint256 _amountPar,
        AccountBalanceLib.BalanceCheckFlag _balanceCheckFlag
    ) external;

    function dolomite_withdrawParFromDefaultAccount(
        uint256 _marketId,
        uint256 _amountPar,
        AccountBalanceLib.BalanceCheckFlag _balanceCheckFlag
    ) external;

    function dolomite_openBorrowPosition(
        uint256 _fromAccountNumber,
        uint256 _toAccountNumber,
        uint256 _collateralMarketId,
        uint256 _amountWei,
        AccountBalanceLib.BalanceCheckFlag _balanceCheckFlag
    ) external;

    function dolomite_closeBorrowPosition(
        uint256 _borrowAccountNumber,
        uint256 _toAccountNumber,
        uint256[] calldata _collateralMarketIds
    ) external;

    function dolomite_transferBetweenAccounts(
        uint256 _fromAccountNumber,
        uint256 _toAccountNumber,
        uint256 _marketId,
        uint256 _amountWei,
        AccountBalanceLib.BalanceCheckFlag _balanceCheckFlag
    ) external;

    function dolomite_repayAllForBorrowPosition(
        uint256 _fromAccountNumber,
        uint256 _borrowAccountNumber,
        uint256 _marketId,
        AccountBalanceLib.BalanceCheckFlag _balanceCheckFlag
    ) external;
}

contract Dolomite_Module is IDolomite_Module, AccessControl, ReentrancyGuard, DSQ_Common_Roles {
    IDepositWithdrawalProxy public immutable depositWithdrawalProxy;
    IBorrowPositionProxyV2 public immutable borrowPositionProxy;

    constructor(address _depositWithdrawalProxy, address _borrowPositionProxy) {
        require(_depositWithdrawalProxy != address(0), "Rodeo_Module: Zero address");
        require(_borrowPositionProxy != address(0), "Rodeo_Module: Zero address");
        depositWithdrawalProxy = IDepositWithdrawalProxy(_depositWithdrawalProxy);
        borrowPositionProxy = IBorrowPositionProxyV2(_borrowPositionProxy);
    }

    function dolomite_depositWei(
        uint256 _toAccountNumber,
        uint256 _marketId,
        uint256 _amountWei
    ) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        depositWithdrawalProxy.depositWei(_toAccountNumber, _marketId, _amountWei);
    }

    function dolomite_depositETH(
        uint256 _toAccountNumber
    ) external payable onlyRole(EXECUTOR_ROLE) nonReentrant {
        depositWithdrawalProxy.depositETH{value: msg.value}(_toAccountNumber);
    }

    function dolomite_depositWeiIntoDefaultAccount(
        uint256 _marketId,
        uint256 _amountWei
    ) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        depositWithdrawalProxy.depositWeiIntoDefaultAccount(_marketId, _amountWei);
    }

    function dolomite_depositETHIntoDefaultAccount() external payable onlyRole(EXECUTOR_ROLE) nonReentrant {
        depositWithdrawalProxy.depositETHIntoDefaultAccount{value: msg.value}();
    }

    function dolomite_withdrawWei(
        uint256 _fromAccountNumber,
        uint256 _marketId,
        uint256 _amountWei,
        AccountBalanceLib.BalanceCheckFlag _balanceCheckFlag
    ) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        depositWithdrawalProxy.withdrawWei(_fromAccountNumber, _marketId, _amountWei, _balanceCheckFlag);
    }

    function dolomite_withdrawETH(
        uint256 _fromAccountNumber,
        uint256 _amountWei,
        AccountBalanceLib.BalanceCheckFlag _balanceCheckFlag
    ) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        depositWithdrawalProxy.withdrawETH(_fromAccountNumber, _amountWei, _balanceCheckFlag);
    }

    function dolomite_withdrawWeiFromDefaultAccount(
        uint256 _marketId,
        uint256 _amountWei,
        AccountBalanceLib.BalanceCheckFlag _balanceCheckFlag
    ) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        depositWithdrawalProxy.withdrawWeiFromDefaultAccount(_marketId, _amountWei, _balanceCheckFlag);
    }

    function dolomite_withdrawETHFromDefaultAccount(
        uint256 _amountWei,
        AccountBalanceLib.BalanceCheckFlag _balanceCheckFlag
    ) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        depositWithdrawalProxy.withdrawETHFromDefaultAccount(_amountWei, _balanceCheckFlag);
    }

    function dolomite_depositPar(
        uint256 _toAccountNumber,
        uint256 _marketId,
        uint256 _amountPar
    ) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        depositWithdrawalProxy.depositPar(_toAccountNumber, _marketId, _amountPar);
    }

    function dolomite_depositParIntoDefaultAccount(
        uint256 _marketId,
        uint256 _amountPar
    ) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        depositWithdrawalProxy.depositParIntoDefaultAccount(_marketId, _amountPar);
    }

    function dolomite_withdrawPar(
        uint256 _fromAccountNumber,
        uint256 _marketId,
        uint256 _amountPar,
        AccountBalanceLib.BalanceCheckFlag _balanceCheckFlag
    ) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        depositWithdrawalProxy.withdrawPar(_fromAccountNumber, _marketId, _amountPar, _balanceCheckFlag);
    }

    function dolomite_withdrawParFromDefaultAccount(
        uint256 _marketId,
        uint256 _amountPar,
        AccountBalanceLib.BalanceCheckFlag _balanceCheckFlag
    ) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        depositWithdrawalProxy.withdrawParFromDefaultAccount(_marketId, _amountPar, _balanceCheckFlag);
    }

    function dolomite_openBorrowPosition(
        uint256 _fromAccountNumber,
        uint256 _toAccountNumber,
        uint256 _collateralMarketId,
        uint256 _amountWei,
        AccountBalanceLib.BalanceCheckFlag _balanceCheckFlag
    ) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        borrowPositionProxy.openBorrowPosition(_fromAccountNumber, _toAccountNumber, _collateralMarketId, _amountWei, _balanceCheckFlag);
    }

    function dolomite_closeBorrowPosition(
        uint256 _borrowAccountNumber,
        uint256 _toAccountNumber,
        uint256[] calldata _collateralMarketIds
    ) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        borrowPositionProxy.closeBorrowPosition(_borrowAccountNumber, _toAccountNumber, _collateralMarketIds);
    }

    function dolomite_transferBetweenAccounts(
        uint256 _fromAccountNumber,
        uint256 _toAccountNumber,
        uint256 _marketId,
        uint256 _amountWei,
        AccountBalanceLib.BalanceCheckFlag _balanceCheckFlag
    ) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        borrowPositionProxy.transferBetweenAccounts(_fromAccountNumber, _toAccountNumber, _marketId, _amountWei, _balanceCheckFlag);
    }

    function dolomite_repayAllForBorrowPosition(
        uint256 _fromAccountNumber,
        uint256 _borrowAccountNumber,
        uint256 _marketId,
        AccountBalanceLib.BalanceCheckFlag _balanceCheckFlag
    ) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        borrowPositionProxy.repayAllForBorrowPosition(_fromAccountNumber, _borrowAccountNumber, _marketId, _balanceCheckFlag);
    }
}
