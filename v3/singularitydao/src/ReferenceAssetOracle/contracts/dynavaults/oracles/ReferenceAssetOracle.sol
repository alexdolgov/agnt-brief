// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "../interfaces/IReferenceAssetOracle.sol";

/**
 * @title Reference Asset Oracle
 * @notice This provides a generic price oracle with a default reference asset.
 * @notice It supports a preferred oracle, which typically should use asynchronously updated decentralized oracle networks. 
 * Decentralized oracle networks, like Chainlink, aggregate data from multiple sources, reducing reliance on any single data provider. 
 * Asynchronous updates make it harder for attackers to manipulate prices within short time windows.
 * @notice It supports fallback oracles, to ensure continuous secure pricing in reference asset denomination.
 * Good fallback oracles should calculate the geometric mean of prices across multiple observation points in decentralized exchanges (AMMs) 
 * to avoid economic exploits using flash loan attacks. The geometric mean smooths out extreme values and minimizes the impact of outliers, 
 * making it more resistant to manipulation.
 * @notice The Reference Asset Oracle allows to configure a stale oracle period, which allows to invalidate prices when their observation timestamp is too old.
 * @notice Besides the tokenReferenceValue interface, it also supports generic getPrice to get price of base token in any quote token
 * @notice When a certain ReferenceAssetOracle preferred or fallback implementation does not support prices for given tokens,
 * then it should return the value 0 with observation time 0. If no registered underlying oracle provides a valid price, the tx will be reverted.
 */
contract ReferenceAssetOracle is IReferenceAssetOracle, AccessControl {
	bytes32 public constant ORACLE_ADMIN = keccak256(abi.encode("ORACLE_ADMIN"));

	IReferenceAssetOracle public immutable preferredOracle;
	address public immutable override referenceAsset;

	IReferenceAssetOracle[] public fallbackOracles;
	uint256 public staleOraclePeriod = 90 days;
	mapping(address => bool) public paused;

	error IncorrectAssetOracle(address oracle, address oracleAsset, address configuredAsset);

	constructor(address _preferredOracle, address _referenceAsset) {
		require(_preferredOracle != address(0) && _referenceAsset != address(0), "ERR_ZERO_ADDRESS");
		address preferredOracleReferenceAsset = IReferenceAssetOracle(_preferredOracle).referenceAsset();
		if (preferredOracleReferenceAsset != _referenceAsset) revert IncorrectAssetOracle(_preferredOracle, preferredOracleReferenceAsset, _referenceAsset);

		preferredOracle = IReferenceAssetOracle(_preferredOracle);
		referenceAsset = _referenceAsset;
		_grantRole(ORACLE_ADMIN, msg.sender);
		_grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
	}

	function tokenReferenceValue(address tokenAddress, uint256 _amount) external view override returns (uint256 referenceValue, uint256 oldestObservation) {
		if (tokenAddress == referenceAsset || _amount == 0) {
			return (_amount, block.timestamp);
		}
		uint256 value;
		uint256 observationTimestamp;
		if (!paused[address(preferredOracle)]) {
			try preferredOracle.tokenReferenceValue(tokenAddress, _amount) returns (uint256 oracleValue, uint256 oracleTimestamp) {
				value = oracleValue;
				observationTimestamp = oracleTimestamp;
			} catch {
				value = 0;
				observationTimestamp = 0;
			}
			if (observationTimestamp + staleOraclePeriod > block.timestamp) {
				return (value, observationTimestamp);
			}
		}
		referenceValue = 0;
		uint256 observation = 0;
		for (uint8 i = 0; i < fallbackOracles.length; ++i) {
			if (paused[address(address(fallbackOracles[i]))]) continue;
			try fallbackOracles[i].tokenReferenceValue(tokenAddress, _amount) returns (uint256 oracleValue, uint256 oracleTimestamp) {
				value = oracleValue;
				observationTimestamp = oracleTimestamp;
			} catch {
				value = 0;
				observationTimestamp = 0;
			}
			if (observationTimestamp + staleOraclePeriod > block.timestamp && value >= referenceValue) {
				referenceValue = value;
				observation = observationTimestamp;
			}
		}
		if (observation + staleOraclePeriod <= block.timestamp) {}
		require(observation + staleOraclePeriod > block.timestamp, "ERR_STALE_ORACLE");
		return (referenceValue, observation);
	}

	function setFallbackOracles(address[] memory _fallbackOracles) external onlyRole(ORACLE_ADMIN) {
		fallbackOracles = new IReferenceAssetOracle[](_fallbackOracles.length);
		for (uint8 i = 0; i < _fallbackOracles.length; ++i) {
			address fallbackOracleReferenceAsset = IReferenceAssetOracle(_fallbackOracles[i]).referenceAsset();
			if (fallbackOracleReferenceAsset != referenceAsset) {
				revert IncorrectAssetOracle(_fallbackOracles[i], fallbackOracleReferenceAsset, referenceAsset);
			}
			fallbackOracles[i] = IReferenceAssetOracle(_fallbackOracles[i]);
		}
	}

	function setStaleOraclePeriod(uint256 newStaleOraclePeriod) external onlyRole(ORACLE_ADMIN) {
		staleOraclePeriod = newStaleOraclePeriod;
	}

	function setPaused(address oracle, bool pausedState) external onlyRole(ORACLE_ADMIN) {
		require(oracle != address(0), "ERR_ZERO_ADDRESS");
		paused[oracle] = pausedState;
	}

	function getPrice(address _base, address _quote) public view override returns (uint256 price, uint256 oldestObservation) {
		if (_base == _quote) {
			uint8 decimals = IERC20Metadata(_base).decimals();
			uint256 amount = 10 ** decimals;
			return (amount, block.timestamp);
		}
		uint256 value;
		uint256 observationTimestamp;
		if (!paused[address(preferredOracle)]) {
			try preferredOracle.getPrice(_base, _quote) returns (uint256 oracleValue, uint256 oracleTimestamp) {
				value = oracleValue;
				observationTimestamp = oracleTimestamp;
			} catch {
				value = 0;
				observationTimestamp = 0;
			}
			if (observationTimestamp + staleOraclePeriod > block.timestamp) {
				return (value, observationTimestamp);
			}
		}
		price = 0;
		uint256 observation = 0;
		for (uint8 i = 0; i < fallbackOracles.length; ++i) {
			if (paused[address(address(fallbackOracles[i]))]) continue;
			try fallbackOracles[i].getPrice(_base, _quote) returns (uint256 oracleValue, uint256 oracleTimestamp) {
				value = oracleValue;
				observationTimestamp = oracleTimestamp;
			} catch {
				value = 0;
				observationTimestamp = 0;
			}
			if (observationTimestamp + staleOraclePeriod > block.timestamp && value >= price) {
				price = value;
				observation = observationTimestamp;
			}
		}
		if (observation + staleOraclePeriod <= block.timestamp) {}
		require(observation + staleOraclePeriod > block.timestamp, "ERR_STALE_ORACLE");
		return (price, observation);
	}
}
