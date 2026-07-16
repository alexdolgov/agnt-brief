// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import { MarionetteKey } from "../types/MarionetteKey.sol";
import { MarionetteId } from "../types/MarionetteId.sol";
import { Marionette } from "../libraries/Marionette.sol";
import { Incentive, IncentiveClaim } from "../types/Incentive.sol";

/**
 * @title IPuppeteer
 * @dev Interface for the Puppeteer contract.
 */
interface IPuppeteer {
    event Initialize(
        MarionetteKey indexed key,
        MarionetteId indexed id,
        string uri,
        address indexed admin,
        Marionette.VoteConfig voteConfig,
        Marionette.RewardConfig rewardConfig,
        Marionette.LockConfig lockConfig,
        bytes adapterData
    );

    event Mint(
        MarionetteId indexed id,
        uint256 indexed tokenId,
        uint256 indexed veId,
        address recipient,
        Marionette.RewardConfig rewardConfig,
        Marionette.LockConfig lockConfig,
        bytes adapterData
    );

    event Burn(MarionetteId indexed id, uint256 indexed tokenId, bytes adapterData);
    event SetCustomConfig(MarionetteId indexed id, uint256 tokenId, Marionette.ConfigType configType, bytes configData);
    event SetDefaultConfig(MarionetteId indexed id, Marionette.ConfigType configType, bytes configData);
    event SetPaused(MarionetteId indexed id, bool paused);
    event SetUri(MarionetteId indexed id, string uri);
    event Execute(MarionetteId indexed id, bytes adapterData);
    event Claim(MarionetteId indexed id, uint256 indexed tokenId, uint256 indexed veId, bytes adapterData);
    event Swap(MarionetteId indexed id, bytes adapterData);

    /**
     * @dev Initializes a new Marionette
     * @param key Marionette key
     * @param uri Marionette URI
     * @param defaultVoteConfig The default vote configuration
     * @param defaultRewardConfig The default reward configuration
     * @param defaultLockConfig The default lock configuration
     * @param adapterData Additional data to be used by the adapter contract
     */
    function initialize(
        MarionetteKey memory key,
        string calldata uri,
        Marionette.VoteConfig calldata defaultVoteConfig,
        Marionette.RewardConfig calldata defaultRewardConfig,
        Marionette.LockConfig calldata defaultLockConfig,
        bytes calldata adapterData
    ) external;

    /**
     * @dev Mints a new Marionette token and performs any additional adapter-specific actions
     * @param key Marionette key
     * @param veId veNFT ID in the voting escrow contract
     * @param rewardConfig Custom reward configuration
     * @param lockConfig Custom lock configuration
     * @param adapterData Additional data to be used by the adapter contract
     */
    function mint(
        MarionetteKey memory key,
        uint256 veId,
        Marionette.RewardConfig calldata rewardConfig,
        Marionette.LockConfig calldata lockConfig,
        bytes calldata adapterData
    ) external;

    /**
     * @dev Burns a Marionette NFT and performs any additional adapter-specific actions
     * @param key Marionette Key
     * @param tokenId The ID of the Marionette NFT to burn
     * @param adapterData Additional data to be used by the adapter contract
     */
    function burn(MarionetteKey memory key, uint256 tokenId, bytes calldata adapterData) external;

    /**
     * @dev Sets the default configuration for a Marionette instance.
     * @param key Marionette key
     * @param configType The type of configuration to set
     * @param configData The configuration data
     * @param adapterData Additional data to be used by the adapter contract
     */
    function setDefaultConfig(
        MarionetteKey memory key,
        Marionette.ConfigType calldata configType,
        bytes calldata configData,
        bytes calldata adapterData
    ) external;

    /**
     * @dev Sets the custom configuration for a Marionette
     * @param key Marionette key
     * @param tokenId The ID of the Marionette token
     * @param configType The type of configuration to set
     * @param configData The configuration data
     * @param adapterData Additional data to be used by the adapter contract
     */
    function setCustomConfig(
        MarionetteKey memory key,
        uint256 tokenId,
        Marionette.ConfigType calldata configType,
        bytes calldata configData,
        bytes calldata adapterData
    ) external;

    /**
     * @dev Executes a function on the Adapter contract using the provided key and adapter data
     * @param key Marionette key
     * @param adapterData Additional data to be used by the adapter contract
     */
    function execute(MarionetteKey memory key, bytes calldata adapterData) external;

    /**
     * @dev Sets Marionette paused state
     * @param key Marionette key
     * @param paused new paused state
     * @param adapterData Additional data to be used by the ISwapper contract
     */
    function setPaused(MarionetteKey memory key, bool paused, bytes calldata adapterData) external;

    /**
     * @dev Sets the URI for a given Marionette
     * @param key Marionette key
     * @param uri new URI
     */
    function setUri(MarionetteKey memory key, string calldata uri) external;

    /**
     * @dev Returns the current state of the Marionette
     * @param tokenId The ID of the Marionette to get the state of
     * @return A struct containing the current state of the Marionette
     */
    function getMarionette(uint256 tokenId) external view returns (Marionette.MarionetteState memory);

    /**
     * @dev Returns the current state of the Marionette key
     * @param key Marionette key
     * @return initialized Whether the key has been initialized
     * @return paused Whether the key is currently paused
     * @return uri The URI associated with the key
     * @return defaultVoteConfig The default vote configuration for the key
     * @return defaultRewardConfig The default reward configuration for the key
     * @return defaultLockConfig The default lock configuration for the key
     */
    function getState(MarionetteKey memory key)
        external
        view
        returns (
            bool initialized,
            bool paused,
            string memory uri,
            Marionette.VoteConfig memory defaultVoteConfig,
            Marionette.RewardConfig memory defaultRewardConfig,
            Marionette.LockConfig memory defaultLockConfig
        );
}
