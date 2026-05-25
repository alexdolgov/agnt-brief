// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.20;

import {ERC1155Upgradeable} from "@openzeppelin-contracts-upgradeable/contracts/token/ERC1155/ERC1155Upgradeable.sol";
import {IERC20Upgradeable} from "@openzeppelin-contracts-upgradeable/contracts/token/ERC20/IERC20Upgradeable.sol";
import {OwnableUpgradeable} from "@openzeppelin-contracts-upgradeable/contracts/access/OwnableUpgradeable.sol";
import {UUPSUpgradeable} from "@openzeppelin-contracts-upgradeable/contracts/proxy/utils/UUPSUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from
    "@openzeppelin-contracts-upgradeable/contracts/utils/ReentrancyGuardUpgradeable.sol";
import {Base64} from "@openzeppelin-contracts/contracts/utils/Base64.sol";
import {ERC1967Proxy} from "@openzeppelin-contracts/contracts/proxy/ERC1967/ERC1967Proxy.sol";
import {MerkleProof} from "@openzeppelin-contracts/contracts/utils/cryptography/MerkleProof.sol";
import {IMemories} from "./interfaces/IMemories.sol";

contract Memories is IMemories, OwnableUpgradeable, ERC1155Upgradeable, ReentrancyGuardUpgradeable, UUPSUpgradeable {
    enum Rarity {
        COMMON,
        RARE,
        FOIL,
        LEGENDARY
    }

    struct Card {
        uint256 id;
        uint256 memoryId;
        uint256 claimed;
        uint8 rarity;
    }

    struct Memory {
        uint256 id;
        uint256 endTime;
        uint256 ethereumBlockNumber;
        uint256 polygonBlockNumber;
        uint88 fuelUsed;
        uint88 minStaked;
        uint32 integratorId;
        string name;
        string externalUrl;
    }

    mapping(uint256 => bytes32) public merkleRoots;
    mapping(uint256 => Memory) public memories;
    mapping(uint256 => Card) public cards;
    mapping(uint256 => string) public uris;
    mapping(address => mapping(uint256 => uint256)) public claims;
    mapping(address => address) public delegates;

    string public constant name = "GET Protocol Memories";
    string public constant symbol = "MEMORY";

    uint256 public constant COMMON_ID_START = 0;
    uint256 public constant RARE_ID_START = 10000;
    uint256 public constant FOIL_ID_START = 20000;
    uint256 public constant LEGENDARY_ID_START = 30000;

    string public contractURI;
    uint256 public currentMemoryId;
    address public curator;

    uint8 public rareQuantity;
    uint8 public foilQuantity;
    uint8 public legendaryQuantity;

    uint8 public rareProb;
    uint8 public foilProb;
    uint8 public legendaryProb;

    modifier onlyCurator() {
        require(msg.sender == curator, "MEM:NOT_CURATOR");
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address curator_) public initializer {
        __Ownable_init(msg.sender);
        __ERC1155_init("");
        __UUPSUpgradeable_init();
        curator = curator_;

        currentMemoryId = 0;
        rareQuantity = 50;
        foilQuantity = 15;
        legendaryQuantity = 5;

        rareProb = 50;
        foilProb = 20;
        legendaryProb = 5;
    }

    /*░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
    ░░░░                         Public Functions                          ░░░░
    ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░*/

    /**
     * @inheritdoc IMemories
     */
    function createMemory(
        uint256 ethereumBlockNumber_,
        uint256 polygonBlockNumber_,
        uint88 fuelUsed_,
        uint88 minStaked_,
        uint32 integratorId_,
        string memory name_,
        string memory externalUrl_,
        string memory commonMetadata_,
        string memory rareMetadata_,
        string memory foilMetadata_,
        string memory legendaryMetadata_,
        bytes32 merkleRoot_
    ) external onlyCurator {
        currentMemoryId += 1;
        uint256 endTime_ = block.timestamp + 30 days;
        memories[currentMemoryId] = Memory({
            id: currentMemoryId,
            name: name_,
            minStaked: minStaked_,
            endTime: endTime_,
            integratorId: integratorId_,
            fuelUsed: fuelUsed_,
            externalUrl: externalUrl_,
            ethereumBlockNumber: ethereumBlockNumber_,
            polygonBlockNumber: polygonBlockNumber_
        });

        merkleRoots[currentMemoryId] = merkleRoot_;

        _createCard(currentMemoryId, uint8(Rarity.COMMON), commonMetadata_);
        _createCard(currentMemoryId, uint8(Rarity.RARE), rareMetadata_);
        _createCard(currentMemoryId, uint8(Rarity.FOIL), foilMetadata_);
        _createCard(currentMemoryId, uint8(Rarity.LEGENDARY), legendaryMetadata_);

        emit MemoryCreated(
            currentMemoryId, endTime_, ethereumBlockNumber_, polygonBlockNumber_, fuelUsed_, minStaked_, integratorId_, name_, externalUrl_, merkleRoot_
        );
    }

    /**
     * @notice Get the id of the card from the memory id and the rarity
     * @param  memoryId_ Id of memory
     * @param  rarity_ Rarity of the card
     */
    function getCardId(uint256 memoryId_, uint8 rarity_) public view returns (uint256) {
        uint256 cardId_ = memories[memoryId_].id;
        if (rarity_ == 0) cardId_ = cardId_ + COMMON_ID_START;
        else if (rarity_ == 1) cardId_ = cardId_ + RARE_ID_START;
        else if (rarity_ == 2) cardId_ = cardId_ + FOIL_ID_START;
        else cardId_ = cardId_ + LEGENDARY_ID_START;

        return cardId_;
    }

    /**
     * @inheritdoc IMemories
     */
    function mint(uint256 memoryId_, bytes32[] calldata proof_) external {
        address delegator_ = delegates[msg.sender];
        
        if(delegator_ == address(0)){
            delegator_ = msg.sender;
        }

        require(block.timestamp < memories[memoryId_].endTime, "MEM:DEADLINE_EXPIRED");
        require(claims[delegator_][memoryId_] == 0, "MEM:ADDRESS_ALREADY_CLAIMED");
        require(_verifyProof(proof_, merkleRoots[memoryId_], delegator_), "MEM:INSUFFICIENT_STAKED_BALANCE");

        uint256 randomNumber_ = _generateRandomNumber();

        uint256 legendaryId_ = getCardId(memoryId_, uint8(Rarity.LEGENDARY));
        uint256 foilId_ = getCardId(memoryId_, uint8(Rarity.FOIL));
        uint256 rareId_ = getCardId(memoryId_, uint8(Rarity.RARE));
        uint256 commonId_ = getCardId(memoryId_, uint8(Rarity.COMMON));

        uint256 claimedLegendary_ = cards[legendaryId_].claimed;
        uint256 claimedFoil_ = cards[foilId_].claimed;
        uint256 claimedRare_ = cards[rareId_].claimed;

        if (randomNumber_ < legendaryProb) {
            if (claimedLegendary_ < legendaryQuantity) {
                _mintCard(msg.sender, delegator_, memoryId_, legendaryId_);
            } else if (claimedFoil_ < foilQuantity) {
                _mintCard(msg.sender, delegator_, memoryId_, foilId_);
            } else if (claimedRare_ < rareQuantity) {
                _mintCard(msg.sender, delegator_, memoryId_, rareId_);
            } else {
                _mintCard(msg.sender, delegator_, memoryId_, commonId_);
            }
        } else if (randomNumber_ < foilProb) {
            if (claimedFoil_ < foilQuantity) {
                _mintCard(msg.sender, delegator_, memoryId_, foilId_);
            } else if (claimedRare_ < rareQuantity) {
                _mintCard(msg.sender, delegator_, memoryId_, rareId_);
            } else {
                _mintCard(msg.sender, delegator_, memoryId_, commonId_);
            }
        } else if (randomNumber_ < rareProb) {
            if (claimedRare_ < rareQuantity) {
                _mintCard(msg.sender, delegator_, memoryId_, rareId_);
            } else {
                _mintCard(msg.sender, delegator_, memoryId_, commonId_);
            }
        } else {
            _mintCard(msg.sender, delegator_, memoryId_, commonId_);
        }
    }

    /**
     * @inheritdoc IMemories
     */
    function setCardMetadata(uint256 cardId_, uint256 memoryId_, string memory metadata_) public onlyCurator {
        uris[cardId_] = string(
            abi.encodePacked("data:application/json;base64,", Base64.encode(bytes(string(abi.encodePacked(metadata_)))))
        );

        emit CardMetadataUpdated(metadata_, memoryId_, cardId_);
    }

    /**
     * @inheritdoc IMemories
     */
    function setQuantities(uint8 rare_, uint8 foil_, uint8 legendary_) external onlyCurator {
        rareQuantity = rare_;
        foilQuantity = foil_;
        legendaryQuantity = legendary_;

        emit QuantitiesUpdated(rare_, foil_, legendary_);
    }

    /**
     * @inheritdoc IMemories
     */
    function setProbabilities(uint8 rare_, uint8 foil_, uint8 legendary_) external onlyCurator {
        rareProb = rare_;
        foilProb = foil_;
        legendaryProb = legendary_;

        emit ProbabilitiesUpdated(rare_, foil_, legendary_);
    }

    /**
     * @notice Get the uri of the card
     * @param  cardId_ Id of card
     */
    function uri(uint256 cardId_) public view override returns (string memory) {
        return (uris[cardId_]);
    }

    /**
     * @inheritdoc IMemories
     */
    function setContractURI(string memory json_) external returns (string memory) {
        contractURI = string(
            abi.encodePacked("data:application/json;base64,", Base64.encode(bytes(string(abi.encodePacked(json_)))))
        );

        emit ContractURIUpdated(contractURI);

        return contractURI;
    }

    /**
     * @inheritdoc IMemories
     */
    function delegateToAddress(address delegate_) external {
        require(delegates[delegate_] == address(0), "MEM:DELEGATE_ALREADY_EXISTS");
        delegates[delegate_] = msg.sender;

        emit DelegatedToAddress(delegate_, msg.sender);
    }
    
    /**
     * @inheritdoc IMemories
     */
    function setCurator(address curator_) external onlyOwner {
        curator = curator_;

        emit CuratorUpdated(curator_);
    }

    /*░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
    ░░░░                        Internal Functions                         ░░░░
    ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░*/

    /**
     * @notice Create an individual card
     * @param  memoryId_ Id of memory
     * @param  rarity_ Rarity of the card
     * @param  cardMetadata_ Metadata of the card
     */
    function _createCard(uint256 memoryId_, uint8 rarity_, string memory cardMetadata_) internal {
        uint256 cardId_ = getCardId(memoryId_, rarity_);
        cards[cardId_] = Card({id: cardId_, memoryId: memoryId_, rarity: rarity_, claimed: 0});

        emit CardCreated(cardId_, memoryId_, rarity_);

        setCardMetadata(cardId_, memoryId_, cardMetadata_);
    }

    /**
     * @notice Generate a psuedorandom number using block.prevrandao
     */
    function _generateRandomNumber() internal view returns (uint256) {
        uint256 randomNumber_ =
            uint256(keccak256(abi.encodePacked(block.prevrandao, abi.encodePacked(msg.sender, block.timestamp)))) % 100;

        return randomNumber_;
    }

    /**
     * @notice Mint a single card
     * @param  sender_ message sender triggering mint
     * @param  delegator_ the address that delegated sender_ to mint
     * @param  memoryId_ Id of the memory
     * @param  cardId_ Id of the card
     */
    function _mintCard(address sender_, address delegator_, uint256 memoryId_, uint256 cardId_) internal {
        cards[cardId_].claimed += 1;
        claims[delegator_][memoryId_] = cardId_;

        _mint(sender_, cardId_, 1, "");

        emit Minted(sender_, cardId_, memoryId_, 1);
    }

    /**
     * @notice verify proof using merkleRoot
     * @param proof_ created using merkle tree
     * @param merkleRoot_ root of merkle tree
     * @param delegator_ the address that delegated msg.sender to mint
     */
    function _verifyProof(bytes32[] calldata proof_, bytes32 merkleRoot_, address delegator_) internal pure returns (bool) {
        bytes32 leaf_ = keccak256(abi.encodePacked(abi.encodePacked(delegator_)));
        return MerkleProof.verify(proof_, merkleRoot_, leaf_);
    }

    /**
     * @notice Internal function to authorize a contract upgrade
     * @dev The function is a requirement for Openzeppelin's UUPS upgradeable contracts
     * @dev can only be called by the contract owner
     */
    function _authorizeUpgrade(address) internal override onlyOwner {}
}
