// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.12;

import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/cryptography/MerkleProofUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "./interfaces/IRewardOrchestrator.sol";
import "./interfaces/IRunnerRewarder.sol";

contract RunnerRewarder is
    IRunnerRewarder,
    Initializable,
    UUPSUpgradeable,
    OwnableUpgradeable
{
    /// @dev ERC20-claimee inclusion root
    bytes32 public merkleRoot;
    address public rewardOrchestrator;
    IERC20Upgradeable public rewardToken; //Token given as the reward

    /// @dev Mapping of cumulative amount claimed by each address.
    mapping(address => uint256) public claimed;

    modifier onlyRewardOrchestrator() {
        require(
            msg.sender == rewardOrchestrator,
            "You are not permitted to call this function"
        );
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer() {}

    function initialize(address _rewardTokenAddress) public initializer {
        __Ownable_init();
        __UUPSUpgradeable_init();
        rewardToken = IERC20Upgradeable(_rewardTokenAddress);
    }

    function _authorizeUpgrade(address) internal override onlyOwner {}

    /// @dev Allows to set the rewardOrchestrator contract.
    /// @dev Can only be called by owner of this contract.
    /// @param _rewardOrchestrator address of the rewardOrchestrator contract.
    function setRewardOrchestrator(
        address _rewardOrchestrator
    ) external onlyOwner {
        require(_rewardOrchestrator != address(0), "Zero address, Invalid!");
        rewardOrchestrator = _rewardOrchestrator;
    }

    /// @dev Allow to change the merkle root hash stored on this contract
    /// @dev rewardOrchestrator is the contract which is only address capable of changing merkle hash in this contract
    /// @param hash is the new merkle root hash.
    function changeMerkleRootHash(
        bytes32 hash
    ) external onlyRewardOrchestrator {
        merkleRoot = hash;
    }

    /// @dev Allows claiming tokens if hash made from address and amount is part of the merkle tree
    /// @param amount of total tokens earned by claimee. Note that this includes previously claimed tokens.
    /// @param proof merkle proof to prove address and amount are in tree
    function claim(uint256 amount, bytes32[] calldata proof) external {
        uint256 claimedTillNow = claimed[msg.sender];
        require(
            amount > claimedTillNow,
            "This amount has already been claimed"
        );

        // Verify merkle proof, or revert if not in tree
        bytes32 leaf = keccak256(abi.encodePacked(msg.sender, amount));
        bool isValidLeaf = MerkleProofUpgradeable.verify(
            proof,
            merkleRoot,
            leaf
        );
        require(isValidLeaf, "Calculated Merkle Hash is invalid");

        //Set claimed equal to amount, to prevent double-claiming
        claimed[msg.sender] = amount;

        // Emit claim event
        emit Claim(msg.sender, amount - claimedTillNow);

        // Transfer reward tokens to the claimer
        rewardToken.transfer(msg.sender, amount - claimedTillNow);
    }
}
