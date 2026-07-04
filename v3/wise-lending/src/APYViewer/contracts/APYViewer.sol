// SPDX-License-Identifier: -- WISE --

pragma solidity =0.8.25;

interface IAaveHub {

    function getLendingRate(
        address _underlyingAsset
    )
        external
        view
        returns (uint256);
}

interface IWiseSecurity {

    function checkMinDepositValue(
        address _poolToken,
        uint256 _amount
    )
        external
        view
        returns (bool);

    function getUSDBorrow(
        uint256 _nftId,
        address _poolToken
    )
        external
        view
        returns (uint256);

    function getBorrowRate(
        address _poolToken
    )
        external
        view
        returns (uint256);

    function getUSDCollateral(
        uint256 _nftId,
        address _poolToken
    )
        external
        view
        returns (uint256);

    function getLendingRate(
        address _poolToken
    )
        external
        view
        returns (uint256);
}

interface IWiseLending {

    function getPositionBorrowTokenLength(
        uint256 _nftId
    )
        external
        view
        returns (uint256);

    function getPositionBorrowTokenByIndex(
        uint256 _nftId,
        uint256 _index
    )
        external
        view
        returns (address);

    function getPositionLendingTokenByIndex(
        uint256 _nftId,
        uint256 _index
    )
        external
        view
        returns (address);

    function getPositionLendingTokenLength(
        uint256 _nftId
    )
        external
        view
        returns (uint256);
}

interface IFeeManager {

    function isAaveToken(
        address _poolToken
    )
        external
        view
        returns (bool);

    function underlyingToken(
        address _poolToken
    )
        external
        view
        returns (address);
}

contract APYViewer {

    IAaveHub public AAVE_HUB;
    IWiseSecurity public WISE_SECURITY;
    IFeeManager public FEE_MANAGER;
    IWiseLending public WISE_LENDING;

    uint256 internal constant PRECISION_FACTOR_E18 = 1E18;
    address internal constant ZERO_ADDRESS = address(0x0);

    struct ApyData {
        uint256 netAPY;
        uint256 usdValue;
        uint256 usdValueDebt;
        uint256 usdValueGain;
        uint256 totalUsdSupply;
        uint256 totalUsdBorrow;
    }

    constructor(
        address _aaveHub,
        address _feeManager,
        address _wiseLending,
        address _wiseSecurity
    )
    {
        AAVE_HUB = IAaveHub(
            _aaveHub
        );

        WISE_SECURITY = IWiseSecurity(
            _wiseSecurity
        );

        WISE_LENDING = IWiseLending(
            _wiseLending
        );

        FEE_MANAGER = IFeeManager(
            _feeManager
        );
    }

    function overallNetAPYs(
        uint256 _nftId
    )
        external
        view
        returns (
            uint256,
            uint256,
            uint256,
            bool
        )
    {
        uint256 i;
        address token;

        ApyData memory data;

        uint256 lenBorrow = WISE_LENDING.getPositionBorrowTokenLength(
            _nftId
        );

        uint256 lenDeposit = WISE_LENDING.getPositionLendingTokenLength(
            _nftId
        );

        for (i; i < lenBorrow;) {

            token = WISE_LENDING.getPositionBorrowTokenByIndex(
                _nftId,
                i
            );

            data.usdValue = WISE_SECURITY.getUSDBorrow(
                _nftId,
                token
            );

            data.totalUsdBorrow += data.usdValue;

            data.usdValueDebt += WISE_SECURITY.getBorrowRate(
                token
            ) * data.usdValue;

            unchecked {
                ++i;
            }
        }

        for (i = 0; i < lenDeposit;) {

            token = WISE_LENDING.getPositionLendingTokenByIndex(
                _nftId,
                i
            );

            data.usdValue = WISE_SECURITY.getUSDCollateral(
                _nftId,
                token
            );

            address aaveToken = FEE_MANAGER.underlyingToken(
                token
            );

            uint256 lendingRate = aaveToken == ZERO_ADDRESS
                ? WISE_SECURITY.getLendingRate(token)
                : AAVE_HUB.getLendingRate(aaveToken);

            data.totalUsdSupply += data.usdValue;

            data.usdValueGain += data.usdValue
                * lendingRate;

            unchecked {
                ++i;
            }
        }

        uint256 netBorrowAPY = data.totalUsdBorrow != 0
            ? data.usdValueDebt / data.totalUsdBorrow
            : 0;

        uint256 netSupplyAPY = data.totalUsdSupply != 0
            ? data.usdValueGain / data.totalUsdSupply
            : 0;

        if (data.usdValueDebt > data.usdValueGain) {

            data.netAPY = (data.usdValueDebt - data.usdValueGain)
                / data.totalUsdSupply;

            return (
                netBorrowAPY,
                netSupplyAPY,
                data.netAPY,
                true
            );
        }

        data.netAPY = (data.usdValueGain - data.usdValueDebt)
            / data.totalUsdSupply;

        return (
            netBorrowAPY,
            netSupplyAPY,
            data.netAPY,
            false
        );
    }

    function getBorrowRate(
        address _poolToken
    )
        external
        view
        returns (uint256)
    {
        return WISE_SECURITY.getBorrowRate(
            _poolToken
        );
    }

    function getLendingRate(
        address _poolToken
    )
        external
        view
        returns (uint256)
    {
        return WISE_SECURITY.getLendingRate(
            _poolToken
        );
    }

    function getLendingRateAave(
        address _underlyingAsset
    )
        external
        view
        returns (uint256)
    {
        return AAVE_HUB.getLendingRate(
            _underlyingAsset
        );
    }
}