pragma solidity ^0.5.16;
pragma experimental ABIEncoderV2;

import "../RToken/RErc20.sol";
import "../RToken/RToken.sol";
import "../interfaces/PriceOracle.sol";
import "../interfaces/EIP20Interface.sol";

interface IronControllerLensInterface {
    function markets(address) external view returns (bool, uint);
    function oracle() external view returns (PriceOracle);
    function getAccountLiquidity(address) external view returns (uint, uint, uint);
    function getAssetsIn(address) external view returns (RToken[] memory);
    function claimReward(address) external;
    function rewardAccrued(address) external view returns (uint);
}


contract IronLens {
    struct RTokenMetadata {
        address rToken;
        uint exchangeRateCurrent;
        uint supplyRatePerBlock;
        uint borrowRatePerBlock;
        uint reserveFactorMantissa;
        uint totalBorrows;
        uint totalReserves;
        uint totalSupply;
        uint totalCash;
        bool isListed;
        uint collateralFactorMantissa;
        address underlyingAssetAddress;
        uint cTokenDecimals;
        uint underlyingDecimals;
    }

    function cTokenMetadata(RToken rToken) public returns (RTokenMetadata memory) {
        uint exchangeRateCurrent = rToken.exchangeRateCurrent();
        IronControllerLensInterface ironController = IronControllerLensInterface(address(rToken.ironController()));
        (bool isListed, uint collateralFactorMantissa) = ironController.markets(address(rToken));
        address underlyingAssetAddress;
        uint underlyingDecimals;

        if (compareStrings(rToken.symbol(), "cETH")) {
            underlyingAssetAddress = address(0);
            underlyingDecimals = 18;
        } else {
            RErc20 cErc20 = RErc20(address(rToken));
            underlyingAssetAddress = cErc20.underlying();
            underlyingDecimals = EIP20Interface(cErc20.underlying()).decimals();
        }

        return RTokenMetadata({
            rToken: address(rToken),
            exchangeRateCurrent: exchangeRateCurrent,
            supplyRatePerBlock: rToken.supplyRatePerBlock(),
            borrowRatePerBlock: rToken.borrowRatePerBlock(),
            reserveFactorMantissa: rToken.reserveFactorMantissa(),
            totalBorrows: rToken.totalBorrows(),
            totalReserves: rToken.totalReserves(),
            totalSupply: rToken.totalSupply(),
            totalCash: rToken.getCash(),
            isListed: isListed,
            collateralFactorMantissa: collateralFactorMantissa,
            underlyingAssetAddress: underlyingAssetAddress,
            cTokenDecimals: rToken.decimals(),
            underlyingDecimals: underlyingDecimals
        });
    }

    function cTokenMetadataAll(RToken[] calldata cTokens) external returns (RTokenMetadata[] memory) {
        uint cTokenCount = cTokens.length;
        RTokenMetadata[] memory res = new RTokenMetadata[](cTokenCount);
        for (uint i = 0; i < cTokenCount; i++) {
            res[i] = cTokenMetadata(cTokens[i]);
        }
        return res;
    }

    struct RTokenBalances {
        address rToken;
        uint balanceOf;
        uint borrowBalanceCurrent;
        uint balanceOfUnderlying;
        uint tokenBalance;
        uint tokenAllowance;
    }

    function cTokenBalances(RToken rToken, address payable account) public returns (RTokenBalances memory) {
        uint balanceOf = rToken.balanceOf(account);
        uint borrowBalanceCurrent = rToken.borrowBalanceCurrent(account);
        uint balanceOfUnderlying = rToken.balanceOfUnderlying(account);
        uint tokenBalance;
        uint tokenAllowance;

        if (compareStrings(rToken.symbol(), "cETH")) {
            tokenBalance = account.balance;
            tokenAllowance = account.balance;
        } else {
            RErc20 cErc20 = RErc20(address(rToken));
            EIP20Interface underlying = EIP20Interface(cErc20.underlying());
            tokenBalance = underlying.balanceOf(account);
            tokenAllowance = underlying.allowance(account, address(rToken));
        }

        return RTokenBalances({
            rToken: address(rToken),
            balanceOf: balanceOf,
            borrowBalanceCurrent: borrowBalanceCurrent,
            balanceOfUnderlying: balanceOfUnderlying,
            tokenBalance: tokenBalance,
            tokenAllowance: tokenAllowance
        });
    }

    function cTokenBalancesAll(RToken[] calldata cTokens, address payable account) external returns (RTokenBalances[] memory) {
        uint cTokenCount = cTokens.length;
        RTokenBalances[] memory res = new RTokenBalances[](cTokenCount);
        for (uint i = 0; i < cTokenCount; i++) {
            res[i] = cTokenBalances(cTokens[i], account);
        }
        return res;
    }

    struct RTokenUnderlyingPrice {
        address rToken;
        uint underlyingPrice;
    }

    function cTokenUnderlyingPrice(RToken rToken) public view returns (RTokenUnderlyingPrice memory) {
        IronControllerLensInterface ironController = IronControllerLensInterface(address(rToken.ironController()));
        PriceOracle priceOracle = ironController.oracle();

        return RTokenUnderlyingPrice({
            rToken: address(rToken),
            underlyingPrice: priceOracle.getUnderlyingPrice(rToken)
        });
    }

    function cTokenUnderlyingPriceAll(RToken[] calldata cTokens) external view returns (RTokenUnderlyingPrice[] memory) {
        uint cTokenCount = cTokens.length;
        RTokenUnderlyingPrice[] memory res = new RTokenUnderlyingPrice[](cTokenCount);
        for (uint i = 0; i < cTokenCount; i++) {
            res[i] = cTokenUnderlyingPrice(cTokens[i]);
        }
        return res;
    }

    struct AccountLimits {
        RToken[] markets;
        uint liquidity;
        uint shortfall;
    }

    function getAccountLimits(IronControllerLensInterface ironController, address account) public view returns (AccountLimits memory) {
        (uint errorCode, uint liquidity, uint shortfall) = ironController.getAccountLiquidity(account);
        require(errorCode == 0);

        return AccountLimits({
            markets: ironController.getAssetsIn(account),
            liquidity: liquidity,
            shortfall: shortfall
        });
    }

    struct CompBalanceMetadataExt {
        uint balance;
        uint votes;
        address delegate;
        uint allocated;
    }

    function compareStrings(string memory a, string memory b) internal pure returns (bool) {
        return (keccak256(abi.encodePacked((a))) == keccak256(abi.encodePacked((b))));
    }

}
