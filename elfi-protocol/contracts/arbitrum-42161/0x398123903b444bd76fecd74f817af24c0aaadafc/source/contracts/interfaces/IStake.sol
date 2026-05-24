// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "../process/OracleProcess.sol";
import "../storage/Mint.sol";
import "../storage/Redeem.sol";

interface IStake {
    /// @dev MintStakeTokenParams struct used for minting
    /// @param stakeToken The address of the pool
    /// @param requestToken The address of the token being used
    /// @param requestTokenAmount The total amount of tokens for minting
    /// @param minStakeAmount The minimum staking return amount expected
    /// @param executionFee The execution fee for the keeper
    /// @param isCollateral Whether the request token is used as collateral
    /// @param isNativeToken Whether the margin is ETH
    /// @param isFromAccount Whether mint by user's trading account
    /// @param isMintMax Whether mint by all token from user's trading account
    struct MintStakeTokenParams {
        address stakeToken;
        address requestToken;
        uint256 requestTokenAmount;
        uint256 minStakeAmount;
        uint256 executionFee;
        bool isCollateral;
        bool isNativeToken;
        bool isFromAccount;
        bool isMintMax;
    }

    /// @dev RedeemStakeTokenParams struct used for redeeming
    /// @param receiver The address of the receiver getting the redeemed token
    /// @param stakeToken The address of the pool
    /// @param redeemToken The address of the token being redeemed
    /// @param unStakeAmount The amount of stake token to be unstaked
    /// @param minRedeemAmount The minimum amount of redeem token expected
    /// @param executionFee The execution fee for the keeper
    struct RedeemStakeTokenParams {
        address receiver;
        address stakeToken;
        address redeemToken;
        uint256 unStakeAmount;
        uint256 minRedeemAmount;
        uint256 executionFee;
    }

    function createMintStakeTokenRequest(MintStakeTokenParams calldata params) external payable;

    function executeMintStakeToken(uint256 requestId, OracleProcess.OracleParam[] calldata oracles) external;

    function cancelMintStakeToken(uint256 requestId, bytes32 reasonCode) external;

    function createRedeemStakeTokenRequest(RedeemStakeTokenParams calldata params) external payable;

    function executeRedeemStakeToken(uint256 requestId, OracleProcess.OracleParam[] calldata oracles) external;

    function cancelRedeemStakeToken(uint256 requestId, bytes32 reasonCode) external;
}
