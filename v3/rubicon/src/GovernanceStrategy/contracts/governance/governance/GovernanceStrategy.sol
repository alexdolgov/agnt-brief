// SPDX-License-Identifier: agpl-3.0
pragma solidity 0.7.5;
pragma abicoder v2;

import {IGovernanceStrategy} from "../interfaces/IGovernanceStrategy.sol";
import {IERC20} from "../interfaces/IERC20.sol";
import {IGovernancePowerDelegationToken} from "../interfaces/IGovernancePowerDelegationToken.sol";

/**
 * @title Governance Strategy contract
 * @dev Smart contract containing logic to measure users' relative power to propose and vote.
 * User Power = User Power from Rubi Token.
 * User Power from Token = Token Power + Token Power as Delegatee [- Token Power if user has delegated]
 * Two wrapper functions linked to Rubi Tokens's GovernancePowerDelegationERC20.sol implementation
 * - getPropositionPowerAt: fetching a user Proposition Power at a specified block
 * - getVotingPowerAt: fetching a user Voting Power at a specified block
 * @author Aave
 **/
contract GovernanceStrategy is IGovernanceStrategy {
    address public immutable RUBI;

    /**
     * @dev Constructor, register tokens used for Voting and Proposition Powers.
     * @param rubi The address of the RUBI Token contract.
     **/
    constructor(address rubi) {
        RUBI = rubi;
    }

    /**
     * @dev Returns the total supply of Proposition Tokens Available for Governance
     * = RUBI Available for governance.
     * = Supply of RUBI
     * @param blockNumber Blocknumber at which to evaluate
     * @return total supply at blockNumber
     **/
    function getTotalPropositionSupplyAt(
        uint256 blockNumber
    ) public view override returns (uint256) {
        return IERC20(RUBI).totalSupplyAt(blockNumber);
    }

    /**
     * @dev Returns the total supply of Outstanding Voting Tokens
     * @param blockNumber Blocknumber at which to evaluate
     * @return total supply at blockNumber
     **/
    function getTotalVotingSupplyAt(
        uint256 blockNumber
    ) public view override returns (uint256) {
        return getTotalPropositionSupplyAt(blockNumber);
    }

    /**
     * @dev Returns the Proposition Power of a user at a specific block number.
     * @param user Address of the user.
     * @param blockNumber Blocknumber at which to fetch Proposition Power
     * @return Power number
     **/
    function getPropositionPowerAt(
        address user,
        uint256 blockNumber
    ) public view override returns (uint256) {
        return
            _getPowerByTypeAt(
                user,
                blockNumber,
                IGovernancePowerDelegationToken.DelegationType.PROPOSITION_POWER
            );
    }

    /**
     * @dev Returns the Vote Power of a user at a specific block number.
     * @param user Address of the user.
     * @param blockNumber Blocknumber at which to fetch Vote Power
     * @return Vote number
     **/
    function getVotingPowerAt(
        address user,
        uint256 blockNumber
    ) public view override returns (uint256) {
        return
            _getPowerByTypeAt(
                user,
                blockNumber,
                IGovernancePowerDelegationToken.DelegationType.VOTING_POWER
            );
    }

    function _getPowerByTypeAt(
        address user,
        uint256 blockNumber,
        IGovernancePowerDelegationToken.DelegationType powerType
    ) internal view returns (uint256) {
        return
            IGovernancePowerDelegationToken(RUBI).getPowerAtBlock(
                user,
                blockNumber,
                powerType
            );
    }
}
