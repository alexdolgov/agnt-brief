// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import "./interfaces/IKingDackieNFT.sol";


contract UpgradeKingDackie is Ownable, ReentrancyGuard {

    // The staked token
    IKingDackieNFT public kingDackieNft;

    IERC721 public dackieOnBaseNft;

    IERC20 public DACKIE;

    IERC20 public QUACK;

    address public burnContract;

    uint256 public requiredDackieUp;

    uint256 public requiredQuackUp;

    uint256 public requiredDackieDown;

    uint256 public requiredQuackDown;

    struct UpgradeKingDackieInfo {
        uint256 nft1;
        uint256 nft2;
    }

    mapping(uint256 => UpgradeKingDackieInfo) public upgradeKingDackieMap;

    event Upgrade(uint256 _nft1, uint256 _nft2);
    event Downgrade(uint256 _kingDackieId);

    constructor(
        IKingDackieNFT _kingDackieNft,
        IERC721 _dackieOnBaseNft,
        IERC20 _dackieAddress,
        IERC20 _quackAddress,
        uint256 _requiredDackieUp,
        uint256 _requiredQuackUp,
        uint256 _requiredDackieDown,
        uint256 _requiredQuackDown,
        address _burnContract
    ) {
        kingDackieNft = _kingDackieNft;
        dackieOnBaseNft = _dackieOnBaseNft;
        DACKIE = _dackieAddress;
        QUACK = _quackAddress;
        requiredDackieUp = _requiredDackieUp;
        requiredDackieDown = _requiredDackieDown;
        requiredQuackUp = _requiredQuackUp;
        requiredQuackDown = _requiredQuackDown;
        burnContract = _burnContract;
    }

    function upgrade(uint256 _nft1Id, uint256 _nft2Id) external nonReentrant {
        // Ensure the caller owns the two NFTs they are trying to upgrade with
        require(dackieOnBaseNft.ownerOf(_nft1Id) == msg.sender, "Not owner of NFT1");
        require(dackieOnBaseNft.ownerOf(_nft2Id) == msg.sender, "Not owner of NFT2");

        // Ensure the user has enough DACKIE and QUACK
        require(DACKIE.balanceOf(msg.sender) >= requiredDackieUp, "Not enough DACKIE");
        require(QUACK.balanceOf(msg.sender) >= requiredQuackUp, "Not enough QUACK");

        // Transfer required DACKIE and QUACK from user to the burn address
        DACKIE.transferFrom(msg.sender, burnContract, requiredDackieUp);
        QUACK.transferFrom(msg.sender, burnContract, requiredQuackUp);

        // Ensure nft1Id is the lower ID
        if (_nft1Id > _nft2Id) {
            uint256 temp = _nft1Id;
            _nft1Id = _nft2Id;
            _nft2Id = temp;
        }

        // Transfer the two NFTs to this contract (locking/burning them)
        dackieOnBaseNft.transferFrom(msg.sender, address(this), _nft1Id);
        dackieOnBaseNft.transferFrom(msg.sender, address(this), _nft2Id);

        // Mint a new kingDackieNft for the caller
        uint256 newKingDackieId = kingDackieNft.totalSupply() + 1; // Assuming sequential IDs
        kingDackieNft.mint(msg.sender);

        // Store the association in upgradeKingDackieMap
        upgradeKingDackieMap[newKingDackieId] = UpgradeKingDackieInfo(_nft1Id, _nft2Id);

        emit Upgrade(_nft1Id, _nft2Id);
    }


    function downgrade(uint256 _kingDackieId) external nonReentrant {
        // Ensure the caller owns the KingDackieNFT they're trying to downgrade
        require(kingDackieNft.ownerOf(_kingDackieId) == msg.sender, "Not owner of the KingDackieNFT");

        // Ensure the user has enough DACKIE and QUACK
        require(DACKIE.balanceOf(msg.sender) >= requiredDackieDown, "Not enough DACKIE");
        require(QUACK.balanceOf(msg.sender) >= requiredQuackDown, "Not enough QUACK");

        // Transfer required DACKIE and QUACK from user to the burn address
        DACKIE.transferFrom(msg.sender, burnContract, requiredDackieDown);
        QUACK.transferFrom(msg.sender, burnContract, requiredQuackDown);

        // Fetch the associated nft1 and nft2
        UpgradeKingDackieInfo memory info = upgradeKingDackieMap[_kingDackieId];
        require(info.nft1 != 0 && info.nft2 != 0, "Invalid KingDackieNFT or already downgraded");

        // Burn the KingDackieNFT
        kingDackieNft.burn(_kingDackieId);

        // Transfer nft1 and nft2 back to the caller
        dackieOnBaseNft.transferFrom(address(this), msg.sender, info.nft1);
        dackieOnBaseNft.transferFrom(address(this), msg.sender, info.nft2);

        // Remove the association from upgradeKingDackieMap
        delete upgradeKingDackieMap[_kingDackieId];

        emit Downgrade(_kingDackieId);
    }

    function setRequiredDackieUp(uint256 _value) external onlyOwner {
        requiredDackieUp = _value;
    }

    function setRequiredQuackUp(uint256 _value) external onlyOwner {
        requiredQuackUp = _value;
    }

    function setRequiredDackieDown(uint256 _value) external onlyOwner {
        requiredDackieDown = _value;
    }

    function setRequiredQuackDown(uint256 _value) external onlyOwner {
        requiredQuackDown = _value;
    }

}