// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2024 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.

pragma solidity ^0.7.6;
pragma abicoder v2;

import {UpgradeableGovernable} from "src/governance/UpgradeableGovernable.sol";

import {IFeeds} from "src/interfaces/management/IFeeds.sol";

contract Feeds is IFeeds, UpgradeableGovernable {
    // Reference Token => Feed
    mapping(address => address) public feed;

    /* -------------------------------------------------------------------------- */
    /*                                    INIT                                    */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Initialize Feeds contract.
     */
    function initialize() external initializer {
        __Governable_init(msg.sender);
    }

    /* -------------------------------------------------------------------------- */
    /*                                 ONLY GOVERNOR                              */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Add new Feed.
     * @param _token _token address.
     * @param _feed New price feed.
     */
    function addFeed(address _token, address _feed) external override onlyGovernor {
        feed[_token] = _feed;
    }

    /**
     * @notice Remove Feed.
     * @param _token _token address.
     */
    function removeFeed(address _token) external onlyGovernor {
        feed[_token] = address(0);
    }

    /* -------------------------------------------------------------------------- */
    /*                                   VIEW                                     */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Get Price Feed. Reverts if do not found it.
     * @param _token _token address.
     * @return Address of price feed.
     */
    function getPriceFeed(address _token) external view override returns (address) {
        address _feed = feed[_token];
        require(_feed != address(0), "No Feed Found");
        return _feed;
    }
}
