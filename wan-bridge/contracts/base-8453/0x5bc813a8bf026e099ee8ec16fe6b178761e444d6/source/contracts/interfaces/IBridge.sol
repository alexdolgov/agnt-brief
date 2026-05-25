// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface IBridge {
    /// @notice                                 request exchange orignal coin or token with WRC20 on wanchain
    /// @param  smgID                           ID of storeman
    /// @param  tokenPairID                     token pair ID of cross chain coin/token
    /// @param  value                           exchange value
    /// @param  userAccount                     account of user, used to receive shadow chain token
    function userLock(
        bytes32 smgID,
        uint tokenPairID,
        uint value,
        bytes calldata userAccount
    ) external payable;

    /// @notice                                 request exchange RC20 token with WRC20 on wanchain
    /// @param  smgID                           ID of storeman
    /// @param  tokenPairID                     token pair ID of cross chain token
    /// @param  value                           exchange value
    /// @param  userAccount                     account of user, used to receive original chain token
    function userBurn(
        bytes32 smgID,
        uint tokenPairID,
        uint value,
        uint fee,
        address tokenAccount,
        bytes calldata userAccount
    ) external payable;

    struct GetFeesParam {
        uint256 srcChainID;
        uint256 destChainID;
    }

    struct GetFeesReturn {
        uint256 contractFee;
        uint256 agentFee;
    }

    function getFee(
        GetFeesParam calldata param
    ) external view returns (GetFeesReturn memory fee);

    function getTokenPairFee(uint256 tokenPairID) external view returns(uint256 contractFee);

    function currentChainID() external view returns (uint256);

    function getPartners()
        external
        view
        returns (
            address tokenManager,
            address smgAdminProxy,
            address smgFeeProxy,
            address quota,
            address sigVerifier
        );
}
