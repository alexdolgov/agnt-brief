// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.24;

import "@solidstate/contracts/utils/ReentrancyGuard.sol";
import "@solidstate/contracts/access/access_control/AccessControl.sol";
import "./ModuleHelper.sol";

interface IHyperbeat_Module {
    function hyperbeat_deposit(address vault, uint256 assets) external;
    function hyperbeat_withdraw(address vault, uint256 assets) external;
    function hyperbeat_depositInstant(
        address depositVault,
        address tokenIn,
        uint256 amountToken,
        uint256 minReceiveAmount,
        bytes32 referrerId
    ) external;
    function hyperbeat_depositRequest(
        address depositVault,
        address tokenIn,
        uint256 amountToken,
        bytes32 referrerId
    ) external;
    function hyperbeat_redeemInstant(
        address withdrawVault, 
        address tokenOut,
        uint256 amountMTokenIn,
        uint256 minReceiveAmount
    ) external;
    function hyperbeat_redeemRequest(
        address withdrawVault,
        address tokenOut,
        uint256 amountMTokenIn
    ) external;
    function hyperbeat_redeemFiatRequest(
        address withdrawVault,
        uint256 amountMTokenIn
    ) external;
}

contract Hyperbeat_Module is IHyperbeat_Module, ModuleHelper, AccessControl, ReentrancyGuard {
    bytes32 public constant EXECUTOR_ROLE = keccak256("EXECUTOR_ROLE");

    function hyperbeat_deposit(address vault, uint256 assets) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        validateSpender(vault);
        IHyperbeatVault(vault).deposit(assets, address(this));
    }

    function hyperbeat_withdraw(address vault, uint256 assets) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        validateSpender(vault);
        IHyperbeatVault(vault).requestRedeem(assets, address(this), address(this));
    }

    function hyperbeat_depositInstant(
        address depositVault,
        address tokenIn,
        uint256 amountToken,
        uint256 minReceiveAmount,
        bytes32 referrerId
    ) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        validateSpender(depositVault);
        IERC20(tokenIn).approve(depositVault, amountToken);
        IHyperbeatDepositVault(depositVault).depositInstant(tokenIn, amountToken, minReceiveAmount, referrerId);
    }

    function hyperbeat_depositRequest(
        address depositVault,
        address tokenIn,
        uint256 amountToken,
        bytes32 referrerId
    ) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        validateSpender(depositVault);
        IERC20(tokenIn).approve(depositVault, amountToken);
        IHyperbeatDepositVault(depositVault).depositRequest(tokenIn, amountToken, referrerId);
    }

    function hyperbeat_redeemInstant(
        address withdrawVault, 
        address tokenOut,
        uint256 amountMTokenIn,
        uint256 minReceiveAmount
    ) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        validateSpender(withdrawVault);
        IERC20(IHyperbeatWithdrawVault(withdrawVault).mToken()).approve(withdrawVault, amountMTokenIn);
        IHyperbeatWithdrawVault(withdrawVault).redeemInstant(tokenOut, amountMTokenIn, minReceiveAmount);
    }

    function hyperbeat_redeemRequest(
        address withdrawVault,
        address tokenOut,
        uint256 amountMTokenIn
    ) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        validateSpender(withdrawVault);
        IERC20(IHyperbeatWithdrawVault(withdrawVault).mToken()).approve(withdrawVault, amountMTokenIn);
        IHyperbeatWithdrawVault(withdrawVault).redeemRequest(tokenOut, amountMTokenIn);
    }

    function hyperbeat_redeemFiatRequest(
        address withdrawVault,
        uint256 amountMTokenIn
    ) external onlyRole(EXECUTOR_ROLE) nonReentrant {
        validateSpender(withdrawVault);
        IERC20(IHyperbeatWithdrawVault(withdrawVault).mToken()).approve(withdrawVault, amountMTokenIn);
        IHyperbeatWithdrawVault(withdrawVault).redeemFiatRequest(amountMTokenIn);
    }
}

interface IHyperbeatVault {
    function asset() external view returns (address);
    function deposit(uint256 assets, address receiver) external;
    function requestRedeem(uint256 assets, address receiver, address owner) external;

}

interface IHyperbeatDepositVault {
    function depositInstant(
        address tokenIn,
        uint256 amountToken,
        uint256 minReceiveAmount,
        bytes32 referrerId
    ) external;
    function depositRequest(
        address tokenIn,
        uint256 amountToken,
        bytes32 referrerId
    ) external;
}

interface IHyperbeatWithdrawVault {
    function mToken() external view returns (address);
    function redeemInstant(
        address tokenOut,
        uint256 amountMTokenIn,
        uint256 minReceiveAmount
    ) external;
    function redeemRequest(address tokenOut, uint256 amountMTokenIn)
        external
        returns (uint256);
    function redeemFiatRequest(uint256 amountMTokenIn)
        external
        returns (uint256);
}

interface IERC20 {
    function approve(address spender, uint256 amount) external;
}
