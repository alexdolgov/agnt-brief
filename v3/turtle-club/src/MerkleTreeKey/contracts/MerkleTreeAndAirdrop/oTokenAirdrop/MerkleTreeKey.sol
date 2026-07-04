// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

/// ============ Imports ============

import { MerkleProof } from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol"; // OZ: MerkleProof
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

interface IAirdropClaim {
    function setUserInfo(address _who, address _to, uint256 _amount, uint256 _keyTier) external returns(bool status);
}

/// @title MerkleClaimERC20
/// @notice ERC20 claimable by members of a merkle tree
/// @author Anish Agnihotri <contact@anishagnihotri.com>
/// @dev Solmate ERC20 includes unused _burn logic that can be removed to optimize deployment cost

/*
    Based off Solmate [thanks]. Merkle contract to claim Lynex Airdrop.
*/
interface IMerkle {
    function hasClaimed(address _user) external returns(bool);
}


contract MerkleTreeKey is Ownable {

    /// ============ Mutable storage ============

    /// @notice ERC20-claimee inclusion root
    bytes32 public merkleRoot;

    /// @notice airdrop managment
    address public airdropClaimKey;

    /// @notice init flag
    bool public init;

    /// @notice Mapping of addresses who have claimed tokens
    mapping(address => bool) public hasClaimed;

    /// @notice what is used for
    string public info = "MerkleTree ecosystem Airdrop";

    /// ============ Errors ============

    /// @notice Thrown if address has already claimed
    error AlreadyClaimed(address _who);
    /// @notice Thrown if address/amount are not part of Merkle tree
    error NotInMerkle(address _who, uint _amnt);

    /// ============ Constructor ============

    /// @notice Creates a new MerkleClaimERC20 contract
    /// @param _airdropClaim claim manager
    constructor(address _airdropClaim, bytes32 _merkleRoot) Ownable() {
        airdropClaimKey = _airdropClaim;
        merkleRoot = _merkleRoot;
    }

    /// ============ Events ============

    /// @notice Emitted after a successful token claim
    /// @param who has right to claim
    /// @param to recipient of claim
    /// @param amount of tokens claimed
    event ClaimSet(address indexed who,address indexed to, uint256 amount);


    /// ============ Functions ============

    /// @notice Allows claiming tokens if address is part of merkle tree
    /// @param to address of claimee
    /// @param amount of tokens owed to claimee
    /// @param keyTier Key Tier that the user is trying to claim
    /// @param proof merkle proof to prove address and amount are in tree
    function claim(address to, uint256 amount, uint256 keyTier, bytes32[] calldata proof) external {

        // check claim is started
        require(init, 'not started');
        require(keyTier > 0 && keyTier <= 5, 'keyTier must be > 0 and <= 5');

        // set user
        address _userToCheck = msg.sender;
        
        // Throw if address has already claimed tokens
        if (hasClaimed[msg.sender]) revert AlreadyClaimed(_userToCheck);   
 
        // Verify merkle proof, or revert if not in tree
        bytes32 leaf = keccak256(bytes.concat(keccak256(abi.encode(_userToCheck, amount, keyTier))));
        bool isValidLeaf = MerkleProof.verify(proof, merkleRoot, leaf);
        if (!isValidLeaf) revert NotInMerkle(_userToCheck,amount);

        // Mint tokens to msg.sender
        bool _status = IAirdropClaim(airdropClaimKey).setUserInfo(msg.sender, to, amount, keyTier);
        require(_status, 'setUserInfo failed');
        
        // Set address to claimed
        hasClaimed[msg.sender] = true;

        // Emit claim event
        emit ClaimSet(msg.sender, to, amount);
    }


    /// @notice Set Merkle Root (before starting the claim!)
    /// @param _merkleRoot merkle root
    function setMerkleRoot(bytes32 _merkleRoot) external onlyOwner {
        require(_merkleRoot != bytes32(0), 'root 0');
        require(init == false);
        merkleRoot = _merkleRoot;
    }

    function _init() external onlyOwner {
        require(init == false, 'MerkleTree contract already initialized');
        require(merkleRoot != bytes32(0), 'root 0');
        init = true;
    }

    function setUserClaimed(address[] memory users) external onlyOwner {
        uint i=0;
        for(i=0; i < users.length; i++){
            hasClaimed[users[i]] = true;
        }
    }
}