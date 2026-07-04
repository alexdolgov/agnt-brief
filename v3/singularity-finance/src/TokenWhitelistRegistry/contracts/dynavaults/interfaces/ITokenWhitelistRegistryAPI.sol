// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

interface ITokenWhitelistRegistryAPI {
	function setEnforceTokenWhitelist(address token, bool enabled) external;

	function whitelistUserForToken(address token, address user, bool whitelisted) external;

	function isTokenAllowedForUser(address token, address user) external view returns (bool);
}
