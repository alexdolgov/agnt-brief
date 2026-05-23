// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

import './../modules/interfaces/ISBIPool.sol';
import './../modules/interfaces/ISBIGovernance.sol';
import './../modules/interfaces/ISBIBorrowers.sol';
import './../modules/interfaces/ISBILenders.sol';

/**
 * @title ISingleBondIssuance
 * @author Atlendis Labs
 * @notice Interface of the Single Bond Issuance product
 *         The product allows permissionless deposit of tokens at a chosen rate in a pool.
 *         These funds can then be borrowed at the specified rate.
 *         The loan can be repaid by repaying the borrowed amound and the interests.
 *         A lender can withdraw its funds when it has not been borrowed or when repaid.
 *         This product allows for a single loan to be made.
 *         If the loan never happens, a cancellation fee if parametrized, is applied.
 *         The interface is defined as a union of its modules
 */
interface ISingleBondIssuance is ISBIPool, ISBIGovernance, ISBIBorrowers, ISBILenders {

}
