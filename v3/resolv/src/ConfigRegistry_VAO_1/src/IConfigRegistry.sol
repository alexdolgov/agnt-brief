// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

interface IConfigRegistry {
    /// @notice Thrown if no config exists for feed with id `feedId`.
    error ConfigDoesNotExist(uint8 feedId);

    /// @notice Emitted when config for feeds `feedsBloom` updated.
    /// @param caller The caller's address.
    /// @param feedsBloom The feeds encoded via bloom mechanism which's config
    ///                   got updated.
    event ConfigUpdated(address indexed caller, uint indexed feedsBloom);

    /// @notice Emitted when config for feeds `feedsBloom` removed.
    /// @param caller The caller's address.
    /// @param feedsBloom The feeds encoded via bloom mechanism which's config
    ///                   got removed.
    event ConfigRemoved(address indexed caller, uint indexed feedsBloom);

    // -- Public Read Functions --

    /// @notice Returns the url and metadata of feed `feed`'s config.
    ///
    /// @dev Reverts if:
    ///      - Config does not exist for feed `feed`
    ///
    /// @param feed The feed address.
    /// @return url The url of the feed's config.
    /// @return contentHash The keccak256 hash of the feed config's content.
    /// @return age The age of the config.
    function configs(address feed)
        external
        view
        returns (string memory url, bytes32 contentHash, uint age);

    // -- Auth'ed Functions --

    /// @notice Updates the config's url and config's content hash for feeds
    ///         encoded in bloom filter `feedsBloom`.
    ///
    /// @dev Only callable by auth'ed addresses.
    ///
    /// @dev Reverts if:
    ///      - Maximum number of config updates performed
    ///
    /// @param feedsBloom The bloom filter encoding the feeds to update their
    ///                   config's url and content hash.
    /// @param url The url of the new config.
    /// @param contentHash The keccak256 hash of the config's content.
    function setConfig(
        uint feedsBloom,
        string calldata url,
        bytes32 contentHash
    ) external;

    /// @notice Removes the config for feeds encoded in bloom filter
    ///         `feedsBloom`.
    ///
    /// @dev Only callable by auth'ed addresses.
    ///
    /// @param feedsBloom The bloom filter encoding the feeds to remove their
    ///                   config.
    function unsetConfig(uint feedsBloom) external;
}
