// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/access/AccessControl.sol";

interface IInsuranceCapitalLayerAddresses {
  function depositTokenRegistry() external view returns (address);
  function prestaking() external view returns (address);
  function shareToken() external view returns (address);
}

interface IDepositTokenRegistryAddresses {
  function getAcceptedTokens() external view returns (address[] memory);
}

interface IPrestakingAddresses {
  function insuranceCapitalLayer() external view returns (address);
}

/**
 * @title AddressBook
 * @notice Provides a consolidated view of all system contract addresses and token acceptance
 * @dev Includes ICL registry functionality
 */
contract AddressBook is AccessControl {
  /// @notice ADMIN_ROLE for privileged functions
  bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");

  /// @notice Maximum number of ICLs that can be registered
  uint256 public constant MAX_LAYERS = 100;

  /// @notice The KYC Registry contract address
  address public immutable kycRegistry;

  /// @notice Array storing prestaking addresses
  address[] private _prestakingContracts;

  /// @notice Mapping to efficiently check if a prestaking contract is registered
  mapping(address => bool) private _registeredPrestaking;

  struct LayerAddresses {
    address icl; // Will be fetched from prestaking
    address depositTokenRegistry;
    address prestaking; // We'll store this as the primary reference
    address shareToken;
  }

  /// @notice Custom errors
  error ZeroAddress();
  error LayerAlreadyRegistered(address layer);
  error LayerNotRegistered(address layer);
  error MaxLayersReached();

  /// @notice Events
  event LayerAdded(address indexed prestaking);
  event LayerRemoved(address indexed prestaking);

  constructor(address _kycRegistry, address initialAdmin) {
    if (_kycRegistry == address(0)) revert ZeroAddress();
    if (initialAdmin == address(0)) revert ZeroAddress();

    kycRegistry = _kycRegistry;

    _grantRole(DEFAULT_ADMIN_ROLE, initialAdmin);
    _grantRole(ADMIN_ROLE, initialAdmin);
    _setRoleAdmin(ADMIN_ROLE, DEFAULT_ADMIN_ROLE);
  }

  /**
   * @notice Adds a new Insurance Capital Layer via its prestaking contract
   * @param prestaking The address of the prestaking contract
   */
  function addLayer(address prestaking) external onlyRole(ADMIN_ROLE) {
    if (prestaking == address(0)) revert ZeroAddress();
    if (_registeredPrestaking[prestaking])
      revert LayerAlreadyRegistered(prestaking);
    if (_prestakingContracts.length >= MAX_LAYERS) revert MaxLayersReached();

    _prestakingContracts.push(prestaking);
    _registeredPrestaking[prestaking] = true;
    emit LayerAdded(prestaking);
  }

  /**
   * @notice Removes an Insurance Capital Layer
   * @param prestaking The prestaking contract address to remove
   */
  function removeLayer(address prestaking) external onlyRole(ADMIN_ROLE) {
    if (!_registeredPrestaking[prestaking])
      revert LayerNotRegistered(prestaking);
    _removeLayer(prestaking);
  }

  /**
   * @notice Gets all system addresses and token acceptance data
   * @return kycRegistry_ The global KYC registry address
   * @return layers Array of addresses for each ICL and its associated contracts
   * @return tokenPairs Array of token acceptance data (token address, ICL address)
   */
  function getAddresses()
    external
    view
    returns (
      address kycRegistry_,
      LayerAddresses[] memory layers,
      address[2][] memory tokenPairs
    )
  {
    // Create array for layer addresses
    layers = new LayerAddresses[](_prestakingContracts.length);

    // First count total pairs needed
    uint256 totalPairs = 0;
    for (uint256 i = 0; i < _prestakingContracts.length; i++) {
      address prestakingAddr = _prestakingContracts[i];
      IPrestakingAddresses prestaking = IPrestakingAddresses(prestakingAddr);
      address icl = prestaking.insuranceCapitalLayer();
      IInsuranceCapitalLayerAddresses layer = IInsuranceCapitalLayerAddresses(
        icl
      );

      // Store layer addresses
      layers[i] = LayerAddresses({
        icl: icl,
        depositTokenRegistry: layer.depositTokenRegistry(),
        prestaking: prestakingAddr,
        shareToken: layer.shareToken()
      });

      // Count accepted tokens for this layer
      IDepositTokenRegistryAddresses registry = IDepositTokenRegistryAddresses(
        layer.depositTokenRegistry()
      );
      address[] memory tokens = registry.getAcceptedTokens();
      totalPairs += tokens.length;
    }

    // Create and populate token pairs array
    tokenPairs = new address[2][](totalPairs);
    uint256 currentIndex = 0;

    for (uint256 i = 0; i < _prestakingContracts.length; i++) {
      IPrestakingAddresses prestaking = IPrestakingAddresses(
        _prestakingContracts[i]
      );
      address icl = prestaking.insuranceCapitalLayer();
      IInsuranceCapitalLayerAddresses layer = IInsuranceCapitalLayerAddresses(
        icl
      );
      IDepositTokenRegistryAddresses registry = IDepositTokenRegistryAddresses(
        layer.depositTokenRegistry()
      );
      address[] memory tokens = registry.getAcceptedTokens();

      for (uint256 j = 0; j < tokens.length; j++) {
        tokenPairs[currentIndex][0] = tokens[j]; // token address
        tokenPairs[currentIndex][1] = icl; // ICL address
        currentIndex++;
      }
    }

    return (kycRegistry, layers, tokenPairs);
  }

  /**
   * @notice Returns all registered prestaking addresses
   * @return Array of registered prestaking addresses
   */
  function getRegisteredLayers() external view returns (address[] memory) {
    return _prestakingContracts;
  }

  /**
   * @notice Checks if a prestaking contract is registered
   * @param prestaking The prestaking contract address to check
   * @return bool indicating if the prestaking contract is registered
   */
  function isRegistered(address prestaking) external view returns (bool) {
    return _registeredPrestaking[prestaking];
  }

  /**
   * @notice Returns the count of registered layers
   * @return The total number of layers
   */
  function getLayersCount() external view returns (uint256) {
    return _prestakingContracts.length;
  }

  /**
   * @notice Internal function to remove a layer
   * @param prestaking The prestaking contract address to remove
   */
  function _removeLayer(address prestaking) private {
    for (uint256 i = _prestakingContracts.length; i > 0; i--) {
      uint256 index = i - 1;
      if (_prestakingContracts[index] == prestaking) {
        _prestakingContracts[index] = _prestakingContracts[
          _prestakingContracts.length - 1
        ];
        _prestakingContracts.pop();
        _registeredPrestaking[prestaking] = false;
        emit LayerRemoved(prestaking);
        break;
      }
    }
  }
}
