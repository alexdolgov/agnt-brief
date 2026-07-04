// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "../interfaces/IReferenceAssetOracle.sol";
import "../utils/Checks.sol";

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
	using Checks for address;

	bytes32 public constant ORACLE_ADMIN = keccak256(abi.encode("ORACLE_ADMIN"));

	IReferenceAssetOracle public immutable preferredOracle;
	address public immutable override referenceAsset;

	IReferenceAssetOracle[] public fallbackOracles;
	mapping(address => bool) public paused;

	error IncorrectAssetOracle(address preferredOracleAddress, address preferredOracleReferenceAsset, address referenceAssetAddress);

	event PausedOracle(address oracleAddress);

	constructor(address preferredOracleAddress, address referenceAssetAddress) {
		preferredOracleAddress.requireNonZeroAddress();
		referenceAssetAddress.requireNonZeroAddress();
		address preferredOracleReferenceAsset = IReferenceAssetOracle(preferredOracleAddress).referenceAsset();
		if (preferredOracleReferenceAsset != referenceAssetAddress)
			revert IncorrectAssetOracle(preferredOracleAddress, preferredOracleReferenceAsset, referenceAssetAddress);
		preferredOracle = IReferenceAssetOracle(preferredOracleAddress);
		referenceAsset = referenceAssetAddress;
		_grantRole(ORACLE_ADMIN, msg.sender);
		_grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
	}

	function tokenReferenceValue(address tokenAddress, uint256 amount) external view override returns (uint256 referenceValue, uint256 oldestObservation) {
		if (tokenAddress == referenceAsset || amount == 0) {
			return (amount, block.timestamp);
		}
		if (!paused[address(preferredOracle)]) {
			try preferredOracle.tokenReferenceValue(tokenAddress, amount) returns (uint256 oracleValue, uint256 oracleTimestamp) {
				if (oracleTimestamp != 0) return (oracleValue, oracleTimestamp);
			} catch {}
		}
		for (uint8 i = 0; i < fallbackOracles.length; ++i) {
			if (paused[address(address(fallbackOracles[i]))]) continue;
			try fallbackOracles[i].tokenReferenceValue(tokenAddress, amount) returns (uint256 oracleValue, uint256 oracleTimestamp) {
				if (oracleTimestamp != 0) return (oracleValue, oracleTimestamp);
			} catch {}
		}
		return (0, 0);
	}

	function setFallbackOracles(address[] memory newFallbackOracles) external onlyRole(ORACLE_ADMIN) {
		fallbackOracles = new IReferenceAssetOracle[](newFallbackOracles.length);
		for (uint8 i = 0; i < newFallbackOracles.length; ++i) {
			address fallbackOracleReferenceAsset = IReferenceAssetOracle(newFallbackOracles[i]).referenceAsset();
			if (fallbackOracleReferenceAsset != referenceAsset) {
				revert IncorrectAssetOracle(newFallbackOracles[i], fallbackOracleReferenceAsset, referenceAsset);
			}
			fallbackOracles[i] = IReferenceAssetOracle(newFallbackOracles[i]);
		}
	}

	function setPaused(address oracleAddress, bool pausedState) external onlyRole(ORACLE_ADMIN) {
		oracleAddress.requireNonZeroAddress();
		paused[oracleAddress] = pausedState;
		emit PausedOracle(oracleAddress);
	}

	function getPrice(address base, address quote) public view override returns (uint256 price, uint256 oldestObservation) {
		if (base == quote) {
			uint8 decimals = IERC20Metadata(base).decimals();
			uint256 amount = 10 ** decimals;
			return (amount, block.timestamp);
		}
		if (!paused[address(preferredOracle)]) {
			try preferredOracle.getPrice(base, quote) returns (uint256 oracleValue, uint256 oracleTimestamp) {
				if (oracleTimestamp != 0) return (oracleValue, oracleTimestamp);
			} catch {}
		}
		for (uint8 i = 0; i < fallbackOracles.length; ++i) {
			if (paused[address(address(fallbackOracles[i]))]) continue;
			try fallbackOracles[i].getPrice(base, quote) returns (uint256 oracleValue, uint256 oracleTimestamp) {
				if (oracleTimestamp != 0) return (oracleValue, oracleTimestamp);
			} catch {}
		}
		return (0, 0);
	}
}
