// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "../integration/compound/ICompoundErc20.sol";
import "../interfaces/IIporAlgorithm.sol";
import "../security/IporOwnableUpgradeable.sol";
import "../integration/aave/IAaveProtocolDataProvider.sol";
import "../integration/aave/IAaveProtocolDataProviderV3.sol";
import "../integration/compound/ICompoundV3.sol";
import "../integration/aave/IAaveErc20.sol";
import "../libraries/math/IporMath.sol";
import "./IporTypes.sol";

interface IAaveV3PoolAddressesProvider {
    function getPoolDataProvider() external view returns (address);
}

/// @title IporWeighted calculation algorithm.
contract IporWeighted is IporOwnableUpgradeable, UUPSUpgradeable, IIporAlgorithm {
    uint256 internal constant _D9 = 1e9;
    uint256 internal constant _D18 = 1e18;

    uint256 internal constant _AVEE_CONNECTOR = 1;
    uint256 internal constant _COMPOUND_CONNECTOR = 2;

    address internal constant _DAI = 0x6B175474E89094C44Da98b954EedeAC495271d0F;
    address internal constant _USDC = 0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48;
    address internal constant _USDT = 0xdAC17F958D2ee523a2206206994597C13D831ec7;
    address internal constant _WETH = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;

    address internal constant _cDAI_V2 = 0x5d3a536E4D6DbD6114cc1Ead35777bAB948E3643;
    uint256 internal immutable _cDAI_V2_START_DATE;
    uint256 internal immutable _cDAI_V2_END_DATE;
    uint256 internal immutable _cDAI_V2_FADE_CHANGE;
    address internal constant _cUSDC_V2 = 0x39AA39c021dfbaE8faC545936693aC917d5E7563;
    uint256 internal immutable _cUSDC_V2_START_DATE;
    uint256 internal immutable _cUSDC_V2_END_DATE;
    uint256 internal immutable _cUSDC_V2_FADE_CHANGE;
    address internal constant _cUSDT_V2 = 0xf650C3d88D12dB855b8bf7D11Be6C55A4e07dCC9;
    uint256 internal immutable _cUSDT_V2_START_DATE;
    uint256 internal immutable _cUSDT_V2_END_DATE;
    uint256 internal immutable _cUSDT_V2_FADE_CHANGE;
    address internal constant _cWETH_V2 = 0x4Ddc2D193948926D02f9B1fE9e1daa0718270ED5;
    uint256 internal immutable _cWETH_V2_START_DATE;
    uint256 internal immutable _cWETH_V2_END_DATE;
    uint256 internal immutable _cWETH_V2_FADE_CHANGE;
    address internal constant _cUSDC_V3 = 0xc3d688B66703497DAA19211EEdff47f25384cdc3;
    uint256 internal immutable _cUSDC_V3_START_DATE;
    uint256 internal immutable _cUSDC_V3_END_DATE;
    uint256 internal immutable _cUSDC_V3_FADE_CHANGE;
    address internal constant _cWETH_V3 = 0xA17581A9E3356d9A858b789D68B4d866e593aE94;
    uint256 internal immutable _cWETH_V3_START_DATE;
    uint256 internal immutable _cWETH_V3_END_DATE;
    uint256 internal immutable _cWETH_V3_FADE_CHANGE;

    uint256 internal constant _COMPOUND_BLOCKS_PER_YEAR = 5 * 60 * 24 * 365;

    address internal constant _AAVE_PROTOCOL_DATA_PROVIDER_V2 =
        0x057835Ad21a177dbdd3090bB1CAE03EaCF78Fc6d;
    address internal constant _aDAI_V2 = 0x028171bCA77440897B824Ca71D1c56caC55b68A3;
    uint256 internal immutable _aDAI_V2_START_DATE;
    uint256 internal immutable _aDAI_V2_END_DATE;
    uint256 internal immutable _aDAI_V2_FADE_CHANGE;
    address internal constant _aUSDC_V2 = 0xBcca60bB61934080951369a648Fb03DF4F96263C;
    uint256 internal immutable _aUSDC_V2_START_DATE;
    uint256 internal immutable _aUSDC_V2_END_DATE;
    uint256 internal immutable _aUSDC_V2_FADE_CHANGE;
    address internal constant _aUSDT_V2 = 0x3Ed3B47Dd13EC9a98b44e6204A523E766B225811;
    uint256 internal immutable _aUSDT_V2_START_DATE;
    uint256 internal immutable _aUSDT_V2_END_DATE;
    uint256 internal immutable _aUSDT_V2_FADE_CHANGE;
    address internal constant _aWETH_V2 = 0x030bA81f1c18d280636F32af80b9AAd02Cf0854e;
    uint256 internal immutable _aWETH_V2_START_DATE;
    uint256 internal immutable _aWETH_V2_END_DATE;
    uint256 internal immutable _aWETH_V2_FADE_CHANGE;

    address internal constant _AAVE_V3_POOL_ADDRESSES_PROVIDER = 0x2f39d218133AFaB8F2B819B1066c7E434Ad94E9e;

    address internal constant _aDAI_V3 = 0x018008bfb33d285247A21d44E50697654f754e63;
    uint256 internal immutable _aDAI_V3_START_DATE;
    uint256 internal immutable _aDAI_V3_END_DATE;
    uint256 internal immutable _aDAI_V3_FADE_CHANGE;
    address internal constant _aUSDC_V3 = 0x98C23E9d8f34FEFb1B7BD6a91B7FF122F4e16F5c;
    uint256 internal immutable _aUSDC_V3_START_DATE;
    uint256 internal immutable _aUSDC_V3_END_DATE;
    uint256 internal immutable _aUSDC_V3_FADE_CHANGE;
    address internal constant _aUSDT_V3 = 0x23878914EFE38d27C4D67Ab83ed1b93A74D4086a;
    uint256 internal immutable _aUSDT_V3_START_DATE;
    uint256 internal immutable _aUSDT_V3_END_DATE;
    uint256 internal immutable _aUSDT_V3_FADE_CHANGE;
    address internal constant _aWETH_V3 = 0x4d5F47FA6A74757f35C14fD3a6Ef8E3C9BC514E8;
    uint256 internal immutable _aWETH_V3_START_DATE;
    uint256 internal immutable _aWETH_V3_END_DATE;
    uint256 internal immutable _aWETH_V3_FADE_CHANGE;

    constructor(InitData memory initData) {
        _cDAI_V2_START_DATE = initData.daiCompoundV2Input.startDate;
        _cDAI_V2_END_DATE = initData.daiCompoundV2Input.endDate;
        _cDAI_V2_FADE_CHANGE = initData.daiCompoundV2Input.fadeChange;
        _cUSDC_V2_START_DATE = initData.usdcCompoundV2Input.startDate;
        _cUSDC_V2_END_DATE = initData.usdcCompoundV2Input.endDate;
        _cUSDC_V2_FADE_CHANGE = initData.usdcCompoundV2Input.fadeChange;
        _cUSDT_V2_START_DATE = initData.usdtCompoundV2Input.startDate;
        _cUSDT_V2_END_DATE = initData.usdtCompoundV2Input.endDate;
        _cUSDT_V2_FADE_CHANGE = initData.usdtCompoundV2Input.fadeChange;
        _cWETH_V2_START_DATE = initData.wethCompoundV2Input.startDate;
        _cWETH_V2_END_DATE = initData.wethCompoundV2Input.endDate;
        _cWETH_V2_FADE_CHANGE = initData.wethCompoundV2Input.fadeChange;
        _cUSDC_V3_START_DATE = initData.usdcCompoundV3Input.startDate;
        _cUSDC_V3_END_DATE = initData.usdcCompoundV3Input.endDate;
        _cUSDC_V3_FADE_CHANGE = initData.usdcCompoundV3Input.fadeChange;
        _cWETH_V3_START_DATE = initData.wethCompoundV3Input.startDate;
        _cWETH_V3_END_DATE = initData.wethCompoundV3Input.endDate;
        _cWETH_V3_FADE_CHANGE = initData.wethCompoundV3Input.fadeChange;
        _aDAI_V2_START_DATE = initData.daiAaveV2Input.startDate;
        _aDAI_V2_END_DATE = initData.daiAaveV2Input.endDate;
        _aDAI_V2_FADE_CHANGE = initData.daiAaveV2Input.fadeChange;
        _aUSDC_V2_START_DATE = initData.usdcAaveV2Input.startDate;
        _aUSDC_V2_END_DATE = initData.usdcAaveV2Input.endDate;
        _aUSDC_V2_FADE_CHANGE = initData.usdcAaveV2Input.fadeChange;
        _aUSDT_V2_START_DATE = initData.usdtAaveV2Input.startDate;
        _aUSDT_V2_END_DATE = initData.usdtAaveV2Input.endDate;
        _aUSDT_V2_FADE_CHANGE = initData.usdtAaveV2Input.fadeChange;
        _aWETH_V2_START_DATE = initData.wethAaveV2Input.startDate;
        _aWETH_V2_END_DATE = initData.wethAaveV2Input.endDate;
        _aWETH_V2_FADE_CHANGE = initData.wethAaveV2Input.fadeChange;
        _aDAI_V3_START_DATE = initData.daiAaveV3Input.startDate;
        _aDAI_V3_END_DATE = initData.daiAaveV3Input.endDate;
        _aDAI_V3_FADE_CHANGE = initData.daiAaveV3Input.fadeChange;
        _aUSDC_V3_START_DATE = initData.usdcAaveV3Input.startDate;
        _aUSDC_V3_END_DATE = initData.usdcAaveV3Input.endDate;
        _aUSDC_V3_FADE_CHANGE = initData.usdcAaveV3Input.fadeChange;
        _aUSDT_V3_START_DATE = initData.usdtAaveV3Input.startDate;
        _aUSDT_V3_END_DATE = initData.usdtAaveV3Input.endDate;
        _aUSDT_V3_FADE_CHANGE = initData.usdtAaveV3Input.fadeChange;
        _aWETH_V3_START_DATE = initData.wethAaveV3Input.startDate;
        _aWETH_V3_END_DATE = initData.wethAaveV3Input.endDate;
        _aWETH_V3_FADE_CHANGE = initData.wethAaveV3Input.fadeChange;
        _disableInitializers();
    }

    function initialize() public initializer {
        __Ownable_init();
    }

    function getVersion() external pure virtual override returns (uint256) {
        return 5;
    }

    /// @notice Calculates IPOR index by given asset address
    /// @param asset Asset address
    /// @return iporIndex IPOR index value represented in 18 decimals
    function calculateIpor(address asset) external view returns (uint256 iporIndex) {
        require(asset != address(0), IporErrors.EMPTY_ADDRESS);
        require(_isAssetSupported(asset), IporErrors.NOT_SUPPORTED_ASSET);

        ConnectorData[] memory connectors = _getConnectorList(asset);

        uint256 iporSuppliesNominator;
        uint256 iporSuppliesDenominator;

        uint256 iporBorrowsNominator;
        uint256 iporBorrowsDenominator;

        uint256 length = connectors.length;
        for (uint256 i; i < length; ++i) {
            (
                uint256 suppliesNominatorTemp,
                uint256 suppliesDenominatorTemp,
                uint256 borrowsNominatorTemp,
                uint256 borrowsDenominatorTemp
            ) = _calculateParams(connectors[i]);
            iporSuppliesNominator += suppliesNominatorTemp;
            iporSuppliesDenominator += suppliesDenominatorTemp;
            iporBorrowsNominator += borrowsNominatorTemp;
            iporBorrowsDenominator += borrowsDenominatorTemp;
        }

        uint256 iporSupplies = IporMath.division(iporSuppliesNominator, iporSuppliesDenominator);
        uint256 iporBorrows = IporMath.division(iporBorrowsNominator, iporBorrowsDenominator);

        return IporMath.division(iporSupplies + iporBorrows, 2);
    }

    function _calculateParams(
        ConnectorData memory connector
    )
        private
        view
        returns (
            uint256 suppliesNominator,
            uint256 suppliesDenominator,
            uint256 borrowsNominator,
            uint256 borrowsDenominator
        )
    {
        if (connector.endDate != 0 && block.timestamp > connector.endDate + connector.fadeChange) {
            return (0, 0, 0, 0);
        }
        IporTypes.IporInput memory input;
        if (connector.connector == _AVEE_CONNECTOR) {
            input = _getAaveInput(connector);
        } else if (connector.connector == _COMPOUND_CONNECTOR) {
            input = _getCompoundInput(connector);
        }
        uint256 weight = _calculateWeight(connector);

        suppliesNominator = IporMath.division(
            input.supplyRate * input.totalSupplies * weight,
            1e18
        );
        suppliesDenominator = IporMath.division(input.totalSupplies * weight, 1e18);
        borrowsNominator = IporMath.division(input.borrowRate * input.totalBorrows * weight, 1e18);
        borrowsDenominator = IporMath.division(input.totalBorrows * weight, 1e18);
    }

    function _calculateWeight(ConnectorData memory connector) internal view returns (uint256) {
        uint256 time = block.timestamp;

        if (time > connector.endDate + connector.fadeChange && connector.endDate != 0) {
            return 0;
        } else if (time > connector.endDate && connector.endDate != 0) {
            return
                1e18 - IporMath.division((time - connector.endDate) * 1e18, connector.fadeChange);
        } else if (time > connector.startDate + connector.fadeChange) {
            return 1e18;
        } else if (time > connector.startDate) {
            return IporMath.division((time - connector.startDate) * 1e18, connector.fadeChange);
        }
        return 0;
    }

    /// @notice Checks if given asset is supported.
    /// @param asset Asset address
    /// @return true if asset is supported
    function _isAssetSupported(address asset) internal pure returns (bool) {
        return asset == _DAI || asset == _USDC || asset == _USDT || asset == _WETH;
    }

    /// @notice Creates IPOR calculation input data from AAVE protocol by given asset address
    /// @param connector to external protocol
    /// @return Aave protocol IPOR calculation input data
    function _getAaveInput(
        ConnectorData memory connector
    ) internal view returns (IporTypes.IporInput memory) {
        IAaveErc20 aaveErc20Contract = IAaveErc20(connector.protocolToken);

        uint256 totalStableDebt;
        uint256 totalVariableDebt;
        uint256 liquidityRate;
        uint256 variableBorrowRate;

        if (connector.version == 2) {
            (
                ,
                totalStableDebt,
                totalVariableDebt,
                liquidityRate,
                variableBorrowRate,
                ,
                ,
                ,
                ,

            ) = IAaveProtocolDataProvider(connector.dataProvider).getReserveData(connector.asset);
        } else if (connector.version == 3) {
            (
                ,
                ,
                ,
                totalStableDebt,
                totalVariableDebt,
                liquidityRate,
                variableBorrowRate,
                ,
                ,
                ,
                ,

            ) = IAaveProtocolDataProviderV3(connector.dataProvider).getReserveData(connector.asset);
        }

        return
            IporTypes.IporInput(
                IporMath.division(liquidityRate, _D9),
                aaveErc20Contract.totalSupply(),
                IporMath.division(variableBorrowRate, _D9),
                totalStableDebt + totalVariableDebt
            );
    }

    /// @notice Creates IPOR calculation input data from Compound protocol by given asset address
    /// @param connector connector to external protocol
    /// @return Compound protocol IPOR calculation input data
    function _getCompoundInput(
        ConnectorData memory connector
    ) internal view returns (IporTypes.IporInput memory) {
        if (connector.version == 2) {
            ICompoundErc20 compoundContract = ICompoundErc20(connector.protocolToken);
            return
                IporTypes.IporInput(
                    _calculateCompoundApr(compoundContract.supplyRatePerBlock()),
                    IporMath.division(
                        compoundContract.totalSupply() * compoundContract.exchangeRateStored(),
                        _D18
                    ),
                    _calculateCompoundApr(compoundContract.borrowRatePerBlock()),
                    compoundContract.totalBorrows()
                );
        } else if (connector.version == 3) {
            return
                IporTypes.IporInput(
                    _getSupplyRateForCompoundV3(connector),
                    ICompoundV3(connector.protocolToken).totalSupply(),
                    _getBorrowRateForCompoundV3(connector),
                    ICompoundV3(connector.protocolToken).totalBorrow()
                );
        }
        revert GeneralError("Unsupported Compound version");
    }

    function _getConnectorList(address asset) private view returns (ConnectorData[] memory) {
        if (asset == _DAI) {
            ConnectorData[] memory connectors = new ConnectorData[](3);
            connectors[0] = ConnectorData({
                asset: _DAI,
                protocolToken: _aDAI_V2,
                dataProvider: _AAVE_PROTOCOL_DATA_PROVIDER_V2,
                connector: _AVEE_CONNECTOR,
                version: 2,
                startDate: _aDAI_V2_START_DATE,
                endDate: _aDAI_V2_END_DATE,
                fadeChange: _aDAI_V2_FADE_CHANGE
            });
            connectors[1] = ConnectorData({
                asset: _DAI,
                connector: _COMPOUND_CONNECTOR,
                protocolToken: _cDAI_V2,
                dataProvider: address(0),
                version: 2,
                startDate: _cDAI_V2_START_DATE,
                endDate: _cDAI_V2_END_DATE,
                fadeChange: _cDAI_V2_FADE_CHANGE
            });
            connectors[2] = ConnectorData({
                asset: _DAI,
                connector: _AVEE_CONNECTOR,
                protocolToken: _aDAI_V3,
                dataProvider: IAaveV3PoolAddressesProvider(_AAVE_V3_POOL_ADDRESSES_PROVIDER).getPoolDataProvider(),
                version: 3,
                startDate: _aDAI_V3_START_DATE,
                endDate: _aDAI_V3_END_DATE,
                fadeChange: _aDAI_V3_FADE_CHANGE
            });
            return connectors;
        } else if (asset == _USDC) {
            ConnectorData[] memory connectors = new ConnectorData[](4);
            connectors[0] = ConnectorData({
                asset: _USDC,
                connector: _AVEE_CONNECTOR,
                protocolToken: _aUSDC_V2,
                dataProvider: _AAVE_PROTOCOL_DATA_PROVIDER_V2,
                version: 2,
                startDate: _aUSDC_V2_START_DATE,
                endDate: _aUSDC_V2_END_DATE,
                fadeChange: _aUSDC_V2_FADE_CHANGE
            });
            connectors[1] = ConnectorData({
                asset: _USDC,
                connector: _COMPOUND_CONNECTOR,
                protocolToken: _cUSDC_V2,
                dataProvider: address(0),
                version: 2,
                startDate: _cUSDC_V2_START_DATE,
                endDate: _cUSDC_V2_END_DATE,
                fadeChange: _cUSDC_V2_FADE_CHANGE
            });
            connectors[2] = ConnectorData({
                asset: _USDC,
                connector: _COMPOUND_CONNECTOR,
                protocolToken: _cUSDC_V3,
                dataProvider: address(0),
                version: 3,
                startDate: _cUSDC_V3_START_DATE,
                endDate: _cUSDC_V3_END_DATE,
                fadeChange: _cUSDC_V3_FADE_CHANGE
            });
            connectors[3] = ConnectorData({
                asset: _USDC,
                connector: _AVEE_CONNECTOR,
                protocolToken: _aUSDC_V3,
                dataProvider: IAaveV3PoolAddressesProvider(_AAVE_V3_POOL_ADDRESSES_PROVIDER).getPoolDataProvider(),
                version: 3,
                startDate: _aUSDC_V3_START_DATE,
                endDate: _aUSDC_V3_END_DATE,
                fadeChange: _aUSDC_V3_FADE_CHANGE
            });
            return connectors;
        } else if (asset == _USDT) {
            ConnectorData[] memory connectors = new ConnectorData[](3);
            connectors[0] = ConnectorData({
                asset: _USDT,
                connector: _AVEE_CONNECTOR,
                protocolToken: _aUSDT_V2,
                dataProvider: _AAVE_PROTOCOL_DATA_PROVIDER_V2,
                version: 2,
                startDate: _aUSDT_V2_START_DATE,
                endDate: _aUSDT_V2_END_DATE,
                fadeChange: _aUSDT_V2_FADE_CHANGE
            });
            connectors[1] = ConnectorData({
                asset: _USDT,
                connector: _COMPOUND_CONNECTOR,
                protocolToken: _cUSDT_V2,
                dataProvider: address(0),
                version: 2,
                startDate: _cUSDT_V2_START_DATE,
                endDate: _cUSDT_V2_END_DATE,
                fadeChange: _cUSDT_V2_FADE_CHANGE
            });
            connectors[2] = ConnectorData({
                asset: _USDT,
                connector: _AVEE_CONNECTOR,
                protocolToken: _aUSDT_V3,
                dataProvider: IAaveV3PoolAddressesProvider(_AAVE_V3_POOL_ADDRESSES_PROVIDER).getPoolDataProvider(),
                version: 3,
                startDate: _aUSDT_V3_START_DATE,
                endDate: _aUSDT_V3_END_DATE,
                fadeChange: _aUSDT_V3_FADE_CHANGE
            });
            return connectors;
        } else if (asset == _WETH) {
            ConnectorData[] memory connectors = new ConnectorData[](3);
            connectors[0] = ConnectorData({
                asset: _WETH,
                connector: _AVEE_CONNECTOR,
                protocolToken: _aWETH_V2,
                dataProvider: _AAVE_PROTOCOL_DATA_PROVIDER_V2,
                version: 2,
                startDate: _aWETH_V2_START_DATE,
                endDate: _aWETH_V2_END_DATE,
                fadeChange: _aWETH_V2_FADE_CHANGE
            });
            connectors[1] = ConnectorData({
                asset: _WETH,
                connector: _COMPOUND_CONNECTOR,
                protocolToken: _cWETH_V2,
                dataProvider: address(0),
                version: 2,
                startDate: _cWETH_V2_START_DATE,
                endDate: _cWETH_V2_END_DATE,
                fadeChange: _cWETH_V2_FADE_CHANGE
            });
            connectors[2] = ConnectorData({
                asset: _WETH,
                connector: _AVEE_CONNECTOR,
                protocolToken: _aWETH_V3,
                dataProvider: IAaveV3PoolAddressesProvider(_AAVE_V3_POOL_ADDRESSES_PROVIDER).getPoolDataProvider(),
                version: 3,
                startDate: _aWETH_V3_START_DATE,
                endDate: _aWETH_V3_END_DATE,
                fadeChange: _aWETH_V3_FADE_CHANGE
            });
            return connectors;
        } else {
            revert GeneralError("Unsupported asset");
        }
    }

    function _getBorrowRateForCompoundV3(
        ConnectorData memory connector
    ) internal view returns (uint256 borrowRate) {
        ICompoundV3 comet = ICompoundV3(connector.protocolToken);

        uint256 borrowRatePerSecond = _getRatePerSecondForCompoundV3(
            comet.borrowPerSecondInterestRateBase(),
            comet.borrowPerSecondInterestRateSlopeLow(),
            comet.borrowPerSecondInterestRateSlopeHigh(),
            comet.borrowKink(),
            comet.getUtilization()
        );

        borrowRate = borrowRatePerSecond * 365 days;
    }

    function _getSupplyRateForCompoundV3(
        ConnectorData memory connector
    ) internal view returns (uint256 borrowRate) {
        ICompoundV3 comet = ICompoundV3(connector.protocolToken);

        uint256 supplyRatePerSecond = _getRatePerSecondForCompoundV3(
            comet.supplyPerSecondInterestRateBase(),
            comet.supplyPerSecondInterestRateSlopeLow(),
            comet.supplyPerSecondInterestRateSlopeHigh(),
            comet.supplyKink(),
            comet.getUtilization()
        );

        borrowRate = supplyRatePerSecond * 365 days;
    }

    function _getRatePerSecondForCompoundV3(
        uint256 interestRateBase,
        uint256 slopeLow,
        uint256 slopeHigh,
        uint256 kink,
        uint256 utilization
    ) private view returns (uint256 ratePerSecond) {
        if (utilization < kink) {
            ratePerSecond = interestRateBase + IporMath.division(slopeLow * utilization, 1e18);
        } else {
            ratePerSecond =
                interestRateBase +
                IporMath.division(slopeLow * utilization, 1e18) +
                IporMath.division(slopeHigh * (utilization - kink), 1e18);
        }
    }

    /// @notice Calculate APR from rate per block using formula: APR = Rate * Blocks Per Year
    /// @param rate Compound supplyRatePerBlock/borrowRatePerBlock
    /// @return Calculated APR
    function _calculateCompoundApr(uint256 rate) internal pure returns (uint256) {
        return rate * _COMPOUND_BLOCKS_PER_YEAR;
    }

    //solhint-disable no-empty-blocks
    function _authorizeUpgrade(address) internal view override onlyOwner {}
}
