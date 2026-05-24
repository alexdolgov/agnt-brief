// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.17;
import { AccessController } from "./access/AccessController.sol";
import { IPortfolio } from "./interfaces/IPortfolio.sol";
import { IAccessController } from "./interfaces/IAccessController.sol";
import { ERC1967Proxy } from "@openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable-4.9.6/proxy/utils/UUPSUpgradeable.sol";
import { Ownable2StepUpgradeable } from "@openzeppelin/contracts-upgradeable-4.9.6/access/Ownable2StepUpgradeable.sol";
import { FunctionParameters } from "./FunctionParameters.sol";
import { ErrorLibrary } from "./library/ErrorLibrary.sol";
import { IVelvetSafeModule } from "./interfaces/vault/IVelvetSafeModule.sol";
import { VelvetSafeModule } from "./vault/VelvetSafeModule.sol";
import { GnosisDeployer } from "./library/GnosisDeployer.sol";
import { ReentrancyGuardUpgradeable } from "@openzeppelin/contracts-upgradeable-4.9.6/security/ReentrancyGuardUpgradeable.sol";
import { ISatelliteFactory } from "./satellite-contracts/interfaces/ISatelliteFactory.sol";
import { IDeBridgeGate } from "./interfaces/deBridge/IDeBridgeGate.sol";

