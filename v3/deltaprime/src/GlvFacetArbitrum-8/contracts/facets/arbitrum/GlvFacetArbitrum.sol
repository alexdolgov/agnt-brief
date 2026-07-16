// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.8.17;

//This path is updated during deployment
import "../GlvFacet.sol";

contract GlvFacetArbitrum is GlvFacet {
    using TransferHelper for address;

    // https://github.com/gmx-io/gmx-synthetics/tree/v2.2-branch/deployments/arbitrum
    // Glv contracts
    function getGlvRouter() internal pure override returns (address) {
        return 0x10Fa5Bd343373101654E896B43Ca38Fd8f3789F9;
    }

    function getGmxV2GlvDepositVault() internal pure override returns (address) {
        return 0x393053B58f9678C9c28c2cE941fF6cac49C3F8f9;
    }
    ///@dev both Deposit and Withdrawal vaults seem to be the same on Arbitrum?
    function getGmxV2GlvWithdrawalVault() internal pure override returns (address) {
        return 0x393053B58f9678C9c28c2cE941fF6cac49C3F8f9;
    }

    // GLV Token
    address constant GLV_WETH_USDC = 0x528A5bac7E746C9A509A1f4F6dF58A03d44279F9;

    // Tokens
    address constant WETH = 0x82aF49447D8a07e3bd95BD0d56f35241523fBab1;
    address constant USDC = 0xaf88d065e77c8cC2239327C5EDb3A432268e5831;


    // DEPOSIT
    function depositWethUsdcGlv(
        bool isLongToken,
        uint256 tokenAmount,
        uint256 minGlvAmount,
        address targetMarket,
        uint256 executionFee
    ) external payable {
        address _depositedToken = isLongToken ? WETH : USDC;

        _depositGlv(
            GLV_WETH_USDC,
            _depositedToken,
            tokenAmount,
            targetMarket,
            minGlvAmount,
            executionFee
        );
    }


    // WITHDRAW
    function withdrawWethUsdcGlv(
        uint256 glvAmount,
        address targetMarket,
        uint256 minLongTokenAmount,
        uint256 minShortTokenAmount,
        uint256 executionFee
    ) external payable {
        _withdrawGlv(
            GLV_WETH_USDC,
            glvAmount,
            targetMarket,
            minLongTokenAmount,
            minShortTokenAmount,
            executionFee
        );
    }

}
