// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2023 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license
pragma solidity >=0.8.19;

struct SchnorrSign {
	uint256 signature;
	address owner;
	address nonce;
}

struct SingleUpnlAndPriceSig {
	bytes reqId;
	uint256 timestamp;
	int256 upnl;
	uint256 price;
	bytes gatewaySignature;
	SchnorrSign sigs;
}
