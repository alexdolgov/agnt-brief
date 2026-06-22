// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts-upgradeable/token/ERC1155/ERC1155Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/common/ERC2981Upgradeable.sol";

contract Orbs is Initializable, ERC1155Upgradeable, OwnableUpgradeable, ERC2981Upgradeable, UUPSUpgradeable {
    error SoulboundToken();
    error CooldownActive();
    error NotAuthorized();

    event ContractURIUpdated();

    function CURRENT_VERSION() public pure virtual returns (uint256) {
        return 2;
    }

    uint256 public implementationVersion;
    string public name;
    string public symbol;
    string public contractURI;
    uint256 public numTokenTypes;

    mapping(address => bool) public admins;
    mapping(uint256 => bool) public soulbound;
    mapping(address => mapping(uint256 => uint256)) public tierCooldowns;

    mapping(uint256 => uint256) private _totalSupply;
    uint256 private _totalSupplyAll;

    // For future upgrades.
    uint256[48] private __gap;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(string memory uri_, string memory contractURI_) public initializer {
        __ERC1155_init(uri_);
        __Ownable_init(msg.sender);
        __ERC2981_init();
        __UUPSUpgradeable_init();

        implementationVersion = CURRENT_VERSION();
        name = "Ket Orbs";
        symbol = "ORB";
        contractURI = contractURI_;
        _setDefaultRoyalty(msg.sender, 500); // 5%
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {
        require(newImplementation.code.length > 0, "Not a contract");
        uint256 newVersion = Orbs(newImplementation).CURRENT_VERSION();
        require(newVersion > implementationVersion, "Must upgrade to higher version");
        implementationVersion = newVersion;
    }

    modifier onlyAdminOrOwner() {
        if (!admins[msg.sender] && owner() != msg.sender) revert NotAuthorized();
        _;
    }

    function setAdmin(address account, bool status) external onlyOwner {
        admins[account] = status;
    }

    function setNameSymbol(string memory newName, string memory newSymbol) external onlyOwner {
        name = newName;
        symbol = newSymbol;
    }

    function setURI(string memory newURI) public onlyOwner {
        _setURI(newURI);
    }

    function setContractURI(string memory newURI) public onlyOwner {
        contractURI = newURI;
        emit ContractURIUpdated();
    }

    function addTokenType() external onlyOwner {
        numTokenTypes++;
    }

    function setSoulbound(uint256 tokenId, bool status) external onlyOwner {
        require(tokenId < numTokenTypes, "Invalid token ID");
        soulbound[tokenId] = status;
    }

    function setRoyaltyInfo(address receiver, uint96 feeNumerator) external onlyOwner {
        _setDefaultRoyalty(receiver, feeNumerator);
    }

    function setTokenRoyalty(uint256 tokenId, address receiver, uint96 feeNumerator) external onlyOwner {
        _setTokenRoyalty(tokenId, receiver, feeNumerator);
    }

    function mint(address to, uint256 id, uint256 amount, bytes memory data) external onlyAdminOrOwner {
        require(id < numTokenTypes, "Invalid token ID");
        _mint(to, id, amount, data);
    }

    function mintBatch(address to, uint256[] memory ids, uint256[] memory amounts, bytes memory data)
        external
        onlyAdminOrOwner
    {
        for (uint256 i = 0; i < ids.length; i++) {
            require(ids[i] < numTokenTypes, "Invalid token ID");
        }
        _mintBatch(to, ids, amounts, data);
    }

    function burn(address from, uint256 id, uint256 amount) external onlyAdminOrOwner {
        _burn(from, id, amount);
    }

    function burnBatch(address from, uint256[] memory ids, uint256[] memory amounts) external onlyAdminOrOwner {
        _burnBatch(from, ids, amounts);
    }

    function setUserTierCooldown(address user, uint256 tier, uint256 cooldownUntil) external onlyAdminOrOwner {
        tierCooldowns[user][tier] = cooldownUntil;
    }

    function getOrbCounts(address user) external view returns (uint256[] memory counts) {
        counts = new uint256[](numTokenTypes);
        for (uint256 i = 0; i < numTokenTypes; i++) {
            counts[i] = balanceOf(user, i);
        }
        return counts;
    }

    // Supply count was not not present at initialization of the contract, added in upgrade from v1 to v2.
    function initializeSupplyCounts(uint256[] calldata ids, uint256[] calldata supplies) external onlyOwner {
        require(ids.length == supplies.length, "Arrays length mismatch");

        uint256 totalCount = 0;
        for (uint256 i = 0; i < ids.length; i++) {
            require(ids[i] < numTokenTypes, "Invalid token ID");
            _totalSupply[ids[i]] = supplies[i];
            totalCount += supplies[i];
        }
        _totalSupplyAll = totalCount;
    }

    function totalSupply(uint256 id) public view returns (uint256) {
        return _totalSupply[id];
    }

    function totalSupply() public view returns (uint256) {
        return _totalSupplyAll;
    }

    function _update(address from, address to, uint256[] memory ids, uint256[] memory values)
        internal
        virtual
        override
    {
        // Skip checks for minting and burning.
        if (from != address(0) && to != address(0)) {
            for (uint256 i = 0; i < ids.length; i++) {
                if (soulbound[ids[i]]) {
                    revert SoulboundToken();
                }
                if (block.timestamp < tierCooldowns[from][ids[i]]) {
                    revert CooldownActive();
                }
            }
        }

        super._update(from, to, ids, values);

        // Supply tracking logic
        if (from == address(0)) {
            // Minting
            for (uint256 i = 0; i < ids.length; i++) {
                _totalSupply[ids[i]] += values[i];
                _totalSupplyAll += values[i];
            }
        }

        if (to == address(0)) {
            // Burning
            for (uint256 i = 0; i < ids.length; i++) {
                _totalSupply[ids[i]] -= values[i];
                _totalSupplyAll -= values[i];
            }
        }
    }

    function supportsInterface(bytes4 interfaceId)
        public
        view
        virtual
        override(ERC1155Upgradeable, ERC2981Upgradeable)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }
}
