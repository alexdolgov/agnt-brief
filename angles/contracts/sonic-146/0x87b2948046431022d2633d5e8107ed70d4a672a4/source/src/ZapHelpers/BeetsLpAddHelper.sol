// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {ERC20} from "../../lib/solady/src/tokens/ERC20.sol";
import {ERC4626} from "../../lib/solady/src/tokens/ERC4626.sol";
import {SafeTransferLib} from "../../lib/solady/src/utils/SafeTransferLib.sol";
import {ReentrancyGuard} from "../../lib/solady/src/utils/ReentrancyGuard.sol";

import {IPermit2} from "../Interfaces/IPermit2.sol";
import {IRouter} from "../Interfaces/IRouter.sol";

contract BeetsLpAddHelper is ReentrancyGuard {
    ERC20 public WS = ERC20(0x039e2fB66102314Ce7b64Ce5Ce3E5183bc94aD38);
    ERC20 public ANS = ERC20(0x0C4E186Eae8aCAA7F7de1315D5AD174BE39Ec987);
    ERC4626 public BWS25 = ERC4626(0x016C306e103FbF48EC24810D078C65aD13c5f11B);
    ERC20 public BPT = ERC20(0x944D4AE892dE4BFd38742Cc8295d6D5164c5593C);
    address public permit2 = 0x000000000022D473030F116dDEE9F6B43aC78BA3;
    address public beetsRouter = 0x6077b9801B5627a65A5eeE70697C793751D1a71c;
    address public anglesVault = 0xe5203Be1643465b3c0De28fd2154843497Ef4269;

    error BeetsLpAddHelper__CannotWithdrawSFromWs();
    error BeetsLpAddHelper__CannotDepositSIntoAns();

    receive() external payable {}

    function deposit(uint256 amount) public nonReentrant returns (uint256) {
        SafeTransferLib.safeTransferFrom(address(WS), msg.sender, address(this), amount);

        // supply wS into silo
        WS.approve(address(BWS25), amount / 2);
        uint256 siloBalance = BWS25.deposit(amount / 2, address(this));

        // mint anS with S
        (bool success,) =
            address(WS).call(abi.encodeWithSelector(bytes4(keccak256("withdraw(uint256)")), uint256(amount / 2)));
        if (!success) revert BeetsLpAddHelper__CannotWithdrawSFromWs();
        (success,) = anglesVault.call{value: amount / 2}(abi.encodeWithSelector(bytes4(keccak256("deposit()"))));
        if (!success) revert BeetsLpAddHelper__CannotDepositSIntoAns();

        // approve permit2 contract on token
        BWS25.approve(permit2, type(uint256).max);
        ANS.approve(permit2, type(uint256).max);
        // approve router on Permit2
        IPermit2(permit2).approve(address(BWS25), beetsRouter, type(uint160).max, type(uint48).max);
        IPermit2(permit2).approve(address(ANS), beetsRouter, type(uint160).max, type(uint48).max);

        uint256[] memory amountsIn = new uint256[](2);
        amountsIn[0] = siloBalance;
        amountsIn[1] = amount / 2;

        uint256 bptAmountOut = IRouter(beetsRouter).addLiquidityUnbalanced(
            address(BPT),
            amountsIn,
            0, // minBptAmountOut
            false, // wethIsEth
            "" // userData
        );

        SafeTransferLib.safeTransfer(address(BPT), msg.sender, bptAmountOut);
        return bptAmountOut;
    }
}
