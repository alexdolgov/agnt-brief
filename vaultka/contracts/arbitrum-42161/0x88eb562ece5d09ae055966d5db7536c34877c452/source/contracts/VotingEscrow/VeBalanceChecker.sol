// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import { IChefIncentivesController } from "./IVotingEscrow/IChefIncentivesController.sol";
import { IPVotingEscrowMainchain, IPVeToken } from "./IVotingEscrow/IPVotingEscrowMainchain.sol";
import { Errors } from "./libraries/Errors.sol";
import { IDualStaking } from "../interfaces/tokenomics/IDualStaking.sol";

/// @title VeBalanceChecker
/// @author Vaultka
/// @notice Contract that combined the veBalance of VKA and esVKA

contract VeBalanceChecker is IDualStaking, Initializable, OwnableUpgradeable {
    address public VKALocking;
    address public ESVKALocking;

    uint256[50] private __gap;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _VKALocking, address _ESVKALocking) external initializer {
        VKALocking = _VKALocking;
        ESVKALocking = _ESVKALocking;

        __Ownable_init();
    }

    //@note Balance Of a user locked VKA and esVKA
    function balanceOf(address _user) public view returns (uint128) {
        return IPVeToken(VKALocking).balanceOf(_user) + IPVeToken(ESVKALocking).balanceOf(_user);
    }

    //boosting interface
    function totalStakedAmount() public view returns (uint256) {
        return IDualStaking(VKALocking).totalStakedAmount() + IDualStaking(ESVKALocking).totalStakedAmount();
    }

    function totalSupplyAndBalanceCurrent(address user) external view returns (uint256, uint256) {
        return (totalStakedAmount(), balanceOf(user));
    }

    function stakedAmounts(address _user) public view returns (uint256) {
        return balanceOf(_user);
    }
}
