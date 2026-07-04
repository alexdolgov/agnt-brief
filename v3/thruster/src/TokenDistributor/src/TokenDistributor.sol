// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import "./interface/IVotingEscrow.sol";
import "./interface/IBlast.sol";

contract TokenDistributor is Ownable {
    event Claimed(address indexed claimer, uint256 amount);
    event VeClaimed(address indexed claimer, uint256 amount);

    uint256 public constant MIN_LOCK = 12 * 7 days; // 12 weeks
    address public token;
    address public veToken;
    bytes32 public root; // Same root used for both claims, because equal amount of THRUST is distributed for both claims
    mapping(address => bool) public claimed;
    mapping(address => bool) public claimedVeToken;

    IBlast public constant BLAST =
        IBlast(0x4300000000000000000000000000000000000002);

    /**
     * @dev Constructor for the TokenDistributor contract.
     * @param owner_ - The owner of the contract
     * @param root_ - The root of the merkle tree
     * @param token_ - The address of the token contract
     */
    constructor(
        address owner_,
        bytes32 root_,
        address token_,
        address veToken_
    ) Ownable(owner_) {
        root = root_;
        token = token_;
        veToken = veToken_;
        IERC20(token).approve(veToken, type(uint256).max); // Approve veToken to transfer token
        BLAST.configureClaimableGas();
    }

    /**
     * @dev Allows claiming by an external address if it exists in the tree. Only callable once per owner, requires merkle tree to be constructed correctly.
     * @param amount_ - The amount of tokens to claim
     * @param proof_ - The merkle proof to verify the claim
     */
    function claim(uint256 amount_, bytes32[] calldata proof_) external {
        bytes32 node = keccak256(abi.encodePacked(msg.sender, amount_));
        require(
            MerkleProof.verify(proof_, root, node),
            "TokenDistributor: Invalid proof"
        );
        require(!claimed[msg.sender], "TokenDistributor: Already claimed");
        claimed[msg.sender] = true;
        IERC20(token).transfer(msg.sender, amount_);
        emit Claimed(msg.sender, amount_);
    }

    /**
     * @dev Claims the token and automatically deposits it into the user's veToken position, if the user has a lock >= MIN_LOCK.
     * Only callable once per owner, requires merkle tree to be constructed correctly.
     * @param amount_ - The amount of token to claim and deposit into veToken
     * @param proof_ - The merkle proof to verify the claim
     */
    function claimVeToken(uint256 amount_, bytes32[] calldata proof_) external {
        bytes32 node = keccak256(abi.encodePacked(msg.sender, amount_));
        require(
            MerkleProof.verify(proof_, root, node),
            "TokenDistributor: Invalid proof"
        );
        require(
            !claimedVeToken[msg.sender],
            "TokenDistributor: Already claimed"
        );
        require(
            IVotingEscrow(veToken).locked(msg.sender).end >=
                block.timestamp + MIN_LOCK,
            "TokenDistributor: VeToken not locked long enough"
        );
        claimedVeToken[msg.sender] = true;
        IVotingEscrow(veToken).deposit_for(msg.sender, amount_);
        emit VeClaimed(msg.sender, amount_);
    }

    /**
     * @dev Deposits tokens to distribute into the contract.
     * @param _amount - The amount of tokens to deposit
     */
    function depositToken(uint256 _amount) external onlyOwner {
        IERC20(token).transferFrom(msg.sender, address(this), _amount);
    }

    /**
     * @dev Withdraws all unclaimed tokens to the specified address.
     * @param _receiver The address to send the unclaimed tokens to
     */
    function withdrawUnclaimed(address _receiver) external onlyOwner {
        IERC20(token).transfer(
            _receiver,
            IERC20(token).balanceOf(address(this))
        );
    }

    /**
     *
     * @param _root - The new root of the merkle tree
     */
    function updateRoot(bytes32 _root) external onlyOwner {
        root = _root;
    }

    function claimGas(address _receiver) external onlyOwner {
        BLAST.claimMaxGas(address(this), _receiver);
    }
}
