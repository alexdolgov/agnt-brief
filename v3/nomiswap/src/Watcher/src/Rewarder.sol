// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/access/manager/AccessManaged.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "src/interfaces/IGauge.sol";
import "src/interfaces/IWrapper.sol";
import "src/interfaces/IRewarder.sol";
import "src/helpers/SwapExecutor.sol";

import {removeSelector} from "vulcan/utils.sol";

contract Rewarder is IRewarder, AccessManaged {

    using SafeERC20 for IERC20;

    error _ClaimAmountsResult(address[] rewardTokens, uint[] rewardsClaimed);
    error UnexpectedErrorSignature(bytes revertData);
    error Unexpected();

    IERC20 public immutable ABRA;
    SwapExecutor public immutable SWAP_EXECUTOR;

    constructor(address _abra, address _swapExecutor, address authority_) AccessManaged(authority_) {
        ABRA = IERC20(_abra);
        SWAP_EXECUTOR = SwapExecutor(_swapExecutor);
    }

    function compound(
        IWrapper wrapper,
        IGauge gauge,
        ISwapProvider.SwapInfo[] calldata swaps,
        address poolToken,
        uint256 minTokensBought,
        uint32 deadline
    ) external override restricted returns(uint tokensBought) {
        require(deadline >= block.timestamp, "Expired");
        wrapper.claim(address(this));

        for (uint i = 0; i < swaps.length; i++) {
            ISwapProvider.SwapInfo calldata swap = swaps[i];
            SafeERC20.safeTransfer(IERC20(swap.token), address(SWAP_EXECUTOR), swap.amount);
        }
        SWAP_EXECUTOR.executeSwaps(swaps);

        tokensBought = SWAP_EXECUTOR.defaultSwap(poolToken, address(ABRA), minTokensBought);

        ABRA.forceApprove(address(gauge), tokensBought);
        gauge.notifyRewardAmount(tokensBought);
    }

    function recoverFunds(TransferInfo calldata transfer, address to) 
        external
        override 
        virtual 
        restricted
    {
        IERC20(transfer.token).safeTransfer(to, transfer.amount);
    }

    function pendingRewards(
        IWrapper wrapper
    ) external override returns (address[] memory tokens, uint[] memory amounts) {
        try this._claimAndRevert(wrapper) {
        } catch (bytes memory data) {
            if(bytes4(data) != _ClaimAmountsResult.selector) {
                revert UnexpectedErrorSignature(data);
            }
            return abi.decode(removeSelector(data), (address[], uint[]));
        }
        revert Unexpected();
    }

    function _claimAndRevert(IWrapper wrapper) external {
        address[] memory rewardTokens = wrapper.rewardTokens();
        uint[]  memory rewardsClaimed = new uint[](rewardTokens.length);

        for (uint i = 0; i < rewardTokens.length; ++i) {
            // will be calculated later
            rewardsClaimed[i] = IERC20(rewardTokens[i]).balanceOf(address(this));
        }

        wrapper.claim(address(this));

        for (uint i = 0; i < rewardTokens.length; ++i) {
            uint rewardBalance = IERC20(rewardTokens[i]).balanceOf(address(this));
            rewardsClaimed[i] = rewardBalance - rewardsClaimed[i];
        }

        revert _ClaimAmountsResult(rewardTokens, rewardsClaimed);
    }

}