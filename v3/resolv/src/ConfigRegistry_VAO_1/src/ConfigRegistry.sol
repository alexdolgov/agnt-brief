// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import {Auth} from "chronicle-std/auth/Auth.sol";

import {IConfigRegistry} from "./IConfigRegistry.sol";

/**
 * @title ConfigRegistry
 *
 * @notice Registry linking feeds to their offchain provided configs
 *
 * @dev Note that this registry is based on the assumption that each feed has a
 *      unique highest-order byte identifier. For more info, see [FeedRegistry].
 *
 * @dev In order to provide maximal flexibility for feed configs, the registry
 *      manages each feed's config separately, i.e. each feed can have its own
 *      config.
 *
 * @dev Note that due to internal technicalities the registry has a global upper
 *      limit for config updates of 65,535 - 1.
 *
 *      Once this limit is reached, no further config updates can be performed!
 *
 * @custom:reference [FeedRegistry]: https://github.com/chronicleprotocol/feed-registry
 */
contract ConfigRegistry is IConfigRegistry, Auth {
    struct Config {
        string url;
        bytes32 contentHash;
        uint32 age;
    }

    // -- Storage --

    /// @dev Statically allocated array holding the feeds' pointers to their
    ///      respective config.
    ///
    /// @dev Note that pointers are of size uint16. Therefore, the registry
    ///      supports up to 65,535 - 1 config updates.
    uint16[256] internal _ptrs;

    /// @dev Append-only array holding Config structs.
    ///
    /// @custom:invariant _configs[0] = NULL
    /// @custom:invariant _configs.length <= type(uint16).max
    Config[] internal _cfgs;

    // -- Constructor --

    constructor(address initialAuthed) Auth(initialAuthed) {
        // Ensure uninitialized, ie zero, pointers are invalid.
        _cfgs.push(Config("", bytes32(0), uint32(0)));
    }

    // -- Public Read Functions --

    /// @inheritdoc IConfigRegistry
    function configs(address feed)
        external
        view
        returns (string memory, bytes32, uint)
    {
        // Derive feed's feedId.
        uint8 feedId = uint8(uint(uint160(feed)) >> 152);

        // Load feed's config pointer from storage.
        uint16 ptr = _ptrs[feedId];

        // Revert if pointer is zero.
        if (ptr == 0) {
            revert ConfigDoesNotExist(feedId);
        }

        // Load feed's config into memory.
        Config memory cfg = _cfgs[ptr];
        // assert(cfg.age != 0);

        // Return feed config's url, content hash, and age.
        return (cfg.url, cfg.contentHash, cfg.age);
    }

    // -- Auth'ed Functions --

    /// @inheritdoc IConfigRegistry
    function setConfig(
        uint feedsBloom,
        string calldata url,
        bytes32 contentHash
    ) external auth {
        require(_cfgs.length < type(uint16).max);

        // Add config to storage and get pointer.
        _cfgs.push(Config(url, contentHash, uint32(block.timestamp)));
        uint16 ptr = uint16(_cfgs.length - 1);

        // Update config pointer for each feed included in feedsBloom.
        for (uint i; i < 256; i++) {
            if (feedsBloom & (1 << i) != 0) {
                _ptrs[i] = ptr;
            }
        }

        emit ConfigUpdated({caller: msg.sender, feedsBloom: feedsBloom});
    }

    /// @inheritdoc IConfigRegistry
    function unsetConfig(uint feedsBloom) external auth {
        // Set config pointer to zero for each feed included in feedsBloom.
        for (uint i; i < 256; i++) {
            if (feedsBloom & (1 << i) != 0) {
                delete _ptrs[i];
            }
        }

        emit ConfigRemoved({caller: msg.sender, feedsBloom: feedsBloom});
    }
}

/**
 * @dev Contract overwrite to deploy contract instances with specific naming.
 *
 *      For more info, see docs/Deployment.md.
 */
contract ConfigRegistry_VAO_1 is ConfigRegistry {

    constructor(address initialAuthed) ConfigRegistry(initialAuthed) {}
}
