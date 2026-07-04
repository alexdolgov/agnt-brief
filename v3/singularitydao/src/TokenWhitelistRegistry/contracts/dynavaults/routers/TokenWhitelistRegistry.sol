// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "../interfaces/TokenWhitelistRegistryAPI.sol";

/**
 * @title Token Whitelist Registry which implements a per user token whitelist
 * @notice Enforcement of the whitelist can be toggled on a per token basis
 * @notice Grants DEFAULT_ADMIN_ROLE to the deployer
 */
contract TokenWhitelistRegistry is TokenWhitelistRegistryAPI, AccessControl {
	// allows to lookup an enabled flag for a whitelist per token address
	mapping(address => bool) public enforceTokenWhitelist;
	// allows to store a whitelist flag for each token/user pair
	mapping(address => mapping(address => bool)) public tokenWhitelist;

	event UpdateEnforceTokenWhitelist(address token, bool enabled);
	event UpdateWhitelistForToken(address token, address user, bool whitelisted);

	constructor() {
		_grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
	}

	function setEnforceTokenWhitelist(address token, bool enabled) external override onlyRole(DEFAULT_ADMIN_ROLE) {
		enforceTokenWhitelist[token] = enabled;
		emit UpdateEnforceTokenWhitelist(token, enabled);
	}

	function whitelistUserForToken(address token, address user, bool whitelisted) external override onlyRole(DEFAULT_ADMIN_ROLE) {
		tokenWhitelist[token][user] = whitelisted;
		emit UpdateWhitelistForToken(token, user, whitelisted);
	}

	function isTokenAllowedForUser(address token, address user) external view override returns (bool) {
		return !enforceTokenWhitelist[token] || tokenWhitelist[token][user];
	}
}
