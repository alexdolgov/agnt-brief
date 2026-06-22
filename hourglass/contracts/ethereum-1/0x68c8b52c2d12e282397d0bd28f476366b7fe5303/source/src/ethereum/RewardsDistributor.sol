// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


import "@openzeppelin-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin-upgradeable/utils/cryptography/MerkleProofUpgradeable.sol";
import "@openzeppelin-upgradeable/proxy/utils/UUPSUpgradeable.sol";

import "@interfaces/IProxyVault.sol";
import "@interfaces/IFeeManager.sol";


contract RewardsDistributor is UUPSUpgradeable, ReentrancyGuardUpgradeable, AccessControlUpgradeable {
    using SafeERC20Upgradeable for IERC20Upgradeable;

    /// @notice Upgrader role
    bytes32 public constant UPGRADER = keccak256("UPGRADER");
    /// @notice Checkpointer role
    bytes32 public constant CHECKPOINTER = keccak256("CHECKPOINTER");
    /// @notice System role
    bytes32 public constant SYSTEM = keccak256("SYSTEM");
    /// @notice Unused role storage preservation
    bytes32[3] internal unusedRoleStorage;

    /// @notice Denominates weights, bps to %
    uint256 public constant DENOMINATOR = 10000;

    /// @notice Claim structure
    struct ClaimData {
        address token;
        uint256 index;
        uint256 amount;
        bytes32[] merkleProof;
    }

    /// @notice Address of the fee manager contract
    address public feeManager;

    /// @notice  Merkle root for each reward token, which is aggregated across different vaults.
    mapping(address => bytes32) public merkleRoot;

    /// @notice Current claim period for each reward token
    mapping(address => uint256) public claimPeriod;

    /// @notice Packed array of boolean values to determine whether reward is claimed (token ==> period ==> index ==> claimedBitWord)
    mapping(address => mapping(uint256 => mapping(uint256 => uint256))) private claimedBitMap;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer {}

    /* =========== Initializer =========== */
    function initialize(
        address _custodian,
        address _upgrader,
        address _checkpointer,
        address _feeManager
    ) public initializer {
        __UUPSUpgradeable_init();
        __AccessControl_init();
        __ReentrancyGuard_init();

        feeManager = _feeManager;

        _grantRole(DEFAULT_ADMIN_ROLE, _upgrader);
        _grantRole(UPGRADER, _upgrader);
        _grantRole(CHECKPOINTER, _checkpointer);
        _grantRole(SYSTEM, _custodian);

        // allow the system (custodian) to set it's own role allows custodian to add receipts
        _setRoleAdmin(SYSTEM, SYSTEM);
    }

    /// @notice Allows the upgrader to upgrade the contract
    function _authorizeUpgrade(address newImplementation) internal override onlyRole(UPGRADER) {}


    /* =========== Public and External Functions =========== */
    function isClaimed(address _token, uint256 _index) public view returns (bool) {
        uint256 claimedWordIndex = _index / 256;
        uint256 claimedBitIndex = _index % 256;
        uint256 claimedWord = claimedBitMap[_token][claimPeriod[_token]][claimedWordIndex];
        uint256 mask = (1 << claimedBitIndex);

        return claimedWord & mask == mask;
    }

    /// @notice Allows users to claim their rewards for any reward token
    /// @param _token The reward token to claim
    /// @param _index The index of the reward in the merkle tree
    /// @param _account The account to claim the reward for
    /// @param _amount The amount of the reward to claim
    /// @param _merkleProof The merkle proof for the reward
    /// @dev Allows claiming on behalf of any account, so any address can claim, sending to the account
    function claim(
        address _token,
        uint256 _index,
        address _account,
        uint256 _amount,
        bytes32[] calldata _merkleProof
    ) public nonReentrant {
        if (merkleRoot[_token] == 0) revert ClaimingIsPaused();
        if (isClaimed(_token, _index)) revert AlreadyClaimed();

        // Verify the merkle proof
        bytes32 node = keccak256(bytes.concat(keccak256(abi.encode(_index, _account, _amount))));
        if (!MerkleProofUpgradeable.verify(_merkleProof, merkleRoot[_token], node)) revert InvalidMerkleProof();

        _setClaimed(_token, _index);
        IERC20Upgradeable(_token).safeTransfer(_account, _amount);

        emit RewardClaimed(_token, _account, _index, _amount, claimPeriod[_token]);
    }

    /// @notice Allows users to claim multiple rewards in a single transaction
    /// @param _account The account to claim the rewards for
    /// @param claims The array of claims to make
    function claimMulti(address _account, ClaimData[] calldata claims) external nonReentrant {
        uint256 numClaims = claims.length;
        for (uint256 i; i < numClaims; i++) {
            claim(claims[i].token, claims[i].index, _account, claims[i].amount, claims[i].merkleProof);
        }
    }

    /* =========== Private and Internal Functions =========== */
    function _setClaimed(address _token, uint256 _index) private {
        uint256 claimedWordIndex = _index / 256;
        uint256 claimedBitIndex = _index % 256;
        claimedBitMap[_token][claimPeriod[_token]][claimedWordIndex] =
            claimedBitMap[_token][claimPeriod[_token]][claimedWordIndex] |
            (1 << claimedBitIndex);
    }

    /* =========== Restricted Functions =========== */
    ////////// Checkpoint Functions //////////

    /// @notice Allows checkpointer to halt claiming for `_tokens` before creating the new merkle root
    /// @param _tokens The tokens to freeze claiming for
    function freezeClaiming(address[] calldata _tokens) external onlyRole(CHECKPOINTER) {
        uint256 numTokens = _tokens.length;
        for (uint256 i; i < numTokens; i++) {
            claimPeriod[_tokens[i]] += 1;
            merkleRoot[_tokens[i]] = 0;
            
            emit ClaimsPaused(_tokens[i], claimPeriod[_tokens[i]]);
        }
    }

    /// @notice Updates merkle root, accepts incoming reward tokens, processes fees, & unpauses claiming for `_tokens`
    /// @param _tokens The tokens to update the merkle root for
    /// @param _amounts The amounts of each token to accept
    /// @param _merkleRoots The new merkle roots for each token
    /// @dev This is not protected by reentrancy guard because it is only callable by the checkpointer
    function checkpointClaimPeriod(
        address[] memory _tokens,
        uint256[] memory _amounts,
        bytes32[] memory _merkleRoots
    ) public onlyRole(CHECKPOINTER) {
        uint256 numTokens = _tokens.length;
        for (uint256 i; i < numTokens; i++) {
            if (merkleRoot[_tokens[i]] != 0) revert ClaimsMustBeFrozen();

            // Increment the claim period
            claimPeriod[_tokens[i]] += 1;

            // Pull Rewards
            IERC20Upgradeable(_tokens[i]).safeTransferFrom(msg.sender, address(this), _amounts[i]);

            // Process Fees
            uint256 fee = (_amounts[i] * IFeeManager(feeManager).rewardsFee()) / DENOMINATOR;
            IERC20Upgradeable(_tokens[i]).safeTransfer(IFeeManager(feeManager).feeAddress(), fee);

            // Update merkle root
            merkleRoot[_tokens[i]] = _merkleRoots[i];

            emit MerkleRootUpdated(_tokens[i], claimPeriod[_tokens[i]], _merkleRoots[i]);
        }
    }


    ////////// Receipt Checkpointing //////////

    /// @notice Called by the custodian when registering a new asset
    /// @param _receipt The address of the new asset
    /// @dev Allows the 1155 contracts to call `receiptCheckpoint`
    function register1155(address _receipt) external onlyRole(SYSTEM) {
        grantRole(SYSTEM, _receipt);
        emit ReceiptRegistered(_receipt);
    }

    /// @notice Called by the 1155 receipt contract when a transfer occurs
    /// @param receipt The address of the receipt contract calling the function
    /// @param from The sender of the transfer
    /// @param to The recipient of the transfer
    /// @param ids The ids of the tokens transferred
    /// @param amounts The amounts of the tokens transferred
    /// @dev Allows for future migration to fully on-chain rewards processing
    function receiptCheckpoint(
        address receipt,
        address from,
        address to,
        uint256[] calldata ids,
        uint256[] calldata amounts
    ) external onlyRole(SYSTEM) {
        // do nothing for now
    }


    ////////// Admin Permissioned //////////

    /// @notice Allows the upgrader to set the fee manager
    /// @param _feeManager The address of the new fee manager
    function setFeeManager(address _feeManager) external onlyRole(UPGRADER) {
        emit FeeAddressSet(feeManager, _feeManager);

        feeManager = _feeManager;
    }

    ////////// Errors //////////
    error CannotBeZero();
    error ClaimingIsPaused();
    error AlreadyClaimed();
    error InvalidMerkleProof();
    error ClaimsMustBeFrozen();

    /* =========== Events =========== */
    event ClaimsPaused(address indexed token, uint256 indexed tokenClaimPeriod);
    event MerkleRootUpdated(address indexed token, uint256 indexed tokenClaimPeriod, bytes32 indexed merkleRoot);
    event RewardClaimed(
        address indexed token,
        address indexed account,
        uint256 indexed index,
        uint256 amount,
        uint256 tokenClaimPeriod);
    event ReceiptRegistered(address indexed receipt);
    event FeesSet(uint256 platformFee, uint256 rewardsFee, uint256 tradeFee, uint256 matureFee);
    event FeeAddressSet(address oldFeeAddress, address newFeeAddress);
}