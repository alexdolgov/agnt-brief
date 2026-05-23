// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

import 'lib/openzeppelin-contracts/contracts/token/ERC721/ERC721.sol';

import './libraries/PoolDataTypes.sol';
import './libraries/PositionDataTypes.sol';
import './interfaces/ISingleBondIssuance.sol';
import './modules/SBIGovernance.sol';
import './modules/SBIPool.sol';
import './modules/SBILenders.sol';
import './modules/SBIBorrowers.sol';

/**
 * @title SingleBondIssuance
 * @author Atlendis Labs
 * @notice Implementation of the ISingleBondIssuance
 */
contract SingleBondIssuance is SBIPool, SBIGovernance, SBIBorrowers, SBILenders {
    /*//////////////////////////////////////////////////////////////
                                LIBRARIES
    //////////////////////////////////////////////////////////////*/

    using FixedPointMathLib for uint256;

    /*//////////////////////////////////////////////////////////////
                               CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Constructor - pass parameters to modules
     * @param governance Address of the governance
     * @param feeConfigs Configurations around fees
     * @param parametersConfig Other Configurations
     * @param name ERC721 name of the positions
     * @param symbol ERC721 symbol of the positions
     */
    constructor(
        address governance,
        bytes memory feeConfigs,
        bytes memory parametersConfig,
        string memory name,
        string memory symbol
    ) SBILenders(name, symbol) SBIGovernance(governance) SBIPool(feeConfigs, parametersConfig) {}

    /*//////////////////////////////////////////////////////////////
                            VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    function getPositionComposition(uint256 positionId)
        public
        view
        returns (
            uint256 depositedAmount,
            uint256 borrowedAmount,
            uint256 theoreticalBondValue,
            uint256 noneBorrowedAvailableAmount
        )
    {
        PositionDataTypes.PositionDetails memory position = positions[positionId];
        PoolDataTypes.Tick storage tick = ticks[position.rate];

        if (tick.borrowedAmount == 0) {
            return (position.depositedAmount, 0, 0, position.depositedAmount);
        }

        if (tick.depositedAmount == tick.borrowedAmount) {
            return (
                position.depositedAmount,
                position.depositedAmount,
                position.depositedAmount.mul(
                    TimeValue.getDiscountFactor(position.rate, LOAN_DURATION, TOKEN_DENOMINATOR),
                    TOKEN_DENOMINATOR
                ),
                0
            );
        }

        if (tick.depositedAmount > tick.borrowedAmount) {
            uint256 noneFilledDeposit = position.depositedAmount.div(tick.depositedAmount, TOKEN_DENOMINATOR).mul(
                tick.depositedAmount - tick.borrowedAmount,
                TOKEN_DENOMINATOR
            );
            return (
                position.depositedAmount,
                position.depositedAmount - noneFilledDeposit,
                position.depositedAmount.div(tick.depositedAmount, TOKEN_DENOMINATOR).mul(
                    tick.borrowedAmount.div(
                        TimeValue.getDiscountFactor(position.rate, LOAN_DURATION, TOKEN_DENOMINATOR),
                        TOKEN_DENOMINATOR
                    ),
                    TOKEN_DENOMINATOR
                ),
                position.hasWithdrawPartially ? 0 : noneFilledDeposit
            );
        }
    }

    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view override returns (bool) {
        return interfaceId == type(ISingleBondIssuance).interfaceId || super.supportsInterface(interfaceId);
    }
}
