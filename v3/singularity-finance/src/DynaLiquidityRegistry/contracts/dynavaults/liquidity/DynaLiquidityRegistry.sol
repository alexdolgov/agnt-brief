// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "../DynaVaultErrors.sol";
import "../utils/Checks.sol";
import "../interfaces/IDynaLiquidityAPI.sol";

/**
 * @title DynaLiquidityRegistry
 * @notice Keeps a record of dynalisquidity instances
 */
contract DynaLiquidityRegistry is AccessControl {
	using Checks for address;

	bytes32 public constant REGISTRY_ADMIN = keccak256(abi.encode("REGISTRY_ADMIN"));

	enum DynaLiquidityType {
		BALANCER_V2,
		BALANCER_V3,
		UNISWAP_v4
	}
	struct DynaLiquidityRecord {
		address liquidity;
		DynaLiquidityType dynaLiquidityType;
		bool active;
	}
	DynaLiquidityRecord[] public dynaLiquidityList;
	mapping(address => bool) private isRegistered;
	mapping(address => uint256) public liquidityIndex;
	mapping(address => address) public dynaLiquidityByPoolToken;

	event LiquidityEnabled(address dynaLiquidityAddress, bool enabled);
	event DynaLiquidityTypeUpdated(address dynaLiquidityAddress, DynaLiquidityType dynaLiquidityType);
	event RegisterDynaLiquidity(address dynaLiquidityAddress, DynaLiquidityType dynaLiquidityType);

	constructor() {
		_grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
		_grantRole(REGISTRY_ADMIN, msg.sender);
	}

	/**
	 * @notice returns the number of dyna liquidity instances registered
	 * @return number of dyna liquidity instances registered
	 */
	function nrOfRecords() external view returns (uint256) {
		return dynaLiquidityList.length;
	}

	/**
	 * @notice returns full liquidity list
	 * @return liquidity array of dyna liquidity records
	 */
	function allLiquidity() external view returns (DynaLiquidityRecord[] memory) {
		return dynaLiquidityList;
	}

	/**
	 * @notice check if liquidity has a record
	 * @param dynaLiquidityAddress address of dyna liquidity
	 */
	function requireRecord(address dynaLiquidityAddress) internal view {
		if (dynaLiquidityList.length == 0 || dynaLiquidityList[liquidityIndex[dynaLiquidityAddress]].liquidity != dynaLiquidityAddress)
			revert DynaVaultErrors.NotRegistered();
	}

	/**
	 * @notice check if liquidity is registered
	 * @param dynaLiquidityAddress address of liquidity
	 */
	function isDynaLiquidityRegistered(address dynaLiquidityAddress) public view returns (bool) {
		return isRegistered[dynaLiquidityAddress];
	}

	/**
	 * @notice check if liquidity is active
	 * @param dynaLiquidityAddress address of liquidity
	 */
	function isDynaLiquidityActive(address dynaLiquidityAddress) public view returns (bool) {
		uint256 index = liquidityIndex[dynaLiquidityAddress];
		DynaLiquidityRecord memory record = dynaLiquidityList[index];
		return record.active;
	}

	/**
	 * @notice toggle liquidity enabled
	 * @param dynaLiquidityAddress address of liquidity
	 * @param enabled enable or disable liquidity
	 */
	function setLiquidityEnabled(address dynaLiquidityAddress, bool enabled) external onlyRole(REGISTRY_ADMIN) {
		requireRecord(dynaLiquidityAddress);
		dynaLiquidityList[liquidityIndex[dynaLiquidityAddress]].active = enabled;
		emit LiquidityEnabled(dynaLiquidityAddress, enabled);
	}

	/**
	 * @notice sets type of liquidity
	 * @param dynaLiquidityAddress address of liquidity
	 * @param dynaLiquidityType liquidity type
	 */
	function setDynaLiquidityType(address dynaLiquidityAddress, DynaLiquidityType dynaLiquidityType) external onlyRole(REGISTRY_ADMIN) {
		requireRecord(dynaLiquidityAddress);
		dynaLiquidityList[liquidityIndex[dynaLiquidityAddress]].dynaLiquidityType = dynaLiquidityType;
		emit DynaLiquidityTypeUpdated(dynaLiquidityAddress, dynaLiquidityType);
	}

	/**
	 * @notice registers liquidity
	 * @param dynaLiquidityAddress address of the liquidity to register
	 */
	function registerDynaLiquidity(address dynaLiquidityAddress, DynaLiquidityType dynaLiquidityType) external onlyRole(REGISTRY_ADMIN) {
		if (isRegistered[dynaLiquidityAddress]) revert DynaVaultErrors.AlreadyRegistered();
		dynaLiquidityAddress.requireNonZeroAddress();
		DynaLiquidityRecord memory record = DynaLiquidityRecord({liquidity: dynaLiquidityAddress, dynaLiquidityType: dynaLiquidityType, active: true});
		isRegistered[dynaLiquidityAddress] = true;
		liquidityIndex[dynaLiquidityAddress] = dynaLiquidityList.length;
		address poolTokenAddress = IDynaLiquidityAPI(dynaLiquidityAddress).pool();
		dynaLiquidityByPoolToken[poolTokenAddress] = dynaLiquidityAddress;
		dynaLiquidityList.push(record);
		emit RegisterDynaLiquidity(dynaLiquidityAddress, dynaLiquidityType);
	}
}
