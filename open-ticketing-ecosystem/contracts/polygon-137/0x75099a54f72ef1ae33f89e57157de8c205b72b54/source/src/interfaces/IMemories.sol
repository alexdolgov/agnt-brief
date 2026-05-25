// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.20;

interface IMemories {
    event CardCreated(uint256 id, uint256 memoryId, uint8 rarity);

    event MemoryCreated(
        uint256 id,
        uint256 endTime,
        uint256 ethereumBlockNumber,
        uint256 polygonBlockNumber,
        uint88 fuelUsed,
        uint88 minStaked,
        uint32 integratorId,
        string name,
        string externalUrl,
        bytes32 merkleRoot
    );

    event Minted(address to, uint256 id, uint256 memoryId, uint256 amount);
    event CardMetadataUpdated(string metadata, uint256 memoryId, uint256 cardId);

    event QuantitiesUpdated(uint8 rareQuantity, uint8 foilQuantity, uint8 legendaryQuantity);
    event ProbabilitiesUpdated(uint8 rareProb, uint8 foilProb, uint8 legendaryProb);
    event ContractURIUpdated(string json);
    event DelegatedToAddress(address indexed delegate, address indexed delegator);
    
    event CuratorUpdated(address indexed curator);

    /**
     * @notice Function to create a new memory
     * @param  ethereumBlockNumber_ block number on ethereum when memory was created
     * @param  polygonBlockNumber_ block number on polygon when memory was created
     * @param  fuelUsed_ fuel used during event
     * @param  minStaked_ minimum staked token required
     * @param  integratorId_ id of the integrator that ticketed the event that the memory belongs to
     * @param  name_ name of the memory
     * @param  externalUrl_ external url
     * @param  commonMetadata_ metadata of common rarity card
     * @param  rareMetadata_ metadata of rare rarity card
     * @param  foilMetadata_ metadata of foil rarity card
     * @param  legendaryMetadata_ metadata of legendary rarity card
     * @param  merkleRoot_ merkle root of the stakers
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
    ) external;

    /**
    * @notice Function to delegate minting to a different address
    * @param  delegate_ the address being delegated to
    */
    function delegateToAddress(address delegate_) external;

    /**
     * @notice Function to mint a card from a memory
     * @param  memoryId_ id of memory to be minted
     * @param  proof_ merkle proof
     */
    function mint(uint256 memoryId_, bytes32[] calldata proof_) external;

    /**
     * @notice Change the metadata of a card belonging to a memory
     * @param  cardId_ Id of the card
     * @param  memoryId_ Id of memory
     * @param  metadata_ Metadata of the card
     */
    function setCardMetadata(uint256 cardId_, uint256 memoryId_, string memory metadata_) external;

    /**
     * @notice Change the global probability of having different rarities
     * @dev probabilities are as a number, example: if legendary is 5, foil is 10 and rare is 40,
     * legendary has a 5% chance, foil has a (legendary - foil) 5% chance, rare has a (foil - rare) 30% chance of being selected
     * @param  rare_ probability as a number.
     * @param  foil_ probability as a number.
     * @param  legendary_ probability as a number.
     */
    function setProbabilities(uint8 rare_, uint8 foil_, uint8 legendary_) external;

    /**
     * @notice Change the global max quantities of rarities
     * @param  rare_ max amount of rare that can be minted
     * @param  foil_ max amount of foil that can be minted
     * @param  legendary_ max amount of legendary that can be minted
     */
    function setQuantities(uint8 rare_, uint8 foil_, uint8 legendary_) external;

    /**
     * @notice Sets new contract uri
     * @param  json_ the new uri
     */
    function setContractURI(string memory json_) external returns (string memory);

    /**
     * @notice Sets new curator address. Restricted to owner.
     * @param  curator_ the new curator address.
     */
    function setCurator(address curator_) external;
}
