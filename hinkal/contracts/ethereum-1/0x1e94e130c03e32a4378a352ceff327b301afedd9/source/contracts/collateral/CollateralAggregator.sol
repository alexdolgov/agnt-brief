// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/structs/EnumerableSetUpgradeable.sol";
import "../interfaces/ICollateralVault.sol";
import "../interfaces/IOracleAggregator.sol";
import "../interfaces/ICollateralAggregator.sol";

/// @title JPEG'd Collateral Aggregator
/// @notice This contract aggregates all the collateral for each position in the protocol. Also it serves as a registry of all Collateral Vaults in the protocol
/// @dev Roles (at launch)
/// DEFAULT_ADMIN_ROLE: DAO
/// CONTROLLER_ROLE: Controller
/// SETTER_ROLE: None, to be set to DAO after launch
contract CollateralAggregator is
    AccessControlUpgradeable,
    ICollateralAggregator
{
    using EnumerableSetUpgradeable for EnumerableSetUpgradeable.AddressSet;

    error VaultAlreadyRegistered();
    error VaultNotRegistered();
    error ZeroAddress();
    error InvalidRate();
    error InvalidCreditLimitAndThreshold();

    event CollateralVaultRegistered(
        address indexed _asset,
        uint8 indexed _decimals,
        address indexed _collateralVault,
        uint40 _creditLimitRateBps,
        uint40 _liquidationThresholdRateBps
    );

    event VaultRatesChanged(
        address indexed _asset,
        uint40 _oldCreditLimitRateBps,
        uint40 _oldLiquidationThresholdRateBps,
        uint40 _newCreditLimitRateBps,
        uint40 _newLiquidationThresholdRateBps
    );

    event OracleChanged(address oldOracle, address newOracle);

    struct VaultData {
        address vaultAddress;
        uint8 assetDecimals;
        uint40 creditLimitRateBps;
        uint40 liquidationThresholdRateBps;
    }

    uint256 public constant BASIS_POINTS_DIVISOR = 10000; // fee is in basis points
    bytes32 private constant SETTER_ROLE = keccak256("SETTER_ROLE");
    bytes32 private constant CONTROLLER_ROLE = keccak256("CONTROLLER_ROLE");

    IOracleAggregator public oracle;

    // positionId --> AddressSet of collateral assets that this position has
    mapping(uint256 => EnumerableSetUpgradeable.AddressSet)
        private positionCollaterals;

    // collateralAsset --> VaultData
    mapping(address => VaultData) public collateralVaults;

    modifier ensureNonZeroAddress(address _someone) {
        if (_someone == address(0)) revert ZeroAddress();
        _;
    }

    modifier ensureVaultRegistered(address asset) {
        if (collateralVaults[asset].vaultAddress == address(0))
            revert VaultNotRegistered();
        _;
    }

    modifier ensureRateBelowOne(uint40 nominatorBps) {
        if (nominatorBps >= BASIS_POINTS_DIVISOR) revert InvalidRate();
        _;
    }

    modifier ensureValidLimitAndThreshold(
        uint40 _creditLimitRate,
        uint40 _liquidationThresholdRate
    ) {
        if (_creditLimitRate >= _liquidationThresholdRate)
            revert InvalidCreditLimitAndThreshold();
        _;
    }

    /// @dev Initializes the CollateralAggregator contract, setting appropriate roles.
    /// @param _oracle Address of price oracle
    /// @param _controller Address of controller
    function initialize(
        address _oracle,
        address _controller
    )
        public
        initializer
        ensureNonZeroAddress(_oracle)
        ensureNonZeroAddress(_controller)
    {
        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _setupRole(CONTROLLER_ROLE, _controller);
        oracle = IOracleAggregator(_oracle);
    }

    /// @notice Allows depositing collateral to a registered vault.
    /// @dev This function can be called only by Controller.
    /// @param _asset Address of the collateral asset to deposit
    /// @param _positionId The position ID.
    /// @param _positionOwner The owner of the position.
    /// @param _amount The amount to deposit.
    function deposit(
        address _asset,
        uint256 _positionId,
        address _positionOwner,
        uint256 _amount
    )
        external
        override
        ensureVaultRegistered(_asset)
        onlyRole(CONTROLLER_ROLE)
    {
        positionCollaterals[_positionId].add(_asset);

        ICollateralVault(collateralVaults[_asset].vaultAddress).deposit(
            _positionId,
            _positionOwner,
            _amount
        );
    }

    /// @notice Allows withdrawing collateral from a registered vault.
    /// @dev This function can be called only by Controller.
    /// @param _asset Address of the collateral asset.
    /// @param _positionId The position ID.
    /// @param _positionOwner The owner of the position.
    /// @param _amount The amount to withdraw.
    function withdraw(
        address _asset,
        uint256 _positionId,
        address _positionOwner,
        uint256 _amount
    )
        external
        override
        ensureVaultRegistered(_asset)
        onlyRole(CONTROLLER_ROLE)
    {
        bool fullWithdrawal = ICollateralVault(
            collateralVaults[_asset].vaultAddress
        ).withdraw(_positionId, _positionOwner, _amount);

        // remove collateral entry for current vault since full withdrawal has been done
        if (fullWithdrawal) {
            positionCollaterals[_positionId].remove(_asset);
        }
    }

    /// @notice Allows seizing the whole collateral of a position in case of liquidation
    /// @dev This function can be called only by Controller.
    /// @param _positionId The position ID.
    /// @param _liquidator Address of the liquidator that will receive the collateral
    function seizeCollateral(
        uint256 _positionId,
        address _liquidator
    ) external override onlyRole(CONTROLLER_ROLE) {
        address[] memory _positionCollaterals = positionCollaterals[_positionId]
            .values();
        uint256 _collateralsLength = _positionCollaterals.length;

        for (uint256 i; i < _collateralsLength; ++i) {
            ICollateralVault(
                collateralVaults[_positionCollaterals[i]].vaultAddress
            ).seizeCollateral(_positionId, _liquidator);

            positionCollaterals[_positionId].remove(_positionCollaterals[i]);
        }
    }

    /// @dev takes into account the _creditLimitRateBps configured for each registered vault
    /// @param _positionId The position ID.
    /// @return The total credit limit of the position in ETH scaled by 1e18
    function getCreditLimit(
        uint256 _positionId
    ) external view returns (uint256) {
        // this set contains collateral token addresses
        EnumerableSetUpgradeable.AddressSet
            storage _positionCollaterals = positionCollaterals[_positionId];
        uint256 setLength = _positionCollaterals.length();
        uint256 _totalCreditLimitETH;
        IOracleAggregator _oracle = oracle;
        for (uint256 i; i < setLength; ++i) {
            address asset = _positionCollaterals.at(i);

            VaultData memory _vaultData = collateralVaults[asset];

            // credit limit = position collateral * credit limit bps
            uint256 creditLimit = (ICollateralVault(_vaultData.vaultAddress)
                .getPositionCollateral(_positionId) *
                _vaultData.creditLimitRateBps) / BASIS_POINTS_DIVISOR;

            uint256 normalizedVaultCreditLimit = _normalizeValue(
                creditLimit,
                _vaultData.assetDecimals
            );

            //calculate credit limit in ETH
            _totalCreditLimitETH +=
                (normalizedVaultCreditLimit * _oracle.getAssetETHPrice(asset)) /
                1e18;
        }
        return _totalCreditLimitETH;
    }

    /// @dev takes into account the _creditLimitRateBps configured for each registered vault
    /// @param _positionId The position ID.
    /// @param _witdrawAsset Asset to withdraw
    /// @param _withdrawAmount Amount to be withdrawn
    /// @return The total preview credit limit of the position in ETH after a potential withdraw scaled by 1e18
    function previewWithdrawalCreditLimitETH(
        uint256 _positionId,
        address _witdrawAsset,
        uint256 _withdrawAmount
    ) external view ensureVaultRegistered(_witdrawAsset) returns (uint256) {
        // this set contains collateral token addresses
        EnumerableSetUpgradeable.AddressSet
            storage _positionCollaterals = positionCollaterals[_positionId];
        uint256 setLength = _positionCollaterals.length();
        uint256 _totalCreditLimitETH;
        IOracleAggregator _oracle = oracle;
        for (uint256 i; i < setLength; ++i) {
            address asset = _positionCollaterals.at(i);

            VaultData memory _vaultData = collateralVaults[asset];

            uint256 collateralLeft;
            if (_witdrawAsset == asset) {
                collateralLeft =
                    ICollateralVault(_vaultData.vaultAddress)
                        .getPositionCollateral(_positionId) -
                    _withdrawAmount;
            } else {
                collateralLeft = ICollateralVault(_vaultData.vaultAddress)
                    .getPositionCollateral(_positionId);
            }

            // credit limit = position collateral * credit limit bps
            uint256 creditLimit = (collateralLeft *
                _vaultData.creditLimitRateBps) / BASIS_POINTS_DIVISOR;

            uint256 normalizedVaultCreditLimit = _normalizeValue(
                creditLimit,
                _vaultData.assetDecimals
            );

            //calculate credit limit in ETH
            _totalCreditLimitETH +=
                (normalizedVaultCreditLimit * _oracle.getAssetETHPrice(asset)) /
                1e18;
        }
        return _totalCreditLimitETH;
    }

    /// @dev takes into account the _liquidationThresholdRateBps configured for each registered vault
    /// @param _positionId The position ID.
    /// @return The liquidation threshold of the position, across all registered vaults, in ETH scaled by 1e18
    function getLiquidationThreshold(
        uint256 _positionId
    ) external view override returns (uint256) {
        // this set contains collateral token addresses
        EnumerableSetUpgradeable.AddressSet
            storage _positionCollaterals = positionCollaterals[_positionId];
        uint256 setLength = _positionCollaterals.length();
        uint256 _totalLiquidationThresholdETH;
        IOracleAggregator _oracle = oracle;
        for (uint256 i; i < setLength; ++i) {
            address asset = _positionCollaterals.at(i);

            VaultData memory _vaultData = collateralVaults[asset];

            // liqdudation threshold = position collateral * liquidation threhsold bps
            uint256 liquidationThreshold = (ICollateralVault(
                _vaultData.vaultAddress
            ).getPositionCollateral(_positionId) *
                _vaultData.liquidationThresholdRateBps) / BASIS_POINTS_DIVISOR;

            uint256 normalizedVaultCreditLimit = _normalizeValue(
                liquidationThreshold,
                _vaultData.assetDecimals
            );

            //calculate credit limit in ETH
            _totalLiquidationThresholdETH +=
                (normalizedVaultCreditLimit * _oracle.getAssetETHPrice(asset)) /
                1e18;
        }
        return _totalLiquidationThresholdETH;
    }

    /// @dev Registers/Adds a collateral vault.
    /// @param _asset Address of the collateral asset of the CollateralVault
    /// @param _vaultAddress Address of the CollateralVault
    function registerCollateralVault(
        address _asset,
        address _vaultAddress,
        uint40 _creditLimitRateBps,
        uint40 _liquidationThresholdRateBps
    )
        external
        onlyRole(SETTER_ROLE)
        ensureNonZeroAddress(_asset)
        ensureNonZeroAddress(_vaultAddress)
        ensureRateBelowOne(_creditLimitRateBps)
        ensureRateBelowOne(_liquidationThresholdRateBps)
        ensureValidLimitAndThreshold(
            _creditLimitRateBps,
            _liquidationThresholdRateBps
        )
    {
        if (collateralVaults[_asset].vaultAddress != address(0))
            revert VaultAlreadyRegistered();

        uint8 _decimals = ERC20Upgradeable(_asset).decimals();
        collateralVaults[_asset] = VaultData({
            vaultAddress: _vaultAddress,
            assetDecimals: _decimals,
            creditLimitRateBps: _creditLimitRateBps,
            liquidationThresholdRateBps: _liquidationThresholdRateBps
        });

        emit CollateralVaultRegistered(
            _asset,
            _decimals,
            _vaultAddress,
            _creditLimitRateBps,
            _liquidationThresholdRateBps
        );
    }

    /// @param _positionId ID of the position
    /// @return A list of collateral assets for the position
    function getPositionCollaterals(
        uint256 _positionId
    ) external view returns (address[] memory) {
        return positionCollaterals[_positionId].values();
    }

    /// @notice Configures Credit Limit and Liquidation threshold for each collateral vault
    /// @dev Reverts if caller does not have SETTER_ROLE
    /// @param _asset Address of the underlying collateral asset of the Vault
    /// @param _creditLimitRateBps Credit Limit value in bps (e.g 1000 = 10%)
    /// @param _liquidationThresholdRateBps Liquidation Threshold value in bps (e.g 1000 = 10%)
    function setVaultRates(
        address _asset,
        uint40 _creditLimitRateBps,
        uint40 _liquidationThresholdRateBps
    )
        external
        onlyRole(SETTER_ROLE)
        ensureVaultRegistered(_asset)
        ensureRateBelowOne(_creditLimitRateBps)
        ensureRateBelowOne(_liquidationThresholdRateBps)
        ensureValidLimitAndThreshold(
            _creditLimitRateBps,
            _liquidationThresholdRateBps
        )
    {
        uint40 _oldCreditLimitRateBps = collateralVaults[_asset]
            .creditLimitRateBps;
        uint40 _oldLiquidationThresholdRateBps = collateralVaults[_asset]
            .liquidationThresholdRateBps;

        collateralVaults[_asset].creditLimitRateBps = _creditLimitRateBps;
        collateralVaults[_asset]
            .liquidationThresholdRateBps = _liquidationThresholdRateBps;

        emit VaultRatesChanged(
            _asset,
            _oldCreditLimitRateBps,
            _oldLiquidationThresholdRateBps,
            _creditLimitRateBps,
            _liquidationThresholdRateBps
        );
    }

    /// @dev Sets the price oracle.
    /// @param _oracle The address of the new price oracle.
    function setOracle(
        address _oracle
    ) external ensureNonZeroAddress(_oracle) onlyRole(SETTER_ROLE) {
        address oldOracle = address(oracle);
        oracle = IOracleAggregator(_oracle);

        emit OracleChanged(oldOracle, _oracle);
    }

    /// @dev Returns the value normalised to 18 decimals
    function _normalizeValue(
        uint256 value,
        uint8 assetDecimals
    ) private pure returns (uint256) {
        if (assetDecimals != 18) {
            if (assetDecimals > 18) {
                return value / 10 ** (assetDecimals - 18);
            } else {
                return value * 10 ** (18 - assetDecimals);
            }
        } else {
            return value;
        }
    }
}
