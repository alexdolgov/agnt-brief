//SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "./MerkleTreeWithHistory.sol";

interface IRewardDistributor {
    function distributeReward(address recipient) external;
}

interface IVerifier {
    function verifyProof(bytes memory _proof, uint256[6] memory _input)
        external
        returns (bool);
}

abstract contract Whirl is MerkleTreeWithHistory, ReentrancyGuard {
    uint256 public denomination;
    mapping(bytes32 => bool) public nullifierHashes;
    // we store all commitments just to prevent accidental deposits with the same commitment
    mapping(bytes32 => bool) public commitments;
    IVerifier public verifier;

    address public protocolFeeDistributor;
    uint256 public protocolFee = 50; // starting fee 0.5%
    uint256 public immutable protocolFeeBase = 10000;
    uint256 public immutable protocolFeeMax = 500; // max fee 5%

    IRewardDistributor public rewardDistributor;

    // owner can update snark verification key
    // after the final trusted setup ceremony owner rights are supposed to be transferred to zero address
    address public owner;
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function.");
        _;
    }

    address public governance;
    modifier onlyGovernance() {
        require(
            msg.sender == governance,
            "Only governance can call this function."
        );
        _;
    }

    modifier onlyOwnerorGovernance() {
        require(
            msg.sender == governance || msg.sender == owner,
            "Only owner or governance can call this function"
        );
        _;
    }

    event Deposit(
        bytes32 indexed commitment,
        uint32 leafIndex,
        uint256 timestamp
    );
    event Withdrawal(
        address to,
        bytes32 nullifierHash,
        address indexed relayer,
        uint256 fee
    );

    /**
    @dev The constructor
    @param _verifier the address of SNARK verifier for this contract
    @param _denomination transfer amount for each deposit
    @param _merkleTreeHeight the height of deposits' Merkle Tree
    @param _owner owner address (see owner comment above)
  */
    constructor(
        IVerifier _verifier,
        IHasher _hasher,
        uint256 _denomination,
        uint32 _merkleTreeHeight,
        address _owner,
        address _governance,
        address _protocolFeeDistributor,
        address _rewardDistributor
    ) MerkleTreeWithHistory(_merkleTreeHeight, _hasher) {
        require(_denomination > 0, "denomination should be greater than 0");
        verifier = _verifier;
        owner = _owner;
        denomination = _denomination;
        governance = _governance;
        protocolFeeDistributor = _protocolFeeDistributor;
        rewardDistributor = IRewardDistributor(_rewardDistributor);
    }

    /**
    @dev Deposit funds into the contract. The caller must send (for ETH) or approve (for ERC20) value equal to or `denomination` of this instance.
    @param _commitment the note commitment, which is PedersenHash(nullifier + secret)
  */
    function deposit(bytes32 _commitment, address _referrer)
        external
        payable
        nonReentrant
    {
        require(!commitments[_commitment], "The commitment has been submitted");

        uint32 insertedIndex = _insert(_commitment);
        commitments[_commitment] = true;
        _processDeposit();

        if (_referrer != address(0)) {
            rewardDistributor.distributeReward(_referrer);
        }

        emit Deposit(_commitment, insertedIndex, block.timestamp);
    }

    /** @dev this function is defined in a child contract */
    function _processDeposit() internal virtual;

    /**
    @dev Withdraw a deposit from the contract. `proof` is a zkSNARK proof data, and input is an array of circuit public inputs
    `input` array consists of:
      - merkle root of all deposits in the contract
      - hash of unique deposit nullifier to prevent double spends
      - the recipient of funds
      - optional fee that goes to the transaction sender (usually a relay)
  */
    function withdraw(
        bytes calldata _proof,
        bytes32 _root,
        bytes32 _nullifierHash,
        address payable _recipient,
        address payable _relayer,
        uint256 _fee,
        uint256 _refund
    ) external payable nonReentrant {
        require(_fee <= denomination, "Fee exceeds transfer value");
        require(
            !nullifierHashes[_nullifierHash],
            "The note has been already spent"
        );
        require(isKnownRoot(_root), "Cannot find your merkle root"); // Make sure to use a recent one
        require(
            verifier.verifyProof(
                _proof,
                [
                    uint256(_root),
                    uint256(_nullifierHash),
                    uint256(_recipient),
                    uint256(_relayer),
                    _fee,
                    _refund
                ]
            ),
            "Invalid withdraw proof"
        );

        nullifierHashes[_nullifierHash] = true;
        _processWithdraw(_recipient, _relayer, _fee, _refund);
        rewardDistributor.distributeReward(_recipient);
        emit Withdrawal(_recipient, _nullifierHash, _relayer, _fee);
    }

    /** @dev this function is defined in a child contract */
    function _processWithdraw(
        address payable _recipient,
        address payable _relayer,
        uint256 _relayerFee,
        uint256 _refund
    ) internal virtual;

    /** @dev whether a note is already spent */
    function isSpent(bytes32 _nullifierHash) public view returns (bool) {
        return nullifierHashes[_nullifierHash];
    }

    /** @dev whether an array of notes is already spent */
    function isSpentArray(bytes32[] calldata _nullifierHashes)
        external
        view
        returns (bool[] memory spent)
    {
        spent = new bool[](_nullifierHashes.length);
        for (uint256 i = 0; i < _nullifierHashes.length; i++) {
            if (isSpent(_nullifierHashes[i])) {
                spent[i] = true;
            }
        }
    }

    /**
    @dev allow owner to update SNARK verification keys. This is needed to update keys after the final trusted setup ceremony is held.
    After that owner rights are supposed to be transferred to zero address
  */
    function updateVerifier(address _newVerifier) external onlyOwner {
        verifier = IVerifier(_newVerifier);
    }

    /** @dev owner can change his address */
    function changeOwner(address _newOwner) external onlyOwner {
        owner = _newOwner;
    }

    function setGovernance(address _governance) external onlyOwnerorGovernance {
        governance = _governance;
    }

    function setFeeDistributor(address _protocolFeeDistributor)
        external
        onlyOwner
    {
        protocolFeeDistributor = _protocolFeeDistributor;
    }

    function setProtocolFee(uint256 _protocolFee) external onlyGovernance {
        require(
            _protocolFee <= protocolFeeMax,
            "Protocol fee requested is larger than max allowed fee"
        );
        protocolFee = _protocolFee;
    }

    function setDepositRewardDistributor(address _rewardDistributor)
        external
        onlyOwnerorGovernance
    {
        rewardDistributor = IRewardDistributor(_rewardDistributor);
    }
}