contract PortfolioFactory is
  Ownable2StepUpgradeable,
  ReentrancyGuardUpgradeable,
  UUPSUpgradeable
{
  address internal basePortfolioAddress;
  address internal baseVelvetGnosisSafeModuleAddress;

  address public protocolConfig;
  bool internal portfolioCreationPause;

  //Gnosis Helper Contracts
  address public gnosisSingleton;
  address public gnosisFallbackLibrary;
  address public gnosisMultisendLibrary;
  address public gnosisSafeProxyFactory;

  IDeBridgeGate public deBridgeGate;
  address public safeDeployerTarget;
  uint256 public portfolioId;

  // The mapping is used to track the deployed portfolio addresses.
  mapping(address => bool) public whitelistedPortfolioAddress;

  struct PortfoliolInfo {
    address portfolio;
    address owner;
    address vaultAddress;
    address gnosisModule;
  }

  PortfoliolInfo[] public PortfolioInfolList;
  //Events
  event PortfolioInfo(
    PortfoliolInfo portfolioData,
    uint256 indexed portfolioId,
    string _name,
    string _symbol,
    address indexed _owner,
    address indexed _accessController,
    bool isPublicPortfolio
  );

  event PortfolioCreationState(bool indexed state);
  event UpdateGnosisAddresses(
    address indexed newGnosisSingleton,
    address indexed newGnosisFallbackLibrary,
    address indexed newGnosisMultisendLibrary,
    address newGnosisSafeProxyFactory
  );

  event TransferSuperAdminOwnership(address indexed newOwner);

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }

  /**
   * @notice This function is used to initialise the PortfolioFactory while deployment
   */
  function initialize(
    FunctionParameters.PortfolioFactoryInitData memory initData
  ) external initializer {
    __Ownable2Step_init();
    __ReentrancyGuard_init();
    __UUPSUpgradeable_init();
    if (
      initData._basePortfolioAddress == address(0) ||
      initData._baseVelvetGnosisSafeModuleAddress == address(0) ||
      initData._gnosisSingleton == address(0) ||
      initData._gnosisFallbackLibrary == address(0) ||
      initData._gnosisMultisendLibrary == address(0) ||
      initData._gnosisSafeProxyFactory == address(0) ||
      initData._deBridgeGate == address(0) ||
      initData._safeDeployerTarget == address(0)
    ) revert ErrorLibrary.InvalidAddress();
    _setBasePortfolioAddress(initData._basePortfolioAddress);

    baseVelvetGnosisSafeModuleAddress = initData
      ._baseVelvetGnosisSafeModuleAddress;
    gnosisSingleton = initData._gnosisSingleton;
    gnosisFallbackLibrary = initData._gnosisFallbackLibrary;
    gnosisMultisendLibrary = initData._gnosisMultisendLibrary;
    gnosisSafeProxyFactory = initData._gnosisSafeProxyFactory;
    deBridgeGate = IDeBridgeGate(initData._deBridgeGate);
    safeDeployerTarget = initData._safeDeployerTarget;
  }

  /**
   * @notice This function enables to create a new non custodial portfolio
   * @param initData Accepts the input data from the user
   */
  function createPortfolioNonCustodial(
    FunctionParameters.PortfolioCreationInitData memory initData
  ) external virtual nonReentrant {
    address[] memory _owner = new address[](1);
    _owner[0] = address(0x0000000000000000000000000000000000000000);
    _createPortfolio(initData, false, _owner, 1);
  }

  /**
   * @notice This function enables to create a new custodial portfolio
   * @param initData Accepts the input data from the user
   * @param _owners Array list of owners for gnosis safe
   * @param _threshold Threshold for the gnosis safe(min number of transaction required)
   */
  function createPortfolioCustodial(
    FunctionParameters.PortfolioCreationInitData memory initData,
    address[] memory _owners,
    uint256 _threshold
  ) external virtual nonReentrant {
    if (_owners.length == 0) revert ErrorLibrary.NoOwnerPassed();
    if (_threshold > _owners.length || _threshold == 0)
      revert ErrorLibrary.InvalidThresholdLength();

    _createPortfolio(initData, true, _owners, _threshold);
  }

  /**
   * @notice This internal function enables to create a new portfolio according to given inputs
   * @param initData Input params passed as a struct
   * @param _custodial Boolean param as to whether the fund is custodial or non-custodial
   * @param _owner Address of the owner of the fund
   * @param _threshold Number of signers required for the multi-sig fund creation
   */
  function _createPortfolio(
    FunctionParameters.PortfolioCreationInitData memory initData,
    bool _custodial,
    address[] memory _owner,
    uint256 _threshold
  ) internal virtual {
    if (portfolioCreationPause) revert ErrorLibrary.PortfolioCreationIsPause();

    if (initData._assetManagerTreasury == address(0))
      revert ErrorLibrary.InvalidAddress();

    // Access Controller
    AccessController accessController = new AccessController();

    ERC1967Proxy portfolio = new ERC1967Proxy(basePortfolioAddress, bytes(""));

    whitelistedPortfolioAddress[address(portfolio)] = true;

    // Vault creation
    address vaultAddress;
    address module;
    if (!_custodial) {
      _owner[0] = address(portfolio);
      _threshold = 1;
    }

    (vaultAddress, module) = GnosisDeployer._deployGnosisSafeAndModule(
      FunctionParameters.SafeAndModuleDeploymentParams({
        _gnosisSingleton: gnosisSingleton,
        _gnosisSafeProxyFactory: gnosisSafeProxyFactory,
        _gnosisMultisendLibrary: gnosisMultisendLibrary,
        _gnosisFallbackLibrary: gnosisFallbackLibrary,
        _baseGnosisModule: baseVelvetGnosisSafeModuleAddress,
        _owners: _owner,
        _threshold: _threshold
      })
    );

    IPortfolio(address(portfolio)).init(
      FunctionParameters.PortfolioInitData({
        _name: initData._name,
        _symbol: initData._symbol,
        _vault: vaultAddress,
        _module: module,
        _depositToken: initData._depositToken,
        _accessController: address(accessController),
        _deBridgeGate: address(deBridgeGate),
        _safeDeployerTarget: safeDeployerTarget,
        _owners: _owner,
        _minDepositAmount: initData._minDepositAmount,
        _maxDepositAmount: initData._maxDepositAmount,
        _fundRaisingPeriod: initData._fundRaisingPeriod,
        _fundLockPeriod: initData._fundLockPeriod,
        _threshold: _threshold,
        _isCustodial: _custodial
      })
    );

    IVelvetSafeModule(address(module)).setUp(
      abi.encode(
        vaultAddress,
        address(portfolio), // new owner of module to pull from vault
        address(gnosisMultisendLibrary)
      )
    );

    PortfolioInfolList.push(
      PortfoliolInfo(
        address(portfolio),
        msg.sender,
        address(vaultAddress),
        address(module)
      )
    );

    accessController.setUpRoles(
      FunctionParameters.AccessSetup({
        _portfolio: address(portfolio),
        _portfolioCreator: msg.sender
      })
    );

    emit PortfolioInfo(
      PortfolioInfolList[portfolioId],
      portfolioId,
      initData._name,
      initData._symbol,
      msg.sender,
      address(accessController),
      initData._public
    );
    portfolioId = portfolioId + 1;
  }

  /**
   * @notice This function returns the Portfolio address at the given portfolio id
   * @param portfoliofundId Integral id of the portfolio fund whose Portfolio address is to be retrieved
   * @return Return the Portfolio address of the fund
   */
  function getPortfolioList(
    uint256 portfoliofundId
  ) external view virtual returns (address) {
    return address(PortfolioInfolList[portfoliofundId].portfolio);
  }

  /**
   * @notice This function allows us to pause or unpause the portfolio creation state
   * @param _state Boolean parameter to set the portfolio creation state of the factory
   */
  function setPortfolioCreationState(bool _state) external virtual onlyOwner {
    portfolioCreationPause = _state;
    emit PortfolioCreationState(_state);
  }

  /**
   * @notice This function is used to set the base portfolio address
   * @param _portfolio Address of the Portfolio module to set as base
   */
  function _setBasePortfolioAddress(address _portfolio) internal {
    basePortfolioAddress = _portfolio;
  }

  /**
   * @notice This function allows us to update gnosis deployment addresses
   * @param _newGnosisSingleton New address of GnosisSingleton
   * @param _newGnosisFallbackLibrary New address of GnosisFallbackLibrary
   * @param _newGnosisMultisendLibrary New address of GnosisMultisendLibrary
   * @param _newGnosisSafeProxyFactory New address of GnosisSafeProxyFactory
   */
  function updateGnosisAddresses(
    address _newGnosisSingleton,
    address _newGnosisFallbackLibrary,
    address _newGnosisMultisendLibrary,
    address _newGnosisSafeProxyFactory
  ) external virtual onlyOwner {
    if (
      _newGnosisSingleton == address(0) ||
      _newGnosisFallbackLibrary == address(0) ||
      _newGnosisMultisendLibrary == address(0) ||
      _newGnosisSafeProxyFactory == address(0)
    ) revert ErrorLibrary.InvalidAddress();
    gnosisSingleton = _newGnosisSingleton;
    gnosisFallbackLibrary = _newGnosisFallbackLibrary;
    gnosisMultisendLibrary = _newGnosisMultisendLibrary;
    gnosisSafeProxyFactory = _newGnosisSafeProxyFactory;

    emit UpdateGnosisAddresses(
      _newGnosisSingleton,
      _newGnosisFallbackLibrary,
      _newGnosisMultisendLibrary,
      _newGnosisSafeProxyFactory
    );
  }

  /**
   * @notice This function allows super admin of particular portfolio/portfolio to transfer ownership
   * @param _accessController address of accesscontroller of portfolio/portfolio
   * @param _account address of account to transfer ownership
   */
  function transferSuperAdminOwnership(
    address _accessController,
    address _account
  ) external {
    if (_accessController == address(0) || _account == address(0))
      revert ErrorLibrary.InvalidAddress();
    bytes32 SUPER_ADMIN = keccak256("SUPER_ADMIN");
    IAccessController accessController = IAccessController(_accessController);
    if (!accessController.hasRole(SUPER_ADMIN, msg.sender))
      revert ErrorLibrary.CallerNotSuperAdmin();
    accessController.transferSuperAdminOwnership(msg.sender, _account);

    emit TransferSuperAdminOwnership(_account);
  }

  function deployGnosisOnSatellite(
    address _portfolioAddress,
    uint256 _targetChainID
  ) external payable {
    if (_portfolioAddress == address(0)) revert ErrorLibrary.InvalidAddress();
    IPortfolio portfolio = IPortfolio(_portfolioAddress);
    bytes32 ASSET_MANAGER = keccak256("ASSET_MANAGER");
    IAccessController accessController = IAccessController(
      portfolio._accessController()
    );
    if (!accessController.hasRole(ASSET_MANAGER, msg.sender))
      revert ErrorLibrary.OnlyAssetManager();
    // Get the vault configuration
    (address[] memory owners, , uint256 threshold) = portfolio._vaultConfig();

    bytes memory deployData = abi.encodeWithSelector(
      ISatelliteFactory.deployGnosisSafe.selector, // Function to call on the target chain
      owners,
      threshold
    );

    _send(deployData, _targetChainID);
  }

  function _send(
    bytes memory _dstTransactionCall,
    uint256 _targetChainID
  ) internal {
    //
    // sanity checks
    //
    uint256 protocolFee = deBridgeGate.globalFixedNativeFee();
    require(msg.value >= protocolFee, "fees not covered by the msg.value");

    deBridgeGate.sendMessage{ value: msg.value }(
      _targetChainID,
      abi.encodePacked(safeDeployerTarget),
      _dstTransactionCall
    );
  }

  /**
   * @notice Authorizes upgrade for this contract
   * @param newImplementation Address of the new implementation
   */
  function _authorizeUpgrade(
    address newImplementation
  ) internal override onlyOwner {
    // Intentionally left empty as required by an abstract contract
  }
}
