// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./orebit.sol";

contract OREBIT20Deployer {
    error DeploymentFailed();
    error UnknownToken();

    struct SaleMetadata {
        string logoUrl;
        string websiteUrl;
        string twitterUrl;
        string telegramUrl;
        string description;
    }

    struct DeployParams {
        string name;
        string symbol;

        uint256 raiseGoal;
        uint8 prefarmMultiplier;
        uint64 totalDurationMinutes;
        uint16 epochs;
        uint8 farmingShare;

        uint8 buyProtocolFee;
        uint8 sellProtocolFee;

        SaleMetadata metadata;
    }

    // creator => tokens
    mapping(address => address[]) public creatorTokens;

    mapping(address => bool) public isDeployedToken;

    event OREBIT20Deployed(
        address indexed token,
        address indexed creator,
        string name,
        string symbol,
        uint256 raiseGoal,
        uint8 prefarmMultiplier,
        uint64 totalDurationMinutes,
        uint16 epochs,
        uint8 farmingShare,
        uint8 buyProtocolFee,
        uint8 sellProtocolFee,
        string logoUrl,
        string websiteUrl,
        string twitterUrl,
        string telegramUrl,
        string description
    );

    event PrefarmUpdated(address indexed token, uint256 ethIn, uint256 ethOut, uint256 totalRaisedAfter);

    function getCreatorTokens(address creator) external view returns (address[] memory) {
        return creatorTokens[creator];
    }

    function deploy(DeployParams calldata p) external returns (address token) {
        address creator = msg.sender;

        token = address(
            new OREBIT20(
                creator,
                p.name,
                p.symbol,
                p.raiseGoal,
                p.prefarmMultiplier,
                p.totalDurationMinutes,
                p.epochs,
                p.farmingShare,
                p.buyProtocolFee,
                p.sellProtocolFee
            )
        );

        if (token.code.length == 0) revert DeploymentFailed();

        creatorTokens[creator].push(token);
        isDeployedToken[token] = true;

        emit OREBIT20Deployed(
            token,
            creator,
            p.name,
            p.symbol,
            p.raiseGoal,
            p.prefarmMultiplier,
            p.totalDurationMinutes,
            p.epochs,
            p.farmingShare,
            p.buyProtocolFee,
            p.sellProtocolFee,
            p.metadata.logoUrl,
            p.metadata.websiteUrl,
            p.metadata.twitterUrl,
            p.metadata.telegramUrl,
            p.metadata.description
        );
    }

    // ----- Prefarm entrypoints (factory is msg.sender to the token, user is msg.sender here) -----

    function prefarmStakeForSender(address token) external payable {
        if (!isDeployedToken[token]) revert UnknownToken();
        require(msg.value > 0, "AMOUNT_ZERO");

        OREBIT20 tokenContract = OREBIT20(payable(token));

       tokenContract.prefarmStake{value: msg.value}(msg.sender);

        (, , uint256 totalRaisedAfter, ) = tokenContract.getPrefarmState();

        emit PrefarmUpdated(token, msg.value, 0, totalRaisedAfter);
    }

    function prefarmUnstakeForSender(address token) external {
        if (!isDeployedToken[token]) revert UnknownToken();

        OREBIT20 tokenContract = OREBIT20(payable(token));

        (,, uint256 rawBefore) = tokenContract.stakers(msg.sender);
        require(rawBefore > 0, "NOTHING_STAKED");

        tokenContract.prefarmUnstake(msg.sender);

        // After unstake, raw should be 0
        (, , uint256 totalRaisedAfter, ) = tokenContract.getPrefarmState();

        // Minimal event you asked for
        emit PrefarmUpdated(token, 0, rawBefore, totalRaisedAfter);

    }
}
