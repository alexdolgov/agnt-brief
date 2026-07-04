// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "./DynaRouterAPI.sol";

interface IDynaRouter is DynaRouterAPI {
	function getRegistry() external view returns (address);
}
