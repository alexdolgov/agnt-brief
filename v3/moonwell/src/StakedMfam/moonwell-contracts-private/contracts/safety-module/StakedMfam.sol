// SPDX-License-Identifier: agpl-3.0
pragma solidity 0.6.12;
pragma experimental ABIEncoderV2;

import "./interfaces/IERC20.sol";
import {StakedToken} from "./StakedToken.sol";

/**
 * @title StakedMfam
 * @notice StakedToken with MFAM token as estaked token
 * @author Moonwell
 **/
contract StakedMfam is StakedToken {
    string internal constant NAME = "Staked MFAM";
    string internal constant SYMBOL = "stkMFAM";
    uint8 internal constant DECIMALS = 18;

    /**
     * @dev Called by the proxy contract
     **/
    function initialize(
        IERC20 stakedToken,
        IERC20 rewardToken,
        uint256 cooldownSeconds,
        uint256 unstakeWindow,
        address rewardsVault,
        address emissionManager,
        uint128 distributionDuration,
        address governance
  ) external {
        __StakedToken_init(
            stakedToken,
            rewardToken,
            cooldownSeconds,
            unstakeWindow,
            rewardsVault,
            emissionManager,
            distributionDuration,
            NAME,
            SYMBOL,
            DECIMALS,
            governance
        );
    }
}