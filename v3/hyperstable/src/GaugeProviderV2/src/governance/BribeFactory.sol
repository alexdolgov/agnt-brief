// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {ERC1967Proxy} from "@openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol";
import {IBribeFactory} from "../interfaces/IBribeFactory.sol";
import {InternalBribe} from "./InternalBribe.sol";
import {ExternalBribe} from "./ExternalBribe.sol";

contract BribeFactory is IBribeFactory, Ownable2Step {
    address public immutable VOTER;

    address public internalBribeImplementation;
    address public externalBribeImplementation;

    event ImplementationsUpdated(
        address oldInternalBribeImplementation,
        address oldExternalBribeImplementation,
        address newInternalBribeImplementation,
        address newExternalBribeImplementation
    );

    constructor(address _voter, address _internalBribeImplementation, address _externalBribeImplementation)
        Ownable(msg.sender)
    {
        VOTER = _voter;

        internalBribeImplementation = _internalBribeImplementation;
        externalBribeImplementation = _externalBribeImplementation;

        emit ImplementationsUpdated(address(0), address(0), _internalBribeImplementation, _externalBribeImplementation);
    }

    function setImplementationAddresses(
        address _newInternalBribeImplementation,
        address _newExternalBribeImplementation
    ) external onlyOwner {
        internalBribeImplementation = _newInternalBribeImplementation;
        externalBribeImplementation = _newExternalBribeImplementation;

        emit ImplementationsUpdated(
            internalBribeImplementation,
            externalBribeImplementation,
            _newInternalBribeImplementation,
            _newExternalBribeImplementation
        );
    }

    function createInternalBribe(address[] memory allowedRewards) external returns (address) {
        InternalBribe bribe = InternalBribe(
            address(
                new ERC1967Proxy(
                    internalBribeImplementation,
                    abi.encodeWithSelector(InternalBribe.initialize.selector, allowedRewards)
                )
            )
        );

        assert(bribe.VOTER() == VOTER);

        return address(bribe);
    }

    function createExternalBribe(address[] memory _allowedRewards) external returns (address) {
        ExternalBribe bribe = ExternalBribe(
            address(
                new ERC1967Proxy(
                    externalBribeImplementation,
                    abi.encodeWithSelector(ExternalBribe.initialize.selector, _allowedRewards)
                )
            )
        );

        assert(bribe.VOTER() == VOTER);

        return address(bribe);
    }
}
