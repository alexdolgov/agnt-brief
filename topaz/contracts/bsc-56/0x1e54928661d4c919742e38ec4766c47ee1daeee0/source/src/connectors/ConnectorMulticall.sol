// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

interface IConnectorRegistryLike {
    function isConnector(address connector) external view returns (bool);
}

/// @title ConnectorMulticall
/// @notice Batches several connector actions into a single atomic transaction.
///         Delegatecalled once by a TopazAccount, it `delegatecall`s each
///         sub-connector in order — so every leg runs in the account's context
///         (shared storage + balance), and any combination of actions (zap,
///         exit, claim, rebalance, …) executes under one signature, atomically.
///
///         The account's own `executeBatch`/`executeDelegate` can't do this:
///         both are `nonReentrant` and `executeDelegate` is `onlyOwner`, so a
///         batch can't re-enter the delegate path. Batching therefore lives in a
///         connector, leaving the account / factory / registry frozen.
///
///         Security: this is a second delegatecall hop, so it re-checks the
///         registry for EVERY sub-connector before calling it — a sub-connector
///         that isn't allowlisted reverts the whole batch.
contract ConnectorMulticall {
    /// @dev The same ConnectorRegistry the account trusts. Baked in at deploy;
    ///      resolves correctly under delegatecall (immutables read from this
    ///      contract's code, not the account's).
    address public immutable registry;

    struct Call {
        address connector;
        bytes data;
    }

    event Batched(address indexed account, uint256 count);

    error ConnectorNotAllowed(address connector);

    constructor(address _registry) {
        registry = _registry;
    }

    /// @dev Delegatecalled by the account. `address(this)` is the account.
    ///      Each leg is itself a delegatecall into an allowlisted connector, so
    ///      nested immutables + storage resolve per-connector while custody stays
    ///      with the account. Reverts bubble verbatim (atomic all-or-nothing).
    function multicall(Call[] calldata calls) external payable returns (bytes[] memory results) {
        uint256 len = calls.length;
        results = new bytes[](len);
        for (uint256 i; i < len;) {
            address connector = calls[i].connector;
            if (!IConnectorRegistryLike(registry).isConnector(connector)) {
                revert ConnectorNotAllowed(connector);
            }
            (bool ok, bytes memory ret) = connector.delegatecall(calls[i].data);
            if (!ok) {
                assembly {
                    revert(add(ret, 0x20), mload(ret))
                }
            }
            results[i] = ret;
            unchecked {
                ++i;
            }
        }
        emit Batched(address(this), len);
    }
}
