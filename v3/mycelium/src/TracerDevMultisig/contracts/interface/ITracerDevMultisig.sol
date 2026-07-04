// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

/// @title The decimals interface for extending the ERC20 interface
interface ITracerDevMultisig {
	function propose(
		address[] memory targets,
		bytes[] memory proposalData
	) external;

    function execute(uint256 proposalId) external;

    function vote(
        uint256 proposalId,
        bool userVote
    ) external;
}

