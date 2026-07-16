// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {LaunchInfo} from "./TokenLaunchFactory.sol";

interface ITokenLaunchFactoryV3Lens {
    function totalLaunches() external view returns (uint256);
    function launchCountByCreator(address creator) external view returns (uint256);
    function getLaunchCountByToken(address token) external view returns (uint256);
    function launchInfoAt(uint256 index) external view returns (LaunchInfo memory);
    function creatorLaunchIndex(address creator, uint256 index) external view returns (uint256);
    function tokenLaunchIndex(address token, uint256 index) external view returns (uint256);
    function auctionLaunchIndex(address auction) external view returns (uint256);
    function getLaunchByStrategy(address strategy) external view returns (LaunchInfo memory);
    function strategyFactory() external view returns (address);
}

interface ISuperchainLBPStrategyFactory {
    function orderBookFactory() external view returns (address);
}

interface IOrderBookFactory {
    function hook() external view returns (address);
}

/// @title TokenLaunchFactoryLens
/// @notice Off-chain view helpers for TokenLaunchFactoryV3
contract TokenLaunchFactoryLens {
    error ZeroAddress();
    error LaunchNotFound();

    ITokenLaunchFactoryV3Lens public immutable factory;

    constructor(address factory_) {
        if (factory_ == address(0)) revert ZeroAddress();
        factory = ITokenLaunchFactoryV3Lens(factory_);
    }

    /// @notice Returns a default hook salt and hook address for off-chain callers
    /// @dev This does not compute a real salt. It always returns bytes32(0) and the current OrderBookFactory hook.
    /// @param hookOwner The address that will own the hook (unused)
    /// @return hookSalt The default salt (bytes32(0))
    /// @return hookAddress The OrderBookFactory hook address
    function computeHookSalt(address hookOwner) external view returns (bytes32 hookSalt, address hookAddress) {
        hookOwner;
        address strategyFactory = factory.strategyFactory();
        address orderBookFactory = ISuperchainLBPStrategyFactory(strategyFactory).orderBookFactory();
        hookSalt = bytes32(0);
        hookAddress = IOrderBookFactory(orderBookFactory).hook();
    }

    /// @notice Get all launches with pagination
    /// @param offset Starting index
    /// @param limit Maximum number to return (0 = all remaining)
    /// @return launches Array of LaunchInfo structs
    /// @return totalCount Total number of launches
    function getLaunchesPaginated(
        uint256 offset,
        uint256 limit
    ) external view returns (LaunchInfo[] memory launches, uint256 totalCount) {
        totalCount = factory.totalLaunches();

        if (limit == 0) limit = totalCount;
        if (offset >= totalCount) return (new LaunchInfo[](0), totalCount);

        uint256 count = (offset + limit > totalCount) ? (totalCount - offset) : limit;
        launches = new LaunchInfo[](count);

        for (uint256 i = 0; i < count; i++) {
            launches[i] = factory.launchInfoAt(offset + i);
        }
    }

    /// @notice Get launches by creator with pagination
    /// @param creator The creator address
    /// @param offset Starting index within creator's launches
    /// @param limit Maximum number to return (0 = all remaining)
    /// @return launches Array of LaunchInfo structs
    /// @return totalCount Total number of launches by this creator
    function getLaunchesByCreatorPaginated(
        address creator,
        uint256 offset,
        uint256 limit
    ) external view returns (LaunchInfo[] memory launches, uint256 totalCount) {
        totalCount = factory.launchCountByCreator(creator);

        if (limit == 0) limit = totalCount;
        if (offset >= totalCount) return (new LaunchInfo[](0), totalCount);

        uint256 count = (offset + limit > totalCount) ? (totalCount - offset) : limit;
        launches = new LaunchInfo[](count);

        for (uint256 i = 0; i < count; i++) {
            uint256 launchIndex = factory.creatorLaunchIndex(creator, offset + i);
            launches[i] = factory.launchInfoAt(launchIndex);
        }
    }

    /// @notice Get recent launches (reverse chronological order)
    /// @param limit Maximum number to return (0 = all)
    /// @return launches Array of LaunchInfo structs (newest first)
    function getRecentLaunches(uint256 limit) external view returns (LaunchInfo[] memory launches) {
        uint256 totalCount = factory.totalLaunches();
        if (limit == 0 || limit > totalCount) limit = totalCount;

        launches = new LaunchInfo[](limit);

        for (uint256 i = 0; i < limit; i++) {
            launches[i] = factory.launchInfoAt(totalCount - 1 - i);
        }
    }

    /// @notice Get the latest launch info by token address
    /// @param token The token address
    /// @return info The latest launch information
    function getLaunchByToken(address token) external view returns (LaunchInfo memory info) {
        uint256 count = factory.getLaunchCountByToken(token);
        if (count == 0) revert LaunchNotFound();
        uint256 index = factory.tokenLaunchIndex(token, count - 1);
        info = factory.launchInfoAt(index);
    }

    /// @notice Get launch info by strategy address
    /// @param strategy The strategy address
    /// @return info The launch information
    function getLaunchByStrategy(address strategy) external view returns (LaunchInfo memory info) {
        info = factory.getLaunchByStrategy(strategy);
    }

    /// @notice Get launch info by auction address
    /// @param auction The auction address
    /// @return info The launch information
    function getLaunchByAuction(address auction) external view returns (LaunchInfo memory info) {
        uint256 indexPlusOne = factory.auctionLaunchIndex(auction);
        if (indexPlusOne == 0) revert LaunchNotFound();
        info = factory.launchInfoAt(indexPlusOne - 1);
    }

    /// @notice Get launch info by index
    /// @param index The launch index
    /// @return info The launch information
    function getLaunchByIndex(uint256 index) external view returns (LaunchInfo memory info) {
        uint256 totalCount = factory.totalLaunches();
        if (index >= totalCount) revert LaunchNotFound();
        info = factory.launchInfoAt(index);
    }

    /// @notice Check if a token has a registered launch
    /// @param token The token address
    /// @return exists True if launch exists
    function launchExistsForToken(address token) external view returns (bool exists) {
        exists = factory.getLaunchCountByToken(token) != 0;
    }

    /// @notice Get number of launches for a token
    /// @param token The token address
    /// @return count Number of launches for the token
    function getLaunchCountByToken(address token) external view returns (uint256 count) {
        count = factory.getLaunchCountByToken(token);
    }

    /// @notice Get launches by token with pagination
    /// @param token The token address
    /// @param offset Starting index within token launches
    /// @param limit Maximum number to return (0 = all remaining)
    /// @return launches Array of LaunchInfo structs
    /// @return totalCount Total number of launches for this token
    function getLaunchesByTokenPaginated(
        address token,
        uint256 offset,
        uint256 limit
    ) external view returns (LaunchInfo[] memory launches, uint256 totalCount) {
        totalCount = factory.getLaunchCountByToken(token);

        if (limit == 0) limit = totalCount;
        if (offset >= totalCount) return (new LaunchInfo[](0), totalCount);

        uint256 count = (offset + limit > totalCount) ? (totalCount - offset) : limit;
        launches = new LaunchInfo[](count);

        for (uint256 i = 0; i < count; i++) {
            uint256 launchIndex = factory.tokenLaunchIndex(token, offset + i);
            launches[i] = factory.launchInfoAt(launchIndex);
        }
    }

    /// @notice Check if an auction has a registered launch
    /// @param auction The auction address
    /// @return exists True if launch exists
    function launchExistsForAuction(address auction) external view returns (bool exists) {
        exists = factory.auctionLaunchIndex(auction) != 0;
    }

    /// @notice Get total number of launches
    /// @return count Total launches registered
    function totalLaunches() external view returns (uint256 count) {
        count = factory.totalLaunches();
    }

    /// @notice Get number of launches by a creator
    /// @param creator The creator address
    /// @return count Number of launches by this creator
    function launchCountByCreator(address creator) external view returns (uint256 count) {
        count = factory.launchCountByCreator(creator);
    }
}
