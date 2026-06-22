// SPDX-License-Identifier: AGPL-v3.0
pragma solidity ^0.8.21;


struct Call {
    bytes32 to; // supporting non EVM targets
    uint256 value;
    bytes data;
}

contract MockSwapBridgeAndCall {

    struct RemoteCallsParams {
        bytes32 router;
        bytes32 ism;
        Call[] calls;
        bytes hookMetadata;
    }

    struct ExternalCall {
        address target;
        uint256 value;
        bytes data;
    }

    address public fromToken;
    uint256 public fromAmount;
    address public approvalAddress;
    address public target;
    bytes public data;
    RemoteCallsParams public params;

    ExternalCall[] public preRemoteCalls;
    RemoteCallsParams public remoteCalls;
    ExternalCall[] public postRemoteCalls;

    /**
     * @dev Executes a token swap via LiFi, bridge to Bittensor EVM and call remote function of Bittensor EVM contract.
     *      ex: ERC20/ETH(Ethereum) -> USDC(Ethereum) -> USDC(Bittensor EVM) -> Remote Call(Bittensor EVM)
     * @param _fromToken The address of the swap from token
     * @param _fromAmount The amount of the swap from token
     * @param _approvalAddress The address of the approval address of lifi swap.
     * @param _target The address of the lifi related contract.
     * @param _data The call data to be sent to the target contract.
     * @param _params The call data array for the remote call of the dest chain.
     */
    function lifiSwapBridgeAndCall(
        address _fromToken,
        uint256 _fromAmount,
        address _approvalAddress,
        address _target,
        bytes calldata _data,
        RemoteCallsParams calldata _params
    ) external payable {
        fromToken = _fromToken;
        fromAmount = _fromAmount;
        approvalAddress = _approvalAddress;   
        target = _target;
        data = _data;
        params = _params;
    }

    /**
     * @dev Executes external calls, remote calls and external calls again.
     * @param _preRemoteCalls The external calls to be executed before the remote call.
     * @param _remoteCalls The remote call to be executed.
     * @param _postRemoteCalls The external calls to be executed after the remote call.
     */
    function remoteCallWithExternalCalls(
        ExternalCall[] calldata _preRemoteCalls,
        RemoteCallsParams calldata _remoteCalls,
        ExternalCall[] calldata _postRemoteCalls
    ) external {
        uint256 i;
        for (i; i < _preRemoteCalls.length; ++i) {
            preRemoteCalls.push(_preRemoteCalls[i]);
        }

        remoteCalls = _remoteCalls;

        for (i; i < _postRemoteCalls.length; ++i) {
            postRemoteCalls.push(_postRemoteCalls[i]);
        }
    }
}