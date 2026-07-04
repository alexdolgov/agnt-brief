pragma solidity 0.8.17;

import "../pendle/contracts/interfaces/IStandardizedYield.sol";
import "../pendle/contracts/interfaces/IPBulkSeller.sol";
import "../pendle/contracts/router/kyberswap/KyberSwapHelper.sol";
import "hardhat/console.sol";

struct SYSellingParams {
    address[] SYs;
    uint256[] netSyIns;
    TokenOutput[] outputs;
}

struct RewardSellingParams {
    address[] rewardTokens;
    uint256[] netTokenIns;
    address[] kyberRouters;
    bytes[] kyberCalls;
}

contract SYRedeemAndSwap is KyberSwapHelper {
    address public immutable USDC;

    event TokensSoldToUSDC(address[] SYs, uint256[] amountUSDCOuts);

    constructor(address _USDC, address kyberScalingLib) KyberSwapHelper(kyberScalingLib) {
        USDC = _USDC;
    }

    function _syOrBulk(address SY, TokenOutput memory output)
        internal
        pure
        returns (address addr)
    {
        return output.bulk != address(0) ? output.bulk : SY;
    }

    function _sellSY(
        address SY,
        uint256 netSyIn,
        TokenOutput memory output
    ) internal returns (uint256 netUSDCOut) {
        _transferFrom(IERC20(SY), msg.sender, _syOrBulk(SY, output), netSyIn);
        bool requireSwap = output.tokenRedeemSy != output.tokenOut;
        address receiverRedeemSy = requireSwap ? address(this) : msg.sender;
        uint256 netTokenRedeemed;

        if (output.bulk != address(0)) {
            netTokenRedeemed = IPBulkSeller(output.bulk).swapExactSyForToken(
                receiverRedeemSy,
                netSyIn,
                0,
                true
            );
        } else {
            console.log(output.tokenRedeemSy, receiverRedeemSy);
            // console.log(
            //     output.kybercall
            // );
            netTokenRedeemed = IStandardizedYield(SY).redeem(
                receiverRedeemSy,
                netSyIn,
                output.tokenRedeemSy,
                0,
                true
            );
            console.log("Done redeeming");
        }

        if (requireSwap) {
            uint256 lastBalance = _selfBalance(USDC);

            _kyberswap(
                output.tokenRedeemSy,
                netTokenRedeemed,
                output.kyberRouter,
                output.kybercall
            );

            netUSDCOut = _selfBalance(USDC) - lastBalance;
        } else {
            netUSDCOut = netTokenRedeemed;
        }

        if (netUSDCOut < output.minTokenOut) {
            revert Errors.RouterInsufficientTokenOut(netUSDCOut, output.minTokenOut);
        }
    }

    function _sellToken(
        address token,
        uint256 netTokenIn,
        address kyberRouter,
        bytes memory kyberCall
    ) internal returns (uint256 netUSDCOut) {
        _transferIn(token, msg.sender, netTokenIn);
        uint256 lastBalance = _selfBalance(USDC);
        _kyberswap(token, netTokenIn, kyberRouter, kyberCall);
        netUSDCOut = _selfBalance(USDC) - lastBalance;
    }

    function sellSYsAndTokens(
        SYSellingParams calldata syParams,
        RewardSellingParams calldata rewardParams
    ) external returns (uint256[] memory netUSDCOuts) {
        uint256 nSY = syParams.SYs.length;
        uint256 nReward = rewardParams.rewardTokens.length;

        address[] memory allTokens = new address[](nSY + nReward);
        netUSDCOuts = new uint256[](allTokens.length);

        for (uint256 i = 0; i < syParams.SYs.length; ++i) {
            address SY = syParams.SYs[i];
            uint256 netSyIn = syParams.netSyIns[i];
            TokenOutput memory output = syParams.outputs[i];

            allTokens[i] = SY;
            netUSDCOuts[i] = _sellSY(SY, netSyIn, output);
        }

        for (uint256 i = 0; i < nReward; ++i) {
            address token = rewardParams.rewardTokens[i];
            uint256 netTokenIn = rewardParams.netTokenIns[i];
            address kyberRouter = rewardParams.kyberRouters[i];
            bytes memory kyberCall = rewardParams.kyberCalls[i];

            allTokens[i + nSY] = token;
            netUSDCOuts[i + nSY] = _sellToken(token, netTokenIn, kyberRouter, kyberCall);
        }

        _transferOut(USDC, msg.sender, _selfBalance(USDC));
        
        emit TokensSoldToUSDC(allTokens, netUSDCOuts);
    }
}
