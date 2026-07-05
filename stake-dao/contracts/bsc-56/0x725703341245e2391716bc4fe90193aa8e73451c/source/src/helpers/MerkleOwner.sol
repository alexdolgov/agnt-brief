// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.20;

import {IMerkleManager} from "src/interfaces/IMerkleManager.sol";

contract MerkleOwner {

    /// @notice Address of the governance contract.
    address public governance;

    /// @notice Address of the future governance contract.
    address public futureGovernance;

    /// @notice Address authorized to call the execute function.
    mapping(address => bool) public isAllowed;

    /// @notice Address who owns / manages the Merkle.
    address public merkleManager;


    ////////////////////////////////////////////////////////////
    /// --- EVENTS & ERRORS
    ////////////////////////////////////////////////////////////

    /// @notice Event emitted when a new governance is proposed.
    event GovernanceProposed(address indexed newGovernance);

    /// @notice Event emitted when the governance is changed.
    event GovernanceChanged(address indexed newGovernance);

    /// @notice Throws if caller is not the governance.
    error GOVERNANCE();

    /// @notice Throws if caller is not allowed.
    error NOT_ALLOWED();


    ////////////////////////////////////////////////////////////
    /// --- MODIFIERS
    ////////////////////////////////////////////////////////////

    modifier onlyGovernance() {
        if (msg.sender != governance) revert GOVERNANCE();
        _;
    }

    modifier onlyAllowed() {
        if (!isAllowed[msg.sender]) revert NOT_ALLOWED();
        _;
    }

    constructor(address owner_, address merkleManager_) {
        governance = owner_;
        merkleManager = merkleManager_;
    }

    ////////////////////////////////////////////////////////////////
    /// --- ADMIN FUNCTIONS
    ///////////////////////////////////////////////////////////////

    /// @notice Allow an address to call the execute function.
    /// @param _address Address to allow.
    function allowAddress(address _address) external onlyGovernance {
        isAllowed[_address] = true;
    }

    /// @notice Disallow an address to call the execute function.
    /// @param _address Address to disallow.
    function disallowAddress(address _address) external onlyGovernance {
        isAllowed[_address] = false;
    }

    /// @notice Transfer the governance to a new address.
    /// @param _governance Address of the new governance.
    function transferGovernance(address _governance) external onlyGovernance {
        emit GovernanceProposed(futureGovernance = _governance);
    }

    /// @notice Accept the governance transfer.
    function acceptGovernance() external {
        if (msg.sender != futureGovernance) revert GOVERNANCE();
        emit GovernanceChanged(governance = msg.sender);
    }
    
    ////////////////////////////////////////////////////////////
    /// --- AUTHORIZED
    ////////////////////////////////////////////////////////////

    function multiFreeze(address[] calldata tokens) external onlyAllowed() {
        IMerkleManager(merkleManager).multiFreeze(tokens);
    }

    function multiSet(address[] calldata tokens, bytes32[] calldata _merkleRoots) external onlyAllowed() {
        IMerkleManager(merkleManager).multiSet(tokens, _merkleRoots);
    }

    function multiUpdateMerkleRoot(address[] calldata tokens, bytes32[] calldata _merkleRoots) external onlyAllowed() {
        IMerkleManager(merkleManager).multiUpdateMerkleRoot(tokens, _merkleRoots);
    }

}