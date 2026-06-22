// SPDX-License-Identifier: agpl-3.0
pragma solidity 0.7.4;
pragma experimental ABIEncoderV2;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ContextUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/Initializable.sol";
import "./../interfaces/IReserve.sol";
import "./libraries/upgradeability/Versioned.sol";


/**
 * @title ReserveStorage contract
 * @dev Defines all stored data for Reserve
 * @author WOWSwap
 **/
abstract contract ReserveStorage is Initializable, ContextUpgradeable, Versioned, ERC20Upgradeable {
    uint256[50] private ______gap;
}


/**
 * @title Reserve contract
 * @dev Holds investors funds to provide loans for trading positions
 * @author WOWSwap
 **/
contract Reserve is ReserveStorage, IReserve {
    uint256 public constant REVISION = 0x1;

    function getRevision() internal pure override returns (uint256) {
        return REVISION;
    }

    function initialize(string calldata name_, string calldata symbol_)
        public
        initializer
    {
        __Context_init_unchained();
        __Versioned_init_unchained();
        __ERC20_init(
            string(abi.encodePacked(name_, " WOW Interest Bearing")),
            string(abi.encodePacked("ib", symbol_))
        );
    }
}
