// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

/**
 * @title IHost
 * @notice Defines external and public functions for {LzVestingHostChain}.
 */
interface IHost {
    /**
     * @notice Initialize {LzVestingHostChain} contract.
     * @dev Use `reinitializer(2)` as we initialize contract in 2 times:
     * 1. Common parts shared between crosschain and not crosschain IGOVesting
     *    with `initializeCrowdfunding`
     * 2. Crosschain configuration with `init`
     *
     * We could have refactor this into a single function though this would
     * prevent us from using a common method in IGOFactory to deploy IGOs and
     * IGOVesting not matter if crosschain compatible or not.
     *
     * @param lzEndpoint_ Address of the {ILayerZeroEndpoint}, see the official doc:
     * https://layerzero.gitbook.io/docs/technical-reference/mainnet/supported-chain-ids
     * @param hostChain_ Current chain id of where the {IGO} and {LzVestingHostChain} are deployed, using
     *        nomenclature LayerZero.
     * @param targetChain_ Chain id where {LzClaimRefundTargetChain} is deployed, using LayerZero nomenclature.
     */
    function init(
        address lzEndpoint_,
        uint16 hostChain_,
        uint16 targetChain_
    ) external;

    /**
     * @notice Estimate fees for a crosschain transaction by requesting LayerZero endpoint.
     *
     * @param _dstChainId Chain id where the call will be made to, using  LayerZero nomenclature.
     * @param _payload Payload to send to the destination chain - abi.encode(...).
     * @param _useZro Whether to use ZERO token for fees or native (ETH, BNB, ARB, etc...).
     * @param _adapterParams Params to send to the destination chain adapter - abi.encode(...).
     */
    function estimateFee(
        uint16 _dstChainId,
        bytes calldata _payload,
        bool _useZro,
        bytes calldata _adapterParams
    ) external view returns (uint nativeFee, uint zroFee);

    /**
     * @notice Host chain where call are made from, using LayerZero nomenclature.
     */
    function getHostChain() external view returns (uint16);

    /**
     * @notice Target chain where call are made to, using LayerZero nomenclature.
     */
    function getTargetChain() external view returns (uint16);

    ///////////////// PUBLIC /////////////////
    /**
     * @notice Update vesting from crosschain call of {LzClaimRefundTargetChain} contract.
     * @dev Send a call back to target chain to release the right amount of tokens to `_wallet`. Only
     *      LayerZero endpoint can call this function.
     * @custom:audit The only reason this function is made public is to receive native tokens from
     *               LayerZero endpoint. This is a requirement for crosschain ping-pong calls.
     *
     * @param _wallet Address of the wallet which requested to claim their due on target chain from
     *        {LzClaimRefundTargetChain.claim}.
     */
    function hostClaimUpdate(address _wallet) external payable;
}
