// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "./interfaces/pancake/IPancakeV3Pool.sol";
import "./interfaces/sable/ITroveManager.sol";
import "./interfaces/tokens/IERC20.sol";
import "./interfaces/tokens/IWBNB.sol";
import "./interfaces/wombat/IWombatRouter.sol";

contract SableRedemption {
    IWombatRouter immutable private wombatRouter;
    ITroveManager immutable private sableTroveManager;
    IPancakeV3Pool immutable private pancakePool;
    IWBNB immutable private wbnb;
    IERC20 immutable private usds;
    IERC20 immutable private usdt;

    address constant private WOMBAT_ROUTER = 0x19609B03C976CCA288fbDae5c21d4290e9a4aDD7;

    address constant private SABLE_TROVE_MANAGER =
        0xEC035081376ce975Ba9EAF28dFeC7c7A4c483B85;

    address constant private PANCAKE_BNB_USDT =
        0x36696169C63e42cd08ce11f5deeBbCeBae652050;

    address constant private WBNB = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;
    address constant private USDS = 0x0c6Ed1E73BA73B8441868538E210ebD5DD240FA0;
    address constant private USDT = 0x55d398326f99059fF775485246999027B3197955;

    // Wombat params
    address[] private WOMBAT_TOKEN_PATH = [
        0x55d398326f99059fF775485246999027B3197955,
        0x0c6Ed1E73BA73B8441868538E210ebD5DD240FA0
    ];
    address[] private WOMBAT_POOL_PATH = [
        0x0c735f84BD7EDA8F8176236091AF8068Bb6C41dE
    ];
    uint private wombatMinimumToAmount = 1;
    address private wombatTo = address(this);
    uint private wombatDeadline = 4089939296;

    // Sable params
    uint private sableMaxIterations = 70;
    uint private sableMaxFeePercentage = 990000000000000000;
    bytes[] private sablePriceFeedData;

    struct CallbackDataParams {
        uint amountToRedeem;
        uint wombatFromAmount;
        address sableFirstRedemptionHint;
        address sableUpperPartialRedemptionHint;
        address sableLowerPartialRedemptionHint;
        uint sablePartialRedemptionHintNICR;
        uint expectedReceived;
    }

    constructor() {
        wombatRouter = IWombatRouter(WOMBAT_ROUTER);
        sableTroveManager = ITroveManager(SABLE_TROVE_MANAGER);
        pancakePool = IPancakeV3Pool(PANCAKE_BNB_USDT);
        wbnb = IWBNB(payable(WBNB));
        usds = IERC20(USDS);
        usdt = IERC20(USDT);
    }

    /**  
    This is for calculating the max price impact a swap can cause to a Pancake V3 pool,
    in the case where zeroForOne is false
    */
    uint160 constant private MAX_SQRT_RATIO =
        1461446703485210103287273052203988822378723970342;

    // Ask pancake pool to optimistically give this contract USDT
    function pegKeep(int pancakeUsdtOut, bytes calldata callbackData, bytes[] memory _sablePriceFeedData) public {
        // Storing price feed to state because abi.encode/decode does not work well with bytes[]
        sablePriceFeedData = _sablePriceFeedData;
        
        address recipient = address(this);
        // Token 0 is USDT, token 1 is BNB, swap is BNB -> USDT, therefore it is not "0" For "1"
        bool zeroForOne = false;
        uint160 sqrtPriceLimitX96 = MAX_SQRT_RATIO - 1;

        pancakePool.swap(
            recipient,
            zeroForOne,
            pancakeUsdtOut,
            sqrtPriceLimitX96,
            callbackData
        );
    }

    function pancakeV3SwapCallback(
        int amount0,
        int amount1,
        bytes calldata callbackData
    ) external {
        // Only pancake pair can call this
        require(msg.sender == PANCAKE_BNB_USDT, "not authorized");
        CallbackDataParams memory callbackDataParams = abi.decode(
            callbackData,
            (CallbackDataParams)
        );

        uint usdtToSwapOnWombat = uint(-amount0);
        usdt.approve(WOMBAT_ROUTER, usdtToSwapOnWombat);
        uint usdsGet = _wombatSwap(usdtToSwapOnWombat);
        require(usdsGet >= callbackDataParams.amountToRedeem, "wombat swap amount not match");

        // USDS approval is not needed because of USDS' implementation design
        _sableRedeem(
            callbackDataParams.amountToRedeem,
            callbackDataParams.sableFirstRedemptionHint,
            callbackDataParams.sableUpperPartialRedemptionHint,
            callbackDataParams.sableLowerPartialRedemptionHint,
            callbackDataParams.sablePartialRedemptionHintNICR
        );
        // BNB that was earned from redemption should be larger than what needs to be back to the pool
        require(address(this).balance > uint(amount1), "not enough to repay pancake pool");

        wbnb.deposit{value: uint(amount1)}();
        wbnb.transfer(PANCAKE_BNB_USDT, uint(amount1));
        require(address(this).balance > callbackDataParams.expectedReceived, "less than expected received");
        payable(tx.origin).transfer(address(this).balance);

        // There would be some dust USDS left inside the contract as well, but we are not transferring that to save gas
    }

    function _wombatSwap(uint fromAmount) internal returns (uint) {
        uint usdsGet = wombatRouter.swapExactTokensForTokens(
            WOMBAT_TOKEN_PATH,
            WOMBAT_POOL_PATH,
            fromAmount,
            wombatMinimumToAmount,
            wombatTo,
            wombatDeadline
        );

        return usdsGet;
    }

    function _sableRedeem(
        uint usdsAmount,
        address firstRedemptionHint,
        address upperPartialRedemptionHint,
        address lowerPartialRedemptionHint,
        uint partialRedemptionHintNICR
    ) internal {
        sableTroveManager.redeemCollateral(
            usdsAmount,
            firstRedemptionHint,
            upperPartialRedemptionHint,
            lowerPartialRedemptionHint,
            partialRedemptionHintNICR,
            sableMaxIterations,
            sableMaxFeePercentage,
            sablePriceFeedData
        );
    }

    // Needs to receive BNB from Sable redemptions
    receive() external payable {}
}
