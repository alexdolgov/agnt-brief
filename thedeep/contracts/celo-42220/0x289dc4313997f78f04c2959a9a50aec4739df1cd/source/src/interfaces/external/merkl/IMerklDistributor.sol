// SPDX-License-Identifier: BUSL-1.1
pragma solidity >=0.5.0;
pragma abicoder v2;

struct MerkleTree {
    bytes32 merkleRoot;
    bytes32 ipfsHash;
}

struct Claim {
    uint208 amount;
    uint48 timestamp;
    bytes32 merkleRoot;
}

interface IMerklDistributor {
    event Claimed(address indexed user, address indexed token, uint256 amount);
    event DisputeAmountUpdated(uint256 _disputeAmount);
    event Disputed(string reason);
    event DisputePeriodUpdated(uint48 _disputePeriod);
    event DisputeResolved(bool valid);
    event DisputeTokenUpdated(address indexed _disputeToken);
    event OperatorClaimingToggled(address indexed user, bool isEnabled);
    event OperatorToggled(address indexed user, address indexed operator, bool isWhitelisted);
    event Recovered(address indexed token, address indexed to, uint256 amount);
    event Revoked();
    event TreeUpdated(bytes32 merkleRoot, bytes32 ipfsHash, uint48 endOfDisputePeriod);
    event TrustedToggled(address indexed eoa, bool trust);

    // View Functions
    function tree() external view returns (bytes32 merkleRoot, bytes32 ipfsHash);
    function lastTree() external view returns (bytes32 merkleRoot, bytes32 ipfsHash);
    function disputeToken() external view returns (address);
    function core() external view returns (address);
    function disputer() external view returns (address);
    function endOfDisputePeriod() external view returns (uint48);
    function disputePeriod() external view returns (uint48);
    function disputeAmount() external view returns (uint256);
    function claimed(address user, address token) external view returns (uint208 amount, uint48 timestamp, bytes32 merkleRoot);
    function canUpdateMerkleRoot(address eoa) external view returns (uint256);
    function onlyOperatorCanClaim(address user) external view returns (uint256);
    function operators(address user, address operator) external view returns (uint256);
    function getMerkleRoot() external view returns (bytes32);

    // Non-View Functions
    function initialize(address _core) external;

    /// @notice Claims rewards for a given set of users
    /// @dev Anyone may call this function for anyone else, funds go to destination regardless, it's just a question of
    /// who provides the proof and pays the gas: `msg.sender` is used only for addresses that require a trusted operator
    /// @param users Recipient of tokens
    /// @param tokens ERC20 claimed
    /// @param amounts Amount of tokens that will be sent to the corresponding users
    /// @param proofs Array of hashes bridging from a leaf `(hash of user | token | amount)` to the Merkle root
    function claim(address[] calldata users, address[] calldata tokens, uint256[] calldata amounts, bytes32[][] calldata proofs) external;

    function toggleTrusted(address eoa) external;
    function updateTree(MerkleTree calldata _tree) external;
    function disputeTree(string memory reason) external;
    function resolveDispute(bool valid) external;
    function revokeTree() external;
    function toggleOnlyOperatorCanClaim(address user) external;
    function toggleOperator(address user, address operator) external;
    function recoverERC20(address tokenAddress, address to, uint256 amountToRecover) external;
    function setDisputePeriod(uint48 _disputePeriod) external;
    function setDisputeToken(address _disputeToken) external;
    function setDisputeAmount(uint256 _disputeAmount) external;
}
