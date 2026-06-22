// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/utils/Pausable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

interface IMetastrikeCore {
    function ownerOf(uint256 _tokenId) external view returns (address);

    function ownedBy(address _owner) external view returns (uint256[] memory);

    function getCurrentTokenId() external view returns (uint256);

    function safeMint(
        address to,
        uint8 _weaponCat,
        uint256 _weapon,
        uint256 _skin,
        uint8 _color,
        uint8 _tier,
        uint8 _slot,
        uint256 _point,
        uint256 _timeLock
    ) external;
}

contract MetastrikeDAOMintNFT is AccessControl, Pausable, ReentrancyGuard {
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");

    IMetastrikeCore public metastrikeCore;

    struct SellInfo {
        bool activated;
        uint256 tier;
        uint256 price;
        uint256 sold;
        uint256 supply;
    }

    address payable[] public partnerList;
    uint256 public whitelistSellInfo;

    mapping(uint256 => SellInfo) public sellInfos;

    mapping(address => bool) public WhitelistUsers;
    mapping(address => uint256[]) public WhitelistTokenIds;
    mapping(address => uint256[]) public NonWhitelistTokenIds;

    uint256 public MaxNftPerWhitelistUser = 1;
    uint256 public MaxWhitelistUser = 50;

    uint256 public constant ONE_HUNDRED = 100;
    uint256 private randNonce = 0;

    /* ========== Events ========== */

    event Mint(address user, uint256 tokenId);

    constructor() {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(PAUSER_ROLE, msg.sender);
    }

    /* ========== Operational Functions ========== */

    function pause() public onlyRole(PAUSER_ROLE) {
        _pause();
    }

    function unpause() public onlyRole(PAUSER_ROLE) {
        _unpause();
    }

    /* ========== User Functions ========== */

    function getNftBoughts(
        address _user
    ) public view returns (bool, uint256[] memory, uint256[] memory) {
        bool isWhitelisted = WhitelistUsers[_user];

        uint256[] memory whitelistTokenIds = new uint256[](
            WhitelistTokenIds[_user].length
        );
        uint256[] memory nonWhitelistTokenIds = new uint256[](
            NonWhitelistTokenIds[_user].length
        );

        for (uint i = 0; i < WhitelistTokenIds[_user].length; i++) {
            whitelistTokenIds[i] = WhitelistTokenIds[_user][i];
        }

        for (uint i = 0; i < NonWhitelistTokenIds[_user].length; i++) {
            nonWhitelistTokenIds[i] = NonWhitelistTokenIds[_user][i];
        }

        return (isWhitelisted, whitelistTokenIds, nonWhitelistTokenIds);
    }

    function mint(uint256 _sellInfoId) public payable nonReentrant {
        SellInfo storage sellInfo = sellInfos[_sellInfoId];

        require(msg.value == sellInfo.price, "invalid BNB value");

        require(sellInfo.activated, "deactivated");

        require(sellInfo.supply > sellInfo.sold, "exceeds supply");

        uint256 tokenId = metastrikeCore.getCurrentTokenId();

        sellInfo.sold += 1;

        if (whitelistSellInfo == _sellInfoId) {
            // do check whitelist
            require(WhitelistUsers[msg.sender], "not whitelist user");
            // do check max nft per whitelist user
            require(
                WhitelistTokenIds[msg.sender].length < MaxNftPerWhitelistUser,
                "fully minted"
            );

            WhitelistTokenIds[msg.sender].push(tokenId);

            metastrikeCore.safeMint(
                msg.sender,
                0,
                pseudoRandom(11, msg.sender),
                2,
                2,
                1,
                4,
                300,
                0
            );
        } else {
            NonWhitelistTokenIds[msg.sender].push(tokenId);

            if (sellInfo.tier == 1) {
                metastrikeCore.safeMint(
                    msg.sender,
                    0,
                    pseudoRandom(11, msg.sender),
                    2,
                    2,
                    1,
                    4,
                    300,
                    0
                );
            } else if (sellInfo.tier == 2) {
                metastrikeCore.safeMint(
                    msg.sender,
                    0,
                    pseudoRandom(6, msg.sender),
                    2,
                    2,
                    2,
                    2,
                    400,
                    0
                );
            } else {
                metastrikeCore.safeMint(msg.sender, 0, 1, 2, 2, 3, 0, 500, 0);
            }
        }

        emit Mint(msg.sender, tokenId);
    }

    /* ========== Governance Functions ========== */

    function govSetMetastrikeCore(
        address _metastrikeCore
    ) public onlyRole(DEFAULT_ADMIN_ROLE) {
        metastrikeCore = IMetastrikeCore(_metastrikeCore);
    }

    function govSetSellInfo(
        uint256 _sellInfoId,
        bool _activated,
        uint256 _tier,
        uint256 _price,
        uint256 _supply
    ) public onlyRole(DEFAULT_ADMIN_ROLE) {
        require(_tier >= 1 && _tier <= 3, "invalid tier");
        SellInfo storage sellInfo = sellInfos[_sellInfoId];
        sellInfo.activated = _activated;
        sellInfo.tier = _tier;
        sellInfo.price = _price;
        sellInfo.supply = _supply;
    }

    function govSetWhitelistSellInfo(
        uint256 _sellInfoId
    ) public onlyRole(DEFAULT_ADMIN_ROLE) {
        whitelistSellInfo = _sellInfoId;
    }

    function govWithdraw(address _to) external onlyRole(DEFAULT_ADMIN_ROLE) nonReentrant {
        (bool sent, ) = payable(_to).call{value: address(this).balance}("");
        require(sent, "failed to send BNB");
    }

    function govSetWhitelistUsers(
        address[] memory _users
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(_users.length <= MaxWhitelistUser, "exceeds MaxWhitelistUser");

        for (uint i = 0; i < _users.length; i++) {
            WhitelistUsers[_users[i]] = true;
        }
    }

    function govSetMaxNftPerWhitelistUser(
        uint256 _max
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        MaxNftPerWhitelistUser = _max;
    }

    function govSetMaxWhitelistUser(
        uint256 _max
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        MaxWhitelistUser = _max;
    }

    /* ========== Helper Functions ========== */
    
    function pseudoRandom(
        uint256 _modulus,
        address _user
    ) public view returns (uint256) {
        return
            uint256(
                keccak256(abi.encodePacked(block.timestamp, _user, randNonce))
            ) % _modulus;
    }

    /* ========== Receiving BNB ========== */

    receive() external payable {}

    fallback() external payable {}
}
