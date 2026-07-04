// SPDX-License-Identifier: GPL-3.0
// Copyright: https://github.com/credit-cooperative/Line-Of-Credit-v2/blob/master/COPYRIGHT.md

pragma solidity 0.8.25;

import {IEscrowFactory} from "../../interfaces/IEscrowFactory.sol";
import {ILineFactory} from "../../interfaces/ILineFactory.sol";
import {Clones} from "openzeppelin/proxy/Clones.sol";
import {IEscrow} from "../../interfaces/IEscrow.sol";
import {ILaaSEscrow} from "../../interfaces/ILaaSEscrow.sol";

import {Escrow} from "../../modules/escrow/Escrow.sol";
import {LaaSEscrow} from "../../modules/escrow/LaaSEscrow.sol";

/**
 * @title   - EscrowFactory
 * @author  - Credit Cooperative
 * @notice  - Factory contract to deploy Escrow contracts.
 * @dev     - Only LineFactory can deploy Escrow contracts.
 */
contract EscrowFactory is IEscrowFactory {
    using Clones for address;

    address public deployer;
    address public lineFactory;

    address public immutable oracle;
    address public immutable uniV3Oracle;
    address public immutable nftPositionManager;

    address public immutable escrowTemplate;
    address public immutable laaSEscrowTemplate;

    constructor(address oracle_, address uniV3Oracle_, address nftPositionManager_) {
        deployer = msg.sender;

        oracle = oracle_;
        uniV3Oracle = uniV3Oracle_;
        nftPositionManager = nftPositionManager_;

        escrowTemplate = address(new Escrow(oracle_, uniV3Oracle_));
        laaSEscrowTemplate = address(new LaaSEscrow(oracle_, uniV3Oracle_));
    }

    /**
     * @notice - set the line factory address
     * @dev    - only the contract deployer can call this function
     * @param _lineFactory - the address to set as the line factory
     * @return             - true if the line factory address was successfully set
     */
    function setLineFactory(address _lineFactory) external returns (bool) {
        if (msg.sender != deployer) {
            revert CallerAccessDenied();
        }
        if (lineFactory != address(0)) {
            revert LineFactoryAlreadySet();
        }
        lineFactory = _lineFactory;
        emit SetLineFactory(_lineFactory);
        return true;
    }

    /**
     * @notice - Deploys an Escrow module that can be used in a LineOfCredit
     * @param minCRatio - the minimum collateral ratio required for the Escrow
     * @param owner     - owner of the Escrow
     * @param borrower  - borrower of the Escrow
     * @param params    - parameters for configuring an Escrow or SmartEscrow contract
     * @return module   - the address of the deployed Escrow module
     */
    function deployEscrow(
        uint32 minCRatio,
        address owner,
        address borrower,
        address uniV3Manager,
        ILineFactory.SmartEscrowParams calldata params
    ) external returns (address module) {
        if (msg.sender != lineFactory) {
            revert CallerAccessDenied();
        }
        ILineFactory.EscrowTypes escrowType = params.escrowType;

        if (escrowType == ILineFactory.EscrowTypes.ESCROW) {
            module = escrowTemplate.clone();
            IEscrow(module).initializeFromFactory(minCRatio, owner, borrower, nftPositionManager, uniV3Manager);
        } else if (escrowType == ILineFactory.EscrowTypes.LAAS) {
            module = laaSEscrowTemplate.clone();
            ILaaSEscrow(module).initializeFromFactory(
                minCRatio, owner, borrower, params.pool, nftPositionManager, borrower
            );
        }

        emit DeployedEscrow(module, minCRatio, owner, uint256(escrowType));
    }
}
