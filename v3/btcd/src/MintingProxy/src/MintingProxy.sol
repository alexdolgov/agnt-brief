// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {IMintingProxy} from "./interfaces/IMintingProxy.sol";
import {IBTCD} from "./interfaces/IBTCD.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/// @title MintingProxy
/// @author BTCD Labs
/// @notice Intermediary contract that holds the BTCD minter role and delegates
///         to authorized minting backends (BTCDMinting, VaultMinting, etc.).
///
/// @dev Architecture
/// ================
///   BTCD <-> MintingProxy <-> [BTCDMinting, VaultMinting, ...]
///
/// The BTCD token has a single `minter` address that can call `mint()`.
/// This proxy holds that role and allows multiple authorized backends
/// to request mint/burn operations through it.
///
/// For burning, the proxy must have approval from the `from` address
/// to call `burnFrom()` on the BTCD token. The vault grants this
/// approval to the proxy once.
///
/// Security Properties
/// ===================
/// - Only registered backends can call mint/burn
/// - Owner can add/remove backends
/// - No funds are held by this contract
/// - Simple, auditable delegation pattern
contract MintingProxy is IMintingProxy, Ownable {
    // -------- Storage --------

    IBTCD public immutable btcd;

    /// @notice Whether an address is an authorized minting backend.
    mapping(address => bool) public isBackend;

    // -------- Events --------

    event BackendAdded(address indexed backend);
    event BackendRemoved(address indexed backend);

    // -------- Errors --------

    error OnlyBackend();
    error ZeroAddress();

    // -------- Modifiers --------

    modifier onlyBackend() {
        if (!isBackend[msg.sender]) revert OnlyBackend();
        _;
    }

    // -------- Constructor --------

    /// @param _btcd The BTCD token address.
    /// @param _owner The initial owner/admin.
    constructor(address _btcd, address _owner) Ownable(_owner) {
        if (_btcd == address(0)) revert ZeroAddress();
        btcd = IBTCD(_btcd);
    }

    // -------- Backend Functions --------

    /// @inheritdoc IMintingProxy
    function mint(address to, uint256 amount) external onlyBackend {
        btcd.mint(to, amount);
    }

    /// @inheritdoc IMintingProxy
    function burnFrom(address account, uint256 amount) external onlyBackend {
        btcd.burnFrom(account, amount);
    }

    // -------- Owner Functions --------

    function addBackend(address backend) external onlyOwner {
        if (backend == address(0)) revert ZeroAddress();
        isBackend[backend] = true;
        emit BackendAdded(backend);
    }

    function removeBackend(address backend) external onlyOwner {
        isBackend[backend] = false;
        emit BackendRemoved(backend);
    }

    /// @dev Renouncing ownership would brick the minter role permanently. Disabled.
    function renounceOwnership() public pure override {
        revert OwnableInvalidOwner(address(0));
    }
}
