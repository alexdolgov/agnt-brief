// SPDX-License-Identifier: Unlicensed
pragma solidity 0.8.18;

/**
 * @dev Interface that all DripDecay models must conform to.
 */
interface IDripDecayModel {
  /// @notice Returns a rate which is used as either:
  ///   - The percentage of the fee pool that should be dripped to suppliers, per second, as a wad.
  ///   - The decay rate of PToken value, as percent per second, where the percent is a wad.
  /// @dev The returned value, when interpreted as drip rate, is not equivalent to the annual yield
  /// earned by suppliers. Annual yield can be computed as
  /// `supplierFeePool * dripRate * secondsPerYear / totalAssets`.
  /// @param utilization Current utilization of the set.
  function dripDecayRate(uint256 utilization) external view returns (uint256);
}

/**
 * @notice Constant rate drip/decay model.
 */
contract DripDecayModelConstant is IDripDecayModel {
  uint256 internal constant ONE_YEAR = 365.25 days;

  /// @notice Drip or decay rate per-second.
  uint256 public immutable ratePerSecond;

  /// @param _ratePerSecond Drip or decay rate per-second.
  constructor(uint256 _ratePerSecond) {
    ratePerSecond = _ratePerSecond;
  }

  /// @notice Returns the current rate based on the provided `_utilization`.
  /// @dev For calculating the per-second decay rate, we use the exponential decay formula
  ///   A = P * (1 - r) ^ t
  /// where
  ///   A is final amount.
  ///   P is principal (starting) amount.
  ///   r is the per-second drip/decay rate.
  ///   t is the number of elapsed seconds.
  /// For example, for an annual drip/decay rate of 25%:
  ///   A = P * (1 - r) ^ t
  ///   0.75 = 1 * (1 - r) ^ 31557600
  ///   -r = 0.75^(1/31557600) - 1
  ///   -r = -9.116094732822280932149636651070655494101566187385032e-9
  /// Multiplying r by -1e18 to calculate the scaled up per-second value required by the constructor ~= 9116094774
  function dripDecayRate(uint256 /* _utilization */ ) external view returns (uint256) {
    return ratePerSecond;
  }
}

/**
 * @notice Base class for model factories.
 */
abstract contract BaseModelFactory {
  /// @dev We have a default salt for computing the resulting address of a create2 call.
  /// This is ok due to a combination of two reasons:
  /// (1) for a given configuration, only a single instance of that model needs to exist, and
  /// (2) models have constructor args and therefore each configuration has a different initcode hash.
  /// As a result, the differing initcode is sufficient to make sure each model
  /// is at a unique address and the salt is unnecessary here.
  bytes32 internal constant DEFAULT_SALT = keccak256("0");

  /// @notice The set of all Models that have been deployed from this factory.
  /// The created Models should always have addresses that are deterministic with
  /// the model creation parameters, so if the model exists then it will be in this mapping.
  /// Use getModel(/*params*/) to check if the model exists in the mapping and return
  /// the address directly.
  mapping(address => bool) public isDeployed;
}

library Create2 {
  /// @notice Computes the address that would result from a CREATE2 call for a contract according
  /// to the spec in https://eips.ethereum.org/EIPS/eip-1014
  /// @return The CREATE2 address as computed using the params.
  /// @param _creationCode The creation code bytes of the specified contract.
  /// @param _constructorArgs The abi encoded constructor args.
  /// @param _deployer The address of the deployer of the contract.
  /// @param _salt The salt used to compute the create2 address.
  function computeCreate2Address(
    bytes memory _creationCode,
    bytes memory _constructorArgs,
    address _deployer,
    bytes32 _salt
  ) internal pure returns (address) {
    bytes32 _bytecodeHash = keccak256(bytes.concat(_creationCode, _constructorArgs));
    bytes32 _data = keccak256(bytes.concat(bytes1(0xff), bytes20(_deployer), _salt, _bytecodeHash));
    return address(uint160(uint256(_data)));
  }
}

/**
 * @notice The factory for deploying a DripDecayModelConstant contract.
 */
contract DripDecayModelConstantFactory is BaseModelFactory {
  /// @notice Event that indicates a DripDecayModelConstant has been deployed.
  event DeployedDripDecayModelConstant(address indexed costModel, uint256 ratePerSecond);

  /// @notice Deploys a DripDecayModelConstant contract and emits a DeployedDripDecayModelConstant event that
  /// indicates what the params from the deployment are. This address is then cached inside the
  /// isDeployed mapping.
  /// @return _model which has an address that is deterministic with the input _ratePerSecond.
  function deployModel(uint256 _ratePerSecond) external returns (DripDecayModelConstant _model) {
    _model = new DripDecayModelConstant{salt: DEFAULT_SALT}(_ratePerSecond);
    isDeployed[address(_model)] = true;

    emit DeployedDripDecayModelConstant(address(_model), _ratePerSecond);
  }

  /// @return The address where the model is deployed, or address(0) if it isn't deployed.
  function getModel(uint256 _ratePerSecond) external view returns (address) {
    bytes memory _decayModelConstructorArgs = abi.encode(_ratePerSecond);

    address _addr = Create2.computeCreate2Address(
      type(DripDecayModelConstant).creationCode, _decayModelConstructorArgs, address(this), DEFAULT_SALT
    );

    return isDeployed[_addr] ? _addr : address(0);
  }
}