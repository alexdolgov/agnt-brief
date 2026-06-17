// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import { Address } from "@openzeppelin/contracts/utils/Address.sol";
import { WETHGateway } from "@radiant-v2-core/lending/WETHGateway.sol";
import { Errors } from "./libraries/Errors.sol";
import { RizLendingPoolConfigurator } from "./riz-lending/RizLendingPoolConfigurator.sol";
import { RizLendingPool } from "./riz-lending/RizLendingPool.sol";
import {
    RizLendingPoolAddressesProvider,
    IRizLendingPoolAddressesProvider
} from "./riz-lending/RizLendingPoolAddressesProvider.sol";
import { ILendingPoolAddressesProvider } from "@radiant-v2-core/interfaces/ILendingPoolAddressesProvider.sol";
import { ILendingPoolConfigurator } from "@radiant-v2-core/interfaces/ILendingPoolConfigurator.sol";
import { LendingRateOracle } from "@radiant-v2-core/mocks/oracle/LendingRateOracle.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { BadDebtManager } from "./BadDebtManager.sol";
import { Clones } from "@openzeppelin/contracts/proxy/Clones.sol";
import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import { AToken } from "@radiant-v2-core/lending/tokenization/AToken.sol";

/// @title RizRegistry
/// @author Radiant
/// @dev This upgradeable contract does not require a ProxyAdmin, and it is compatible with `UUPSUpgradeable`.
/// @custom:security-contact security@radiant.capital
contract RizRegistry is Initializable, OwnableUpgradeable, UUPSUpgradeable {
    using SafeERC20 for IERC20;
    using Address for address;
    using Clones for address;
    //////////////// <*_*> Constants <*_*> ////////////////

    bytes32 public constant LENDING_POOL = "LENDING_POOL";
    bytes32 public constant LENDING_POOL_ADDRESSES_PROVIDER = "LENDING_POOL_ADDRESSES_PROVIDER";
    bytes32 public constant LENDING_POOL_CONFIGURATOR = "LENDING_POOL_CONFIGURATOR";
    bytes32 public constant LENDING_POOL_COLLATERAL_MANAGER = "COLLATERAL_MANAGER";
    bytes32 public constant DATA_PROVIDER = "DATA_PROVIDER";
    bytes32 public constant LEVERAGER = "LEVERAGER";
    bytes32 public constant ATOKEN = "ATOKEN";
    bytes32 public constant STABLE_DEBT_TOKEN = "STABLE_DEBT_TOKEN";
    bytes32 public constant VARIABLE_DEBT_TOKEN = "VARIABLE_DEBT_TOKEN";
    bytes32 public constant INTEREST_RATE_STRATEGY = "INTEREST_RATE_STRATEGY";
    bytes32 public constant BAD_DEBT_MANAGER = "BAD_DEBT_MANAGER";

    //////////////// <*_*> Storage <*_*> ////////////////
    mapping(bytes32 => address) public implementations;
    mapping(address => bool) private _isValidAddressProvider;
    mapping(address => bool) private _lendingPools;
    mapping(string => address) internal _marketIdToAddressProvider;
    address[] private _addressesProvidersList;

    /// @notice Emergency admin address
    address public emergencyAdmin;

    /// @notice Treasury address
    address public treasury;

    /// @notice Oracle address
    address public oracle;

    /// @notice WETH gateway address
    WETHGateway public wEthGateway;

    //////////////// =^..^= Events =^..^= ////////////////
    event WethGatewaySet(address wethGateway);
    event ImplementationSet(bytes32 indexed id, address implementation);
    event AddressSet(bytes32 indexed id, address addressProvider);
    event ImplementationSet(bytes32 indexed id, address implementation, address addressProvider);
    event PoolRegistered(address addressProvider, string marketId);
    event EmergencyAdminSet(address newEmergencyAdmin);
    event TreasurySet(address newTreasury);
    event OracleSet(address newOracle);
    event EnabledBorrowingOnReserve(address addressProvider, address asset, bool stableBorrowRateEnabled);
    event BorrowingDisabledOnReserve(address addressProvider, address asset);
    event CollateralConfigurationChanged(
        address lendingPoolAddressesProvider,
        address asset,
        uint256 ltv,
        uint256 liquidationThreshold,
        uint256 liquidationBonus
    );
    event ReserveInterestRateStrategyChanged(
        address lendingPoolAddressesProvider, address asset, address rateStrategyAddress
    );
    event StableRateEnabledOnReserve(address lendingPoolAddressesProvider, address asset);
    event StableRateDisabledOnReserve(address lendingPoolAddressesProvider, address asset);
    event ReserveActivated(address lendingPoolAddressesProvider, address asset);
    event ReserveDeactivated(address lendingPoolAddressesProvider, address asset);
    event ReserveFrozen(address lendingPoolAddressesProvider, address asset);
    event ReserveUnfrozen(address lendingPoolAddressesProvider, address asset);
    event ReserveFactorChanged(address lendingPoolAddressesProvider, address asset, uint256 reserveFactor);
    event LendingPoolToggled(address lendingPool, bool enabled);
    event OracleRouterSet(address addressProvider, address oracleRouter);
    event LiquidationFeeUpdated(address addressProvider, address liquidationFeeTo);
    event TreasuryAddressUpdated(address newTreasury);

    constructor() {
        _disableInitializers();
    }

    ////////////////// ô¿ô External and Public Functions ô¿ô //////////////////

    function initialize() public initializer {
        __Ownable_init();
        __UUPSUpgradeable_init();
    }

    /// @notice View that returns the address of the address provider by market id
    /// @param marketId_ The market id
    function getAddressProviderByMarketId(string calldata marketId_) external view returns (address) {
        return _marketIdToAddressProvider[marketId_];
    }

    /// @notice View that returns all address providers
    /// @return The list of address providers
    function getAddressProvidersList() external view returns (address[] memory) {
        return _addressesProvidersList;
    }

    /// @notice Function to validate if given LendingPool is registered in the RizRegistry and active
    /// @param pool The address of the LendingPool
    function isLendingPoolValid(address pool) external view returns (bool) {
        return _lendingPools[pool];
    }

    /// @notice Update the status of a LendingPool
    /// @param addressProvider The address of the address provider
    /// @param status The new status of the LendingPool (true = active, false = inactive)
    function updateLendingPoolStatus(address addressProvider, bool status) external {
        if (!_isValidAddressProvider[address(addressProvider)]) {
            revert Errors.NoAddressProvider();
        }

        RizLendingPoolAddressesProvider provider = RizLendingPoolAddressesProvider(addressProvider);

        address configurator = provider.getLendingPoolConfigurator();
        if (msg.sender != configurator) {
            revert Errors.NotLPConfigurator();
        }

        address pool = provider.getLendingPool();
        if (!_lendingPools[pool]) {
            revert Errors.InvalidLendingPool();
        }

        _lendingPools[pool] = status;
        // In case pool was shut down, we need to mark addresses provider as invalid
        if (status) {
            _isValidAddressProvider[addressProvider] = true;
        } else {
            _isValidAddressProvider[addressProvider] = false;
        }
        emit LendingPoolToggled(pool, status);
    }

    /// @notice Create and register a new lending pool
    /// @param marketId_ The market id
    function addPool(string calldata marketId_) external onlyOwner {
        if (
            implementations[LENDING_POOL_ADDRESSES_PROVIDER] == address(0)
                || implementations[BAD_DEBT_MANAGER] == address(0) || implementations[LENDING_POOL] == address(0)
                || implementations[LENDING_POOL_CONFIGURATOR] == address(0)
                || implementations[BAD_DEBT_MANAGER] == address(0)
        ) {
            revert Errors.NotAContract();
        }
        // Deploy LendingPoolAddressesProvider
        address addressProviderAddr = Clones.clone(implementations[LENDING_POOL_ADDRESSES_PROVIDER]);
        RizLendingPoolAddressesProvider addressProvider = RizLendingPoolAddressesProvider(addressProviderAddr);
        addressProvider.initialize(marketId_);
        LendingRateOracle lendingRateOracle = new LendingRateOracle();
        addressProvider.setPoolAdmin(address(this));
        addressProvider.setLendingRateOracle(address(lendingRateOracle));
        addressProvider.setEmergencyAdmin(emergencyAdmin);
        addressProvider.setLiquidationFeeTo(treasury);
        addressProvider.setLendingPoolImpl(implementations[LENDING_POOL]);
        addressProvider.setLendingPoolConfiguratorImpl(implementations[LENDING_POOL_CONFIGURATOR]);
        address lendingPool = addressProvider.getLendingPool();
        wEthGateway.authorizeLendingPool(lendingPool);
        // Add LendingPool address to _isPoolRegistered mapping
        _lendingPools[lendingPool] = true;
        addressProvider.setPriceOracle(oracle);
        // Deploy bad debt manager
        address badDebtManager = Clones.clone(implementations[BAD_DEBT_MANAGER]);
        BadDebtManager(badDebtManager).initialize(lendingPool, owner());
        addressProvider.setBadDebtManager(badDebtManager);

        addressProvider.setLendingPoolCollateralManager(implementations[LENDING_POOL_COLLATERAL_MANAGER]);
        _registerPool(address(addressProvider), marketId_);
    }

    /// @notice Set the implementation of a contract by its id. Reverts if the implementation is not a contract
    /// @param implId The id of the contract
    /// @param implAddress The address of the implementation
    /// @param notifyAllProviders True if `implId` is applicable to update at all providers
    function setImplementation(bytes32 implId, address implAddress, bool notifyAllProviders) external onlyOwner {
        // Make sure the implementation is a contract
        if (!implAddress.isContract()) {
            revert Errors.NotAContract();
        }
        implementations[implId] = implAddress;

        if (notifyAllProviders) {
            uint256 providersCount = _addressesProvidersList.length;
            for (uint256 i; i < providersCount;) {
                if (_isValidAddressProvider[_addressesProvidersList[i]]) {
                    ILendingPoolAddressesProvider(_addressesProvidersList[i]).setAddressAsProxy(implId, implAddress);
                    emit ImplementationSet(implId, implAddress, _addressesProvidersList[i]);
                }
                unchecked {
                    ++i;
                }
            }
        } else {
            emit ImplementationSet(implId, implAddress);
        }
    }

    /// @notice Set the implementation of a contract by its id. Reverts if the implementation is not a contract
    /// @param implId The id of the contract
    /// @param newAddress The address of the new contract
    /// @param notifyAllProviders True if `implId` is applicable to update at all providers
    function setAddresses(bytes32 implId, address newAddress, bool notifyAllProviders) external onlyOwner {
        // Make sure the implementation is a contract
        if (!newAddress.isContract()) {
            revert Errors.NotAContract();
        }
        implementations[implId] = newAddress;

        if (notifyAllProviders) {
            uint256 providersCount = _addressesProvidersList.length;
            for (uint256 i; i < providersCount;) {
                if (_isValidAddressProvider[_addressesProvidersList[i]]) {
                    ILendingPoolAddressesProvider(_addressesProvidersList[i]).setAddress(implId, newAddress);
                    emit ImplementationSet(implId, newAddress, _addressesProvidersList[i]);
                }
                unchecked {
                    ++i;
                }
            }
        } else {
            emit AddressSet(implId, newAddress);
        }
    }

    /// @notice Set the emergency admin for all addresses providers
    /// @param newEmergencyAdmin The new emergency admin
    function setEmergencyAdmin(address newEmergencyAdmin) external onlyOwner {
        emergencyAdmin = newEmergencyAdmin;

        uint256 providersCount = _addressesProvidersList.length;
        for (uint256 i; i < providersCount;) {
            ILendingPoolAddressesProvider(_addressesProvidersList[i]).setEmergencyAdmin(newEmergencyAdmin);

            unchecked {
                ++i;
            }
        }
        emit EmergencyAdminSet(newEmergencyAdmin);
    }

    /// @notice Set the WETH gateway
    /// @param wethGateway_ The address of the WETH gateway
    function setWethGateway(address payable wethGateway_) external onlyOwner {
        // Make sure the WETH gateway is a contract
        if (!address(wethGateway_).isContract()) {
            revert Errors.NotAContract();
        }
        if (wEthGateway != WETHGateway(wethGateway_)) {
            wEthGateway = WETHGateway(wethGateway_);
            emit WethGatewaySet(wethGateway_);
        }
    }

    /// @notice Sets the treasury address
    /// @param treasury_ The address of the treasury
    function setTreasury(address treasury_) external onlyOwner {
        if (treasury != treasury_) {
            treasury = treasury_;
            emit TreasurySet(treasury_);
        }
        // Make sure the treasury address is not a zero address
        if (treasury_ == address(0)) {
            revert Errors.AddressZero();
        }
        treasury = treasury_;
        emit TreasurySet(treasury_);
    }

    /// @notice Sets the oracle address
    /// @param oracle_ The address of the oracle
    function setOracle(address oracle_) external onlyOwner {
        // Make sure the oracle is a contract
        if (!oracle_.isContract()) {
            revert Errors.NotAContract();
        }
        if (oracle != oracle_) {
            oracle = oracle_;
            emit OracleSet(oracle_);
        }
    }

    /// @notice Sets borrow caps
    /// @param addressProvider The address of the address provider
    /// @param assets The assets to set the borrow caps
    /// @param borrowCaps The borrow caps
    function setBorrowCaps(address addressProvider, address[] calldata assets, uint256[] calldata borrowCaps)
        external
        onlyOwner
    {
        address configurator = ILendingPoolAddressesProvider(addressProvider).getLendingPoolConfigurator();
        for (uint256 i; i < assets.length;) {
            RizLendingPoolConfigurator(configurator).setBorrowCap(assets[i], borrowCaps[i]);
            unchecked {
                ++i;
            }
        }
    }

    /// @notice Update AToken implementation
    /// @param addressProvider The address of the address provider
    /// @param input The input data for the reserve initialization
    function updateAToken(address addressProvider, ILendingPoolConfigurator.UpdateATokenInput[] calldata input)
        external
        onlyOwner
    {
        address configurator = ILendingPoolAddressesProvider(addressProvider).getLendingPoolConfigurator();
        for (uint256 i; i < input.length;) {
            RizLendingPoolConfigurator(configurator).updateAToken(input[i]);
            unchecked {
                ++i;
            }
        }
    }

    /// @notice Update Variable Token implementation
    /// @param addressProvider The address of the address provider
    /// @param input The input data for the reserve initialization
    function updateVariableToken(
        address addressProvider,
        ILendingPoolConfigurator.UpdateDebtTokenInput[] calldata input
    ) external onlyOwner {
        address configurator = ILendingPoolAddressesProvider(addressProvider).getLendingPoolConfigurator();
        for (uint256 i; i < input.length;) {
            RizLendingPoolConfigurator(configurator).updateVariableDebtToken(input[i]);
            unchecked {
                ++i;
            }
        }
    }

    /// @notice Sets supply caps
    /// @param addressProvider The address of the address provider
    /// @param assets The assets to set the supply caps
    /// @param supplyCaps The supply caps
    function setSupplyCaps(address addressProvider, address[] calldata assets, uint256[] calldata supplyCaps)
        external
        onlyOwner
    {
        address configurator = ILendingPoolAddressesProvider(addressProvider).getLendingPoolConfigurator();
        for (uint256 i; i < assets.length;) {
            RizLendingPoolConfigurator(configurator).setSupplyCap(assets[i], supplyCaps[i]);
            unchecked {
                ++i;
            }
        }
    }

    /// @notice Emergency transfer of any ERC-20 token stuck in the wethGateway
    /// @param token The token to transfer
    /// @param to The recipient of the transfer
    /// @param amount The amount to send
    function emergencyTokenTransferFromGateway(address token, address to, uint256 amount) external onlyOwner {
        wEthGateway.emergencyTokenTransfer(token, to, amount);
    }

    /**
     * @dev transfer native Ether from the utility contract, for native Ether recovery in case of stuck Ether
     * due selfdestructs or transfer ether to pre-computated contract address before deployment.
     * @param to recipient of the transfer
     * @param amount amount to send
     */
    function emergencyEtherTransferFromGateway(address to, uint256 amount) external onlyOwner {
        wEthGateway.emergencyEtherTransfer(to, amount);
    }

    ////////////////// ô¿ô Internal Functions ô¿ô  //////////////////

    /// @notice Register a new address provider
    /// @param addressProvider_ The address of the address provider
    /// @param marketId_ The market id
    function _registerPool(address addressProvider_, string calldata marketId_) internal {
        uint256 providersCount = _addressesProvidersList.length;

        for (uint256 i; i < providersCount;) {
            if (_addressesProvidersList[i] == addressProvider_) {
                revert Errors.PoolRegisteredAlready();
            }
            unchecked {
                ++i;
            }
        }

        _addressesProvidersList.push(addressProvider_);
        _isValidAddressProvider[addressProvider_] = true;
        _marketIdToAddressProvider[marketId_] = addressProvider_;
        emit PoolRegistered(addressProvider_, marketId_);
    }

    ////////////////// ¿ô¿ Proxy Functions ¿ô¿  //////////////////

    /// @notice Sets the interest rate strategy of a reserve
    /// @param lendingPoolAddressesProvider The address of the LP address provider
    /// @param asset The address of the underlying asset of the reserve
    /// @param rateStrategyAddress The new address of the interest strategy contract
    function setReserveInterestRateStrategyAddress(
        address lendingPoolAddressesProvider,
        address asset,
        address rateStrategyAddress
    ) external onlyOwner {
        // Make sure asset is a contract
        if (!asset.isContract()) {
            revert Errors.NotAContract();
        }
        if (_isValidAddressProvider[lendingPoolAddressesProvider] == false) {
            revert Errors.NoAddressProvider();
        }

        address configurator = ILendingPoolAddressesProvider(lendingPoolAddressesProvider).getLendingPoolConfigurator();
        RizLendingPoolConfigurator configuratorContract = RizLendingPoolConfigurator(configurator);
        configuratorContract.setReserveInterestRateStrategyAddress(asset, rateStrategyAddress);
        emit ReserveInterestRateStrategyChanged(lendingPoolAddressesProvider, asset, rateStrategyAddress);
    }

    /// @notice Permissioned function to swap oracle router in the LendingPoolAddressesProvider
    /// @param lendingPoolAddressesProvider The address of the address provider
    /// @param oracleRouter The address of the oracle router
    function setOracleRouter(address lendingPoolAddressesProvider, address oracleRouter) external onlyOwner {
        // Make sure new oracle is a contract
        if (!oracleRouter.isContract()) {
            revert Errors.NotAContract();
        }
        if (_isValidAddressProvider[lendingPoolAddressesProvider] == false) {
            revert Errors.NoAddressProvider();
        }
        ILendingPoolAddressesProvider(lendingPoolAddressesProvider).setPriceOracle(oracleRouter);
        emit OracleRouterSet(lendingPoolAddressesProvider, oracleRouter);
    }

    /// @notice Permissioned function to set RizRegistry in LendingPoolAddressesProvider
    /// @param lendingPoolAddressesProvider The address of the address provider
    function setRizRegistry(address lendingPoolAddressesProvider) external onlyOwner {
        RizLendingPoolAddressesProvider(lendingPoolAddressesProvider).setRizRegistry(address(this));
    }

    /// @notice Permissioned function to set Leverager in the LendingPoolAddressesProvider
    /// @param lendingPoolAddressesProvider The address of the address provider
    /// @param leverager The address of the leverager
    function setLeverager(address lendingPoolAddressesProvider, address leverager) external onlyOwner {
        RizLendingPoolAddressesProvider(lendingPoolAddressesProvider).setLeverager(leverager);
    }

    /// @notice Permissioned function to set a new receiver of the liquidationFee in the LendingPoolAddressesProvider
    /// @param lendingPoolAddressesProvider The address of the address provider
    /// @param liquidationFeeTo The address which receives the liquidation fee
    /// @dev When the `liquidationFeeTo` is the zero address the full fee goes to the liquidator
    function setLiquidationFeeTo(address lendingPoolAddressesProvider, address liquidationFeeTo) external onlyOwner {
        // Make sure addressProvider is valid
        if (_isValidAddressProvider[lendingPoolAddressesProvider] == false) {
            revert Errors.NoAddressProvider();
        }
        ILendingPoolAddressesProvider(lendingPoolAddressesProvider).setLiquidationFeeTo(liquidationFeeTo);
        emit LiquidationFeeUpdated(lendingPoolAddressesProvider, liquidationFeeTo);
    }

    /// @notice Initialize Reserve helper function as Riz Registry is the owner of the Configurator
    /// @param input The input data for the reserve initialization
    /// @param lendingPoolAddressesProvider The address of the LP address provider
    /// @param initializingAmount The amount to deposit into the reserve
    function initReserve(
        address lendingPoolAddressesProvider,
        ILendingPoolConfigurator.InitReserveInput[] memory input,
        uint256 initializingAmount
    ) external onlyOwner {
        if (_isValidAddressProvider[lendingPoolAddressesProvider] == false) {
            revert Errors.NoAddressProvider();
        }
        // Make sure every asset in the input is a contract
        uint256 inputLength = input.length;
        for (uint256 i; i < inputLength;) {
            if (!input[i].underlyingAsset.isContract()) {
                revert Errors.NotAContract();
            }
            unchecked {
                ++i;
            }
        }

        address lp = ILendingPoolAddressesProvider(lendingPoolAddressesProvider).getLendingPool();
        address configurator = ILendingPoolAddressesProvider(lendingPoolAddressesProvider).getLendingPoolConfigurator();
        RizLendingPoolConfigurator(configurator).batchInitReserve(input);

        // Additional step to perform an initial deposit into the reserve
        for (uint256 i; i < input.length;) {
            address asset = input[i].underlyingAsset;
            IERC20(asset).safeTransferFrom(msg.sender, address(this), initializingAmount);
            IERC20(asset).approve(address(lp), initializingAmount);
            RizLendingPool(lp).deposit(address(asset), initializingAmount, address(this), 0);

            unchecked {
                ++i;
            }
        }
    }

    /// @notice Enables borrowing on a reserve
    /// @param lendingPoolAddressesProvider The address of the LendingPoolAddressesProvider
    /// @param asset The address of the asset
    /// @param stableBorrowRateEnabled True if stable borrow rate is enabled, false otherwise
    function enableBorrowingOnReserve(address lendingPoolAddressesProvider, address asset, bool stableBorrowRateEnabled)
        external
        onlyOwner
    {
        // Make sure asset is a contract
        if (!asset.isContract()) {
            revert Errors.NotAContract();
        }
        if (_isValidAddressProvider[lendingPoolAddressesProvider] == false) {
            revert Errors.NoAddressProvider();
        }

        address configurator = ILendingPoolAddressesProvider(lendingPoolAddressesProvider).getLendingPoolConfigurator();
        RizLendingPoolConfigurator configuratorContract = RizLendingPoolConfigurator(configurator);
        configuratorContract.enableBorrowingOnReserve(asset, stableBorrowRateEnabled);
        emit EnabledBorrowingOnReserve(lendingPoolAddressesProvider, asset, stableBorrowRateEnabled);
    }

    /// @notice Disables borrowing on a reserve
    /// @param lendingPoolAddressesProvider The address of the LendingPoolAddressesProvider
    /// @param asset The address of the asset
    function disableBorrowingOnReserve(address lendingPoolAddressesProvider, address asset) external onlyOwner {
        // Make sure asset is a contract
        if (!asset.isContract()) {
            revert Errors.NotAContract();
        }
        if (_isValidAddressProvider[lendingPoolAddressesProvider] == false) {
            revert Errors.NoAddressProvider();
        }

        address configurator = ILendingPoolAddressesProvider(lendingPoolAddressesProvider).getLendingPoolConfigurator();
        RizLendingPoolConfigurator configuratorContract = RizLendingPoolConfigurator(configurator);
        configuratorContract.disableBorrowingOnReserve(asset);
        emit BorrowingDisabledOnReserve(lendingPoolAddressesProvider, asset);
    }

    /// @notice Riz configure reserve as collateral
    /// @param asset The address of the asset
    /// @param lendingPoolAddressesProvider The address of the LendingPoolAddressesProvider
    /// @param ltv The loan to value
    /// @param liquidationThreshold The liquidation threshold
    /// @param liquidationBonus The liquidation bonus
    function configureReserveAsCollateral(
        address asset,
        address lendingPoolAddressesProvider,
        uint256 ltv,
        uint256 liquidationThreshold,
        uint256 liquidationBonus
    ) external onlyOwner {
        // Make sure asset is a contract
        if (!asset.isContract()) {
            revert Errors.NotAContract();
        }
        if (_isValidAddressProvider[lendingPoolAddressesProvider] == false) {
            revert Errors.NoAddressProvider();
        }

        address configurator = ILendingPoolAddressesProvider(lendingPoolAddressesProvider).getLendingPoolConfigurator();
        RizLendingPoolConfigurator configuratorContract = RizLendingPoolConfigurator(configurator);
        configuratorContract.configureReserveAsCollateral(asset, ltv, liquidationThreshold, liquidationBonus);

        emit CollateralConfigurationChanged(
            lendingPoolAddressesProvider, asset, ltv, liquidationThreshold, liquidationBonus
        );
    }

    /// @notice Enable stable rate borrowing on a reserve
    /// @param lendingPoolAddressesProvider The address of the LendingPoolAddressesProvider
    /// @param asset The address of the underlying asset of the reserve
    function enableReserveStableRate(address lendingPoolAddressesProvider, address asset) external onlyOwner {
        // Make sure asset is a contract
        if (!asset.isContract()) {
            revert Errors.NotAContract();
        }
        if (_isValidAddressProvider[lendingPoolAddressesProvider] == false) {
            revert Errors.NoAddressProvider();
        }

        address configurator = ILendingPoolAddressesProvider(lendingPoolAddressesProvider).getLendingPoolConfigurator();
        RizLendingPoolConfigurator configuratorContract = RizLendingPoolConfigurator(configurator);
        configuratorContract.enableReserveStableRate(asset);
        emit StableRateEnabledOnReserve(lendingPoolAddressesProvider, asset);
    }

    /// @notice Disable stable rate borrowing on a reserve
    /// @param lendingPoolAddressesProvider The address of the LendingPoolAddressesProvider
    /// @param asset The address of the underlying asset of the reserve
    function disableReserveStableRate(address lendingPoolAddressesProvider, address asset) external onlyOwner {
        // Make sure asset is a contract
        if (!asset.isContract()) {
            revert Errors.NotAContract();
        }
        if (_isValidAddressProvider[lendingPoolAddressesProvider] == false) {
            revert Errors.NoAddressProvider();
        }

        address configurator = ILendingPoolAddressesProvider(lendingPoolAddressesProvider).getLendingPoolConfigurator();
        RizLendingPoolConfigurator configuratorContract = RizLendingPoolConfigurator(configurator);
        configuratorContract.disableReserveStableRate(asset);
        emit StableRateDisabledOnReserve(lendingPoolAddressesProvider, asset);
    }

    /// @notice Activates a reserve
    /// @param lendingPoolAddressesProvider The address of the LendingPoolAddressesProvider
    /// @param asset The address of the underlying asset of the reserve
    function activateReserve(address lendingPoolAddressesProvider, address asset) external onlyOwner {
        // Make sure asset is a contract
        if (!asset.isContract()) {
            revert Errors.NotAContract();
        }
        if (_isValidAddressProvider[lendingPoolAddressesProvider] == false) {
            revert Errors.NoAddressProvider();
        }

        address configurator = ILendingPoolAddressesProvider(lendingPoolAddressesProvider).getLendingPoolConfigurator();
        RizLendingPoolConfigurator configuratorContract = RizLendingPoolConfigurator(configurator);
        configuratorContract.activateReserve(asset);
        emit ReserveActivated(lendingPoolAddressesProvider, asset);
    }

    /// @notice Deactivates a reserve
    /// @param lendingPoolAddressesProvider The address of the LendingPoolAddressesProvider
    /// @param asset The address of the underlying asset of the reserve
    function deactivateReserve(address lendingPoolAddressesProvider, address asset) external onlyOwner {
        // Make sure asset is a contract
        if (!asset.isContract()) {
            revert Errors.NotAContract();
        }
        if (_isValidAddressProvider[lendingPoolAddressesProvider] == false) {
            revert Errors.NoAddressProvider();
        }

        address configurator = ILendingPoolAddressesProvider(lendingPoolAddressesProvider).getLendingPoolConfigurator();
        RizLendingPoolConfigurator configuratorContract = RizLendingPoolConfigurator(configurator);
        configuratorContract.deactivateReserve(asset);
        emit ReserveDeactivated(lendingPoolAddressesProvider, asset);
    }

    /// @notice Freezes a reserve. A frozen reserve doesn't allow any new deposit, borrow or rate swap but allows
    /// repayments, liquidations, rate rebalances and withdrawals
    /// @param lendingPoolAddressesProvider The address of the LendingPoolAddressesProvider
    /// @param asset The address of the underlying asset of the reserve
    function freezeReserve(address lendingPoolAddressesProvider, address asset) external onlyOwner {
        // Make sure asset is a contract
        if (!asset.isContract()) {
            revert Errors.NotAContract();
        }
        if (_isValidAddressProvider[lendingPoolAddressesProvider] == false) {
            revert Errors.NoAddressProvider();
        }

        address configurator = ILendingPoolAddressesProvider(lendingPoolAddressesProvider).getLendingPoolConfigurator();
        RizLendingPoolConfigurator configuratorContract = RizLendingPoolConfigurator(configurator);
        configuratorContract.freezeReserve(asset);
        emit ReserveFrozen(lendingPoolAddressesProvider, asset);
    }

    /// @notice Unfreezes a reserve.
    /// @param lendingPoolAddressesProvider The address of the LendingPoolAddressesProvider
    /// @param asset The address of the underlying asset of the reserve
    function unfreezeReserve(address lendingPoolAddressesProvider, address asset) external onlyOwner {
        // Make sure asset is a contract
        if (!asset.isContract()) {
            revert Errors.NotAContract();
        }
        if (_isValidAddressProvider[lendingPoolAddressesProvider] == false) {
            revert Errors.NoAddressProvider();
        }

        address configurator = ILendingPoolAddressesProvider(lendingPoolAddressesProvider).getLendingPoolConfigurator();
        RizLendingPoolConfigurator configuratorContract = RizLendingPoolConfigurator(configurator);
        configuratorContract.unfreezeReserve(asset);
        emit ReserveUnfrozen(lendingPoolAddressesProvider, asset);
    }

    /// @notice Updates the reserve factor of a reserve
    /// @param lendingPoolAddressesProvider The address of the LendingPoolAddressesProvider
    /// @param asset The address of the underlying asset of the reserve
    /// @param reserveFactor The new reserve factor of the reserve
    function setReserveFactor(address lendingPoolAddressesProvider, address asset, uint256 reserveFactor)
        external
        onlyOwner
    {
        // Make sure asset is a contract
        if (!asset.isContract()) {
            revert Errors.NotAContract();
        }
        if (_isValidAddressProvider[lendingPoolAddressesProvider] == false) {
            revert Errors.NoAddressProvider();
        }

        address configurator = ILendingPoolAddressesProvider(lendingPoolAddressesProvider).getLendingPoolConfigurator();
        RizLendingPoolConfigurator configuratorContract = RizLendingPoolConfigurator(configurator);
        configuratorContract.setReserveFactor(asset, reserveFactor);
        emit ReserveFactorChanged(lendingPoolAddressesProvider, asset, reserveFactor);
    }

    /// @notice Updates the treasury address of a reserve
    /// @param asset The address of the asset to update
    /// @param newTreasury The new treasury address of the reserve
    function setTreasuryAddress(address asset, address newTreasury) external onlyOwner {
        // Make sure new address is valid
        if (newTreasury == address(0)) {
            revert Errors.AddressZero();
        }

        if (AToken(asset).RESERVE_TREASURY_ADDRESS() != newTreasury) {
            AToken(asset).setTreasuryAddress(newTreasury);
            emit TreasuryAddressUpdated(newTreasury);
        }
    }

    /// @notice Overriden to check onlyOwner can upgrade
    function _authorizeUpgrade(address newImplementation) internal override onlyOwner { }
}
