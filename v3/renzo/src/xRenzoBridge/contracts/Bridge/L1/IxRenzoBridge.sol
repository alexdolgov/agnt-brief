// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.19;

interface IxRenzoBridge {
    /**
     * @notice Contains destination data for CCIP call
     *
     * @param destinationChainSelector chainlink CCIP destination chain selector ID
     * @param _renzoReceiver xRenzoDeposit receiver contract
     */
    struct CCIPDestinationParam {
        uint64 destinationChainSelector;
        address _renzoReceiver;
    }

    function sendPrice(CCIPDestinationParam[] calldata _destinationParam) external;
}
