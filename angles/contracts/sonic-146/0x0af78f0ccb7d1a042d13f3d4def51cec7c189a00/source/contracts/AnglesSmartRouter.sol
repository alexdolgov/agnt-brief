// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/access/Ownable2Step.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "./interfaces/IAnglesVault.sol";
import "./interfaces/IBatchRouter.sol";

contract AnglesSmartRouter is Ownable2Step, ReentrancyGuard {
    using SafeERC20 for IERC20;

    address public feeReceiver;
    IERC20 public constant anS =
        IERC20(0x0C4E186Eae8aCAA7F7de1315D5AD174BE39Ec987);
    IAnglesVault public constant anglesVault =
        IAnglesVault(0xe5203Be1643465b3c0De28fd2154843497Ef4269);
    IBatchRouter public constant batchRouter =
        IBatchRouter(0x7761659F9e9834ad367e4d25E0306ba7A4968DAf);

    uint256 public alwaysDepositToVault = 1e17;

    // --------------------------------------------------------------------------------
    event FeeCollected(uint256 amount);
    event FeeReceiverSet(address feeReceiver);
    event AlwaysDepositToVaultSet(uint256 alwaysDepositToVault);

    // --------------------------------------------------------------------------------
    constructor(address _feeReceiver) {
        feeReceiver = _feeReceiver;
    }

    // ================================================================================
    // User functions
    // ================================================================================

    function deposit() external payable nonReentrant {
        uint256 amount = msg.value;

        (uint128 queued, uint128 claimable, , ) = anglesVault
            .withdrawalQueueMetadata();

        uint128 queueShortfall = queued - claimable;
        uint256 vaultRequires = Math.max(queueShortfall, alwaysDepositToVault);

        uint256 amountToDeposit = amount;

        if (amount > vaultRequires) {
            uint256 amountAvailableToSwap = amount - vaultRequires;

            // Trying to swap the amountAvailableToSwap. Expect it to fail, if the exchange rate is not favorable.
            // If exchange rate is not favorable, we will not swap anything. All the amount will be deposited in the vault directly.
            bool success = trySwapForProfit(amountAvailableToSwap);
            if (success) {
                // Remove what was swapped from the amount to deposit
                amountToDeposit -= amountAvailableToSwap;
            }
        }
        if (amountToDeposit > 0) {
            anglesVault.deposit{value: amountToDeposit}();
        }
        anS.safeTransfer(msg.sender, amount);

        uint256 anSOnContract = anS.balanceOf(address(this));
        if (anSOnContract > 0) {
            anS.safeTransfer(feeReceiver, anSOnContract);
        }

        emit FeeCollected(anSOnContract);
    }

    // ================================================================================
    // Internal functions
    // ================================================================================

    function trySwapForProfit(
        uint256 amountIn
    ) internal returns (bool success) {
        IBatchRouter.SwapPathExactAmountIn[]
            memory swapPaths = new IBatchRouter.SwapPathExactAmountIn[](1);
        swapPaths[0] = IBatchRouter.SwapPathExactAmountIn({
            tokenIn: IERC20(0x039e2fB66102314Ce7b64Ce5Ce3E5183bc94aD38),
            steps: new IBatchRouter.SwapPathStep[](2),
            exactAmountIn: amountIn,
            minAmountOut: amountIn + 1
        });

        swapPaths[0].steps[0] = IBatchRouter.SwapPathStep({
            pool: 0x016C306e103FbF48EC24810D078C65aD13c5f11B,
            tokenOut: IERC20(0x016C306e103FbF48EC24810D078C65aD13c5f11B),
            isBuffer: true
        });

        swapPaths[0].steps[1] = IBatchRouter.SwapPathStep({
            pool: 0x944D4AE892dE4BFd38742Cc8295d6D5164c5593C,
            tokenOut: anS,
            isBuffer: false
        });
        try
            batchRouter.swapExactIn{value: amountIn}(
                swapPaths,
                block.timestamp,
                true,
                ""
            )
        {
            return true;
        } catch {
            return false;
        }
    }

    // ================================================================================
    // Admin functions
    // ================================================================================
    function setFeeReceiver(address _feeReceiver) external onlyOwner {
        feeReceiver = _feeReceiver;
        emit FeeReceiverSet(_feeReceiver);
    }

    function setAlwaysDepositToVault(
        uint256 _alwaysDepositToVault
    ) external onlyOwner {
        alwaysDepositToVault = _alwaysDepositToVault;
        emit AlwaysDepositToVaultSet(_alwaysDepositToVault);
    }
}
