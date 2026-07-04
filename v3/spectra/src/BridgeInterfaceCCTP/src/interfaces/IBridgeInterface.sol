// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.22;

/**
 * @title IBridgeInterface
 * @notice Generic interface a MetaVault SAFE (curator) calls to bridge assets (e.g. USDC via CCTP).
 */
interface IBridgeInterface {
    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/
    event BridgeInitiated(
        address indexed safe,
        address indexed tokenIn,
        uint256 amount,
        uint32 indexed dstChainId,
        address dstSafe,
        string bridge, // e.g., "CCTP"
        address tokenOut
    );

    /*//////////////////////////////////////////////////////////////
                                ERRORS
    //////////////////////////////////////////////////////////////*/
    error ZeroAmount();
    error ZeroAddress();

    /*//////////////////////////////////////////////////////////////
                              VIEW HELPERS
    //////////////////////////////////////////////////////////////*/
    function registry() external view returns (address);

    function bridgeInfrastructure() external view returns (address);

    /*//////////////////////////////////////////////////////////////
                               ACTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Bridge an asset from the calling SAFE to a destination SAFE using Circle CCTP.
     * @param tokenIn        ERC20 token to bridge (USDC on source chain).
     * @param amount       Amount to bridge (pre-fee).
     * @param dstChainId   Destination EVM chainId.
     * @param dstSafe      Destination SAFE (recipient on destination).
     * @param tokenOut       Expected token on destination chain (USDC on destination chain).
     * @param params      Additional parameters for the bridge.
     */
    function bridgeAsset(
        address tokenIn,
        uint256 amount,
        uint32 dstChainId,
        address dstSafe,
        address tokenOut,
        bytes calldata params
    ) external payable;

    /**
     * @notice Update the bridge infrastructure address.
     * @param newInfrastructure New bridge infrastructure address.
     */
    function setBridgeInfrastructure(address newInfrastructure) external;
}
