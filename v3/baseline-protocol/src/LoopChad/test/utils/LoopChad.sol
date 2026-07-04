// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

// External dependencies
import {ERC20} from "solmate/tokens/ERC20.sol";
import {ISwapRouter} from "@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol";
import {BlastClaimer} from "../../src/components/BlastClaimer.sol";

interface IBaseline {
    struct CreditAccount {
        uint256 collateral;
        uint256 principal;
        uint256 interest;
        uint256 expiry;
        uint256 lastFloor;
    }

    function reserve() external view returns (address);
    function bAsset() external view returns (address);
    function pool() external view returns (address);
    function FEE_TIER() external view returns (uint24);
    function borrow(address user_, uint256 bAssetsIn_, uint256 numDays_)
        external
        returns (uint256 principal, uint256 interest);
    function repay(address user_, uint256 reservesIn_) external returns (uint256 bAssetsReturned);
    function getCreditAccount(address user_) external view returns (CreditAccount memory);
}

contract LoopChad {
    IBaseline public immutable baseline;
    ISwapRouter public immutable router;

    ERC20 public immutable reserve;
    ERC20 public immutable bAsset;

    constructor(address baseline_, address router_, address claimer_) {
        baseline = IBaseline(baseline_);
        router = ISwapRouter(router_);

        reserve = ERC20(baseline.reserve());
        bAsset = ERC20(baseline.bAsset());

        reserve.approve(address(baseline.pool()), type(uint256).max);
        reserve.approve(address(router), type(uint256).max);
        bAsset.approve(address(baseline), type(uint256).max);

        BlastClaimer.configure(claimer_);
    }

    /// @notice Loop in like a chad
    function loopIn(uint256 bAssetsIn_, uint256 numDays_, uint256 loops_)
        public
        returns (uint256 collateral, uint256 credit, uint256 exposure)
    {
        uint256 initCollateral = bAssetsIn_; // Used to record initial borrow's output

        bAsset.transferFrom(msg.sender, address(this), bAssetsIn_);

        uint256 principal;
        for (uint256 i; i < loops_; i++) {
            (principal,) = baseline.borrow(msg.sender, bAssetsIn_, numDays_);

            // Record running counts
            collateral += bAssetsIn_;
            credit += principal;

            // Transfer in and swap reserve back to bAsset
            reserve.transferFrom(msg.sender, address(this), principal);
            bAssetsIn_ = _swapReserveToBAsset(principal, address(this));

            // Set numDays to 0 for every successive loop
            if (numDays_ > 0) numDays_ = 0;
        }

        bAsset.transfer(msg.sender, bAsset.balanceOf(address(this)));

        // Calculate exposure created from loops
        exposure = collateral * 1e18 / initCollateral;

        return (collateral, credit, exposure);
    }

    /// @notice Unwind loop and repay debt
    function bitchOut(uint256 reservesIn_) external {
        revert("Ser we don't do that here");
    }

    // IDGAF about slippage
    function _swapReserveToBAsset(uint256 amount, address recipient)
        internal
        returns (uint256 amoutOut)
    {
        uint256 balanceBefore = reserve.balanceOf(recipient);

        router.exactInputSingle(
            ISwapRouter.ExactInputSingleParams({
                tokenIn: address(reserve),
                tokenOut: address(bAsset),
                fee: baseline.FEE_TIER(),
                recipient: recipient,
                deadline: block.timestamp + 100,
                amountIn: amount,
                amountOutMinimum: 0, // TODO
                sqrtPriceLimitX96: 0
            })
        );

        return bAsset.balanceOf(recipient) - balanceBefore;
    }
}
