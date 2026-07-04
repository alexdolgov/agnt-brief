// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.19;

abstract contract GovernanceHandler {
    address public governance;
    address public futureGovernance;
    mapping(address => bool) public allowed;

    ////////////////////////////////////////////////////////////////
    /// --- EVENTS & ERRORS
    ///////////////////////////////////////////////////////////////

    /// @notice Event emitted when governance is changed.
    /// @param newGovernance Address of the new governance.
    event GovernanceChanged(address indexed newGovernance);

    /// @notice Event emitted when an address is allowed.
    /// @param allowedAddress Address that was allowed.
    event AddressAllowed(address indexed allowedAddress);

    /// @notice Event emitted when an address is disallowed.
    /// @param disallowedAddress Address that was disallowed.
    event AddressDisallowed(address indexed disallowedAddress);

    /// @notice Error emitted when auth failed
    error Governance();

    /// @notice Error emitted when auth failed
    error Unauthorized();

    ////////////////////////////////////////////////////////////////
    /// --- MODIFIERS
    ///////////////////////////////////////////////////////////////

    modifier onlyGovernance() {
        if (msg.sender != governance) revert Governance();
        _;
    }

    modifier onlyGovernanceOrAllowed() {
        if (!(msg.sender == governance || allowed[msg.sender])) revert Unauthorized();
        _;
    }

    ////////////////////////////////////////////////////////////
    /// --- CONSTRUCTOR
    ////////////////////////////////////////////////////////////

    constructor(address _governance) {
        governance = _governance;
    }

    ////////////////////////////////////////////////////////////
    /// --- GOVERNANCE
    ////////////////////////////////////////////////////////////

    /// @notice Transfer the governance to a new address.
    /// @param _governance Address of the new governance.
    function transferGovernance(address _governance) external onlyGovernance {
        require(_governance != address(0), "Governance address cannot be 0x0");
        futureGovernance = _governance;
    }

    /// @notice Accept the governance transfer.
    function acceptGovernance() external {
        if (msg.sender != futureGovernance) revert Governance();

        governance = msg.sender;
        emit GovernanceChanged(msg.sender);
    }

    ////////////////////////////////////////////////////////////
    /// --- ALLOWED
    ////////////////////////////////////////////////////////////

    function allowAddress(address _address) external onlyGovernance {
        allowed[_address] = true;
        emit AddressAllowed(_address);
    }

    function disallowAddress(address _address) external onlyGovernance {
        allowed[_address] = false;
        emit AddressDisallowed(_address);
    }
}
