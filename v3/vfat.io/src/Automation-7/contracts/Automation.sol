// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { Admin } from "contracts/base/Admin.sol";
import { NonDelegateMulticall } from "contracts/base/NonDelegateMulticall.sol";
import { Sickle } from "contracts/Sickle.sol";
import { SickleRegistry } from "contracts/SickleRegistry.sol";
import { ICompoundable } from "contracts/interfaces/ICompoundable.sol";
import { IHarvestable } from "contracts/interfaces/IHarvestable.sol";
import {
    IRebalanceable,
    RebalanceParams
} from "contracts/interfaces/IRebalanceable.sol";
import {
    HarvestParams,
    CompoundParams
} from "contracts/structs/FarmStrategyStructs.sol";

enum RewardAutomation {
    None,
    Harvest,
    Compound
}

// @title Automation contract for automating farming strategies
// @notice This contract allows users to automate their farming strategies
// by enabling auto-compound or auto-harvest.
// The contract also allows an approved automator to compound, harvest or
// auto-rebalance farming positions on behalf of users.
// Only one of Auto-Compound or Auto-Harvest can be enabled:
// all user positions will be either auto-compounded or auto-harvested.
// Auto-Rebalance settings are per NFT, and are not affected by this contract.
// @dev This contract is expected to be used by an external automation bot
// that will call the compoundFor, harvestFor, and rebalanceFor functions.
// The automation bot is expected to be the EOA of the approved automator.
// The approved automator is set by the protocol admin.
contract Automation is Admin, NonDelegateMulticall {
    error InvalidInputLength();
    error AutomationNotSet();
    error AutomationAlreadySet();
    error NotApprovedAutomator();
    error InvalidSlippage();

    event HarvestedFor(address indexed user, address indexed stakingContract);
    event CompoundedFor(
        address indexed user,
        address indexed claimContract,
        address indexed depositContract
    );
    event RebalancedFor(
        address indexed user,
        address indexed nftAddress,
        uint256 indexed tokenId
    );
    event ApprovedAutomatorSet(address approvedAutomator);

    event AutoHarvestEnabled(address indexed user, address tokenOut);
    event AutoCompoundEnabled(address indexed user);
    event AutoHarvestDisabled(address indexed user);
    event AutoCompoundDisabled(address indexed user);

    address payable public approvedAutomator;

    mapping(address => RewardAutomation) public rewardAutomation;
    mapping(address => address) public harvestTokensOut;

    constructor(
        SickleRegistry registry_,
        address payable approvedAutomator_,
        address admin_
    ) Admin(admin_) NonDelegateMulticall(registry_) {
        approvedAutomator = approvedAutomator_;
    }

    modifier onlyApprovedAutomator() {
        if (msg.sender != approvedAutomator) revert NotApprovedAutomator();
        _;
    }

    // Admin functions

    /// @notice Update approved automator address.
    /// @dev Controls which external address is allowed to
    /// compound farming positions for Sickles. This is expected to be the EOA
    /// of an automation bot.
    /// @custom:access Restricted to protocol admin.
    function setApprovedAutomator(address payable approvedAutomator_)
        external
        onlyAdmin
    {
        approvedAutomator = approvedAutomator_;
        emit ApprovedAutomatorSet(approvedAutomator_);
    }

    // Automator functions

    function compoundFor(
        ICompoundable[] memory strategies,
        Sickle[] memory sickles,
        CompoundParams[] memory params,
        address[][] memory sweepTokens
    ) external onlyApprovedAutomator {
        uint256 strategiesLength = strategies.length;
        if (
            strategiesLength != sickles.length
                || strategiesLength != params.length
                || strategiesLength != sweepTokens.length
        ) {
            revert InvalidInputLength();
        }

        address[] memory targets = new address[](strategiesLength);
        bytes[] memory data = new bytes[](strategiesLength);
        for (uint256 i; i < strategiesLength; i++) {
            address user = sickles[i].owner();
            if (rewardAutomation[user] != RewardAutomation.Compound) {
                revert AutomationNotSet();
            }
            CompoundParams memory param = params[i];
            targets[i] = address(strategies[i]);
            data[i] = abi.encodeCall(
                ICompoundable.compoundFor, (sickles[i], param, sweepTokens[i])
            );
            emit CompoundedFor(
                user, param.claimContractAddress, param.depositContractAddress
            );
        }
        this.multicall(targets, data);
    }

    function harvestFor(
        IHarvestable[] memory strategies,
        Sickle[] memory sickles,
        HarvestParams[] memory params,
        address[][] memory sweepTokens
    ) external onlyApprovedAutomator {
        uint256 strategiesLength = strategies.length;
        if (
            strategiesLength != sickles.length
                || strategiesLength != params.length
                || strategiesLength != sweepTokens.length
        ) {
            revert InvalidInputLength();
        }

        address[] memory targets = new address[](strategiesLength);
        bytes[] memory data = new bytes[](strategiesLength);
        for (uint256 i; i < strategiesLength; i++) {
            address user = sickles[i].owner();
            if (rewardAutomation[user] != RewardAutomation.Harvest) {
                revert AutomationNotSet();
            }
            HarvestParams memory param = params[i];
            targets[i] = address(strategies[i]);
            data[i] = abi.encodeCall(
                IHarvestable.harvestFor, (sickles[i], param, sweepTokens[i])
            );
            emit HarvestedFor(user, param.stakingContractAddress);
        }
        this.multicall(targets, data);
    }

    function rebalanceFor(
        IRebalanceable[] memory strategies,
        Sickle[] memory sickles,
        RebalanceParams[] memory params,
        address[][] memory sweepTokens
    ) external onlyApprovedAutomator {
        uint256 strategiesLength = strategies.length;
        if (
            strategiesLength != sickles.length
                || strategiesLength != params.length
                || strategiesLength != sweepTokens.length
        ) {
            revert InvalidInputLength();
        }

        address[] memory targets = new address[](strategiesLength);
        bytes[] memory data = new bytes[](strategiesLength);
        for (uint256 i; i < strategiesLength; i++) {
            RebalanceParams memory param = params[i];
            address user = sickles[i].owner();
            targets[i] = address(strategies[i]);
            data[i] = abi.encodeCall(
                IRebalanceable.rebalanceFor, (sickles[i], param, sweepTokens[i])
            );
            emit RebalancedFor(
                user, address(param.nftInfo.nftManager), param.nftInfo.tokenId
            );
        }
        this.multicall(targets, data);
    }

    // User functions

    function enableAutoCompound() external {
        RewardAutomation automation = rewardAutomation[msg.sender];
        if (automation == RewardAutomation.Compound) {
            revert AutomationAlreadySet();
        }
        if (automation == RewardAutomation.Harvest) {
            delete harvestTokensOut[msg.sender];
        }
        rewardAutomation[msg.sender] = RewardAutomation.Compound;
        emit AutoCompoundEnabled(msg.sender);
    }

    function enableAutoHarvest(address tokenOut) external {
        if (
            rewardAutomation[msg.sender] == RewardAutomation.Harvest
                && harvestTokensOut[msg.sender] == tokenOut
        ) {
            revert AutomationAlreadySet();
        }
        rewardAutomation[msg.sender] = RewardAutomation.Harvest;
        harvestTokensOut[msg.sender] = tokenOut;
        emit AutoHarvestEnabled(msg.sender, tokenOut);
    }

    function disableAutoCompound() external {
        if (rewardAutomation[msg.sender] != RewardAutomation.Compound) {
            revert AutomationNotSet();
        }
        delete rewardAutomation[msg.sender];
        emit AutoCompoundDisabled(msg.sender);
    }

    function disableAutoHarvest() external {
        if (rewardAutomation[msg.sender] != RewardAutomation.Harvest) {
            revert AutomationNotSet();
        }
        delete rewardAutomation[msg.sender];
        delete harvestTokensOut[msg.sender];

        emit AutoHarvestDisabled(msg.sender);
    }
}
