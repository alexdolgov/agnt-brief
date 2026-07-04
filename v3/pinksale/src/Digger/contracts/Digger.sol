// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "./libraries/DiggerDetails.sol";
import "./interfaces/IDiggerDesign.sol";
import "./EIP712Upgradeable.sol";

contract Digger is
    ERC721Upgradeable,
    AccessControlUpgradeable,
    PausableUpgradeable,
    EIP712Upgradeable,
    ReentrancyGuard
{
    using SafeERC20 for IERC20;

    struct CreateTokenRequest {
        uint256 targetBlock; // Use future block.
        uint16 count; // Amount of tokens to mint.
        uint8 rarity; // 0: random rarity, 1 - 6: specified rarity.
    }

    struct Recipient {
        address to;
        uint256 count;
    }

    using Counters for Counters.Counter;
    using DiggerDetails for DiggerDetails.Details;

    event TokenCreateRequested(address to, uint256 block);
    event TokenCreated(address to, uint256 tokenId, uint256 details);
    event SetDesignAddress(address design);
    event SetSignerAddress(address signer);
    event SetVaultAddress(address vault);
    event RentDigger(address user, uint256 diggerId);
    event UpgradeDigger(
        uint256 baseId,
        uint256 materialId,
        uint256 newLevel,
        uint256 newPower
    );
    event CoinTokenChanged(address oldToken, address newToken);

    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
    bytes32 public constant UPGRADER_ROLE = keccak256("UPGRADER_ROLE");
    bytes32 public constant DESIGNER_ROLE = keccak256("DESIGNER_ROLE");
    bytes32 public constant CLAIMER_ROLE = keccak256("CLAIMER_ROLE");
    bytes32 public constant BURNER_ROLE = keccak256("BURNER_ROLE");
    bytes32 public constant TRADER_ROLE = keccak256("TRADER_ROLE");

    bytes32 public constant CREATE_TOKEN_TYPEHASH =
        keccak256("CreateToken(address to,uint details,uint nonce)");

    uint256 private constant maskLast8Bits = uint256(0xff);
    uint256 private constant maskFirst248Bits = ~uint256(0xff);

    IERC20 public coinToken;
    Counters.Counter public tokenIdCounter;

    // Mapping from owner address to token ID.
    mapping(address => uint256[]) public tokenIds;

    // Mapping from token ID to token details.
    mapping(uint256 => uint256) public tokenDetails;

    // Mapping from owner address to claimable token count.
    mapping(address => mapping(uint256 => uint256)) public claimableTokens;

    // Mapping from owner address to token requests.
    mapping(address => CreateTokenRequest[]) public tokenRequests;

    IDiggerDesign public design;

    mapping(address => uint256) private _nonces;
    address public signer;
    address public vault;

    function initialize(IERC20 coinToken_) public initializer {
        __ERC721_init("Digger", "DIGGER");
        __EIP712Upgradeable_init("DIGGER", "1.0.0");
        __AccessControl_init();
        __Pausable_init();
        coinToken = coinToken_;

        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _setupRole(PAUSER_ROLE, msg.sender);
        _setupRole(UPGRADER_ROLE, msg.sender);
        _setupRole(DESIGNER_ROLE, msg.sender);
        _setupRole(CLAIMER_ROLE, msg.sender);
        _setupRole(BURNER_ROLE, msg.sender);
        _setupRole(TRADER_ROLE, msg.sender);
    }

    function pause() public onlyRole(PAUSER_ROLE) {
        _pause();
    }

    function unpause() public onlyRole(PAUSER_ROLE) {
        _unpause();
    }

    function supportsInterface(bytes4 interfaceId)
        public
        view
        override(ERC721Upgradeable, AccessControlUpgradeable)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }

    function getNonce(address _from) external view returns (uint256) {
        return _nonces[_from];
    }

    function setSigner(address _signer) external onlyRole(DEFAULT_ADMIN_ROLE) {
        signer = _signer;
        emit SetSignerAddress(signer);
    }

    function setVault(address _vault) external onlyRole(DEFAULT_ADMIN_ROLE) {
        vault = _vault;
        emit SetVaultAddress(vault);
    }

    function setCoinToken(address _coinToken)
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        emit CoinTokenChanged(address(coinToken), _coinToken);
        coinToken = IERC20(_coinToken);
    }

    /** Burns a list of heroes. */
    function burn(uint256[] memory ids) external onlyRole(BURNER_ROLE) {
        for (uint256 i = 0; i < ids.length; ++i) {
            _burn(ids[i]);
        }
    }

    /** Sets the design. */
    function setDesign(address contractAddress)
        external
        onlyRole(DESIGNER_ROLE)
    {
        design = IDiggerDesign(contractAddress);
        emit SetDesignAddress(contractAddress);
    }

    /** Gets token details for the specified owner. */
    function getTokenDetailsByOwner(address to)
        external
        view
        returns (uint256[] memory)
    {
        uint256[] storage ids = tokenIds[to];
        uint256[] memory result = new uint256[](ids.length);
        for (uint256 i = 0; i < ids.length; ++i) {
            result[i] = tokenDetails[ids[i]];
        }
        return result;
    }

    /** Increase claimable tokens. */
    function increaseClaimableTokens(
        Recipient[] memory recipients,
        uint256 rarity
    ) external onlyRole(CLAIMER_ROLE) {
        for (uint256 i = 0; i < recipients.length; ++i) {
            claimableTokens[recipients[i].to][rarity] += recipients[i].count;
        }
    }

    function decreaseClaimableTokens(
        Recipient[] memory recipients,
        uint256 rarity
    ) external onlyRole(CLAIMER_ROLE) {
        for (uint256 i = 0; i < recipients.length; ++i) {
            claimableTokens[recipients[i].to][rarity] -= recipients[i].count;
        }
    }

    function getClaimableTokens(address to) external view returns (uint256) {
        uint256 result;
        for (uint256 i = 0; i <= 6; ++i) {
            result += claimableTokens[to][i];
        }
        return result;
    }

    /** Claims tokens. */
    function claim() external nonReentrant whenNotPaused {
        // Check limit.
        address to = msg.sender;
        uint256 size = tokenIds[to].length;
        uint256 limit = design.getTokenLimit();
        require(size < limit, "User limit reached");

        mapping(uint256 => uint256) storage tokens = claimableTokens[to];
        for (uint256 rarity = 0; rarity <= 6; ++rarity) {
            uint256 mintCount = tokens[rarity];
            if (mintCount == 0) {
                continue;
            }
            requestCreateToken(to, mintCount, rarity);
            tokens[rarity] -= mintCount;
        }
    }

    /** Mints tokens. */
    function mint(uint256 count) external nonReentrant whenNotPaused {
        require(count > 0, "No token to mint");

        // Check limit.
        address to = msg.sender;
        require(
            tokenIds[to].length + count <= design.getTokenLimit(),
            "User limit reached"
        );

        // Transfer coin token.
        coinToken.safeTransferFrom(to, vault, design.getMintCost() * count);

        // Create requests.
        requestCreateToken(to, count, DiggerDetails.ALL_RARITY);
    }

    /** Requests a create token request. */
    function requestCreateToken(
        address to,
        uint256 count,
        uint256 rarity
    ) internal {
        // Create request.
        uint256 targetBlock = block.number + 5;
        tokenRequests[to].push(
            CreateTokenRequest(targetBlock, uint16(count), uint8(rarity))
        );

        require(
            tokenRequests[to].length <= 15,
            "Not allow to mint > 15 in one time"
        );

        emit TokenCreateRequested(to, targetBlock);
    }

    /** Gets the number of tokens that can be processed at the moment. */
    function getPendingTokens(address to) external view returns (uint256) {
        uint256 result;
        CreateTokenRequest[] storage requests = tokenRequests[to];
        for (uint256 i = 0; i < requests.length; ++i) {
            CreateTokenRequest storage request = requests[i];
            if (block.number > request.targetBlock) {
                result += request.count;
            } else {
                break;
            }
        }
        return result;
    }

    /** Gets the number of tokens that can be processed.  */
    function getProcessableTokens(address to) external view returns (uint256) {
        uint256 result;
        CreateTokenRequest[] storage requests = tokenRequests[to];
        for (uint256 i = 0; i < requests.length; ++i) {
            result += requests[i].count;
        }
        return result;
    }

    /** Processes token requests. */
    function processTokenRequests() external nonReentrant whenNotPaused {
        address to = msg.sender;
        uint256 size = tokenIds[to].length;
        uint256 limit = design.getTokenLimit();
        require(size < limit, "User limit reached");

        uint256 available = limit - size;
        CreateTokenRequest[] storage requests = tokenRequests[to];
        for (uint256 i = requests.length; i > 0; --i) {
            CreateTokenRequest storage request = requests[i - 1];

            uint256 targetBlock = request.targetBlock;
            require(block.number > targetBlock, "Target block not arrived");
            uint256 seed = uint256(blockhash(targetBlock));
            uint256 rarity = request.rarity;
            if (seed == 0) {
                if (rarity == DiggerDetails.ALL_RARITY) {
                    // Expired, forced common.
                    rarity = 1;
                }

                // Re-roll seed.
                targetBlock =
                    (block.number & maskFirst248Bits) +
                    (targetBlock & maskLast8Bits);
                if (targetBlock >= block.number) {
                    targetBlock -= 256;
                }
                seed = uint256(blockhash(targetBlock));
            }

            if (available < request.count) {
                request.count -= uint16(available);
                createToken(to, available, rarity, seed);
                break;
            }
            available -= request.count;
            createToken(to, request.count, rarity, seed);
            requests.pop();
            if (available == 0) {
                break;
            }
        }
    }

    /** Creates token(s) with a random seed. */
    function createToken(
        address to,
        uint256 count,
        uint256 rarity,
        uint256 seed
    ) internal {
        uint256 details;
        for (uint256 i = 0; i < count; ++i) {
            uint256 id = tokenIdCounter.current();
            uint256 tokenSeed = uint256(keccak256(abi.encode(seed, id)));
            (, details) = design.createRandomToken(tokenSeed, id, rarity);
            tokenIdCounter.increment();
            tokenDetails[id] = details;
            _safeMint(to, id);
            emit TokenCreated(to, id, details);
        }
    }

    function rent(uint256 diggerId) external whenNotPaused {
        require(tokenDetails[diggerId] > 0, "Digger not found");
        require(ownerOf(diggerId) == msg.sender, "Token not owned");

        // get rarity
        uint256 detail = tokenDetails[diggerId];
        uint256 rarity = DiggerDetails.decodeRarity(detail);

        // transfer MINERA token to vault
        coinToken.safeTransferFrom(
            msg.sender,
            vault,
            design.getRentCost(rarity)
        );

        // emit Event
        emit RentDigger(msg.sender, diggerId);
    }

    /** Upgrades the specified token. */
    function upgrade(uint256 baseId, uint256 materialId) external nonReentrant {
        require(baseId != materialId, "Same token");

        address to = msg.sender;
        require(
            ownerOf(baseId) == to && ownerOf(materialId) == to,
            "Token not owned"
        );

        // Check level.
        uint256 baseDetails = tokenDetails[baseId];
        uint256 materialDetails = tokenDetails[materialId];
        uint256 basePower = DiggerDetails.decodePower(baseDetails);
        uint256 baseLevel = DiggerDetails.decodeLevel(baseDetails);
        uint256 materialLevel = DiggerDetails.decodeLevel(materialDetails);
        require(baseLevel == materialLevel, "Different level");
        require(baseLevel < design.getMaxLevel(), "Max level");

        // Transfer coin token.
        uint256 rarity = DiggerDetails.decodeRarity(baseDetails);
        // uint256 materialRarity = DiggerDetails.decodeRarity(materialDetails);
        // require(rarity == materialRarity, "Different rarity");

        uint256 cost = design.getUpgradeCost(rarity, baseLevel - 1);
        coinToken.safeTransferFrom(to, vault, cost);

        tokenDetails[baseId] = DiggerDetails.increaseLevel(baseDetails);
        tokenDetails[baseId] = DiggerDetails.increasePower(
            tokenDetails[baseId]
        );
        _burn(materialId);

        emit UpgradeDigger(baseId, materialId, baseLevel + 1, basePower + 1);
    }

    function _transfer(
        address from,
        address to,
        uint256 tokenId
    ) internal override onlyRole(TRADER_ROLE) {
        ERC721Upgradeable._transfer(from, to, tokenId);
    }

    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 id
    ) internal override {
        if (from == address(0)) {
            // Mint.
        } else {
            // Transfer or burn.
            // Swap and pop.
            uint256[] storage ids = tokenIds[from];
            uint256 index = DiggerDetails.decodeIndex(tokenDetails[id]);
            uint256 lastId = ids[ids.length - 1];
            ids[index] = lastId;
            ids.pop();

            // Update index.
            tokenDetails[lastId] = DiggerDetails.setIndex(
                tokenDetails[lastId],
                index
            );
        }
        if (to == address(0)) {
            // Burn.
            delete tokenDetails[id];
        } else {
            // Transfer or mint.
            uint256[] storage ids = tokenIds[to];
            uint256 index = ids.length;
            ids.push(id);
            tokenDetails[id] = DiggerDetails.setIndex(tokenDetails[id], index);

            // Check limit.
            require(index + 1 <= design.getTokenLimit(), "User limit reached");
        }
    }

    // create digger with signature
    function createTokenWithSignature(
        address to,
        uint256 details,
        uint256 nonce,
        bytes memory signature
    ) external nonReentrant whenNotPaused {
        require(to == msg.sender, "Requried receiver be the sender");
        _verifyCreateTokenProof(to, details, nonce, signature);

        uint256 id = tokenIdCounter.current();
        tokenIdCounter.increment();
        tokenDetails[id] = details;
        _safeMint(to, id);
        emit TokenCreated(to, id, details);
    }

    function _verifyCreateTokenProof(
        address _to,
        uint256 _details,
        uint256 _nonce,
        bytes memory _signature
    ) private {
        require(_nonce == _nonces[_to], "Invalid nonce!");
        require(
            _verify(_createTokenHash(_to, _details, _nonce), _signature),
            "Invalid signature!"
        );

        _nonces[_to] = _nonce + 1;
    }

    function _createTokenHash(
        address _to,
        uint256 _details,
        uint256 _nonce
    ) private view returns (bytes32 hash) {
        hash = _hashTypedDataV4(
            keccak256(abi.encode(CREATE_TOKEN_TYPEHASH, _to, _details, _nonce))
        );
    }

    function _verify(bytes32 _digest, bytes memory _signature)
        private
        view
        returns (bool)
    {
        return signer == ECDSA.recover(_digest, _signature);
    }
}
