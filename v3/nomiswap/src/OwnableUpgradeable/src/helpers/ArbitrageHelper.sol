// SPDX-License-Identifier: Unlicensed

pragma solidity ^0.8.19;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "./../interfaces/IBalancer.sol";
import "./../interfaces/IRouter.sol";

struct UniswapCall {
    bytes data;
    address to;
}

interface ISwapExecutor {
    function executeSwaps(IBalancer.SwapInfo[] calldata swaps) external;
}

contract ArbitrageHelper is OwnableUpgradeable, UUPSUpgradeable {
    using SafeERC20 for IERC20;
    using Address for address;

    function initialize(address _authority) external initializer {
        __Ownable_init(_authority);
        __UUPSUpgradeable_init();
    }

    function _authorizeUpgrade(address) internal override onlyOwner {}

    function estimateInvestSst(
        // method expected to be used with calls only
        IERC20 token,
        uint amount,
        IRouter router,
        address adapter,
        address balancer,
        IBalancer.SwapInfo[] calldata swaps
    ) external onlyOwner returns (uint) {
        token.forceApprove(address(router), amount);
        return
            router.invest(
                adapter,
                balancer,
                address(token),
                amount,
                0,
                swaps,
                uint32(block.timestamp)
            );
    }

    function investWay(
        IERC20 token,
        uint amount,
        IRouter router,
        address adapter,
        address balancer,
        IBalancer.SwapInfo[] calldata swaps,
        uint32 deadline,
        UniswapCall memory uniswapCall
    ) external onlyOwner returns (uint additionalBalance) {
        uint initialBalance = token.balanceOf(address(this));
        token.forceApprove(address(router), amount);
        uint sstAmount = router.invest(
            adapter,
            balancer,
            address(token),
            amount,
            0,
            swaps,
            deadline
        );
        IERC20(balancer).forceApprove(uniswapCall.to, sstAmount);
        uniswapCall.to.functionCall(uniswapCall.data);
        additionalBalance = token.balanceOf(address(this)) - initialBalance;
    }

    function estimateRedeemTokenAmounts(
        // method expected to be used with calls only
        IERC20 token,
        uint amount,
        UniswapCall memory uniswapCall,
        IRouter router,
        address adapter,
        address balancer
    ) external onlyOwner returns (address[] memory, uint[] memory) {
        uint sstAmount = IERC20(balancer).balanceOf(address(this));
        token.forceApprove(uniswapCall.to, amount);
        uniswapCall.to.functionCall(uniswapCall.data);
        sstAmount = IERC20(balancer).balanceOf(address(this)) - sstAmount;

        IERC20(balancer).forceApprove(address(router), sstAmount);
        return router.redeem(
            balancer,
            sstAmount,
            IAdapter(adapter),
            address(this),
            new IRouter.TokenAmount[](0),
            uint32(block.timestamp)
        );
    }

    function redeemWay(
        IERC20 token,
        uint amount,
        UniswapCall memory uniswapCall,
        IRouter router,
        address adapter,
        address balancer,
        uint32 deadline,
        IBalancer.SwapInfo[] calldata swaps,
        address swapExecutor
    ) external onlyOwner returns (uint additionalBalance) {
        uint initialBalance = token.balanceOf(address(this));
        uint sstAmount = IERC20(balancer).balanceOf(address(this));
        token.forceApprove(uniswapCall.to, amount);
        uniswapCall.to.functionCall(uniswapCall.data);
        sstAmount = IERC20(balancer).balanceOf(address(this)) - sstAmount;

        IERC20(balancer).forceApprove(address(router), sstAmount);
        router.redeem(
            balancer,
            sstAmount,
            IAdapter(adapter),
            address(this),
            new IRouter.TokenAmount[](0),
            deadline
        );
        for (uint i = 0; i < swaps.length; i++) {
            IBalancer.SwapInfo memory swap = swaps[i];
            IERC20(swap.token).safeTransfer(swapExecutor, swap.amount);
        }
        ISwapExecutor(swapExecutor).executeSwaps(swaps);

        additionalBalance = token.balanceOf(address(this)) - initialBalance;
    }
}
