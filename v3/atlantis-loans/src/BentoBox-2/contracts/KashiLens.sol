pragma solidity ^0.6.12;
pragma experimental ABIEncoderV2;

import "@boringcrypto/boring-solidity/contracts/libraries/BoringRebase.sol";
import "./interfaces/IOracle.sol";
import "./libraries/IBEP20.sol";

contract KashiLens  {
    using RebaseLibrary for Rebase;
    using BoringMath for uint256;

    function pollKashiPairs(address who, IKashiPair[] calldata pairsIn) external view returns (KashiPairPoll[] memory) {
        uint256 len = pairsIn.length;
        KashiPairPoll[] memory pairs = new KashiPairPoll[](len);

        for (uint256 i = 0; i < len; i++) {
            IKashiPair pair = pairsIn[i];

            bytes memory oracleData = pair.oracleData();
            Rebase memory collateralTotals = IBentoBox(pair.bentoBox()).totals(pair.collateral());
            Rebase memory assetTotals = IBentoBox(pair.bentoBox()).totals(pair.asset());

            pairs[i].pairAddress = address(pair);
            pairs[i].collateral = Rebase2({ token: pair.collateral(), elastic: collateralTotals.elastic, base: collateralTotals.base });
            pairs[i].collateralPrice = getPrice(oracleData, true);
            pairs[i].collateralDecimals = isBaseToken(pairs[i].collateral.token) ? 18 : IBEP20(pairs[i].collateral.token).decimals();
            pairs[i].collateralSymbol = isBaseToken(pairs[i].collateral.token) ? "BNB" : IBEP20(pairs[i].collateral.token).symbol();
            pairs[i].asset = Rebase2({ token: pair.asset(), elastic: assetTotals.elastic, base: assetTotals.base });
            pairs[i].assetPrice = getPrice(oracleData, false);
            pairs[i].assetDecimals = isBaseToken(pairs[i].asset.token) ? 18 : IBEP20(pairs[i].asset.token).decimals();
            pairs[i].assetSymbol = isBaseToken(pairs[i].asset.token) ? "BNB" : IBEP20(pairs[i].asset.token).symbol();
            pairs[i].oracle = pair.oracle();
            pairs[i].oracleData = oracleData;
            pairs[i].totalCollateralShare = pair.totalCollateralShare();
            pairs[i].userCollateralShare = pair.userCollateralShare(who);
            pairs[i].totalAsset = pair.totalAsset();
            pairs[i].userAssetFraction = pair.balanceOf(who);
            pairs[i].totalBorrow = pair.totalBorrow();
            pairs[i].userBorrowPart = pair.userBorrowPart(who);

            pairs[i].currentExchangeRate = pair.exchangeRate();
            (, pairs[i].oracleExchangeRate) = pair.oracle().peek(pair.oracleData());
            pairs[i].spotExchangeRate = pair.oracle().peekSpot(pair.oracleData());
            pairs[i].accrueInfo = pair.accrueInfo();
            pairs[i].totalSupply = pair.totalSupply();
            pairs[i].bentoBox = address(pair.bentoBox());
            pairs[i].masterContract = pair.masterContract();

        }

        return pairs;
    }

    function getPrice(bytes memory data, bool isCollateral) public view returns (uint256) {
        (address asset, address collateral,) = abi.decode(data, (address, address, uint256));

        address feed = isCollateral ?  collateral : asset;
        if (feed == address(0)) {
            return 0;
        }

        uint decimalDelta = uint(18).sub(uint256(IAggregator(feed).decimals()));
        if (decimalDelta > 0) {
            return uint(IAggregator(feed).latestAnswer()).mul(10**decimalDelta);
        } else {
            return uint(IAggregator(feed).latestAnswer());
        }
    }

    function isBaseToken(IBEP20 token) internal pure returns (bool) {
        return address(token) == address(0);
    }
}

interface IAggregator {
    function latestAnswer() external view returns (int256 answer);
    function decimals() external view returns (uint8);
}

struct AccrueInfo {
    uint64 interestPerSecond;
    uint64 lastAccrued;
    uint128 feesEarnedFraction;
}

struct Rebase2 {
    IBEP20 token;
    uint128 elastic;
    uint128 base;
}

struct KashiPairPoll {
    address pairAddress;
    Rebase2 collateral;
    uint256 collateralPrice;
    uint8 collateralDecimals;
    string collateralSymbol;
    Rebase2 asset;
    uint256 assetPrice;
    uint8 assetDecimals;
    string assetSymbol;
    IOracle oracle;
    bytes oracleData;
    uint256 totalCollateralShare;
    uint256 userCollateralShare;
    Rebase totalAsset;
    uint256 userAssetFraction;
    Rebase totalBorrow;
    uint256 userBorrowPart;
    uint256 currentExchangeRate;
    uint256 spotExchangeRate;
    uint256 oracleExchangeRate;
    AccrueInfo accrueInfo;
    uint256 totalSupply;
    address bentoBox;
    address masterContract;
}


interface IBentoBox {
    function totals(IBEP20) external view returns (Rebase memory totals_);
}

interface IKashiPair {
    function DOMAIN_SEPARATOR() external view returns (bytes32);

    function accrueInfo() external view returns (AccrueInfo memory info);

    function allowance(address, address) external view returns (uint256);

    function approve(address spender, uint256 amount) external returns (bool);

    function asset() external view returns (IBEP20);

    function balanceOf(address) external view returns (uint256);

    function bentoBox() external view returns (IBentoBox);

    function borrow(address to, uint256 amount) external returns (uint256 part, uint256 share);

    function collateral() external view returns (IBEP20);

    function decimals() external view returns (uint8);

    function exchangeRate() external view returns (uint256);

    function feeTo() external view returns (address);

    function getInitData(
        IBEP20 collateral_,
        IBEP20 asset_,
        address oracle_,
        bytes calldata oracleData_
    ) external pure returns (bytes memory data);

    function masterContract() external view returns (address);

    function name() external view returns (string memory);

    function nonces(address) external view returns (uint256);

    function oracle() external view returns (IOracle);

    function oracleData() external view returns (bytes memory);

    function owner() external view returns (address);

    function pendingOwner() external view returns (address);

    function symbol() external view returns (string memory);

    function totalAsset() external view returns (Rebase memory total);

    function totalBorrow() external view returns (Rebase memory total);

    function totalCollateralShare() external view returns (uint256);

    function totalSupply() external view returns (uint256);

    function userBorrowPart(address) external view returns (uint256);

    function userCollateralShare(address) external view returns (uint256);

    function withdrawFees() external;
}
