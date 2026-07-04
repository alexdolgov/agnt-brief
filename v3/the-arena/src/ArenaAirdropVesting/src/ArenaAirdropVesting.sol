// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;
import {MerkleProof} from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract ArenaAirdropVesting is Ownable {
    bytes32 public _root;
    address public immutable ARENA_TOKEN_ADDRESS;
    mapping(address => uint) public airdropClaimed;

    error AlreadyClaimed();
    error ProofVerificationFailed(address claimant, uint256 amount);
    
    event MerkleRootUpdated(bytes32 indexed newRoot);
    event AirdropClaimed(address indexed claimant, uint256 amount);

    constructor(bytes32 firstRoot, address admin, address arenaTokenAddress) Ownable(admin) {
        require (arenaTokenAddress != address(0), "Invalid address");
        ARENA_TOKEN_ADDRESS = arenaTokenAddress;
        _root = firstRoot;
        emit MerkleRootUpdated(_root);
    }

    function updateMerkleRoot(bytes32 newRoot) external onlyOwner {
        _root = newRoot;
        emit MerkleRootUpdated(newRoot);
    }

    function claim(
        bytes32[] calldata proof,
        uint256 amount
    ) external {
        uint256 alreadyClaimed = airdropClaimed[msg.sender];
        if (alreadyClaimed >= amount) {
            revert AlreadyClaimed();
        }
        verify(proof, msg.sender, amount);
        airdropClaimed[msg.sender] = amount;
        IERC20(ARENA_TOKEN_ADDRESS).transfer(msg.sender, amount - alreadyClaimed);

        emit AirdropClaimed(msg.sender, amount - alreadyClaimed);
    }

    function verify(
        bytes32[] memory proof,
        address addr,
        uint256 amount
    ) internal view {
        bytes32 leaf = keccak256(
            bytes.concat(keccak256(abi.encode(addr, amount)))
        );
        if (!MerkleProof.verify(proof, _root, leaf)) {
            revert ProofVerificationFailed(addr, amount);
        }
    }
}
