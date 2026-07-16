// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.23;

// ====================================================================
// |     ______                   _______                             |
// |    / _____________ __  __   / ____(_____  ____ _____  ________   |
// |   / /_  / ___/ __ `| |/_/  / /_  / / __ \/ __ `/ __ \/ ___/ _ \  |
// |  / __/ / /  / /_/ _>  <   / __/ / / / / / /_/ / / / / /__/  __/  |
// | /_/   /_/   \__,_/_/|_|  /_/   /_/_/ /_/\__,_/_/ /_/\___/\___/   |
// |                                                                  |
// ====================================================================
// ============================== frxBTC ==============================
// ====================================================================
// Frax Finance: https://github.com/FraxFinance

import { ERC20, ERC20Permit } from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import { ERC20Burnable } from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

import { Timelock2Step } from "frax-std/access-control/v2/Timelock2Step.sol";
import { Ownable2Step, Ownable } from "@openzeppelin/contracts/access/Ownable2Step.sol";

/// @title Stablecoin pegged to Bitcoin for use within the Frax ecosystem
/// @dev Adheres to EIP-712/EIP-2612
/// @author Frax Finance
contract FrxBTC is ERC20Permit, ERC20Burnable, Ownable2Step, Timelock2Step {
    address[] public minters_array;
    mapping(address minter => bool canMint) public minters;

    constructor(
        address owner_,
        address timelock_,
        string memory name_,
        string memory symbol_
    ) Ownable(owner_) Timelock2Step(timelock_) ERC20(name_, symbol_) ERC20Permit(name_) {}

    /// @notice Semantic version of this contract
    /// @return _major The major version
    /// @return _minor The minor version
    /// @return _patch The patch version
    function version() external pure returns (uint256 _major, uint256 _minor, uint256 _patch) {
        return (1, 0, 0);
    }

    /* ========== MODIFIERS ========== */

    modifier onlyByOwnGov() {
        _requireSenderIsGov();
        _;
    }

    function _requireSenderIsGov() internal view {
        if (msg.sender != owner() && msg.sender != timelockAddress) revert SenderIsNotGov();
    }

    modifier onlyMinters() {
        _requireSenderIsMinter();
        _;
    }

    function _requireSenderIsMinter() internal view {
        if (!minters[msg.sender]) revert SenderIsNotMinter();
    }

    /* ========== RESTRICTED FUNCTIONS - Minter ========== */

    /// @notice Used by minters when user redeems
    /// @dev Conforms to OZ 5.0 spec
    function minter_burn_from(address account, uint256 value) public onlyMinters {
        super.burnFrom({ account: account, value: value });
        emit TokenMinterBurned({ from: account, to: msg.sender, value: value });
    }

    /// @notice Used by minters to mint tokens
    /// @dev Conforms to OZ 5.0 spec
    function minter_mint(address account, uint256 value) public onlyMinters {
        super._mint({ account: account, value: value });
        emit TokenMinterMinted({ from: msg.sender, to: account, value: value });
    }

    /* ========== RESTRICTED FUNCTIONS - Governance ========== */

    /// @notice Add a whitelisted minter
    /// @dev Only callable by owner or timelock
    function addMinter(address minter) public onlyByOwnGov {
        if (minter == address(0)) revert ZeroAddress();
        if (minters[minter]) revert MinterAlreadyAdded();

        minters[minter] = true;
        minters_array.push(minter);

        emit MinterAdded({ minter: minter });
    }

    /// @notice Remove a minter
    /// @dev Only callable by owner or timelock
    function removeMinter(address minter) public onlyByOwnGov {
        if (minter == address(0)) revert ZeroAddress();
        if (!minters[minter]) revert MinterNotAdded();

        // delete from mapping
        delete minters[minter];

        // 'Delete' from the array by setting the address to 0x0
        for (uint256 i = 0; i < minters_array.length; i++) {
            if (minters_array[i] == minter) {
                minters_array[i] = address(0); // This will leave a null in the array and keep the indices the same
                break;
            }
        }

        emit MinterRemoved({ minter: minter });
    }

    /// @notice Owner or Timelock can transfer timelock access
    function transferTimelock(address _newTimelock) external override onlyByOwnGov {
        _transferTimelock(_newTimelock);
    }

    /* ========== ERRORS ========== */

    error SenderIsNotGov();
    error SenderIsNotMinter();
    error ZeroAddress();
    error MinterAlreadyAdded();
    error MinterNotAdded();

    /* ========== EVENTS ========== */

    event TokenMinterBurned(address indexed from, address indexed to, uint256 value);
    event TokenMinterMinted(address indexed from, address indexed to, uint256 value);
    event MinterAdded(address minter);
    event MinterRemoved(address minter);
}
