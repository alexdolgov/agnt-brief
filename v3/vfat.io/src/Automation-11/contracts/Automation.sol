// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { Admin } from "contracts/base/Admin.sol";
import { NonDelegateMulticall } from "contracts/base/NonDelegateMulticall.sol";
import { Sickle } from "contracts/Sickle.sol";
import { SickleRegistry } from "contracts/SickleRegistry.sol";
import { IAutomation } from "contracts/interfaces/IAutomation.sol";
import { INftAutomation } from "contracts/interfaces/INftAutomation.sol";
import {
    NftRebalance,
    NftPosition,
    NftHarvest,
    NftWithdraw,
    NftCompound
} from "contracts/structs/NftFarmStrategyStructs.sol";
import {
    Farm,
    HarvestParams,
    WithdrawParams,
    CompoundParams
} from "contracts/structs/FarmStrategyStructs.sol";
import { AutomationPermissions } from
    "contracts/libraries/AutomationPermissions.sol";

// @title Automation contract for protocol farming and NFT strategies
// @notice Allows protocol-approved automators, or user-approved automators via
// AutomatorPermissionsRegistry, to perform automated actions (compound,
// harvest,
// exit, rebalance) on behalf of Sickle users. For non-NFT positions, users can
// set automation preferences per position in PositionSettingsRegistry. For NFT
// positions, automation preferences are set per NFT in NftSettingsRegistry.
// AutomatorPermissionsRegistry enables Sickle owners to grant automation rights
// to specific addresses, overriding the global automator if desired.
// @dev Intended for use by off-chain automation bots with appropriate
// permissions. Protocol admin manages the global automator, while users can
// configure their own automator permissions and automation settings.
contract Automation is Admin, NonDelegateMulticall {
    error InvalidInputLength();
    error NotApprovedAutomator();
    error InvalidAutomator();
    error ApprovedAutomatorNotSet(address approvedAutomator);
    error ApprovedAutomatorAlreadySet(address approvedAutomator);
    error MalformedPermissions();

    event HarvestedFor(
        Sickle indexed sickle,
        address indexed stakingContract,
        uint256 indexed poolIndex,
        address automator
    );
    event CompoundedFor(
        Sickle indexed sickle,
        address indexed claimStakingContract,
        uint256 claimPoolIndex,
        address indexed depositStakingContract,
        uint256 depositPoolIndex,
        address automator
    );
    event ExitedFor(
        Sickle indexed sickle,
        address indexed stakingContract,
        uint256 indexed poolIndex,
        address automator
    );

    event NftHarvestedFor(
        Sickle indexed sickle,
        address indexed nftAddress,
        uint256 indexed tokenId,
        address automator
    );
    event NftCompoundedFor(
        Sickle indexed sickle,
        address indexed nftAddress,
        uint256 indexed tokenId,
        address automator
    );
    event NftExitedFor(
        Sickle indexed sickle,
        address indexed nftAddress,
        uint256 indexed tokenId,
        address automator
    );
    event NftRebalancedFor(
        Sickle indexed sickle,
        address indexed nftAddress,
        uint256 indexed tokenId,
        address automator
    );

    event ApprovedAutomatorSet(address approvedAutomator);
    event ApprovedAutomatorPermissionsSet(
        address approvedAutomator, uint256 permissions
    );
    event ApprovedAutomatorRevoked(address approvedAutomator);
    event CustomAutomatorSet(
        Sickle indexed sickle, address indexed automator, uint256 permissions
    );

    address[] public approvedAutomators;
    mapping(address => bool) public isApprovedAutomator;
    mapping(address => uint256) public globalAutomatorPermissions;

    mapping(Sickle => mapping(address => uint256)) public
        customAutomatorPermissions;
    mapping(Sickle => uint256) public customAutomatorCount;

    constructor(
        SickleRegistry registry,
        address admin
    ) Admin(admin) NonDelegateMulticall(registry) { }

    modifier validatePermissions(
        uint256 permissions
    ) {
        if (permissions > AutomationPermissions.ALL) {
            revert MalformedPermissions();
        }
        _;
    }

    function setCustomAutomatorForSickle(
        Sickle sickle,
        address automator,
        uint256 permissions
    ) external onlyAdmin validatePermissions(permissions) {
        uint256 prevPermissions = customAutomatorPermissions[sickle][automator];

        if (prevPermissions == 0 && permissions != 0) {
            customAutomatorCount[sickle] += 1;
        } else if (prevPermissions != 0 && permissions == 0) {
            customAutomatorCount[sickle] -= 1;
        }

        customAutomatorPermissions[sickle][automator] = permissions;
        emit CustomAutomatorSet(sickle, automator, permissions);
    }

    /// Public functions

    function approvedAutomatorsLength() external view returns (uint256) {
        return approvedAutomators.length;
    }

    // Admin functions

    /// @notice Update approved automator address.
    /// @dev Controls which external address is allowed to
    /// compound farming positions for Sickles. This is expected to be the EOA
    /// of an automation bot.
    /// @custom:access Restricted to protocol admin.
    function setApprovedAutomator(
        address payable approvedAutomator
    ) external onlyAdmin {
        _setApprovedAutomator(approvedAutomator, AutomationPermissions.ALL);
    }

    /// @notice Update approved automator with permissions bitmap.
    /// If not already in the global allowlist, adds it.
    function setApprovedAutomatorWithPermissions(
        address payable approvedAutomator,
        uint256 permissions
    ) external onlyAdmin validatePermissions(permissions) {
        if (!isApprovedAutomator[approvedAutomator]) {
            _setApprovedAutomator(approvedAutomator, permissions);
        } else {
            globalAutomatorPermissions[approvedAutomator] = permissions;
            emit ApprovedAutomatorPermissionsSet(approvedAutomator, permissions);
        }
    }

    function revokeApprovedAutomator(
        address approvedAutomator
    ) external onlyAdmin {
        if (!isApprovedAutomator[approvedAutomator]) {
            revert ApprovedAutomatorNotSet(approvedAutomator);
        }
        for (uint256 i; i < approvedAutomators.length; i++) {
            if (approvedAutomators[i] == approvedAutomator) {
                approvedAutomators[i] =
                    approvedAutomators[approvedAutomators.length - 1];
                approvedAutomators.pop();
                break;
            }
        }
        isApprovedAutomator[approvedAutomator] = false;
        delete globalAutomatorPermissions[approvedAutomator];
        emit ApprovedAutomatorPermissionsSet(approvedAutomator, 0);
        emit ApprovedAutomatorRevoked(approvedAutomator);
    }

    // Automator functions

    function compoundFor(
        IAutomation[] memory strategies,
        Sickle[] memory sickles,
        CompoundParams[] memory params,
        address[][] memory sweepTokens
    ) external {
        uint256 strategiesLength = strategies.length;
        if (
            strategiesLength != sickles.length
                || strategiesLength != params.length
                || strategiesLength != sweepTokens.length
        ) {
            revert InvalidInputLength();
        }

        _requireAuthorizedFor(sickles, AutomationPermissions.FARM_COMPOUND);

        address[] memory targets = new address[](strategiesLength);
        bytes[] memory data = new bytes[](strategiesLength);
        for (uint256 i; i < strategiesLength;) {
            Sickle sickle = sickles[i];
            CompoundParams memory param = params[i];
            targets[i] = address(strategies[i]);
            data[i] = abi.encodeCall(
                IAutomation.compoundFor, (sickle, param, sweepTokens[i])
            );
            emit CompoundedFor(
                sickle,
                param.claimFarm.stakingContract,
                param.claimFarm.poolIndex,
                param.depositFarm.stakingContract,
                param.depositFarm.poolIndex,
                msg.sender
            );
            unchecked {
                ++i;
            }
        }
        this.multicall(targets, data);
    }

    function harvestFor(
        IAutomation[] memory strategies,
        Sickle[] memory sickles,
        Farm[] memory farms,
        HarvestParams[] memory params,
        address[][] memory sweepTokens
    ) external {
        uint256 strategiesLength = strategies.length;
        if (
            strategiesLength != sickles.length
                || strategiesLength != farms.length
                || strategiesLength != params.length
                || strategiesLength != sweepTokens.length
        ) {
            revert InvalidInputLength();
        }

        _requireAuthorizedFor(sickles, AutomationPermissions.FARM_HARVEST);

        address[] memory targets = new address[](strategiesLength);
        bytes[] memory data = new bytes[](strategiesLength);
        for (uint256 i; i < strategiesLength;) {
            Sickle sickle = sickles[i];
            Farm memory farm = farms[i];
            HarvestParams memory param = params[i];
            targets[i] = address(strategies[i]);
            data[i] = abi.encodeCall(
                IAutomation.harvestFor, (sickle, farm, param, sweepTokens[i])
            );
            emit HarvestedFor(
                sickle, farm.stakingContract, farm.poolIndex, msg.sender
            );
            unchecked {
                ++i;
            }
        }
        this.multicall(targets, data);
    }

    function exitFor(
        IAutomation[] memory strategies,
        Sickle[] memory sickles,
        Farm[] memory farms,
        HarvestParams[] memory harvestParams,
        address[][] memory harvestSweepTokens,
        WithdrawParams[] memory withdrawParams,
        address[][] memory withdrawSweepTokens
    ) external {
        uint256 strategiesLength = strategies.length;
        if (
            strategiesLength != sickles.length
                || strategiesLength != farms.length
                || strategiesLength != harvestParams.length
                || strategiesLength != withdrawParams.length
                || strategiesLength != harvestSweepTokens.length
                || strategiesLength != withdrawSweepTokens.length
        ) {
            revert InvalidInputLength();
        }

        _requireAuthorizedFor(sickles, AutomationPermissions.FARM_EXIT);

        address[] memory targets = new address[](strategiesLength);
        bytes[] memory data = new bytes[](strategiesLength);
        for (uint256 i; i < strategiesLength;) {
            targets[i] = address(strategies[i]);
            data[i] = abi.encodeCall(
                IAutomation.exitFor,
                (
                    sickles[i],
                    farms[i],
                    harvestParams[i],
                    harvestSweepTokens[i],
                    withdrawParams[i],
                    withdrawSweepTokens[i]
                )
            );
            emit ExitedFor(
                sickles[i],
                farms[i].stakingContract,
                farms[i].poolIndex,
                msg.sender
            );
            unchecked {
                ++i;
            }
        }
        this.multicall(targets, data);
    }

    // NFT Automator functions
    // Validation is done in the NftAutomation contract

    function harvestFor(
        INftAutomation[] memory strategies,
        Sickle[] memory sickles,
        NftPosition[] memory positions,
        NftHarvest[] memory params
    ) external {
        uint256 strategiesLength = strategies.length;
        if (
            strategiesLength != sickles.length
                || strategiesLength != positions.length
                || strategiesLength != params.length
        ) {
            revert InvalidInputLength();
        }

        _requireAuthorizedFor(sickles, AutomationPermissions.NFT_HARVEST);

        address[] memory targets = new address[](strategiesLength);
        bytes[] memory data = new bytes[](strategiesLength);
        for (uint256 i; i < strategiesLength;) {
            Sickle sickle = sickles[i];
            NftPosition memory position = positions[i];
            targets[i] = address(strategies[i]);
            data[i] = abi.encodeCall(
                INftAutomation.harvestFor, (sickle, position, params[i])
            );
            emit NftHarvestedFor(
                sickle, address(position.nft), position.tokenId, msg.sender
            );
            unchecked {
                ++i;
            }
        }
        this.multicall(targets, data);
    }

    function compoundFor(
        INftAutomation[] memory strategies,
        Sickle[] memory sickles,
        NftPosition[] memory positions,
        NftCompound[] memory params,
        bool[] memory inPlace,
        address[][] memory sweepTokens
    ) external {
        uint256 strategiesLength = strategies.length;
        if (
            strategiesLength != sickles.length
                || strategiesLength != positions.length
                || strategiesLength != params.length
                || strategiesLength != inPlace.length
                || strategiesLength != sweepTokens.length
        ) {
            revert InvalidInputLength();
        }

        _requireAuthorizedFor(sickles, AutomationPermissions.NFT_COMPOUND);

        address[] memory targets = new address[](strategiesLength);
        bytes[] memory data = new bytes[](strategiesLength);
        for (uint256 i; i < strategiesLength;) {
            Sickle sickle = sickles[i];
            NftPosition memory position = positions[i];
            targets[i] = address(strategies[i]);
            data[i] = abi.encodeCall(
                INftAutomation.compoundFor,
                (sickle, position, params[i], inPlace[i], sweepTokens[i])
            );
            emit NftCompoundedFor(
                sickle, address(position.nft), position.tokenId, msg.sender
            );
            unchecked {
                ++i;
            }
        }
        this.multicall(targets, data);
    }

    function exitFor(
        INftAutomation[] memory strategies,
        Sickle[] memory sickles,
        NftPosition[] memory positions,
        NftHarvest[] memory harvestParams,
        NftWithdraw[] memory withdrawParams,
        address[][] memory sweepTokens
    ) external {
        uint256 strategiesLength = strategies.length;
        if (
            strategiesLength != sickles.length
                || strategiesLength != positions.length
                || strategiesLength != harvestParams.length
                || strategiesLength != withdrawParams.length
                || strategiesLength != sweepTokens.length
        ) {
            revert InvalidInputLength();
        }

        _requireAuthorizedFor(sickles, AutomationPermissions.NFT_EXIT);

        address[] memory targets = new address[](strategiesLength);
        bytes[] memory data = new bytes[](strategiesLength);
        for (uint256 i; i < strategiesLength;) {
            Sickle sickle = sickles[i];
            NftPosition memory position = positions[i];
            targets[i] = address(strategies[i]);
            data[i] = abi.encodeCall(
                INftAutomation.exitFor,
                (
                    sickle,
                    position,
                    harvestParams[i],
                    withdrawParams[i],
                    sweepTokens[i]
                )
            );
            emit NftExitedFor(
                sickle, address(position.nft), position.tokenId, msg.sender
            );
            unchecked {
                ++i;
            }
        }
        this.multicall(targets, data);
    }

    function rebalanceFor(
        INftAutomation[] memory strategies,
        Sickle[] memory sickles,
        NftRebalance[] memory params,
        address[][] memory sweepTokens
    ) external {
        uint256 strategiesLength = strategies.length;
        if (
            strategiesLength != sickles.length
                || strategiesLength != params.length
                || strategiesLength != sweepTokens.length
        ) {
            revert InvalidInputLength();
        }

        _requireAuthorizedFor(sickles, AutomationPermissions.NFT_REBALANCE);

        address[] memory targets = new address[](strategiesLength);
        bytes[] memory data = new bytes[](strategiesLength);
        for (uint256 i; i < strategiesLength;) {
            NftRebalance memory param = params[i];
            Sickle sickle = sickles[i];
            targets[i] = address(strategies[i]);
            data[i] = abi.encodeCall(
                INftAutomation.rebalanceFor, (sickle, param, sweepTokens[i])
            );
            emit NftRebalancedFor(
                sickle,
                address(param.position.nft),
                param.position.tokenId,
                msg.sender
            );
            unchecked {
                ++i;
            }
        }
        this.multicall(targets, data);
    }

    // Internal

    function _setApprovedAutomator(
        address payable approvedAutomator,
        uint256 permissions
    ) internal {
        if (approvedAutomator == address(0)) revert InvalidAutomator();
        if (isApprovedAutomator[approvedAutomator]) {
            revert ApprovedAutomatorAlreadySet(approvedAutomator);
        }
        isApprovedAutomator[approvedAutomator] = true;
        approvedAutomators.push(approvedAutomator);
        globalAutomatorPermissions[approvedAutomator] = permissions;
        emit ApprovedAutomatorSet(approvedAutomator);
        emit ApprovedAutomatorPermissionsSet(approvedAutomator, permissions);
    }

    function _requireAuthorizedFor(
        Sickle[] memory sickles,
        uint256 action
    ) internal view {
        uint256 len = sickles.length;
        for (uint256 i; i < len;) {
            Sickle sickle = sickles[i];

            bool hasCustomAutomators = customAutomatorCount[sickle] > 0;

            if (hasCustomAutomators) {
                if (
                    (customAutomatorPermissions[sickle][msg.sender] & action)
                        == 0
                ) {
                    revert NotApprovedAutomator();
                }
            } else {
                if (
                    !isApprovedAutomator[msg.sender]
                        || (globalAutomatorPermissions[msg.sender] & action) == 0
                ) {
                    revert NotApprovedAutomator();
                }
            }
            unchecked {
                ++i;
            }
        }
    }
}
