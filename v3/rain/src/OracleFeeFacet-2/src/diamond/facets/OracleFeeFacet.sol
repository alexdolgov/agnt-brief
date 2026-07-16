// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

import { IERC20, SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import { LibUtils } from "../libraries/LibUtils.sol";
import { LibDiamond } from "../libraries/LibDiamond.sol";

import { IOracleFee } from "../interfaces/IOracleFee.sol";

import { IRainDeployer } from "../../interfaces/IRainDeployer.sol";

/**
 * @title OracleFeeFacet
 * @author Rain Team
 * @notice External interface for the rain pool `Oracl` facet.
 */
contract OracleFeeFacet is IOracleFee {
    using SafeERC20 for IERC20;

    /**
     * @inheritdoc IOracleFee
     */
    function calculateBaseTokenOracleFixedFee(
        uint256 oracleFixedFee,
        address baseTokenAddress,
        IRainDeployer.TokenData calldata tokenData
    ) external returns (uint256) {
        return LibUtils.getQuoteIn(baseTokenAddress, oracleFixedFee, tokenData);
    }

    /**
     * @inheritdoc IOracleFee
     */
    function swapOracleFixedFee(address baseToken, IRainDeployer.TokenData calldata tokenData) external {
        LibDiamond.enforceIsFactory();
        LibUtils.swapTokensForUSDT(baseToken, IERC20(baseToken).balanceOf(address(this)), tokenData);
    }
}
