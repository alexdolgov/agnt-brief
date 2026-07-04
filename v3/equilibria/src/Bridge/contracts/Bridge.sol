// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.27;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IStateOracle} from "./interfaces/IStateOracle.sol";
import {ITokenPairs} from "./interfaces/ITokenPairs.sol";
import {IProofVerifier} from "./interfaces/IProofVerifier.sol";
import {IProvingContract} from "./interfaces/IProvingContract.sol";
import {IMintedBurnableERC20} from "./interfaces/IMintedBurnableERC20.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

/// The L2 part of the bridge. Allows to claim tokens deposited on the L1 side.
/// Allows to initiate withdrawal from L2 back to L1.
/// @custom:security-contact security@fantom.foundation
contract Bridge is IProvingContract, UUPSUpgradeable, OwnableUpgradeable {
    uint256 private _gap;
    mapping (uint256 withdrawalId => bytes32 senderTokenAmount) public withdrawals; // slot index 1
    mapping (uint256 depositId => bool isClaimed) public claims; // slot index 2

    address public proofVerifier; // for verification of proofs of state on L1 chain
    address public deposit; // Deposit contract on the L1 chain
    address public immutable tokenPairs; // TokenPairs contract
    address public immutable stateOracle; // StateOracle contract

    uint256 private constant TIME_UNTIL_OFFLINE = 24 hours;

    event Withdrawal(uint256 indexed id, address indexed owner, address token, uint256 amount);
    event Claim(uint256 id, address indexed owner, address token, uint256 amount);
    event ProofVerifierSet(address proofVerifier);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(address _tokenPairs, address _stateOracle) {
        require(_tokenPairs != address(0), "TokenPairs not set");
        require(_stateOracle != address(0), "StateOracle not set");
        tokenPairs = _tokenPairs;
        stateOracle = _stateOracle;
        _disableInitializers();
    }

    /// Initialize contract after the deployment.
    function initialize(address _owner, address _proofVerifier, address _deposit) external initializer {
        require(_proofVerifier != address(0), "ProofVerifier address not set");
        require(_deposit != address(0), "TokenDeposit address not set");
        __Ownable_init(_owner);
        __UUPSUpgradeable_init();
        proofVerifier = _proofVerifier;
        deposit = _deposit;
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}

    /// Claim minted tokens representing tokens deposited on L1.
    function claim(uint256 id, address token, uint256 amount, bytes calldata proof) external {
        require(claims[id] == false, "Already claimed");

        address mintedToken = ITokenPairs(tokenPairs).originalToMinted(token);
        require(mintedToken != address(0), "No minted token for given token");

        bytes32 depositHash = hash(msg.sender, token, amount);
        IProofVerifier(proofVerifier).verifyProof(
            deposit,
            getDepositSlotIndex(id),
            depositHash,
            IStateOracle(stateOracle).lastState(),
            proof
        );
        // the deposit exists on the L1

        claims[id] = true; // write before other contract call (reentrancy!)
        require(IMintedBurnableERC20(mintedToken).mint(msg.sender, amount), "Minting failed");
        emit Claim(id, msg.sender, token, amount);
    }

    /// Burn minted tokens to withdraw tokens deposited on L1.
    function withdraw(uint96 uid, address token, uint256 amount) external {
        uint256 id = userOperationId(msg.sender, uid);
        require(withdrawals[id] == 0, "Withdrawal id is already used");
        require(amount > 0, "No tokens to transfer");

        address mintedToken = ITokenPairs(tokenPairs).originalToMintedTerminable(token);
        require(mintedToken != address(0), "No minted token for given token");
        require(isOnline(), "Bridge is offline");

        withdrawals[id] = hash(msg.sender, token, amount); // write before other contract call (reentrancy!)
        IMintedBurnableERC20(mintedToken).burnFrom(msg.sender, amount);
        emit Withdrawal(id, msg.sender, token, amount);
    }

    function isOnline() private view returns (bool) {
        return IStateOracle(stateOracle).lastUpdateTime() >= block.timestamp - TIME_UNTIL_OFFLINE;
    }

    /// Calculate slotId for deposit in the Deposit L1 contract.
    function getDepositSlotIndex(uint256 id) pure public returns (bytes32) {
        return keccak256(abi.encode(id, uint8(7))); // deposits mapping is at slot index 7
    }

    /// Get deposit/withdrawal hash.
    function hash(address sender, address token, uint256 amount) pure public returns (bytes32) {
        return keccak256(abi.encode(sender, token, amount));
    }

    /// Calculate mapping key for user operation.
    /// Combines calling user identity and user-chosen value into a single key.
    function userOperationId(address sender, uint96 uid) pure public returns (uint256) {
        return (uint256(uint160(sender)) << 96) + uint256(uid);
    }

    /// Set new proof verifier
    function setProofVerifier(address _proofVerifier) external onlyOwner {
        require(_proofVerifier != address(0), "ProofVerifier set to zero");
        proofVerifier = _proofVerifier;
        emit ProofVerifierSet(_proofVerifier);
    }

    function setExitAdministrator(address) external view onlyOwner {
        revert("ExitAdministrator not relevant for Bridge contract");
    }
}
