// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

import 'lib/openzeppelin-contracts/contracts/token/ERC721/ERC721.sol';
import './interfaces/IRevolvingCreditLine.sol';
import './modules/RCLGovernance.sol';
import './modules/RCLOrderBook.sol';
import './modules/RCLLenders.sol';
import './modules/RCLBorrowers.sol';
import './libraries/DataTypes.sol';

/**
 * @title RevolvingCreditLines
 * @author Atlendis Labs
 * @notice Implementation of the IRevolvingCreditLines
 */
contract RevolvingCreditLine is IRevolvingCreditLine, RCLOrderBook, RCLGovernance, RCLBorrowers, RCLLenders {
    /*//////////////////////////////////////////////////////////////
                               CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Constructor - pass parameters to modules
     * @param governance Address of the governance
     * @param feeConfig Fee parameters
     * @param parametersConfig Othern parmaeters
     * @param name ERC721 name of the positions
     * @param symbol ERC721 symbol of the positions
     */
    constructor(
        address governance,
        bytes memory feeConfig,
        bytes memory parametersConfig,
        string memory name,
        string memory symbol
    ) RCLLenders(name, symbol) RCLGovernance(governance) RCLOrderBook(feeConfig, parametersConfig) {}
}
