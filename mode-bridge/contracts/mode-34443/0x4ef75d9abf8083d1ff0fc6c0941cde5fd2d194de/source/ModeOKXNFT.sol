// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721EnumerableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/AddressUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/StringsUpgradeable.sol";

contract ModeOKXNFT is
    UUPSUpgradeable,
    OwnableUpgradeable,
    ERC721EnumerableUpgradeable
{
    using SafeERC20Upgradeable for IERC20Upgradeable;
    using StringsUpgradeable for uint256;

    uint256 private _tokenIdCounter;
    bool private _ownerInitialized;

    address public admin;

    string public baseURI;

    uint256 public maxSupply;
    uint64 public startTime;
    uint64 public endTime;
    uint256 public mintLimitationPerAddress;

    mapping(address => uint256) public mintRecord;
    mapping(address => bool) public senderAllowlist;
    mapping(address => bool) public recipientAllowlist;

    modifier mintTime() {
        require(
            startTime > 0 && block.timestamp > startTime,
            "mint has not started"
        );
        require(block.timestamp < endTime, "mint has ended");
        _;
    }

    modifier onlyAdminOrOwner() {
        require(
            msg.sender == admin || msg.sender == owner(),
            "only admin or owner can operate"
        );
        _;
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal override onlyOwner {}

    function getImplementation() external view returns (address) {
        return _getImplementation();
    }

    function initialize(
        string calldata name_,
        string calldata symbol_,
        string calldata baseUri_,
        uint256 maxSupply_,
        uint256 mintLimitationPerAddress_,
        uint64 startTime_,
        uint64 endTime_,
        address admin_
    ) public initializer {
        __ERC721_init(name_, symbol_);
        __Ownable_init();
        __ERC721Enumerable_init();

        _tokenIdCounter = 1;
        maxSupply = maxSupply_;
        baseURI = baseUri_;
        mintLimitationPerAddress = mintLimitationPerAddress_;
        startTime = startTime_;
        endTime = endTime_;
        admin = admin_;
    }

    //-------------------------------
    //------- Owner functions -------
    //-------------------------------
    function setMaxSupply(uint256 max_) external onlyAdminOrOwner {
        require(max_ > totalSupply(), "please set correct max supply");
        maxSupply = max_;
    }

    function setMintTime(
        uint64 startTime_,
        uint64 endTime_
    ) external onlyAdminOrOwner {
        require(startTime_ < endTime_, "please set correct mint time");
        startTime = startTime_;
        endTime = endTime_;
    }

    function setBaseUri(string calldata baseUri_) external onlyAdminOrOwner {
        baseURI = baseUri_;
    }

    function setMintLimitationPerAddress(
        uint256 mintLimitationPerAddress_
    ) external onlyAdminOrOwner {
        mintLimitationPerAddress = mintLimitationPerAddress_;
    }

    function setAdmin(address admin_) external onlyOwner {
        admin = admin_;
    }

    function burn(uint256 tokenId) external onlyAdminOrOwner {
        _burn(tokenId);
    }
    function setSenderAllowlist(
        address[] calldata allowlist,
        bool knob
    ) external onlyAdminOrOwner {
        for (uint256 i = 0; i < allowlist.length; i++) {
            // Already set the same value
            if (senderAllowlist[allowlist[i]] == knob) {
                continue;
            }
            senderAllowlist[allowlist[i]] = knob;
        }
    }
    //-------------------------------
    //------- exeternal functions ------
    //-------------------------------

    /**
     *  @notice for public user mint
     */
    function publicMint(uint256 amount) external mintTime {
        require(totalSupply() + amount <= maxSupply, "reached maxSupply");
        uint256 mintRecordTemp = mintRecord[msg.sender] + amount;
        require(
            mintRecordTemp <= mintLimitationPerAddress,
            "reached limitation for per address"
        );

        mintRecord[msg.sender] = mintRecordTemp;
        uint256 currentTokenId = _tokenIdCounter;
        _tokenIdCounter += amount;

        for (uint256 i = 0; i < amount; ) {
            _safeMint(msg.sender, currentTokenId);
            unchecked {
                ++i;
            }
            ++currentTokenId;
        }
    }

    //-------------------------------
    //------- internal functions --------
    //-------------------------------
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 firstTokenId,
        uint256 batchSize
    ) internal override {
        super._beforeTokenTransfer(from, to, firstTokenId, batchSize);
        if (_isContract(msg.sender)) {
            require(senderAllowlist[msg.sender], "Sender not in Allowlist");
        }
        if (_isContract(to)) {
            require(recipientAllowlist[to], "Recipient not in Allowlist");
        }
    }

    //-------------------------------
    //------- view functions --------
    //-------------------------------
    function tokenURI(
        uint256 tokenId
    ) public view virtual override returns (string memory) {
        _requireMinted(tokenId);
        return
            bytes(baseURI).length > 0
                ? string(abi.encodePacked(baseURI, tokenId.toString()))
                : "";
    }

    function getTokenIdsOfOwner(
        address _addr
    ) public view returns (uint256[] memory) {
        uint256[] memory tokenIDs = new uint256[](balanceOf(_addr));
        for (uint256 i = 0; i < balanceOf(_addr); ) {
            tokenIDs[i] = tokenOfOwnerByIndex(_addr, i);
            unchecked {
                ++i;
            }
        }
        return tokenIDs;
    }

    function _isContract(address account) internal view returns (bool) {
        return (account.code.length > 0);
    }
}
