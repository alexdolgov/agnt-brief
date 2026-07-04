// SPDX-License-Identifier: MIT
pragma solidity 0.8.27;

import {Ownable} from "openzeppelin/access/Ownable.sol";
import {IERC20} from "openzeppelin/token/ERC20/IERC20.sol";
import {MerkleProof} from "openzeppelin/utils/cryptography/MerkleProof.sol";
import {ReentrancyGuard} from "openzeppelin/utils/ReentrancyGuard.sol";

/// @title MerkleDistributor
/// @dev A contract for distributing ERC20 tokens based on Merkle tree proofs and whitelisting.
contract MerkleDistributor is Ownable, ReentrancyGuard {
    // errors
    error NotInWhitelist();
    error AlreadyClaimed();
    error InvalidProof();
    error InvalidAmount();
    error LengthNotMatch();
    error PausedClaim();

    /// @dev Store the Merkle root hashes
    bytes32[] public merkleRoots;

    /// @dev Interface for the ERC20 token contract
    IERC20 public TOKEN;

    /// @dev Indicates whether claiming is allowed
    bool public canClaim;

    /// @dev Mapping to track if an address has already claimed their tokens
    mapping(uint256 => mapping(address => bool)) public isClaimed;

    /// @dev Mapping to store whitelisted addresses and their corresponding claim amounts
    mapping(uint256 => mapping(address => uint256)) public whitelist;

    // This event is emitted whenever a successful call to #claim occurs.
    event Claimed(uint256 index, address indexed account, uint256 amount);

    // Tokens withdrawn
    event Withdrawn(address indexed recipient, uint256 amount);

    event CanClaimChanged(bool canClaim);

    event AddWhitelists(uint256 indexed index, address[] indexed account, uint256[] amount);
    event RemoveWhitelists(uint256 indexed index, address[] indexed account);

    /// @notice Constructor to initialize the contract
    /// @param _merkleRoots Array of Merkle root hashes
    /// @param _token Address of the ERC20 token contract
    /// @param _owner Address of the contract owner
    constructor(bytes32[] memory _merkleRoots, address _token, address _owner) Ownable(_owner) {
        merkleRoots = _merkleRoots;
        TOKEN = IERC20(_token);
    }

    /// @dev Modifier to restrict access to whitelisted addresses only
    /// @param index The index of the Merkle root being used
    modifier onlyWhitelisted(uint256 index) {
        require(whitelist[index][msg.sender] > 0, NotInWhitelist()); // Check if the caller is whitelisted
        _;
    }

    /// @notice Set a new Merkle root
    /// @param index The index of the Merkle root to set
    /// @param _merkleRoot The new Merkle root hash
    function setMerkleRoot(uint256 index, bytes32 _merkleRoot) external onlyOwner {
        merkleRoots[index] = _merkleRoot;
    }

    /// @notice Set new Merkle root list
    /// @param _merkleRoot The new Merkle root hash
    function addMerkleRoot(bytes32 _merkleRoot) external onlyOwner {
        merkleRoots.push(_merkleRoot);
    }

    /// @notice Enable or disable claiming of tokens
    /// @param _canClaim Flag to indicate whether claiming is allowed
    function setCanClaim(bool _canClaim) external onlyOwner {
        canClaim = _canClaim;
        emit CanClaimChanged(_canClaim);
    }

    /// @notice Set a new ERC20 token address
    /// @param _token The new token address
    function setToken(address _token) external onlyOwner {
        TOKEN = IERC20(_token);
    }

    /**
     * @notice Add addresses to the whitelist
     * @param index The index for the specified Merkle root
     * @param addresses Array of addresses to be added
     * @param amounts Corresponding claim amounts for each address
     */
    function addToWhitelist(uint256 index, address[] calldata addresses, uint256[] calldata amounts)
        external
        onlyOwner
    {
        require(addresses.length == amounts.length, LengthNotMatch());
        for (uint256 i = 0; i < addresses.length; i++) {
            whitelist[index][addresses[i]] = amounts[i]; // Add address and amount to whitelist
        }
        emit AddWhitelists(index, addresses, amounts);
    }

    /**
     * @notice Remove addresses from the whitelist
     * @param index The index for the specified Merkle root
     * @param addresses Array of addresses to be removed
     */
    function removeFromWhitelist(uint256 index, address[] calldata addresses) external onlyOwner {
        for (uint256 i = 0; i < addresses.length; i++) {
            delete whitelist[index][addresses[i]]; // Remove address from whitelist
        }
        emit RemoveWhitelists(index, addresses);
    }

    /**
     * @notice Claim tokens (only for whitelisted users)
     * @dev Users can call this function to claim their allocated tokens
     * @param index The index for the specified Merkle root
     */
    function claim(uint256 index) external nonReentrant onlyWhitelisted(index) {
        require(canClaim, PausedClaim());
        require(!isClaimed[index][msg.sender], AlreadyClaimed()); // Check if the user has already claimed

        uint256 amount = whitelist[index][msg.sender]; // Get the claimable amount for the user
        isClaimed[index][msg.sender] = true; // Mark as claimed
        TOKEN.transfer(msg.sender, amount); // Transfer tokens to the user

        emit Claimed(index, msg.sender, amount); // Emit event for withdrawal
    }

    /**
     * @notice Claim tokens using Merkle proof
     * @param index The index for the specified Merkle root
     * @param amount The amount the user wants to claim
     * @param merkleProof The Merkle proof for verification
     * @dev Users can call this function to claim their tokens with a valid proof
     */
    function claim(uint256 index, uint256 amount, bytes32[] calldata merkleProof) external nonReentrant {
        require(canClaim, PausedClaim());
        require(amount > 0, InvalidAmount()); // Check if the requested amount is valid
        require(!isClaimed[index][msg.sender], AlreadyClaimed()); // Check if the user has already claimed

        // Verify the Merkle proof
        bytes32 _messageHash = keccak256(bytes.concat(keccak256(abi.encode(msg.sender, amount))));
        require(MerkleProof.verify(merkleProof, merkleRoots[index], _messageHash), InvalidProof()); // Verify the proof

        // Mark as claimed and send the tokens
        isClaimed[index][msg.sender] = true;
        TOKEN.transfer(msg.sender, amount);

        emit Claimed(index, msg.sender, amount); // Emit event for claimed tokens
    }

    /**
     * @notice Withdraw tokens from the contract (only for the contract owner)
     * @dev Allows the owner to withdraw any remaining tokens in the contract
     */
    function withdraw() external onlyOwner {
        uint256 _remainingBalance = TOKEN.balanceOf(address(this)); // Get the remaining token balance of the contract
        TOKEN.transfer(msg.sender, _remainingBalance); // Transfer the balance to the contract owner

        emit Withdrawn(msg.sender, _remainingBalance); // Emit event for withdrawal
    }
}
