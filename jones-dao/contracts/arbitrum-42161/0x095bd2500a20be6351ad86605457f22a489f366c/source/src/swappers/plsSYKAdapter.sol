// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2024 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.

pragma solidity ^0.7.6;
pragma abicoder v2;

import {UpgradeableGovernable} from "src/governance/UpgradeableGovernable.sol";

import {IERC20} from "@openzeppelin/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/token/ERC20/SafeERC20.sol";

import {ISYKDepositor} from "src/interfaces/swap/ISYKDepositor.sol";

contract plsSYKAdapter is UpgradeableGovernable {
    using SafeERC20 for IERC20;

    IERC20 public plsSYK;
    IERC20 public syk;

    ISYKDepositor public sykDepositor;

    function initialize() external initializer {
        __Governable_init(msg.sender);

        plsSYK = IERC20(0x68D6d2545f14751baF36c417c2CC7cdf8dA8a15b);
        syk = IERC20(0xACC51FFDeF63fB0c014c882267C3A17261A5eD50);
        sykDepositor = ISYKDepositor(0x2eD0837D9f2fBB927011463FaD0736F86Ea6bF25);
    }

    /**
     * @notice SYK Wrap.
     */
    function wrap(uint256 _amount) external {
        address thisAddress = address(this);

        syk.safeTransferFrom(msg.sender, thisAddress, _amount);

        address _depositorAddress = address(sykDepositor);

        syk.safeIncreaseAllowance(_depositorAddress, _amount);

        sykDepositor.deposit(_amount);

        uint256 allowance = syk.allowance(thisAddress, _depositorAddress);

        if (allowance > 0) {
            syk.safeDecreaseAllowance(_depositorAddress, allowance);
        }

        plsSYK.safeTransfer(msg.sender, _amount);
    }

    /* -------------------------------------------------------------------------- */
    /*                                   GOVERNOR                                 */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Update SYK Contracts
     * @param _plsSYK Plutus SYK address
     * @param _syk sSYK address
     * @param _sykDepositor Plutus SYK Depositor
     */
    function updateSYKContracts(address _plsSYK, address _syk, uint256 _sykDepositor) external onlyGovernor {
        plsSYK = IERC20(_plsSYK);
        syk = IERC20(_syk);
        sykDepositor = ISYKDepositor(_sykDepositor);
    }
}
