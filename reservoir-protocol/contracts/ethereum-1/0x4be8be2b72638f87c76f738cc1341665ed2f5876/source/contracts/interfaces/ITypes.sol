// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

interface ITypes {
	enum FeeType {
		Gas,
		DistributionToken
	}

	enum WhitelistStatus {
		Disabled,
		Merkle,
		TrustedDistributors,
		MerkleAndTrustedDistributors
	}
}
