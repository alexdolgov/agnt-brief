// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

/// @title Swap Storage
/// @dev Library for swap storage
library RebalanceSwap {
    bytes32 constant REBALANCE_SWAP_KEY = keccak256(abi.encode("xyz.elfi.storage.RebalanceSwap"));

    /// @dev Struct to store minting requests
    /// @param requests A mapping from request IDs to SWAP.Request
    struct Props {
        mapping(uint256 => Request) requests;
    }

    struct Request {
        address stakeToken;
        address baseToken;
        address stableToken;
        uint256 amount;
        uint256 maxNeedAmount;
        bool isToBaseToken;
        bool isPrepared;
    }

    function load() public pure returns (Props storage self) {
        bytes32 s = REBALANCE_SWAP_KEY;
        assembly {
            self.slot := s
        }
    }

    function create(uint256 requestId) external view returns (Request storage) {
        Props storage self = load();
        return self.requests[requestId];
    }

    function load(uint256 requestId) external view returns (Request storage) {
        Props storage self = load();
        return self.requests[requestId];
    }

    function get(uint256 requestId) external view returns (Request storage) {
        Props storage self = load();
        return self.requests[requestId];
    }

    function remove(uint256 requestId) external {
        Props storage self = load();
        delete self.requests[requestId];
    }
}
