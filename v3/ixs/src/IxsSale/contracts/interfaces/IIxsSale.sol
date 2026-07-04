// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

interface IIxsSale {
    event StartSale(uint256 saleId);

    event InvestPreSale(
        uint256 saleId,
        uint256 amount,
        address paymentToken,
        address buyer
    );

    event InvestPublicSale(
        uint256 saleId,
        uint256 amount,
        address paymentToken,
        address buyer
    );

    event BatchClaim(uint256 saleId, address[] receivers);

    event Claim(
        uint256 saleId,
        uint256 amount,
        address paymentToken,
        address to,
        address sender
    );

    event SetNewDeadLine(
        uint256 saleId
    );

    event WithdrawIssuer(address investToken, uint256 amount, address issuer);

    event ForceWithdraw(
        address paymentToken,
        uint256 amount,
        address to,
        address sender
    );

    event ForceFinalize(uint256 saleId, address finalizer);

    struct InvestStruct {
        address to;
        uint256 nonce;
        uint256 deadline;
        uint8 v;
        bytes32 r;
        bytes32 s;
    }

    struct LaunchSale {
        address controller;
        address initiator;
        address paymentToken;
        uint256 rate;
        uint256 feePercent;
        uint256[3] caps; // preSaleCap, softCap, hardCap,
        uint256[3] deadlines; // preSaleStart, pubSaleStart, pubSaleFinish
        uint256[4] investLimits; // minPresaleInvest, maxPresaleInvest, minPublicInvest, maxPublicInvest
        bool tokenMinted;
    }

    struct SaleArgs {
        uint256 dealBalance;
        bytes32 whitelistRoot;
        uint256 userClaimed;
        bool issuerClaimed;
        bool forceFinalize;
    }

    function launchSale(LaunchSale calldata launchSale) external;

    function investPreSale(
        uint256 _saleId,
        uint256 _amount,
        bytes32[] calldata _membershipProof
    ) external payable;

    function investPublicSale(
        uint256 _saleId,
        uint256 _amount,
        InvestStruct calldata _investData
    ) external payable;

    function batchClaim(uint256 _saleId, address[] calldata receivers) external;

    function withdrawIssuer(uint256 _saleId) external;

    function claim(uint256 _saleId, address _to) external;
}
