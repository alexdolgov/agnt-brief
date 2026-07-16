// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface ISymmio {
	struct SchnorrSign {
		uint256 signature;
		address owner;
		address nonce;
	}

	struct SingleUpnlSig {
		bytes reqId;
		uint256 timestamp;
		int256 upnl;
		bytes gatewaySignature;
		SchnorrSign sigs;
	}

	function depositFor(address user, uint256 amount) external;

	function depositAndAllocateFor(address user, uint256 amount) external;

	function internalTransfer(address user, uint256 amount) external;

	function getCollateral() external view returns (address);

	function deallocate(uint256 amount, SingleUpnlSig calldata sig) external;
}
