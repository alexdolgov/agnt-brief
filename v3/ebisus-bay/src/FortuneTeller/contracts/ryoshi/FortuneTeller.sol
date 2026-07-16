// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/token/ERC1155/extensions/ERC1155Supply.sol";
import "@openzeppelin/contracts/token/common/ERC2981.sol";

contract FortuneTeller is ERC1155Supply, Ownable, Pausable, ERC2981 {
    IERC20 public usdcToken;
    uint256 public totalPurchased;
    uint256 public constant MAX_PURCHASE = 10000000;
    uint256 public constant MIN_PURCHASE = 1000;
    uint8 public constant USDC_DECIMALS = 6;
    //add constant ids starting at 1 common, uncommon, rare, epic, legendary
    uint8 public constant COMMON = 1;
    uint8 public constant UNCOMMON = 2;
    uint8 public constant RARE = 3;
    uint8 public constant EPIC = 4;
    uint8 public constant LEGENDARY = 5;

    //thresholds for each rarity, 1000, 5000, 25000, 50000, 250000
    uint256 public constant COMMON_THRESHOLD = 1000;
    uint256 public constant UNCOMMON_THRESHOLD = 5000;
    uint256 public constant RARE_THRESHOLD = 25000;
    uint256 public constant EPIC_THRESHOLD = 50000;
    uint256 public constant LEGENDARY_THRESHOLD = 250000;

    mapping(uint256 => string) uris;
    

    //.03 USDC
    uint256 public constant TOKEN_PRICE_USDC = 3 * (10 ** (USDC_DECIMALS - 2));
    mapping(address => uint256) public purchases;
    mapping(address => uint8) public minted;

    event Purchase(
        address indexed buyer,
        uint256 tokensPurchased,
        uint256 totalPurchased
    );
    event TotalIncrease(uint256 amount);

    constructor(address _usdcToken) ERC1155("") {
        usdcToken = IERC20(_usdcToken);
        setUri(COMMON, "ipfs://QmUq5skT1TrhNX2BFmptxU6LQrPQPMqUsrcxcHdwRgUcEf/1.json");
        setUri(UNCOMMON, "ipfs://QmUq5skT1TrhNX2BFmptxU6LQrPQPMqUsrcxcHdwRgUcEf/2.json");
        setUri(RARE, "ipfs://QmUq5skT1TrhNX2BFmptxU6LQrPQPMqUsrcxcHdwRgUcEf/3.json");
        setUri(EPIC, "ipfs://QmUq5skT1TrhNX2BFmptxU6LQrPQPMqUsrcxcHdwRgUcEf/4.json");
        setUri(LEGENDARY, "ipfs://QmUq5skT1TrhNX2BFmptxU6LQrPQPMqUsrcxcHdwRgUcEf/5.json");
        _setDefaultRoyalty(0xB5d4f12b5E7d8Ce43FECe177a6C75dF14994FBe6, 500);
    }

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    function setUri(uint256 _tokenId, string memory _uri) public onlyOwner {
        uris[_tokenId] = _uri;
    }

    function uri(
        uint256 _tokenId
    ) public view virtual override returns (string memory) {
        return uris[_tokenId];
    }

    function purchase(uint256 amount) external whenNotPaused {
        require(amount >= MIN_PURCHASE, "Minimum purchase not met");
        require(
            totalPurchased + amount <= MAX_PURCHASE,
            "Purchase exceeds maximum limit"
        );

        uint256 usdcAmount = amount * TOKEN_PRICE_USDC;
        require(
            usdcToken.transferFrom(msg.sender, address(this), usdcAmount),
            "USDC transfer failed"
        );

        totalPurchased += amount;
        purchases[msg.sender] += amount;

        emit Purchase(msg.sender, amount, purchases[msg.sender]);
        emit TotalIncrease(totalPurchased);

        if(purchases[msg.sender] >= COMMON_THRESHOLD){
            if(minted[msg.sender] < COMMON){
                minted[msg.sender] = COMMON;
                _mint(msg.sender, COMMON, 1, "");
            }
        }
        if(purchases[msg.sender] >= UNCOMMON_THRESHOLD){
            if(minted[msg.sender] < UNCOMMON){
                minted[msg.sender] = UNCOMMON;
                _mint(msg.sender, UNCOMMON, 1, "");
            }
        }
        if(purchases[msg.sender] >= RARE_THRESHOLD){
            if(minted[msg.sender] < RARE){
                minted[msg.sender] = RARE;
                _mint(msg.sender, RARE, 1, "");
            }
        }
        if(purchases[msg.sender] >= EPIC_THRESHOLD){
            if(minted[msg.sender] < EPIC){
                minted[msg.sender] = EPIC;
                _mint(msg.sender, EPIC, 1, "");
            }
        }
        if(purchases[msg.sender] >= LEGENDARY_THRESHOLD){
            if(minted[msg.sender] < LEGENDARY){
                minted[msg.sender] = LEGENDARY;
                _mint(msg.sender, LEGENDARY, 1, "");
            }
        }

    }

    function airdropMint(
        uint256 _tokenId,
        address[] calldata _addresses
    ) external onlyOwner {
        bytes memory tokenURI = bytes(uris[_tokenId]);
        require(tokenURI.length != 0, "unknown tokenId");

        uint256 len = _addresses.length;

        for (uint256 i = 0; i < len; i++) {
            _mint(_addresses[i], _tokenId, 1, "");
        }
    }

    function withdrawTokens(uint256 amount) external onlyOwner {
        usdcToken.transfer(msg.sender, amount * (10 ** USDC_DECIMALS));
    }


    function supportsInterface(
        bytes4 interfaceId
    ) public view override(ERC1155, ERC2981) returns (bool) {
                return
            (ERC1155).supportsInterface(interfaceId) ||
            (ERC2981).supportsInterface(interfaceId);
    }

    function setDefaultRoyalty(
        address receiver,
        uint96 feeNumerator
    ) public onlyOwner {
        _setDefaultRoyalty(receiver, feeNumerator);
    }
}
