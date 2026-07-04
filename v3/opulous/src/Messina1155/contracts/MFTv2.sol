// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import '@openzeppelin/contracts-upgradeable/utils/math/MathUpgradeable.sol';
import './MFTsV2Base.sol';
import './interfaces/IMFTsManager.sol';

contract MFTsV2 is MFTsV2Base {
  struct StableCoinInfo {
    uint256 totalAmount;
    uint256 claimedAmount;
  }

  address public operationWallet;
  IMFTsManager public mftManager;
  // address public totalFees;
  // address public totalFeesWithdrawn;
  mapping(uint256 => bool) public usedNonces;
  mapping(address => bool) public acceptableStableCoins;
  mapping(address => StableCoinInfo) public feesInfo;

  mapping(uint256 => address[]) private holders;
  mapping(address => mapping(uint256 => uint256)) private holderIndex;

  error InvalidSignature();
  // error ManagerContractNotSet();
  error InvalidRoundID();
  error HaventSnapshotted();
  error ZeroFeesToWithdraw();
  error TokenNotAcceptable();
  error NotMFTManager();
  error TreasuryNotSet();
  error NotOperationWalletOrOwner();

  using MathUpgradeable for uint256;
  using SafeERC20Upgradeable for IERC20Upgradeable;

  event AcceptableStableCoin(address indexed stablecoin, bool isAccept);

  /**
   * @notice Initializes the MFTs contract with various parameters
   * @dev Sets up the contract with initial values and configurations
   * @param uri_ The base URI for token metadata
   * @param contractURI_ The URI for contract
   * @param owner_ The address of the contract owner
   * @param nftBridge_ The address of the NFT bridge
   * @param chainId_ The chain ID
   * @param nativeContract_ The native contract address for NFT Bridge
   * @param royaltyReceiver_ The address to receive royalties
   * @param royaltyFeesInBips_ The royalty fee in basis points
   * @param standardID_ The standard ID
   * @param data_ Additional data for initialization
   * @param uniswapInit Struct containing Uniswap initialization parameters
   * @param feeDetailsInit Struct containing fee initialization parameters
   */
  function initialize(
    string memory uri_,
    string memory contractURI_,
    address owner_,
    address nftBridge_,
    uint16 chainId_,
    bytes32 nativeContract_,
    address royaltyReceiver_,
    uint96 royaltyFeesInBips_,
    uint16 standardID_,
    bytes memory data_,
    UniswapInit calldata uniswapInit, // using struct due to stack too deep limitation
    FeeDetailsInit calldata feeDetailsInit // using struct due to stack too deep limitation
  ) public initializer {
    Messina1155.__Messina1155_init(
      uri_,
      owner_,
      nftBridge_,
      chainId_,
      nativeContract_,
      royaltyReceiver_,
      royaltyFeesInBips_,
      standardID_,
      data_
    );
    _setContractURI(contractURI_);

    if (
      uniswapInit.uniswapRouter == address(0) || 
      uniswapInit.opulToken == address(0) || 
      feeDetailsInit.treasuryAddress == address(0)
    ) revert ZeroAddress();

    uniswapRouter = uniswapInit.uniswapRouter;
    opulToken = uniswapInit.opulToken;
    defaultFee = feeDetailsInit.defaultFee;
    opulFee = feeDetailsInit.opulFee;
    treasuryAddress = feeDetailsInit.treasuryAddress;
  }

  modifier onlyMFTManager() {
    if (_msgSender() != address(mftManager)) revert NotMFTManager();
    _;
  }

  modifier onlyOperationWalletOrOwner() {
    if (_msgSender() != operationWallet && _msgSender() != getOwner()) revert NotOperationWalletOrOwner();
    _;
  }

  /**
   * @notice Allow connector address mints token for a specific collection
   * @dev Can only be called by a designated connector
   * @param to The address to mint tokens to
   * @param collectionID The ID of the collection ID (tokenID)
   * @param amount The amount of tokens to mint
   * @param data Additional data for the minting process
   */
  function connectorMint(
    address to,
    uint256 collectionID,
    uint256 amount,
    bytes memory data
  ) external override onlyConnector {
    _mint(to, collectionID, amount, data);
  }

  /**
   * @notice Allow connector address to mint multiple tokens for multiple collections
   * @dev Can only be called by a designated connector
   * @param to The address to mint tokens to
   * @param collectionIDs An array of collection IDs (tokenID)
   * @param amounts An array of amounts to mint for each collection
   * @param data Additional data for the minting process
   */
  function connectorMintBatch(
    address to,
    uint256[] memory collectionIDs,
    uint256[] memory amounts,
    bytes memory data
  ) external onlyConnector {
    _mintBatch(to, collectionIDs, amounts, data);
  }

  /**
   * @notice Sets or revokes connector status for an address
   * @dev Can only be called by the contract owner
   * @param connector The address to set connector status for
   * @param status The status to set (true for connector, false to revoke)
   */
  function setConnector(address connector, bool status) public onlyOwner {
    isConnector[connector] = status;
  }

  /**
  * @notice Sets the MFTsManager contract address
  * @dev Can only be called by the contract owner
  * @param _MFTManagerAddress The address of the new MFTsManager contract
  */
  function setMFTsManager(address _MFTManagerAddress) public onlyOwner {
    if (_MFTManagerAddress == address(0)) revert ZeroAddress();
    mftManager = IMFTsManager(_MFTManagerAddress);
  }

  /**
  * @notice Sets the operation wallet address
  * @dev Can only be called by the contract owner
  * @param _operationWallet The address of the new operation wallet
  */
  function setOperationWallet(address _operationWallet) external onlyOwner {
    if (_operationWallet == address(0)) revert ZeroAddress();
    operationWallet = _operationWallet;
  }

  /**
  * @notice Sets the acceptance status of a stablecoin
  * @dev Can only be called by the contract owner
  * @param stablecoin The address of the stablecoin
  * @param isAccept Whether the stablecoin is accepted or not
  */
  function setStableCoin(address stablecoin, bool isAccept) public onlyOwner {
    acceptableStableCoins[stablecoin] = isAccept;
    emit AcceptableStableCoin(stablecoin, isAccept);
  }

  /**
   * @notice Sets the Merkle root for a specific collection and sale index
   * @dev Can only be called by the contract owner
   * @param collectionID The ID of the collection
   * @param SaleIndex The index of the sale
   * @param root The Merkle root to set
   */
  function setMerkleRoot(uint256 collectionID, uint256 SaleIndex, bytes32 root) public onlyOwner {
    if (MerkleRoots[collectionID][SaleIndex] != bytes32(0)) revert MerkleRootAlreadySet();
    MerkleRoots[collectionID][SaleIndex] = root;
  }

  /**
  * @notice Withdraws accumulated fees for a specific stablecoin
  * @dev Can only be called by the contract owner
  * @param stableCoin The address of the stablecoin to withdraw fees for
  */
  function withdrawFees(address stableCoin) external onlyOwner {
    if (treasuryAddress == address(0)) revert TreasuryNotSet();
    uint256 feesToWithdraw = feesInfo[stableCoin].totalAmount - feesInfo[stableCoin].claimedAmount;
    if (feesToWithdraw == 0) revert ZeroFeesToWithdraw();
    feesInfo[stableCoin].claimedAmount += feesToWithdraw;
    IERC20Upgradeable(stableCoin).safeTransfer(
      treasuryAddress,
      feesToWithdraw
    );
  }

  /**
   * @notice Gets the current round number for a specific collection
   * @param collectionID The ID of the collection
   * @return The current round number
   */
  function currentRound(uint256 collectionID) public view returns (uint256) {
    return _getCurrentSnapshotId(collectionID);
  }

  /**
   * @notice Retrieves reward information for a specific collection and round
   * @param collectionID The ID of the collection
   * @param roundID The ID of the round
   * @return token The address of the reward token
   * @return totalAmount The total amount of rewards
   * @return claimedAmount The amount of rewards already claimed
   */
  function getRoundRewards(
    uint256 collectionID,
    uint256 roundID
  ) public view returns (address token, uint256 totalAmount, uint256 claimedAmount) {
    return (
      _roundRewards[collectionID][roundID].token,
      _roundRewards[collectionID][roundID].totalAmount,
      _roundRewards[collectionID][roundID].claimedAmount
    );
  }

  /**
   * @notice Checks if a user has claimed rewards for a specific collection and round
   * @param collectionID The ID of the collection
   * @param roundID The ID of the round
   * @param user The address of the user
   * @return Whether the user has claimed rewards for the specified round
   */
  function getRoundClaimed(
    uint256 collectionID,
    uint256 roundID,
    address user
  ) public view returns (bool) {
    return _roundClaimed[collectionID][roundID][user];
  }

  /**
   * @notice Sets the Uniswap router address
   * @dev Can only be called by the contract owner
   * @param _uniswapRouter The address of the Uniswap router
   */
  function setUniswapRouter(address _uniswapRouter) external onlyOwner {
    if (_uniswapRouter == address(0)) revert ZeroAddress();
    uniswapRouter = _uniswapRouter;
  }

  /**
   * @notice Sets the OPUL token address
   * @dev Can only be called by the contract owner
   * @param _opulToken The address of the OPUL token
   */
  function setOpulToken(address _opulToken) external onlyOwner {
    if (_opulToken == address(0)) revert ZeroAddress();
    opulToken = _opulToken;
  }

  /**
   * @notice Sets the treasury address
   * @dev Can only be called by the contract owner
   * @param _treasuryAddress The address of the treasury
   */
  function setTreasuryAddress(address _treasuryAddress) external onlyOwner {
    if (_treasuryAddress == address(0)) revert ZeroAddress();
    treasuryAddress = _treasuryAddress;
  }

  /**
   * @notice Sets the OPUL fee
   * @dev Can only be called by the contract owner
   * @param _opulFee The new OPUL fee bips (1% is 100)
   */
  function setOpulFee(uint96 _opulFee) external onlyOwner {
    opulFee = _opulFee;
  }

  /**
   * @notice Sets the default fee
   * @dev Can only be called by the contract owner
   * @param _defaultFee The new default fee bips (1% is 100)
   */
  function setDefaultFee(uint96 _defaultFee) external onlyOwner {
    defaultFee = _defaultFee;
  }

  /**
   * @notice Calculates the default fee amount for a given amount
   * @param amount The amount to calculate the fee for
   * @return The calculated default fee amount
   */
  function getDefaultFeeAmount(uint256 amount) public view returns (uint256) {
    return (amount * defaultFee) / FEE_DENOMINATOR;
  }

  /**
   * @notice Calculates the OPUL fee amount for a given amount
   * @param amount The amount to calculate the fee for
   * @return The calculated OPUL fee amount
   */  
  function getOpulFeeAmount(uint256 amount) public view returns (uint256) {
    return (amount * opulFee) / FEE_DENOMINATOR;
  }

  /**
   * @notice Updates the base URI
   * @dev Can only be called by the contract owner
   * @param newURI The new base URI
   */
  function updateURI(string memory newURI) public onlyOwner {
    _setTokenURI(newURI);
  }

  /**
   * @notice Updates the contract URI
   * @dev Can only be called by the contract owner
   * @param newURI The new contract URI
   */
  function updateContractURI(string memory newURI) public onlyOwner {
    _setContractURI(newURI);
  }

  /**
   * @notice Returns the name of the token
   * @return The name of the token
   */
  function name() public view virtual returns (string memory) {
    return "Opulous MFTs";
  }

  /**
   * @notice Returns the symbol of the token
   * @return The symbol of the token
   */
  function symbol() public view virtual returns (string memory) {
    return "OPULMFTS";
  }

  /**
   * @notice Checks if a user has claimed MFTs for a specific collection and sale
   * @param userAddress The address of the user
   * @param collectionID The ID of the collection
   * @param SaleIndex The index of the sale
   * @param amount The amount of tokens claimed
   * @return bool of whether the user has claimed the MFTs
   */
  function isUserClaimedMFTs(
    address userAddress,
    uint256 collectionID,
    uint256 SaleIndex,
    uint256 amount
  ) public view returns (bool) {
    if (MerkleRoots[collectionID][SaleIndex] == bytes32(0)) revert MerkleRootNotSet();
    bytes32 leaf = keccak256(abi.encodePacked(userAddress, amount, collectionID, SaleIndex));
    return _claimed[leaf];
  }

  /**
  * @notice Gets the address of the operation wallet
  * @return The address of the operation wallet
  */
  function getOperationWallet() external view returns (address) {
    return operationWallet;
  }

  /**
  * @notice Gets the address of the OPUL token
  * @return address of the OPUL token
  */
  function getOpulToken() external view returns (address) {
    return opulToken;
  }

  /**
  * @notice Checks if a stablecoin is acceptable
  * @param stableCoin The address of the stablecoin to check
  * @return bool indicating whether the stablecoin is acceptable
  */
  function isAcceptableStableCoin(address stableCoin) external view returns (bool) {
    return acceptableStableCoins[stableCoin];
  }

  /**
  * @notice Gets the Merkle root for a specific collection and sale index
  * @param collectionID The ID of the collection
  * @param salesIndex The index of the sale
  * @return bytes32 of the Merkle root
  */
  function getMerkleRoots(uint256 collectionID, uint256 salesIndex) external view returns (bytes32) {
    return MerkleRoots[collectionID][salesIndex];
  }

  /**
  * @notice Sets round rewards data for a specific collection and round
  * @dev Can only be called by the MFTsManager contract
  * @param collectionID The ID of the collection
  * @param roundID The ID of the round
  * @param token The address of the reward token
  * @param totalAmount The total amount of rewards
  */
  function setRoundRewardsData(uint256 collectionID, uint256 roundID, address token, uint256 totalAmount) external onlyMFTManager {
    if (token == address(0)) revert ZeroAddress();

    _roundRewards[collectionID][roundID] = RoundRewards({
        token: token,
        totalAmount: totalAmount,
        claimedAmount: 0
    });
  }

  /**
  * @notice transfer the claimRewards called by MFT Manager
  * @dev Can only be called by the MFTsManager contract
  * @param rewardsToken The address of the rewards token
  * @param sender The address of the sender claiming rewards
  * @param amount The total amount of rewards
  * @param fees The amount of fees to be deducted
  * @param pathAddress The token swap path for Uniswap (if claiming in OPUL)
  * @param isClaimInOpul Whether the claim is in OPUL tokens
  */
  function claimRewardsManager(
    address rewardsToken,
    address sender,
    uint256 amount,
    uint256 fees,
    address[] memory pathAddress,
    bool isClaimInOpul
  ) external onlyMFTManager {
    feesInfo[rewardsToken].totalAmount += fees;

    uint256 amountAfterFees = amount - fees;

    if (isClaimInOpul) {
      IERC20Upgradeable(rewardsToken).approve(uniswapRouter, amountAfterFees);

      // swap rewards in OPUL to user
      IUniswapV2Router02(uniswapRouter).swapExactTokensForTokens(
        amountAfterFees, 
        1, // min amount receive is 1
        pathAddress, 
        sender, 
        block.timestamp
      );
    } else {
      // send rewards to user
      IERC20Upgradeable(rewardsToken).safeTransfer(
        sender,
        amountAfterFees
      );
    }
  }

  /**
  * @notice Updates the state after claiming round rewards
  * @dev Can only be called by the MFTsManager contract
  * @param collectionID The ID of the collection
  * @param roundID The ID of the round
  * @param amount The amount of rewards claimed
  * @param sender The address of the sender claiming rewards
  */
  function updateClaimRoundRewardsState(
    uint256 collectionID,
    uint256 roundID,
    uint256 amount,
    address sender
  ) external onlyMFTManager {
    _roundClaimed[collectionID][roundID][sender] = true;
    _roundRewards[collectionID][roundID].claimedAmount += amount;
  }

  /**
  * @notice mint the MFTs to be claimed
  * @dev Can only be called by the MFTsManager contract
  * @param leaf The Merkle leaf for verification
  * @param collectionID The ID of the collection
  * @param amount The amount of MFTs to claim
  * @param sender The address of the sender claiming MFTs
  */
  function claimMFTsManager(
    bytes32 leaf,
    uint256 collectionID,
    uint256 amount,
    address sender  
  ) external onlyMFTManager {
    if (_claimed[leaf]) revert AlreadyClaimed();
  
    _claimed[leaf] = true;
    _mint(sender, collectionID, amount, '');
  }

  /**
  * @notice Creates snapshots for multiple collection IDs
  * @dev Can only be called by the MFTsManager contract
  * @param collectionIDs An array of collection IDs to snapshot
  */
  function snapshotCollectionIDs(bytes32[] calldata collectionIDs) external onlyMFTManager {
    for (uint256 i = 0; i < collectionIDs.length; i++) {
      _snapshot(uint256(collectionIDs[i]));
    }
  }

  /**
  * @notice Gets a paginated list of all holders for a specific collection
  * @param collectionID The ID of the collection
  * @param page The page number (0-indexed)
  * @param pageSize The number of holders per page
  * @return address[] of holder addresses for the specified page
  */
  function getAllHoldersPaginated(
    uint256 collectionID,
    uint256 page,
    uint256 pageSize
  ) public view returns (address[] memory) {
    uint256 start = page * pageSize;
    uint256 end = (page + 1) * pageSize;
    if (end > holders[collectionID].length) {
      end = holders[collectionID].length;
    }
    if (start > holders[collectionID].length) {
      start = holders[collectionID].length;
    }
    address[] memory result = new address[](end - start);
    for (uint256 i = start; i < end; i++) {
      result[i - start] = holders[collectionID][i];
    }
    return result;
  }

  /**
   * @dev See {ERC1155-_beforeTokenTransfer}.
   */
  function _beforeTokenTransfer(
    address operator,
    address from,
    address to,
    uint256[] memory ids,
    uint256[] memory amounts,
    bytes memory data
  ) internal virtual override {
    super._beforeTokenTransfer(operator, from, to, ids, amounts, data);

    for (uint256 i = 0; i < ids.length; ++i) {
      // snapshot support
      if (from == address(0) && to != address(0)) {
        // mint
        _updateAccountSnapshot(to, ids[i]);
        _updateTotalSupplySnapshot(ids[i]);
      } else if (from != address(0) && to == address(0)) {
        // burn
        _updateAccountSnapshot(from, ids[i]);
        _updateTotalSupplySnapshot(ids[i]);
      } else if (from != address(0) && to != address(0)) {
        // transfer
        _updateAccountSnapshot(from, ids[i]);
        _updateAccountSnapshot(to, ids[i]);
      }
      
      // holders Update
      if (from != address(0)) {
        if (balanceOf(from, ids[i]) == amounts[i]) {
          // remove holder
          uint256 index = holderIndex[from][ids[i]];
          holders[ids[i]][index] = holders[ids[i]][holders[ids[i]].length - 1];
          holderIndex[holders[ids[i]][index]][ids[i]] = index;
          holders[ids[i]].pop();
        }
      }
      if (to != address(0)) {
        if (balanceOf(to, ids[i]) == 0) {
          // add holder
          holders[ids[i]].push(to);
          holderIndex[to][ids[i]] = holders[ids[i]].length - 1;
        }
      }

      if (from == address(0)) {
        _totalSupply[ids[i]] += amounts[i];
      }

      if (to == address(0)) {
        uint256 id = ids[i];
        uint256 amount = amounts[i];
        uint256 supply = _totalSupply[id];
        require(supply >= amount, 'ERC1155: burn amount exceeds totalSupply');
        unchecked {
          _totalSupply[id] = supply - amount;
        }
      }
    }
  }
}