// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import {IXLoan} from "../../interfaces/IXLoan.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {AccountConfigStorage} from "../../storage/AccountConfigStorage.sol";
import {IXVoter} from "../../interfaces/IXVoter.sol";
import {PortfolioFactory} from "../../accounts/PortfolioFactory.sol";

/**
 * @title XPharaohLegacyClaimFacet
 * @notice Minimal facet to claim and process legacy rewards.
 */
contract XPharaohLegacyClaimFacet {
    AccountConfigStorage public immutable _accountConfigStorage;
    address public immutable _voter = 0x922b9Ca8e2207bfB850B6FF647c054d4b58a2Aa7;
    address public constant _odosRouter = 0x88de50B233052e4Fb783d4F6db78Cc34fEa3e9FC;
    PortfolioFactory public immutable _portfolioFactory = PortfolioFactory(0x52d43C377e498980135C8F2E858f120A18Ea96C2);
    address public immutable _allowedCaller = 0xf161e7c79e0c0A3FD8D75A05A53A04E05B2034d3;

    constructor(address accountConfigStorage) {
        require(accountConfigStorage != address(0));
        _accountConfigStorage = AccountConfigStorage(accountConfigStorage);
    }

    /**
     * @notice Claim legacy incentives via XVoter and process outputs through Odos.
     * @dev Excess preferred token and vault asset are forwarded to the caller (loan contract).
     */
    function xPharProcessLegacyRewards(
        address[] calldata feeDistributors,
        address[][] calldata tokens
    ) public {
        require(msg.sender == _allowedCaller);
        uint256[][] memory tokenBalances = new uint256[][](tokens.length);
        for (uint256 i = 0; i < tokens.length; i++) {
            tokenBalances[i] = new uint256[](tokens[i].length);
            for (uint256 j = 0; j < tokens[i].length; j++) {
                IERC20 token = IERC20(tokens[i][j]);
                tokenBalances[i][j] = token.balanceOf(address(this));
            }
        }

        IXVoter(_voter).claimLegacyIncentives(address(this), feeDistributors, tokens);

        for (uint256 i = 0; i < tokens.length; i++) {
            for (uint256 j = 0; j < tokens[i].length; j++) {
                IERC20 token = IERC20(tokens[i][j]);
                uint256 tokenBalance = token.balanceOf(address(this));
                // transfer excess tokens to portfolio owner
                if (tokenBalance > tokenBalances[i][j]) {
                    token.transfer(_portfolioFactory.ownerOf(address(this)), tokenBalance - tokenBalances[i][j]);
                }
            }
        }
    }
}