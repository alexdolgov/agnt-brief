// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

interface ICCTPBridge {
	struct CCTPConfig {
		address tokenMessenger;
		address burnToken;
		address mintRecipient;
		uint32 destinationDomain;
	}

	function configCCTPBridge(CCTPConfig memory config) external;

	function addressToBytes32(address addr) external pure returns (bytes32);

	function bridgeWithCCTP(uint256 amount) external returns (uint64 nonce);
}
