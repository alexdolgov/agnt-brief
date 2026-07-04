// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

/// @title BalancerBoostProviderAdapter
/// @author Stake DAO
/// @notice Adapts the Balancer VotingEscrowDelegationProxy (which uses adjusted_balance_of)
///         to the IBalanceProvider interface (which uses balanceOf) expected by OnlyBoostAllocatorL2.
contract BalancerBoostProviderAdapter {
    address public immutable VOTING_ESCROW_DELEGATION_PROXY;

    constructor(address _votingEscrowDelegationProxy) {
        VOTING_ESCROW_DELEGATION_PROXY = _votingEscrowDelegationProxy;
    }

    function balanceOf(address _account) external view returns (uint256) {
        (bool success, bytes memory data) = VOTING_ESCROW_DELEGATION_PROXY.staticcall(
            abi.encodeWithSignature("adjusted_balance_of(address)", _account)
        );
        require(success, "adjusted_balance_of failed");
        return abi.decode(data, (uint256));
    }

    function totalSupply() external view returns (uint256) {
        (bool success, bytes memory data) = VOTING_ESCROW_DELEGATION_PROXY.staticcall(
            abi.encodeWithSignature("totalSupply()")
        );
        require(success, "totalSupply failed");
        return abi.decode(data, (uint256));
    }
}
