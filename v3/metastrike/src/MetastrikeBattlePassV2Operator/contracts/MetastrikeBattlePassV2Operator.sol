// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/utils/Pausable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

interface IMetastrikeBattlePassV2 {
    function safeMint(address to) external returns (uint256);
}

interface IERC20 {
    function totalSupply() external view returns (uint256);

    function balanceOf(address account) external view returns (uint256);

    function transfer(
        address recipient,
        uint256 amount
    ) external returns (bool);

    function allowance(
        address owner,
        address spender
    ) external view returns (uint256);

    function approve(address spender, uint256 amount) external returns (bool);

    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) external returns (bool);

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );
}

contract MetastrikeBattlePassV2Operator is
    AccessControl,
    Pausable,
    ReentrancyGuard
{
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    IMetastrikeBattlePassV2 public metastrikeBattlePassV2;
    IERC20 public token;

    uint256 public price;
    uint256 public expirationSeconds;

    struct HolderData {
        uint256 tokenId;
        uint256 firstBought;
        uint256 lastRenewed;
        uint256 expiration;
    }

    mapping(address => HolderData) public holders;

    event HolderMint(
        address holder,
        uint256 tokenId,
        uint256 value,
        uint256 firstBought,
        uint256 expiration,
        bool isGov
    );
    event HolderRenew(
        address holder,
        uint256 tokenId,
        uint256 renewAmount,
        uint256 lastRenewed,
        uint256 expiration,
        bool isGov
    );

    constructor(address defaultAdmin, address pauser, address minter) {
        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
        _grantRole(PAUSER_ROLE, pauser);
        _grantRole(MINTER_ROLE, minter);
    }

    function pause() public onlyRole(PAUSER_ROLE) {
        _pause();
    }

    function unpause() public onlyRole(PAUSER_ROLE) {
        _unpause();
    }

    function setMetastrikeBattlePassV2(
        address _metastrikeBattlePassV2
    ) public onlyRole(DEFAULT_ADMIN_ROLE) {
        metastrikeBattlePassV2 = IMetastrikeBattlePassV2(
            _metastrikeBattlePassV2
        );
    }

    function setToken(address _token) public onlyRole(DEFAULT_ADMIN_ROLE) {
        token = IERC20(_token);
    }

    function setPrice(uint256 _price) public onlyRole(DEFAULT_ADMIN_ROLE) {
        price = _price;
    }

    function setExpirationSeconds(
        uint256 _expirationSeconds
    ) public onlyRole(DEFAULT_ADMIN_ROLE) {
        expirationSeconds = _expirationSeconds;
    }

    function mint() external {
        require(
            holders[msg.sender].tokenId == 0,
            "user already has battle pass"
        );
        token.transferFrom(msg.sender, address(this), price);
        uint256 tokenId = metastrikeBattlePassV2.safeMint(msg.sender);
        uint256 expiration = block.timestamp + expirationSeconds;
        holders[msg.sender] = HolderData({
            tokenId: tokenId,
            firstBought: block.timestamp,
            lastRenewed: block.timestamp,
            expiration: expiration
        });
        emit HolderMint(
            msg.sender,
            tokenId,
            price,
            block.timestamp,
            expiration,
            false
        );
    }

    function renew() external {
        HolderData storage holder = holders[msg.sender];
        require(holder.tokenId != 0, "user must has battle pass");
        require(
            holder.expiration != 0,
            "user already has unlimited battle pass"
        );
        token.transferFrom(msg.sender, address(this), price);
        holder.lastRenewed = block.timestamp;
        holder.expiration = (holder.expiration <= block.timestamp)
            ? (block.timestamp + expirationSeconds)
            : (holder.expiration + expirationSeconds);
        emit HolderRenew(
            msg.sender,
            holder.tokenId,
            price,
            block.timestamp,
            holder.expiration,
            false
        );
    }

    function govMint(
        address _to,
        uint256 _expiration
    ) external onlyRole(MINTER_ROLE) {
        require(holders[_to].tokenId == 0, "user already has battle pass");
        uint256 tokenId = metastrikeBattlePassV2.safeMint(_to);
        uint256 expiration = _expiration == 0
            ? _expiration
            : block.timestamp + expirationSeconds;
        holders[_to] = HolderData({
            tokenId: tokenId,
            firstBought: block.timestamp,
            lastRenewed: block.timestamp,
            expiration: expiration
        });

        emit HolderMint(msg.sender, tokenId, price, block.timestamp, expiration, true);
    }

    function govRenew(address _user, uint256 _expiration) external {
        HolderData storage holder = holders[_user];
        require(holder.tokenId != 0, "user must has battle pass");
        require(
            holder.expiration != 0,
            "user already has unlimited battle pass"
        );
        holder.lastRenewed = block.timestamp;
        holder.expiration = _expiration;
        emit HolderRenew(
            msg.sender,
            holder.tokenId,
            0,
            block.timestamp,
            holder.expiration,
            true
        );
    }

    function govWithdraw(uint256 amount) external onlyRole(DEFAULT_ADMIN_ROLE) {
        token.transfer(
            msg.sender,
            amount == 0 ? token.balanceOf(address(this)) : amount
        );
    }
}
