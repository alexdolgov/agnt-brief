// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.29;

import { L1Read } from "../lib/L1Read.sol";
import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { OracleAggregator } from "../OracleAggregator.sol";
import { Pricer } from "./Pricer.sol";
import { DnCoreWriterVault } from "./DnCoreWriterVault.sol";
import { WithdrawalQueue } from "./WithdrawalQueue.sol";
import { FixedPointMathLib } from "solady/utils/FixedPointMathLib.sol";
import { SafeCastLib } from "solady/utils/SafeCastLib.sol";
import { Auth, Authority } from "solmate/auth/Auth.sol";

contract ExchangeRateUpdater is Auth {
    using FixedPointMathLib for uint256;
    using SafeCastLib for uint256;
    using SafeCastLib for int256;

    struct SpotPositionConfig {
        uint64 tokenId;
        uint32 spotPxId;
        uint8 spotBalanceDecimals;
        uint8 spotPxDecimals;
        bool isUSDC;
    }

    struct AssetConfig {
        address token;
        bool isUSDC;
    }

    struct FeesResult {
        uint256 managementFeeInExchangeRate;
        uint256 managementFeeInBaseAsset;
        uint256 performanceFeeInExchangeRate;
        uint256 performanceFeeInBaseAsset;
    }

    struct InitializationParams {
        address dnCoreWriterAddress;
        address baseAsset;
        address usdcToBaseAssetAggregator;
        SpotPositionConfig[] spotPositionConfigs;
        AssetConfig[] assetConfigs;
        address vaultToken;
        address pricer;
        address withdrawalQueue;
        address depositReceiver;
    }

    L1Read public constant l1Read = L1Read(0xb7467E0524Afba7006957701d1F06A59000d15A2);
    uint256 public constant DENOMINATOR = 1e4;
    address[] public dnCoreWriters;
    address public baseAsset;
    SpotPositionConfig[] public spotPositionConfigs;
    AssetConfig[] public assetConfigs;
    IERC20Metadata public vaultToken;
    mapping(address => OracleAggregator) public oracleAggregators;
    OracleAggregator public usdcToBaseAssetAggregator;

    address public withdrawalQueue;
    address public pricer;
    address public depositReceiver;

    error ExchangeRateUpdater__AccountMarginSummaryIsNegative();
    error ExchangeRateUpdater__SpotPositionConfigAlreadyExists(uint256 tokenId);
    error ExchangeRateUpdater__AssetConfigAlreadyExists(address token);
    error ExchangeRateUpdater__OracleAggregatorNotSet(address token);
    error ExchangeRateUpdater__ZeroAddress();
    error ExchangeRateUpdater__DnCoreWriterAddressAlreadyExists(address dnCoreWriterAddress);

    event ExchangeRateUpdated(uint256 newExchangeRate);
    event PricerSet(address pricer);
    event DepositReceiverSet(address depositReceiver);
    event OracleAggregatorSet(address token, address oracleAggregator);
    event UsdcToBaseAssetAggregatorSet(address usdcToBaseAssetAggregator);
    event VaultTokenSet(address vaultToken);
    event BaseAssetSet(address baseAsset);
    event DnCoreWriterAddressAdded(address dnCoreWriterAddress);
    event DnCoreWriterAddressRemoved(address dnCoreWriterAddress);
    event SpotPositionConfigAdded(uint64 tokenId);
    event SpotPositionConfigRemoved(uint64 tokenId);
    event AssetConfigAdded(address token);
    event AssetConfigRemoved(address token);

    constructor(address _owner, InitializationParams memory _params) Auth(_owner, Authority(address(0))) {
        _checkInitializationAddresses(
            _params.dnCoreWriterAddress,
            _params.baseAsset,
            _params.usdcToBaseAssetAggregator,
            _params.pricer,
            _params.vaultToken,
            _params.depositReceiver
        );

        dnCoreWriters.push(_params.dnCoreWriterAddress);
        baseAsset = _params.baseAsset;
        depositReceiver = _params.depositReceiver;
        usdcToBaseAssetAggregator = OracleAggregator(_params.usdcToBaseAssetAggregator);
        for (uint256 i = 0; i < _params.spotPositionConfigs.length; i++) {
            spotPositionConfigs.push(_params.spotPositionConfigs[i]);
        }
        for (uint256 i = 0; i < _params.assetConfigs.length; i++) {
            assetConfigs.push(_params.assetConfigs[i]);
        }
        vaultToken = IERC20Metadata(_params.vaultToken);
        pricer = _params.pricer;

        withdrawalQueue = DnCoreWriterVault(payable(_params.dnCoreWriterAddress)).withdrawalQueue();
        if (withdrawalQueue == address(0)) {
            revert ExchangeRateUpdater__ZeroAddress();
        }
    }

    /**
     * @notice Reads the account margin summary in USDC from hypercore
     * @return total The total account margin summary in USDC
     */
    function readAccountMarginSummaryUSDC() public view returns (int256) {
        uint256 dnCoreWriterLength = dnCoreWriters.length;
        int256 total = 0;
        for (uint256 i = 0; i < dnCoreWriterLength; i++) {
            L1Read.AccountMarginSummary memory summary = l1Read.accountMarginSummary(0, dnCoreWriters[i]);
            total += int256(summary.accountValue);
        }
        return total;
    }

    /**
     * @notice Reads the spot position values in USDC from hypercore
     * @return total The total spot position values in USDC
     */
    function readSpotPositionValuesUSDC() public view returns (uint256) {
        uint256 total = 0;
        uint256 dnCoreWriterLength = dnCoreWriters.length;
        for (uint256 i = 0; i < spotPositionConfigs.length; i++) {
            for (uint256 j = 0; j < dnCoreWriterLength; j++) {
                L1Read.SpotBalance memory balance = l1Read.spotBalance(dnCoreWriters[j], spotPositionConfigs[i].tokenId);

                if (spotPositionConfigs[i].isUSDC) {
                    total += uint256(balance.total) / 1e2;
                } else {
                    uint64 spotPx = l1Read.spotPx(spotPositionConfigs[i].spotPxId);
                    uint256 value = uint256(balance.total) * uint256(spotPx);

                    total += _convertDecimals(
                        value, spotPositionConfigs[i].spotPxDecimals + spotPositionConfigs[i].spotBalanceDecimals, 6
                    );
                }
            }
        }
        return (total);
    }

    /**
     * @notice Gets the idle token balances
     * @return tokens The addresses of the tokens
     * @return balances The balances of the tokens
     */
    function getIdleTokenBalances() public view returns (address[] memory, uint256[] memory) {
        address[] memory tokens = new address[](assetConfigs.length);
        uint256[] memory balances = new uint256[](assetConfigs.length);
        uint256 dnCoreWriterLength = dnCoreWriters.length;
        for (uint256 i = 0; i < assetConfigs.length; i++) {
            tokens[i] = assetConfigs[i].token;
            for (uint256 j = 0; j < dnCoreWriterLength; j++) {
                balances[i] += IERC20Metadata(assetConfigs[i].token).balanceOf(dnCoreWriters[j]);
            }
            balances[i] += IERC20Metadata(assetConfigs[i].token).balanceOf(withdrawalQueue);
            balances[i] += IERC20Metadata(assetConfigs[i].token).balanceOf(depositReceiver);
        }
        return (tokens, balances);
    }

    /**
     * @notice Updates the exchange rate
     * @dev Only callable by addresses with KEEPER_ROLE
     */
    function updateExchangeRate() external requiresAuth {
        (uint256 totalAssets, uint8 baseAssetDecimals) = _calculateTotalAssets();
        (,, uint128 feesAccumulatedInBaseAsset,,,,,,,,) = Pricer(pricer).pricerParams();
        totalAssets -= feesAccumulatedInBaseAsset;

        uint256 newNav = _convertDecimals(
            totalAssets.mulDiv(10 ** IERC20Metadata(vaultToken).decimals(), IERC20Metadata(vaultToken).totalSupply()),
            baseAssetDecimals,
            Pricer(pricer).decimals()
        );

        Pricer(pricer).updateExchangeRate(newNav.toUint96());
        emit ExchangeRateUpdated(newNav);
    }

    function updateExchangeRateView() external view returns (uint256) {
        (uint256 totalAssets, uint8 baseAssetDecimals) = _calculateTotalAssets();
        (,, uint128 feesAccumulatedInBaseAsset,,,,,,,,) = Pricer(pricer).pricerParams();
        totalAssets -= feesAccumulatedInBaseAsset;

        uint256 newNav = _convertDecimals(
            totalAssets.mulDiv(10 ** IERC20Metadata(vaultToken).decimals(), IERC20Metadata(vaultToken).totalSupply()),
            baseAssetDecimals,
            Pricer(pricer).decimals()
        );
        return newNav;
    }

    /**
     * @notice Sets the Pricer
     * @dev Only callable by addresses with ADMIN_ROLE
     * @param _pricer The address of the Pricer
     */
    function setPricer(address _pricer) external requiresAuth {
        pricer = _pricer;
        emit PricerSet(_pricer);
    }

    /**
     * @notice Sets the Deposit Receiver
     * @dev Only callable by addresses with ADMIN_ROLE
     * @param _depositReceiver The address of the Deposit Receiver
     */
    function setDepositReceiver(address _depositReceiver) external requiresAuth {
        depositReceiver = _depositReceiver;
        emit DepositReceiverSet(_depositReceiver);
    }

    /**
     * @notice Sets the Oracle Aggregator
     * @dev Only callable by addresses with ADMIN_ROLE
     * @param _token The address of the token
     * @param _oracleAggregator The address of the Oracle Aggregator
     */
    function setOracleAggregator(address _token, address _oracleAggregator) external requiresAuth {
        oracleAggregators[_token] = OracleAggregator(_oracleAggregator);
        emit OracleAggregatorSet(_token, _oracleAggregator);
    }

    /**
     * @notice Sets the USDC to Base Asset Aggregator
     * @dev Only callable by addresses with ADMIN_ROLE
     * @param _usdcToBaseAssetAggregator The address of the USDC to Base Asset Aggregator
     */
    function setUsdcToBaseAssetAggregator(address _usdcToBaseAssetAggregator) external requiresAuth {
        usdcToBaseAssetAggregator = OracleAggregator(_usdcToBaseAssetAggregator);
        emit UsdcToBaseAssetAggregatorSet(_usdcToBaseAssetAggregator);
    }

    /**
     * @notice Sets the Base Asset
     * @dev Only callable by addresses with ADMIN_ROLE
     * @param _baseAsset The address of the Base Asset
     */
    function setBaseAsset(address _baseAsset) external requiresAuth {
        baseAsset = _baseAsset;
        emit BaseAssetSet(_baseAsset);
    }

    /**
     * @notice Adds the DnCoreWriter Address
     * @dev Only callable by addresses with ADMIN_ROLE
     * @param _dnCoreWriterAddress The address of the DnCoreWriter Address
     */
    function addDnCoreWriterAddress(address _dnCoreWriterAddress) external requiresAuth {
        for (uint256 i = 0; i < dnCoreWriters.length; i++) {
            if (dnCoreWriters[i] == _dnCoreWriterAddress) {
                revert ExchangeRateUpdater__DnCoreWriterAddressAlreadyExists(_dnCoreWriterAddress);
            }
        }
        dnCoreWriters.push(_dnCoreWriterAddress);
        emit DnCoreWriterAddressAdded(_dnCoreWriterAddress);
    }

    /**
     * @notice Removes the DnCoreWriter Address
     * @dev Only callable by addresses with ADMIN_ROLE
     * @param _dnCoreWriterAddress The address of the DnCoreWriter Address
     */
    function removeDnCoreWriterAddress(address _dnCoreWriterAddress) external requiresAuth {
        for (uint256 i = 0; i < dnCoreWriters.length; i++) {
            if (dnCoreWriters[i] == _dnCoreWriterAddress) {
                dnCoreWriters[i] = dnCoreWriters[dnCoreWriters.length - 1];
                dnCoreWriters.pop();
                return;
            }
        }
        emit DnCoreWriterAddressRemoved(_dnCoreWriterAddress);
    }

    /**
     * @notice Adds the Spot Position Config
     * @dev Only callable by addresses with ADMIN_ROLE
     * @param _spotPositionConfig The address of the Spot Position Config
     */
    function addSpotPositionConfig(SpotPositionConfig memory _spotPositionConfig) external requiresAuth {
        for (uint256 i = 0; i < spotPositionConfigs.length; i++) {
            if (spotPositionConfigs[i].tokenId == _spotPositionConfig.tokenId) {
                revert ExchangeRateUpdater__SpotPositionConfigAlreadyExists(_spotPositionConfig.tokenId);
            }
        }
        spotPositionConfigs.push(_spotPositionConfig);
        emit SpotPositionConfigAdded(_spotPositionConfig.tokenId);
    }

    /**
     * @notice Removes the Spot Position Config
     * @dev Only callable by addresses with ADMIN_ROLE
     * @param _tokenId The ID of the token
     */
    function removeSpotPositionConfig(uint64 _tokenId) external requiresAuth {
        for (uint256 i = 0; i < spotPositionConfigs.length; i++) {
            if (spotPositionConfigs[i].tokenId == _tokenId) {
                spotPositionConfigs[i] = spotPositionConfigs[spotPositionConfigs.length - 1];
                spotPositionConfigs.pop();
                return;
            }
        }
        emit SpotPositionConfigRemoved(_tokenId);
    }

    /**
     * @notice Adds the Asset Config
     * @dev Only callable by addresses with ADMIN_ROLE
     * @param _assetConfig The address of the Asset Config
     */
    function addAssetConfig(AssetConfig memory _assetConfig) external requiresAuth {
        for (uint256 i = 0; i < assetConfigs.length; i++) {
            if (assetConfigs[i].token == _assetConfig.token) {
                revert ExchangeRateUpdater__AssetConfigAlreadyExists(_assetConfig.token);
            }
        }
        assetConfigs.push(_assetConfig);
        emit AssetConfigAdded(_assetConfig.token);
    }

    /**
     * @notice Removes the Asset Config
     * @dev Only callable by addresses with ADMIN_ROLE
     * @param _token The address of the token
     */
    function removeAssetConfig(address _token) external requiresAuth {
        for (uint256 i = 0; i < assetConfigs.length; i++) {
            if (assetConfigs[i].token == _token) {
                assetConfigs[i] = assetConfigs[assetConfigs.length - 1];
                assetConfigs.pop();
                return;
            }
        }
        emit AssetConfigRemoved(_token);
    }

    /**
     * @notice Calculates the total assets
     * @return totalAssets The total assets in the base asset
     * @return baseAssetDecimals The decimals of the base asset
     */
    function _calculateTotalAssets() internal view returns (uint256 totalAssets, uint8 baseAssetDecimals) {
        (address[] memory tokens, uint256[] memory balances) = getIdleTokenBalances();

        int256 accountMarginSummary = readAccountMarginSummaryUSDC();
        if (accountMarginSummary < 0) {
            revert ExchangeRateUpdater__AccountMarginSummaryIsNegative();
        }
        uint256 spotPositionValues = readSpotPositionValuesUSDC();

        baseAssetDecimals = IERC20Metadata(baseAsset).decimals();
        uint8 usdcToBaseAssetAggregatorDecimals = usdcToBaseAssetAggregator.decimals();
        for (uint256 i = 0; i < tokens.length; i++) {
            if (tokens[i] == baseAsset) {
                totalAssets += balances[i];
                continue;
            }
            OracleAggregator oracleAggregator = oracleAggregators[tokens[i]];
            if (address(oracleAggregator) == address(0)) {
                revert ExchangeRateUpdater__OracleAggregatorNotSet(tokens[i]);
            }
            uint256 assetValInAssetDecimals = oracleAggregator.getPrice() * balances[i];
            totalAssets += _convertDecimals(
                assetValInAssetDecimals,
                IERC20Metadata(tokens[i]).decimals() + oracleAggregator.decimals(),
                baseAssetDecimals
            );
        }

        totalAssets += _convertDecimals(
            spotPositionValues * usdcToBaseAssetAggregator.getPrice(),
            6 + usdcToBaseAssetAggregatorDecimals,
            baseAssetDecimals
        );
        totalAssets += _convertDecimals(
            accountMarginSummary.toUint256() * usdcToBaseAssetAggregator.getPrice(),
            6 + usdcToBaseAssetAggregatorDecimals,
            baseAssetDecimals
        );
    }

    function _checkInitializationAddresses(
        address _dnCoreWriterAddress,
        address _baseAsset,
        address _usdcToBaseAssetAggregator,
        address _pricer,
        address _vaultToken,
        address _depositReceiver
    )
        internal
        pure
    {
        if (
            _dnCoreWriterAddress == address(0) || _baseAsset == address(0) || _usdcToBaseAssetAggregator == address(0)
                || _pricer == address(0) || _vaultToken == address(0) || _depositReceiver == address(0)
        ) {
            revert ExchangeRateUpdater__ZeroAddress();
        }
    }

    function _convertDecimals(uint256 value, uint8 fromDecimals, uint8 toDecimals) internal pure returns (uint256) {
        if (fromDecimals == toDecimals) {
            return value;
        }
        if (fromDecimals > toDecimals) {
            return (value / 10 ** (fromDecimals - toDecimals));
        } else {
            return (value * 10 ** (toDecimals - fromDecimals));
        }
    }
}
