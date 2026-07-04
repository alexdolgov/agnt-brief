// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.16;

import "../address-registries/L2AddressRegistryInterfaces.sol";

contract SetFiveMillionProposalThresholdAction {
    uint256 public constant proposalThreshold = 5_000_000 ether;

    IL2AddressRegistry public immutable registry;

    constructor(IL2AddressRegistry _registry) {
        registry = _registry;
    }

    function perform() public {
        IL2ArbitrumGoverner gov = registry.coreGov();

        bytes memory propThresholdData = abi.encodeWithSelector(
            IL2ArbitrumGoverner.setProposalThreshold.selector, proposalThreshold
        );
        gov.relay(address(gov), 0, propThresholdData);

        require(
            gov.proposalThreshold() == proposalThreshold,
            "SetFiveMillionProposalThresholdAction: Proposal threshold not set"
        );
    }
}