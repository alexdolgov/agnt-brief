// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

library Marionette {
    error InvalidStatus();

    struct ConfigType {
        bool vote;
        bool reward;
        bool lock;
    }

    enum RewardMode {
        VoteOnly,
        Default,
        Compound,
        Custom
    }

    struct RewardConfig {
        RewardMode rewardMode;
        bytes data;
    }

    struct VoteConfig {
        address[] gauges;
        uint256[] weights;
        bytes data;
    }

    enum LockMode {
        None,
        Max,
        Maintain,
        Custom
    }

    struct LockConfig {
        LockMode lockMode;
        bytes data;
    }

    struct MarionetteState {
        uint256 veId;
        RewardConfig customRewardConfig;
        LockConfig customLockConfig;
    }

    struct State {
        bool initialized;
        bool paused;
        string uri;
        VoteConfig defaultVoteConfig;
        RewardConfig defaultRewardConfig;
        LockConfig defaultLockConfig;
        mapping(uint256 => MarionetteState) marionette;
        mapping(uint256 veId => uint256 tokenId) veIdToTokenId;
    }

    function initialize(
        State storage state,
        string memory uri,
        VoteConfig memory defaultVoteConfig,
        RewardConfig memory defaultRewardConfig,
        LockConfig memory defaultLockConfig
    ) internal {
        state.initialized = true;
        state.paused = true;
        state.uri = uri;
        state.defaultVoteConfig = defaultVoteConfig;
        state.defaultRewardConfig = defaultRewardConfig;
        state.defaultLockConfig = defaultLockConfig;
    }

    function mint(
        State storage state,
        uint256 tokenId,
        uint256 veId,
        RewardConfig memory rewardConfig,
        LockConfig memory lockConfig
    ) internal {
        state.marionette[tokenId].veId = veId;
        state.marionette[tokenId].customRewardConfig = rewardConfig;
        state.marionette[tokenId].customLockConfig = lockConfig;
        state.veIdToTokenId[veId] = tokenId;
    }

    function burn(State storage state, uint256 tokenId) internal {
        delete state.marionette[tokenId];
    }

    function setPaused(State storage state, bool paused) internal {
        if (state.paused == paused) revert InvalidStatus();

        state.paused = paused;
    }

    function setUri(State storage state, string memory uri) internal {
        state.uri = uri;
    }

    function setDefaultConfig(State storage state, ConfigType memory configType, bytes memory configData) internal {
        if (configType.vote) {
            (VoteConfig memory config,,) = abi.decode(configData, (VoteConfig, RewardConfig, LockConfig));
            state.defaultVoteConfig = config;
        }
        if (configType.reward) {
            (, RewardConfig memory config,) = abi.decode(configData, (VoteConfig, RewardConfig, LockConfig));
            state.defaultRewardConfig = config;
        }
        if (configType.lock) {
            (,, LockConfig memory config) = abi.decode(configData, (VoteConfig, RewardConfig, LockConfig));
            state.defaultLockConfig = config;
        }
    }

    function setCustomConfig(
        State storage state,
        uint256 tokenId,
        ConfigType memory configType,
        bytes memory configData
    ) internal {
        if (configType.reward) {
            (RewardConfig memory config,) = abi.decode(configData, (RewardConfig, LockConfig));
            state.marionette[tokenId].customRewardConfig = config;
        }
        if (configType.lock) {
            (, LockConfig memory config) = abi.decode(configData, (RewardConfig, LockConfig));
            state.marionette[tokenId].customLockConfig = config;
        }
    }

    function getMarionette(State storage state, uint256 tokenId) internal view returns (MarionetteState memory) {
        return state.marionette[tokenId];
    }

    function getState(State storage state)
        internal
        view
        returns (
            bool initialized,
            bool paused,
            string memory uri,
            VoteConfig memory defaultVoteConfig,
            RewardConfig memory defaultRewardConfig,
            LockConfig memory defaultLockConfig
        )
    {
        return (
            state.initialized,
            state.paused,
            state.uri,
            state.defaultVoteConfig,
            state.defaultRewardConfig,
            state.defaultLockConfig
        );
    }

    function getTokenId(State storage state, uint256 veId) internal view returns (uint256 tokenId) {
        return state.veIdToTokenId[veId];
    }
}
