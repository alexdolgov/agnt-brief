// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import "@openzeppelin/token/ERC1155/ERC1155.sol";
import "@openzeppelin/access/AccessControl.sol";
import "@openzeppelin/token/ERC1155/extensions/ERC1155Burnable.sol";
import "@openzeppelin/token/ERC1155/extensions/ERC1155Supply.sol";

import "@interfaces/IProxyVault.sol";
import "@interfaces/IRewardsDistributor.sol";

contract HourglassDepositReceipt is ERC1155, AccessControl, ERC1155Burnable, ERC1155Supply {

    /// @notice Setter role
    bytes32 public constant SETTER_ROLE = keccak256("SETTER_ROLE");
    /// @notice Minter role (the custodian)
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    /// @notice Address of the rewards distributor
    address public immutable REWARD_DISTRIBUTOR;

    /// @notice Asset Metadata
    struct AssetMetadata {
        uint256 assetId;
        address custodian;
        address depositStrategy;
        address matureHoldingsVault;
        uint256 rewardEpochDuration; 
    }

    /// @notice Token ID Metadata
    struct TokenIDMetadata {
        address depositVault;
        uint256 nextCheckpoint;
        bool isMatured;
    }

    /// @notice Stores generic information about this asset receipt
    AssetMetadata public assetMetadata;

    /// @notice Stores maturity/token id specific data: tokenMetadata[tokenId] => TokenIDMetadata
    mapping(uint256 => TokenIDMetadata) public tokenMetadata;

    constructor(
        address _custodian, 
        address _setter, 
        address _admin, 
        address _rewardDistributor
    ) ERC1155("") {
        _setupRole(DEFAULT_ADMIN_ROLE, _admin);
        _setupRole(SETTER_ROLE, _setter);
        _setupRole(MINTER_ROLE, _custodian);
        
        REWARD_DISTRIBUTOR = _rewardDistributor;
    }

    /// @notice Allows the custodian to mint receipts when depositing into a vault
    /// @param account The account to mint to
    /// @param id The token id to mint
    /// @param amount The amount to mint
    /// @param data Any additional data to pass to the contract
    function mint(
        address account, 
        uint256 id, 
        uint256 amount, 
        bytes memory data
    ) external onlyRole(MINTER_ROLE) {
        _mint(account, id, amount, data);
    }

    /// @notice Allows the custodian to mint receipts when depositing into a vault
    /// @param to The account to mint to
    /// @param ids The token ids to mint
    /// @param amounts The amounts to mint
    /// @param data Any additional data to pass to the contract
    function mintBatch(
        address to, 
        uint256[] memory ids, 
        uint256[] memory amounts, 
        bytes memory data
    ) external onlyRole(MINTER_ROLE) {
        _mintBatch(to, ids, amounts, data);
    }

    /// @notice Allows burning of a user's receipt tokens by the custodian
    function burnFrom(address account, uint256 id, uint256 amount) external onlyRole(MINTER_ROLE) {
        // require(hasRole(MINTER_ROLE, _msgSender()), "!minter");
        _burn(account, id, amount);
    }

    /// @notice Allows burning of a user's receipt tokens by the custodian
    function burnBatchFrom(
        address account, 
        uint256[] memory ids, 
        uint256[] memory amounts
    ) external onlyRole(MINTER_ROLE) {
        // require(hasRole(MINTER_ROLE, _msgSender()), "!minter");
        _burnBatch(account, ids, amounts);
    }

    /// @notice Allows checking on rewards earned by token ids
    /// @param tokenIds The token ids to check rewards for
    /// @return rewardTokens The reward tokens earned as an array of arrays
    /// @return amounts The amounts of reward tokens earned as an array of arrays
    function earned(uint256[] calldata tokenIds) external view returns (address[][] memory rewardTokens, uint256[][] memory amounts) {
        uint256 numIds = tokenIds.length;
        for (uint256 i; i < numIds; i++) {
            require(tokenMetadata[tokenIds[i]].depositVault != address(0), "tkn!init");
            (rewardTokens[i], amounts[i]) = IProxyVault(tokenMetadata[tokenIds[i]].depositVault).earned();
        }
    }

    /// @notice Called by the Custodian when adding a new asset id
    /// @param assetId The asset id to initialize
    /// @param custodian The custodian of the asset
    /// @param depositStrategy The deposit strategy for the asset
    /// @param matureHoldingsVault The vault to send matured assets to
    /// @param rewardEpochDuration The duration of a reward epoch
    /// @dev bytes Any additional data to pass to the contract
    function initializeReceiptContract(
        uint256 assetId, 
        address custodian,
        address depositStrategy, 
        address matureHoldingsVault,
        uint256 rewardEpochDuration, 
        bytes calldata
    ) external onlyRole(MINTER_ROLE) {
        if(assetMetadata.assetId != 0) revert AlreadyInitialized();
        // assign the asset metadata
        assetMetadata = AssetMetadata(assetId, custodian, depositStrategy, matureHoldingsVault, rewardEpochDuration);//], rewardDistributor);
    }

    /// @notice Called by the Custodian when adding a new token id (aka deploying a new maturity vault)
    /// @param assetId The asset id to initialize
    /// @param depositVault The deposit vault for the token id
    /// @param maturity The maturity of the token id
    /// @dev bytes Any additional data to pass to the contract
    function initializeTokenId(
        uint256 assetId, 
        address depositVault, 
        uint256 maturity, 
        bytes calldata
    ) external onlyRole(MINTER_ROLE) {
        if(assetId != assetMetadata.assetId) revert AssetIDMismatch(assetId, assetMetadata.assetId);
        // check that it hasn't initialized for this token id before
        if(tokenMetadata[maturity].depositVault != address(0)) revert TokenAlreadyInitialized(maturity);

        // assign the token id metadata
        tokenMetadata[maturity].depositVault = depositVault;
        tokenMetadata[maturity].nextCheckpoint = IFraxFarm(assetMetadata.depositStrategy).periodFinish();

        emit TokenInitialized(maturity, depositVault);
    }

    /// @notice Allows the setter to set the URI
    /// @param newuri The new URI
    function setURI(string memory newuri) external onlyRole(SETTER_ROLE) {
        _setURI(newuri);
    }

    /// @notice Claims rewards & updates the next checkpoint for a list of token ids
    /// @param ids The list of token ids to checkpoint
    function checkpointTokenIds(uint256[] memory ids) public {
        uint256 numIds = ids.length;
        for (uint256 i; i < numIds; i++) {
            if (block.timestamp > ids[i]) {
                tokenMetadata[ids[i]].isMatured = true;
            }
            // this assumes that the farm has sucessfully be checkpointed by this time
            if(tokenMetadata[ids[i]].nextCheckpoint < block.timestamp) {
                tokenMetadata[ids[i]].nextCheckpoint = IFraxFarm(assetMetadata.depositStrategy).periodFinish();
                IProxyVault(tokenMetadata[ids[i]].depositVault).claimRewards();
            }
        }
    }

    /// @notice Before transfer hook to claim any rewards outstanding if it is time to do so
    function _beforeTokenTransfer(
        address, 
        address, 
        address, 
        uint256[] memory ids, 
        uint256[] memory, 
        bytes memory
    ) internal override(ERC1155, ERC1155Supply) {
        // if it is time to claim rewards, do so first
        checkpointTokenIds(ids);
    }

    /// @notice Ping the reward distributor with the users & token amounts for rewards processing
    function _afterTokenTransfer(
        address,
        address from,
        address to,
        uint256[] memory ids,
        uint256[] memory amounts,
        bytes memory 
    ) internal override(ERC1155) {
        // do a single call up to the distributor with all token ids and amounts
        IRewardsDistributor(REWARD_DISTRIBUTOR).receiptCheckpoint(address(this), from, to, ids, amounts);
    }

    /// @notice ERC compliance
    function supportsInterface(
        bytes4 interfaceId
    ) public view override(ERC1155, AccessControl) returns (bool) {
        return super.supportsInterface(interfaceId);
    }

    /// ERRORS ///
    error AlreadyInitialized();
    error TokenAlreadyInitialized(uint256);
    error AssetIDMismatch(uint256, uint256);

    /// EVENTS ///
    event TokenInitialized(uint256 maturity, address depositVault);
}
