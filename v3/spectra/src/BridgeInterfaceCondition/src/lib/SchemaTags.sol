// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.22;

/// @title SchemaTags
/// @notice 4-byte tags identifying the shape of `bytes`-typed registry values.
///         First 4 bytes of each value; consumers reject on mismatch.
/// @dev    `bytes4(keccak256("<InterfaceOrContract>.<StructName>"))`. No version
///         suffixes — new shape = new semantic name. TS mirror at
///         `packages/spectra-sdk/metavaults/registry/schemaTags.ts`; CI checks drift.
library SchemaTags {
    bytes4 internal constant BRIDGE_PATH_CONFIG =
        bytes4(keccak256("IBridgeInterface.BridgePathConfig"));
}
