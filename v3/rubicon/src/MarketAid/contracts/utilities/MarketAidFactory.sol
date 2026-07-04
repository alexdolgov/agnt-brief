// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

import "./MarketAid.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

/// @notice A contract that allows users to easily spawn a Market Aid instance that is permissioned to them and pointed at the relevant Rubicon Market
/// @dev notice this contract can be proxy-wrapped to allow for the upgradeability of future MarketAid's deployed - users can spawn multiple versions all stored in getUserMarketAid
contract MarketAidFactory is ReentrancyGuard {
    address public admin;
    address public rubiconMarket;

    mapping(address => address[]) public getUserMarketAid;

    bool public initialized;

    event NotifyMarketAidSpawn(address newInstance);

    modifier proxySafeConstructorLike() {
        require(!initialized);
        _;
        require(initialized == true);
    }

    function initialize(address market)
        external
        nonReentrant
        proxySafeConstructorLike
    {
        admin = msg.sender;
        rubiconMarket = market;
        initialized = true;
    }

    /// @notice user can call this function, and easily create a MarketAid instance admin'd to them
    function createMarketAidInstance() external nonReentrant returns (address) {
        MarketAid freshSpawn = new MarketAid();

        /// @dev Note that the caller of createMarketAidInstance() gets spawned an instance of Market Aid they can use
        /// @dev Proxy-safe constructor - in essence this is a constructor call; see `locked` on MarketAid.sol
        /// @dev Assigns the admin of the new instance to msg.sender
        freshSpawn.initialize(rubiconMarket, msg.sender);

        address _newMarketAidAddy = address(freshSpawn);
        require(_newMarketAidAddy != address(0));

        getUserMarketAid[msg.sender].push(_newMarketAidAddy);

        emit NotifyMarketAidSpawn(_newMarketAidAddy);

        require(freshSpawn.admin() == msg.sender);

        return _newMarketAidAddy;
    }
}
