// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

interface ITeller {
    struct BridgeData {
        uint32 chainSelector;
        address destinationChainReceiver;
        address bridgeFeeToken;
        uint64 messageGas;
        bytes data;
    }

    /**
     * @dev Deposit assets to the pool and mint shares.
     * @param depositAssets The address of the assets to deposit.
     * @param depositAmount The amount of assets to deposit.
     * @param minimumMint The minimum number of shares to mint.(get from contract AccountantWithRateProvider)
     * @return shares The number of shares minted.
     */
    function deposit(address depositAssets, uint256 depositAmount, uint256 minimumMint)
        external
        returns (uint256 shares);

    /**
     * @dev Bridges shares to another chain.
     * @param shareAmount The number of shares to bridge.
     * @param data The bridge data.
     * @return messageId The message id of the bridge transaction.
     */
    function bridge(uint256 shareAmount, BridgeData calldata data) external payable returns (bytes32 messageId);

    /**
     * @dev Preview fee required to bridge shares.
     * @param shareAmount The number of shares to bridge.
     * @param data The bridge data.
     * @return fee The fee required to bridge the shares in native token.
     */
    function previewFee(uint256 shareAmount, BridgeData calldata data) external view returns (uint256 fee);
}
