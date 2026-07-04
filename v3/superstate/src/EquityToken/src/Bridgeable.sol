// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import {IBridgeable} from "./interfaces/IBridgeable.sol";

/**
 * @title Bridgeable
 * @notice Abstract contract implementing cross-chain bridging functionality with ERC-7201 namespaced storage
 * @dev Allows tokens to be burned on one chain and minted on another chain
 */
abstract contract Bridgeable is IBridgeable {
    /**
     * @dev Storage struct using ERC-7201 namespaced pattern
     * @custom:storage-location erc7201:superstate.storage.bridgeable
     */
    struct BridgeableStorage {
        mapping(uint256 chainId => bool supported) supportedChainIds;
    }
    
    // keccak256(abi.encode(uint256(keccak256(bytes("superstate.storage.bridgeable"))) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant BRIDGEABLE_STORAGE_LOCATION = 
        0xe4e4f071f9b1db3b4b73cfb89f93997eef9d90809fdd474c473bf010d9361e00;
    /*
        Requirements for implementation:
        1. _requireAuth() must be implemented by the inheriting contract
        2. _requireNotAccountingPaused() must be implemented by the inheriting contract
        3. _requireAllowed() must be implemented by the inheriting contract
        4. _burn() must be implemented by the inheriting contract
    */


    /**
     * @dev Hook to require authorization for administrative actions
     * @notice Must be implemented by inheriting contract
     */
    function _requireAuth() internal view virtual;
    /**
     * @dev Hook to verify if accounting is not paused
     * @notice Must be implemented by inheriting contract
     */
    function _requireNotAccountingPaused() internal view virtual;

    /**
     * @dev Hook to verify if an address is allowed
     * @param addr The address to check
     * @notice Must be implemented by inheriting contract
     */
    function _requireAllowed(address addr) internal view virtual;

    /**
     * @dev Hook to burn tokens
     * @param from The address to burn tokens from
     * @param amount The amount of tokens to burn
     * @notice Must be implemented by inheriting contract
     */
    function _burn(address from, uint256 amount) internal virtual;

    /*
        Provides the following to be used:
        1. setChainIdSupport(uint256 chainId, bool supported) - sets support status for a specific chain ID, _requireAuth
        2. isChainIdSupported(uint256 chainId) public view
        3. bridge(uint256 amount,
        address ethDestinationAddress,
        string memory otherDestinationAddress,
        uint256 chainId)
        4. bridgeToBookEntry(uint256 amount)
    */
    /**
     * @dev Returns whether a chain ID is supported for bridging
     * @param chainId The chain ID to check
     * @return True if the chain ID is supported, false otherwise
     */
    function isChainIdSupported(uint256 chainId) public view returns (bool) {
        BridgeableStorage storage $ = _getBridgeableStorage();
        return $.supportedChainIds[chainId];
    }

    /**
     * @dev Sets support status for a specific chain ID
     * @param chainId The chain ID to update
     * @param supported Whether the chain ID should be supported
     */
    function setChainIdSupport(uint256 chainId, bool supported) external virtual {
        _requireAuth();

        if (isChainIdSupported(chainId) == supported) revert BadArgsBridgeable();
        if (chainId == block.chainid) revert BridgeChainIdDestinationNotSupported();

        emit SetChainIdSupport({
            chainId: chainId,
            oldSupported: !supported,
            newSupported: supported
        });

        _setChainIdSupport(chainId, supported);
    }


    /**
     * @notice Burns tokens from the caller to bridge to another chain
     * @dev If destination address on chainId isn't on allowlist, or chainID isn't supported, tokens burn to book entry.
     * @dev chainId as 0 indicates wanting to burn tokens to book entry, for use through the Superstate UI.
     * @param amount Amount of tokens to burn
     * @param ethDestinationAddress ETH address to send to on another chain
     * @param otherDestinationAddress Non-EVM addresses to send to on another chain
     * @param chainId Numerical identifier of destination chain to send tokens to
     */
    function bridge(
        uint256 amount,
        address ethDestinationAddress,
        string memory otherDestinationAddress,
        uint256 chainId
    ) public virtual {
        _requireNotAccountingPaused();
        _requireAllowed(msg.sender);

        if (amount == 0) revert ZeroSuperstateTokensOutBridgeable();

        if (ethDestinationAddress != address(0) && bytes(otherDestinationAddress).length != 0) {
            revert TwoDestinationsInvalid();
        }

        if (chainId == 0 && (ethDestinationAddress != address(0) || bytes(otherDestinationAddress).length != 0)) {
            revert OnchainDestinationSetForBridgeToBookEntry();
        }

        if (!isChainIdSupported(chainId)) revert BridgeChainIdDestinationNotSupported();

        _burn(msg.sender, amount);

        emit Bridge({
            caller: msg.sender,
            src: msg.sender,
            amount: amount,
            ethDestinationAddress: ethDestinationAddress,
            otherDestinationAddress: otherDestinationAddress,
            chainId: chainId
        });
    }

    /**
     * @dev Burns tokens from the caller to bridge to Superstate book entry
     * @param amount Amount of tokens to burn
     */
    function bridgeToBookEntry(uint256 amount) external virtual {
        bridge({
            amount: amount,
            ethDestinationAddress: address(0),
            otherDestinationAddress: string(new bytes(0)),
            chainId: 0
        });
    }
    /**
     * @dev Returns the BridgeableStorage struct
     * @return $ Storage pointer to the BridgeableStorage struct
     */
    function _getBridgeableStorage() private pure returns (BridgeableStorage storage $) {
        assembly {
            $.slot := BRIDGEABLE_STORAGE_LOCATION
        }
    }

    /**
     * @dev Sets support status for a chain ID
     * @param chainId The chain ID to update
     * @param supported Whether the chain ID should be supported
     */
    function _setChainIdSupport(uint256 chainId, bool supported) internal {
        BridgeableStorage storage $ = _getBridgeableStorage();
        $.supportedChainIds[chainId] = supported;
    }

    function __Bridgeable_init() internal {
        // Support chainId 0 for book entry
        _setChainIdSupport(0, true);
    }

}