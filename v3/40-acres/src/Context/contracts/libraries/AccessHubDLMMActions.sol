// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import {Errors} from "contracts/libraries/Errors.sol";
import {IVoter} from "contracts/interfaces/IVoter.sol";
import {IDLMMFeeCollector} from "contracts/DLMM/interfaces/IDLMMFeeCollector.sol";
import {IDLMMFactory} from "contracts/DLMM/interfaces/IDLMMFactory.sol";

library AccessHubDLMMActions {
    function acceptFactoryOwnership(IVoter voter) external {
        Ownable2Step(_factory(voter)).acceptOwnership();
    }

    function createPool(IVoter voter, address tokenX, address tokenY, uint24 activeId, uint16 binStep)
        external
        returns (address)
    {
        return address(IDLMMFactory(_factory(voter)).createLBPair(IERC20(tokenX), IERC20(tokenY), activeId, binStep));
    }

    function setTreasury(IVoter voter, address newTreasury) external {
        _feeCollector(voter).setTreasury(newTreasury);
    }

    function setTreasuryFees(IVoter voter, uint256 treasuryFees) external {
        _feeCollector(voter).setTreasuryFees(treasuryFees);
    }

    function setVoter(IVoter voter, address newVoter) external {
        _feeCollector(voter).setVoter(newVoter);
    }

    function setFeeSplit(IVoter voter, address[] calldata pools, uint16[] calldata protocolShares) external {
        require(pools.length == protocolShares.length, Errors.LENGTH_MISMATCH());

        IDLMMFactory dlmmFactory = IDLMMFactory(_factory(voter));
        for (uint256 i; i < pools.length; ++i) {
            dlmmFactory.setPoolProtocolShare(pools[i], protocolShares[i]);
        }
    }

    function setGlobalFeeSplit(IVoter voter, uint16 binStep, uint16 protocolShare) external {
        IDLMMFactory(_factory(voter)).setPresetProtocolShare(binStep, protocolShare);
    }

    function collectFees(IVoter voter, address pool) external {
        address dlmmFactory = voter.dlmmFactory();
        if (dlmmFactory == address(0)) return;

        address dlmmFeeCollector = IDLMMFactory(dlmmFactory).feeCollector();
        if (dlmmFeeCollector != address(0)) IDLMMFeeCollector(dlmmFeeCollector).collectProtocolFees(pool);
    }

    function _factory(IVoter voter) private view returns (address dlmmFactory) {
        dlmmFactory = voter.dlmmFactory();
        require(dlmmFactory != address(0), Errors.NOT_INIT());
    }

    function _feeCollector(IVoter voter) private view returns (IDLMMFeeCollector) {
        address dlmmFeeCollector = IDLMMFactory(_factory(voter)).feeCollector();
        require(dlmmFeeCollector != address(0), Errors.NOT_INIT());

        return IDLMMFeeCollector(dlmmFeeCollector);
    }
}
