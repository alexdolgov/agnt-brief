// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721EnumerableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/AddressUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/StringsUpgradeable.sol";

contract ModeOKXCampaign is
    UUPSUpgradeable,
    OwnableUpgradeable,
    ERC721EnumerableUpgradeable
{
    using SafeERC20Upgradeable for IERC20Upgradeable;
    using StringsUpgradeable for uint256;

    uint256 private _tokenIdCounter;
    bool private _ownerInitialized;

    address public admin;
    address public paymentToken;
    address public payFeeAddress;

    string public baseURI;

    bool public isTransferRestricted;
    bool public isFreeMint;
    bool public isWhitelistActivity;
    bool public isAirdropInTotal;
    bool public isPublicMint;

    uint256 public maxSupply;
    uint64 public startTime;
    uint64 public endTime;
    uint64 public transferStartTime;
    uint64 public transferEndTime;
    uint256 public airdropAmount;
    uint256 public mintLimitationPerAddress;
    uint256 public price;

    mapping(address => uint256) public mintRecord;
    mapping(address => bool) public serverAccounts;
    mapping(address => bool) public isWhitelistUser;

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

    modifier onlyServer() {
        require(serverAccounts[msg.sender], "only server can operate");
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
    ) public onlyOwner initializer {
        __ERC721_init(name_, symbol_);
        __ERC721Enumerable_init();

        _tokenIdCounter = 1;
        maxSupply = maxSupply_;
        baseURI = baseUri_;
        mintLimitationPerAddress = mintLimitationPerAddress_;
        startTime = startTime_;
        endTime = endTime_;
        admin = admin_;

        isAirdropInTotal = true;
        isFreeMint = true;
        isPublicMint = false;
    }

    function initOwner(address owner) external {
        require(!_ownerInitialized, "Already initialized");
        _ownerInitialized = true;
        _transferOwnership(owner);
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

    function setTransferTime(
        uint64 startTime_,
        uint64 endTime_
    ) external onlyAdminOrOwner {
        require(startTime_ < endTime_, "please set correct transfer time");
        transferStartTime = startTime_;
        transferEndTime = endTime_;
    }

    function setServerAccount(
        address[] calldata accounts,
        bool knob
    ) external onlyAdminOrOwner {
        for (uint256 i = 0; i < accounts.length; i++) {
            // Already set the same value
            if (serverAccounts[accounts[i]] == knob) {
                continue;
            }
            serverAccounts[accounts[i]] = knob;
        }
    }

    function setWhitelist(
        address[] calldata accounts,
        bool knob
    ) external onlyAdminOrOwner {
        for (uint256 i = 0; i < accounts.length; i++) {
            // Already set the same value
            if (isWhitelistUser[accounts[i]] == knob) {
                continue;
            }
            isWhitelistUser[accounts[i]] = knob;
        }
    }

    function setIsWhitelistActivity(
        bool isWhitelistActivity_
    ) external onlyAdminOrOwner {
        isWhitelistActivity = isWhitelistActivity_;
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

    function setIsFreeMint(bool isFreeMint_) external onlyAdminOrOwner {
        isFreeMint = isFreeMint_;
    }

    function setIsTransferRestricted(
        bool isTransferRestricted_
    ) external onlyAdminOrOwner {
        isTransferRestricted = isTransferRestricted_;
    }

    function setPrice(uint256 price_) external onlyAdminOrOwner {
        price = price_;
    }

    function setIsAirdropInTotal(
        bool isAirdropInTotal_
    ) external onlyAdminOrOwner {
        isAirdropInTotal = isAirdropInTotal_;
    }

    function setPaymentToken(address paymentToken_) external onlyAdminOrOwner {
        paymentToken = paymentToken_;
    }

    function setFeeReceiver(address payFeeAddress_) external onlyAdminOrOwner {
        require(payFeeAddress_ != address(0), "please set a correct receiver");
        payFeeAddress = payFeeAddress_;
    }

    function setIsPublicMint(bool isPublicMint_) external onlyAdminOrOwner {
        isPublicMint = isPublicMint_;
    }
    /**
     *  @notice 1. Airdrops quantity is included in totalSupply().
     */
    function airdrop(address[] calldata tos) external onlyAdminOrOwner {
        if (isAirdropInTotal) {
            require(totalSupply() + tos.length <= maxSupply, "reach maxSupply");
        }
        uint256 currentTokenId = _tokenIdCounter;

        _tokenIdCounter += tos.length;
        airdropAmount += tos.length;

        for (uint256 i = 0; i < tos.length; ) {
            _safeMint(tos[i], currentTokenId);

            unchecked {
                ++currentTokenId;
                ++i;
            }
        }
    }

    //-------------------------------
    //------- exeternal functions ------
    //-------------------------------

    /**
     *  @notice can only be called by server
     */
    function mint(address to, uint256 amount) public onlyServer mintTime {
        require(totalSupply() + amount <= maxSupply, "reached maxSupply");
        uint256 mintRecordTemp = mintRecord[to] + amount;
        require(
            mintRecordTemp <= mintLimitationPerAddress,
            "reached limitation for per address"
        );

        mintRecord[to] = mintRecordTemp;
        uint256 currentTokenId = _tokenIdCounter;
        _tokenIdCounter += amount;

        for (uint256 i = 0; i < amount; ) {
            _safeMint(to, currentTokenId);
            unchecked {
                ++i;
            }
            ++currentTokenId;
        }
    }

    function batchMint(
        address[] calldata recipients,
        uint256 amount
    ) external onlyServer mintTime {
        uint256 totalMintAmount = amount * recipients.length;
        require(
            totalSupply() + totalMintAmount <= maxSupply,
            "reached maxSupply"
        );

        for (uint256 i = 0; i < recipients.length; i++) {
            mint(recipients[i], amount);
        }
    }

    /**
     *  @notice for public user mint
     */
    function publicMint(uint256 amount) external payable mintTime {
        require(isPublicMint, "Not PublicMint Activity");
        require(totalSupply() + amount <= maxSupply, "reached maxSupply");
        uint256 mintRecordTemp = mintRecord[msg.sender] + amount;
        require(
            mintRecordTemp <= mintLimitationPerAddress,
            "reached limitation for per address"
        );
        if (!isFreeMint) {
            _takePayment(amount);
        } else {
            require(msg.value == 0, "unexepected ether send");
        }
        if (isWhitelistActivity) {
            require(isWhitelistUser[msg.sender], "Not in Whitelist");
        }
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
    function _takePayment(uint256 amount) internal {
        require(payFeeAddress != address(0), "Wrong FeeReceiver");
        require(price > 0, "Wrong Price");

        uint256 totalPayment = price * amount;
        if (paymentToken == address(0)) {
            require(totalPayment == msg.value, "Wrong Msg.value");
            AddressUpgradeable.sendValue(payable(payFeeAddress), totalPayment);
        } else {
            IERC20Upgradeable(paymentToken).safeTransferFrom(
                msg.sender,
                payFeeAddress,
                totalPayment
            );
        }
    }

    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 firstTokenId,
        uint256 batchSize
    ) internal override {
        super._beforeTokenTransfer(from, to, firstTokenId, batchSize);
        if (from != address(0) && to != address(0) && isTransferRestricted) {
            require(
                transferStartTime > 0 &&
                    block.timestamp > transferStartTime &&
                    block.timestamp < transferEndTime,
                "SBT:Can not be Transfered"
            );
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

    function totalSupply() public view override returns (uint256) {
        if (isAirdropInTotal) {
            return super.totalSupply();
        } else {
            return super.totalSupply() - airdropAmount;
        }
    }
}
