// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";


interface IAnglesVault {
    function deposit() external payable;
}


interface IWETH {
    function deposit() external payable;

    function withdraw(uint256 wad) external;
}


contract PendleWansAdapter { 

    address public constant ANGLES_VAULT = 0xe5203Be1643465b3c0De28fd2154843497Ef4269;
    address public constant PIVOT_TOKEN = 0x0C4E186Eae8aCAA7F7de1315D5AD174BE39Ec987;
    address public constant WS = 0x039e2fB66102314Ce7b64Ce5Ce3E5183bc94aD38;

    constructor() {
    }

    function convertToDeposit(
        address /*tokenIn*/,
        uint256 amountTokenIn
    ) external returns (uint256 amountOut) {
        IWETH(WS).withdraw(amountTokenIn);
        IAnglesVault(ANGLES_VAULT).deposit{value: amountTokenIn}();
        IERC20(PIVOT_TOKEN).transfer(msg.sender, amountTokenIn);
        return amountTokenIn;
    }

    function convertToRedeem(
        address /*tokenOut*/,
        uint256 amountYieldTokenIn
    ) external returns (uint256 amountOut) {
        revert ("Not implemented");
    }

    function previewConvertToDeposit(
        address /*tokenIn*/,
        uint256 amountIn
    ) external pure returns (uint256 /*amountOut*/) {
        return amountIn;
    }

    function previewConvertToRedeem(
        address /*tokenOut*/,
        uint256 amountOut
    ) external pure returns (uint256 /*amountIn*/) {
        revert ("Not implemented");
    }

    function getAdapterTokensDeposit() external pure returns (address[] memory tokens) {
        tokens = new address[](1);
        tokens[0] = WS;
    }

    function getAdapterTokensRedeem() external pure returns (address[] memory tokens) {}

    receive() external payable {
        // Accept ETH deposits
    }
}
